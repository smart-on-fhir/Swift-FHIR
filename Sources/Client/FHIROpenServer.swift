//
//  FHIROpenServer.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 11/30/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


/**
A very basic FHIRServer implementation that deals with Open FHIR servers in JSON.

It knows its base URL, can fetch and hold on to the conformance statement and perform requests and operations.

These methods are of interest to you when you create a subclass:

- `handlerForRequest(ofType:resource:)`: what kind of handler your server wants to use. Returns `FHIRServerJSONRequestHandler`.
- `configurableRequest(forURL:)`: the SMART framework returns a request that already has an Authorization headers set, if needed.
*/
public class FHIROpenServer: FHIRServer {
	
	/// The server's base URL.
	public final let baseURL: URL
	
	/// The active URL session.
	var session: URLSession?
	
	
	/**
	Main initializer. Makes sure the base URL ends with a "/" to facilitate URL generation later on.
	*/
	public required init(baseURL base: URL, auth: [String: AnyObject]? = nil) {
		if let last = base.absoluteString?.characters.last where last != "/" {
			baseURL = try! base.appendingPathComponent("/")
		}
		else {
			baseURL = base
		}
	}
	
	
	// MARK: - URL
	
	/**
	This method simply creates an absolute URL from the receiver's `baseURL` and the given path.
	
	A chance for subclasses to mess with URL generation if needed.
	*/
	public func absoluteURLForPath(_ path: String, handler: FHIRServerRequestHandler) -> URL? {
		return URL(string: path, relativeTo: baseURL)
	}
	
	
	// MARK: - FHIRServer
	
	/**
	Perform a request of given type against the given path with the (optional) given resource and headers.
	*/
	public func performRequest(ofType type: FHIRRequestType, path: String, resource: Resource?, additionalHeaders: FHIRRequestHeaders? = nil, callback: ((response: FHIRServerResponse) -> Void)) {
		if let handler = handlerForRequest(ofType: type, resource: resource, headers: additionalHeaders) {
			performRequest(againstPath: path, handler: handler, callback: callback)
		}
		else {
			let res = FHIRServerRequestHandler.noneAvailable(forType: type)
			callback(response: res)
		}
	}
	
	
	// MARK: - Requests
	
	/**
	The server can return the appropriate request handler for the type and resource combination.
	
	Request handlers are responsible for constructing an URLRequest that correctly performs the desired REST interaction.
	
	- parameter ofType:   The type of the request (GET, PUT, POST or DELETE)
	- parameter resource: The resource to be involved in the request, if any
	- returns: An appropriate `FHIRServerRequestHandler`, for example a _FHIRServerJSONRequestHandler_ if sending and receiving JSON
	*/
	public func handlerForRequest(ofType: FHIRRequestType, resource: Resource?, headers: FHIRRequestHeaders? = nil) -> FHIRServerRequestHandler? {
		let handler = FHIRServerJSONRequestHandler(ofType, resource: resource)
		if let headers = headers {
			handler.add(headers: headers)
		}
		return handler
	}
	
	/**
	Pre-prepare a mutable URLRequest that the handler subsequently prepares and performs.
	
	- parameter forURL: The url to use for the request
	*/
	public func configurableRequest(forURL url: URL) -> URLRequest {
		return URLRequest(url: url)
	}
	
	
	/**
	Method to execute a request against a given relative URL with a given request/response handler.
	
	- parameter againstPath: The path, relative to the server's base; may include URL query and URL fragment (!)
	- parameter handler:     The RequestHandler that prepares the request and processes the response
	- parameter callback:    The callback to execute; NOT guaranteed to be performed on the main thread!
	*/
	public func performRequest<R: FHIRServerRequestHandler>(againstPath path: String, handler: R, callback: ((response: FHIRServerResponse) -> Void)) {
		guard let url = absoluteURLForPath(path, handler: handler) else {
			let res = handler.notSent("Failed to parse path «\(path)» relative to server base URL")
			callback(response: res)
			return
		}
		performRequest(withURL: url, handler: handler, callback: callback)
	}
	
	/**
	Method to execute a request against a given absolute URL with a given request/response handler.
	
	- parameter withURL:  The full URL; may include query parts and fragment (!)
	- parameter handler:  The RequestHandler that prepares the request and processes the response
	- parameter callback: The callback to execute; NOT guaranteed to be performed on the main thread!
	*/
	public func performRequest<R: FHIRServerRequestHandler>(withURL url: URL, handler: R, callback: ((response: FHIRServerResponse) -> Void)) {
		var request = configurableRequest(forURL: url)
		do {
			try handler.prepare(request: &request)
			self.performPreparedRequest(request, handler: handler, callback: callback)
		}
		catch let error {
			callback(response: handler.notSent("Failed to prepare request against \(url): \(error)"))
		}
	}
	
	/**
	Method to execute an already prepared request and use the given request/response handler.
	
	This implementation uses the instance's URLSession to execute data tasks with the requests. Subclasses can override to supply different
	URLSessions based on the request, if so desired.
	
	- parameter request: The URL request to perform
	- parameter handler: The RequestHandler that prepares the request and processes the response
	- parameter callback: The callback to execute; NOT guaranteed to be performed on the main thread!
	*/
	public func performPreparedRequest<R: FHIRServerRequestHandler>(_ request: URLRequest, handler: R, callback: ((response: FHIRServerResponse) -> Void)) {
		performPreparedRequest(request, withSession: URLSession(), handler: handler, callback: callback)
	}
	
