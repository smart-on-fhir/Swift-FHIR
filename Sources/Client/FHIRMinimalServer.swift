//
//  FHIRMinimalServer.swift
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
A minimal FHIRServer implementation that deals with Open FHIR servers in JSON.

These methods are of interest to you when you create a subclass:

- `handlerForRequest(withMethod:resource:)`: what kind of handler your server wants to use. Returns `FHIRJSONRequestHandler`.
- `configurableRequest(for:)`: the SMART framework returns a request that already has an Authorization headers set, if needed.
*/
open class FHIRMinimalServer: FHIRServer {
	
	/// The server's base URL.
	public final let baseURL: URL
	
	/// The active URL session.
	var session: URLSession?
	
	
	/**
	Main initializer. Makes sure the base URL ends with a "/" to facilitate URL generation later on.
	*/
	public required init(baseURL base: URL, auth: [String: Any]? = nil) {
		if let last = base.absoluteString.characters.last, last != "/" {
			baseURL = base.appendingPathComponent("/")
		}
		else {
			baseURL = base
		}
	}
	
	
	// MARK: - URL
	
	/**
	This method simply creates an absolute URL from the receiver's `baseURL` and the given path.
	
	A chance for subclasses to mess with URL generation if needed.
	
	- parameter for: The path in the absolute URL
	*/
	open func absoluteURL(for path: String, handler: FHIRRequestHandler) -> URL? {
		return URL(string: path, relativeTo: baseURL)
	}
	
	
	// MARK: - Requests
	
	/**
	The server can return the appropriate request handler for the type and resource combination.
	
	Request handlers are responsible for constructing an URLRequest that correctly performs the desired REST interaction.
	
	- parameter method:   The request method (GET, PUT, POST or DELETE)
	- parameter resource: The resource to be involved in the request, if any
	
	- returns:            An appropriate `FHIRRequestHandler`, for example a _FHIRJSONRequestHandler_ if sending and receiving JSON
	*/
	open func handlerForRequest(withMethod method: FHIRRequestMethod, resource: Resource?) -> FHIRRequestHandler? {
		return FHIRJSONRequestHandler(method, resource: resource)
	}
	
	/**
	Pre-prepare a mutable URLRequest that the handler subsequently prepares and performs.
	
	This implementation simply creates an `URLRequest` against the given url.
	
	- parameter url: The url to use for the request
	- returns: A URLRequest instance
	*/
	open func configurableRequest(for url: URL) -> URLRequest {
		return URLRequest(url: url)
	}
	
	/**
	Method to execute a request against a given relative URL with a given request/response handler.
	
	- parameter path:     The path, relative to the server's base; may include URL query and URL fragment (!)
	- parameter handler:  The FHIRRequestHandler that prepares the request and processes the response
	- parameter callback: The callback to execute; NOT guaranteed to be performed on the main thread!
	*/
	open func performRequest(against path: String, handler: FHIRRequestHandler, callback: @escaping ((FHIRServerResponse) -> Void)) {
		guard let url = absoluteURL(for: path, handler: handler) else {
			let res = handler.notSent("Failed to parse path «\(path)» relative to server base URL")
			callback(res)
			return
		}
		performRequest(on: url, handler: handler, callback: callback)
	}
	
	/**
	Method to execute a request against a given absolute URL with a given request/response handler.
	
	This method will use the request handler to prepare the request (i.e. add headers and prepare body data), then hand it over to
	`perform(request:completionHandler:)` to actually perform the request. Finally, the response data/URLResponse/error is handed to the
	request handler and converted into the `FHIRServerResponse` that is delivered to you in the callback.
	
	- parameter url:      The full URL; may include query parts and fragment (!)
	- parameter handler:  The FHIRRequestHandler that prepares the request and processes the response
	- parameter callback: The callback to execute; NOT guaranteed to be performed on the main thread!
	*/
	open func performRequest(on url: URL, handler: FHIRRequestHandler, callback: @escaping ((FHIRServerResponse) -> Void)) {
		var request = configurableRequest(for: url)
		do {
			try handler.prepare(request: &request)
			self.perform(request: request) { data, response, error in
				let res = handler.response(response: response, data: data, error: error)
				callback(res)
			}
		}
		catch let error {
			callback(handler.notSent("Failed to prepare request against \(url): \(error)"))
		}
	}
	
	/**
	This is the last method in the chain to actually perform a request. Uses `URLSession().dataTask(with:completionHandler:)`.
	
	- parameter request:           The URL request to perform as-is
	- parameter completionHandler: The completion handler, returning optional data, response and error instances, when all has completed
	- returns:                     A URLSessionTask that is already under way
	*/
	@discardableResult
	open func perform(request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionTask? {
		let task = URLSession().dataTask(with: request, completionHandler: completionHandler)
		task.resume()
		return task
	}
	
	
	// MARK: - Session Management
	
	final public func URLSession() -> URLSession {
		if nil == session {
			session = createDefaultSession()
		}
		return session!
	}
	
	/** Create the server's default session. Override in subclasses to customize URLSession behavior. */
	open func createDefaultSession() -> URLSession {
		return Foundation.URLSession.shared
	}
	
	func abortSession() {
		if nil != session {
			session!.invalidateAndCancel()
			session = nil
		}
	}
}