	/**
	Method to execute an already prepared request with a given session and use the given request/response handler.
	
	- parameter request: The URL request to perform
	- parameter withSession: The URLSession instance to use
	- parameter handler: The RequestHandler that prepares the request and processes the response
	- parameter callback: The callback to execute; NOT guaranteed to be performed on the main thread!
	*/
	public func performPreparedRequest<R: FHIRServerRequestHandler>(_ request: URLRequest, withSession session: URLSession, handler: R, callback: ((response: FHIRServerResponse) -> Void)) {
		let task = session.dataTask(with: request) { data, response, error in
			let res = handler.response(response: response, data: data, error: error)
			callback(response: res)
		}
		task.resume()
	}
	
	
	// MARK: - Server Conformance
	
	/// The server's conformance statement. Must be implicitly fetched using `getConformance()`
	public final internal(set) var conformance: Conformance? {
		didSet {
			if let conformance = conformance {
				didSetConformance(conformance)
			}
		}
	}
	
	public func didSetConformance(_ conformance: Conformance) {
		
		// look at ConformanceRest entries for security and operation information
		if let rests = conformance.rest {
			var best: ConformanceRest?
			for rest in rests {
				if nil == best {
					best = rest
				}
				else if "client" == rest.mode {
					best = rest
					break
				}
			}
			
			// use the "best" matching rest entry to extract the information we want
			if let rest = best {
				didFindConformanceRestStatement(rest)
			}
		}
	}
	
	public func didFindConformanceRestStatement(_ rest: ConformanceRest) {
		if let operations = rest.operation {
			conformanceOperations = operations
		}
	}
	
	/**
	Executes a `read` action against the server's "metadata" path, as returned from `conformancePath()`, which should return the Conformance
	statement.
	*/
	final func getConformance(_ callback: (error: FHIRError?) -> ()) {
		if nil != conformance {
			callback(error: nil)
			return
		}
		
		// not yet fetched, fetch it
		Conformance.readFrom(conformancePath(), server: self) { resource, error in
			if let conf = resource as? Conformance {
				self.conformance = conf
				callback(error: nil)
			}
			else {
				callback(error: error ?? FHIRError.error("Conformance.readFrom() did not return a Conformance instance but \(resource)"))
			}
		}
	}
	
	/** Return the relative path to the Conformance statement. This should be "metadata", we're also adding "_summary=true" to only request
	the summary, not the entire statement.
	*/
	public func conformancePath() -> String {
		return "metadata?_summary=true"
	}
	
	
	// MARK: - Operations
	
	/// The operations the server supports, as specified in the conformance statement.
	var operations: [String: OperationDefinition]?
	
	/// Operations as found in the conformance statement.
	var conformanceOperations: [ConformanceRestOperation]?
	
	/** Find operation with given name. */
	func conformanceOperation(_ name: String) -> ConformanceRestOperation? {
		if let defs = conformanceOperations {
			for def in defs {
				if name == def.name {
					return def
				}
			}
		}
		return nil
	}
	
	/**
	Retrieve the operation definition with the given name, either from cache or load the OperationDefinition resource.
	
	Once an OperationDefinition has been retrieved, it is cached into the instance's `operations` dictionary. Must be used after the
	conformance statement has been fetched, i.e. after using `ready` or `getConformance`.
	*/
	public func operation(_ name: String, callback: ((OperationDefinition?) -> Void)) {
		if let op = operations?[name] {
			callback(op)
		}
		else if let def = conformanceOperation(name) {
			def.definition?.resolve(OperationDefinition.self) { optop in
				if let op = optop {
					if nil != self.operations {
						self.operations![name] = op
					}
					else {
						self.operations = [name: op]
					}
				}
				callback(optop)
			}
		}
		else {
			callback(nil)
		}
	}
	
	/**
	Performs the given Operation.
	
	The server first validates the operation and only proceeds with execution if validation succeeds.
	
	`Resource` has extensions to facilitate working with operations, be sure to take a look.
	
	- parameter operation: The operation instance to perform
	- parameter callback: The callback to call when the request ends (success or failure)
	*/
	public func perform(operation: FHIROperation, callback: ((response: FHIRServerResponse) -> Void)) {
		self.operation(operation.name) { definition in
			if let def = definition {
				do {
					try operation.validate(with: def)
					try operation.perform(onServer: self, callback: callback)
				}
				catch let error {
					callback(response: FHIRServerJSONResponse(error: error))
				}
			}
			else {
				callback(response: FHIRServerJSONResponse(error: FHIRError.operationNotSupported(operation.name)))
			}
		}
	}
	
	
	// MARK: - Session Management
	
	final public func URLSession() -> URLSession {
		if nil == session {
			session = createDefaultSession()
		}
		return session!
	}
	
	/** Create the server's default session. Override in subclasses to customize URLSession behavior. */
	public func createDefaultSession() -> URLSession {
		return Foundation.URLSession.shared
	}
	
	func abortSession() {
		if nil != session {
			session!.invalidateAndCancel()
			session = nil
		}
	}
}

