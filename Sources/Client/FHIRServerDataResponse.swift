//
//  FHIRServerResponse.swift
//  SwiftSMART
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


extension FHIRServerResponse {
	
	/**
	The base implementation inspects response headers ("Location", "Last-Modified" and "ETag") and updates the resource's `id` and `meta`
	accordingly.
	
	This method must not be called if the response has a non-nil error.
	
	- parameter resource: The resource to apply response data to
	*/
	public func applyHeadersTo(resource: Resource) throws {
		
		// inspect Location header to update `id` and `meta`. It has the form "Location: [base]/[type]/[id]/_history/[vid]"
		if let location = headers["Location"] {
			if let base = resource._server?.baseURL.absoluteString {    // we are able to rely on the fact that the base URL ends with "/"
				if location.hasPrefix(base) {
					let path = location.replacingOccurrences(of: base, with: "")
					let components = path.components(separatedBy: "/")
					guard components.count > 1 && resource.dynamicType.resourceName == components[0] else {
						throw FHIRError.responseLocationHeaderResourceTypeMismatch(location, resource.dynamicType.resourceName)
					}
					
					resource.id = components[1]
					if components.count > 3 && "_history" == components[2] {
						resource.meta = resource.meta ?? Meta(json: nil)
						resource.meta!.versionId = components[3]
					}
				}
				else {
					fhir_warn("Location “\(location)” does not appear to live on server \(base), not updating the resource")
				}
			}
			else {
				fhir_warn("Resource «\(resource)» does not have a server associated, will not try to parse “Location” header")
			}
		}
		
		// inspect Last-Modified header
		if let modified = headers["Last-Modified"] {
			resource.meta = resource.meta ?? Meta(json: nil)
			resource.meta!.lastUpdated = Instant.fromHttpDate(modified)
		}
		
		// inspect ETag header
		if var etag = headers["ETag"] {
			if etag.hasPrefix("W/") {
				etag = etag[etag.index(etag.startIndex, offsetBy: 2)..<etag.endIndex]
			}
			if etag.hasPrefix("\"") {
				etag = etag[etag.index(etag.startIndex, offsetBy: 1)..<etag.endIndex]
			}
			if etag.hasSuffix("\"") {
				etag = etag[etag.startIndex..<etag.index(etag.endIndex, offsetBy: -1)]
			}
			resource.meta = resource.meta ?? Meta(json: nil)
			resource.meta!.versionId = etag
		}
	}
	
	/// Nicely format status code, response headers and response body (if any).
	public var debugDescription: String {
		var msg = "HTTP 1.1 \(status)"
		headers.forEach() { msg += "\n\($0): \($1)" }
		if let body = body, body.count > 0 {
			msg += "\n\n\(NSString(data: body as Data, encoding: String.Encoding.utf8.rawValue) ?? "")"
		}
		return msg
	}
}


/**
Encapsulates a server response, which can also indicate that there was no response or not even a request, in which case the `error`
property carries the only useful information.
*/
public class FHIRServerDataResponse: FHIRServerResponse {
	
	/// The HTTP status code.
	public let status: Int
	
	/// Response headers.
	public let headers: [String: String]
	
	/// The response body data.
	public var body: Data?
	
	/// The request's operation outcome, if any.
	public internal(set) var outcome: OperationOutcome?
	
	/// The error encountered, if any.
	public var error: FHIRError?
	
	/**
	Instantiate a FHIRServerResponse from an NS(HTTP)URLResponse, NSData and an optional NSError.
	*/
	public required init(response: URLResponse, data: Data?, urlError: NSError?) {
		var status = 0
		var headers = [String: String]()
		
		// parse status and headers from the URL response
		if let http = response as? HTTPURLResponse {
			status = http.statusCode
			for (key, val) in http.allHeaderFields {
				if let keystr = key as? String {
					if let valstr = val as? String {
						headers[("Etag" == keystr) ? "ETag" : keystr] = valstr		// NSHTTPURLResponse returns "Etag"
					}
					else {
						fhir_warn("Not a string in headers: \(val) (for \(keystr))")
					}
				}
			}
		}
		
		// was there an error?
		if let error = urlError, NSURLErrorDomain == error.domain {
			self.error = FHIRError.requestError(status, NSURLErrorHumanize(error))
		}
		else if let error = urlError {
			self.error = FHIRError.error(error.description)
		}
		
		self.status = status
		self.headers = headers
		self.body = data
	}
	
	public required init(error: Error) {
		self.status = 0
		self.headers = [String: String]()
		if NSURLErrorDomain == (error as NSError).domain {
			self.error = FHIRError.requestError(status, NSURLErrorHumanize(error as NSError))
		}
		else if let error = error as? FHIRError {
			self.error = error
		}
		else {
			self.error = FHIRError.error("\(error)")
		}
	}
	
	
	// MARK: - Responses
	
	public func responseResource<T: Resource>(_ expectType: T.Type) -> T? {
		return nil
	}
	
	/** Initializes with a no-response error. */
	public class func noneReceived() -> Self {
		return self.init(error: FHIRError.noResponseReceived)
	}
	
	/**
	The base method does not actually know how to handle the data to update a resource, but it will still throw
	`FHIRError.ResponseNoResourceReceived` if body is nil.
	
	- parameter resource: The resource to apply the response data to
	*/
	public func applyBodyTo(resource: Resource) throws {
		guard nil != body else {
			throw FHIRError.responseNoResourceReceived
		}
	}
}


/**
Encapsulates a server response with JSON response body, if any.
*/
public class FHIRServerJSONResponse: FHIRServerDataResponse {
	
	/// The response body, decoded into a FHIRJSON
	public var json: FHIRJSON?
	
	/**
	If the status is >= 400, the response body is checked for an OperationOutcome and its first issue item is turned into an error message.
	*/
	public required init(response: URLResponse, data inData: Data?, urlError: NSError?) {
		super.init(response: response, data: inData, urlError: urlError)
		
		// parse data as JSON
		if let data = inData, data.count > 0 {
			do {
				let json = try JSONSerialization.jsonObject(with: data, options: []) as? FHIRJSON
				self.json = json
				self.outcome = responseResource(OperationOutcome.self)
				
				// inspect OperationOutcome if there was an error
				if status >= 400 {
					if let erritem = self.outcome?.issue?.first {
						let errstr = "[\(erritem.severity ?? "unknown")] \(erritem.diagnostics ?? "unknown")"
						self.error = FHIRError.requestError(status, errstr)
					}
					else if let errstr = json?["error"] as? String {
						self.error = FHIRError.requestError(status, errstr)
					}
				}
			}
			catch let error as NSError {
				// Cocoa error 3840 is JSON parsing error; some error responses may not return JSON, don't report an error on those
				if 3840 != error.code || NSCocoaErrorDomain != (error.domain ?? "") || status < 400 {
					let raw = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as? String ?? ""
					self.error = FHIRError.jsonParsingError(error.localizedDescription, raw)
				}
			}
			catch let error as FHIRError {
				self.error = error
			}
			catch let error {
				self.error = FHIRError.error("\(error)")
			}
		}
	}
	
	public required init(error: Error) {
		super.init(error: error)
	}
	
	/**
	Uses FHIRElement's factory method to instantiate a resource from the response JSON, if any, and returns that resource if it is indeed of
	the expected type.
	*/
	public override func responseResource<T: Resource>(_ expectType: T.Type) -> T? {
		if let json = json {
			let resource = Resource.instantiate(fromJSON: json, owner: nil)
			return resource as? T
		}
		return nil
	}
	
	/**
	The response's body data is used to update the resource by calling `resource.populateFrom(json: )`. Will throw
	`FHIRError.ResponseNoResourceReceived` if body is nil.
	
	This method must not be called if the response has a non-nil error.
	
	- parameter resource: The resource to apply the response data to
	*/
	public override func applyBodyTo(resource: Resource) throws {
		guard let json = json else {
			throw FHIRError.responseNoResourceReceived
		}
		
		if let resourceType = json["resourceType"] as? String, resourceType != resource.dynamicType.resourceName {
			throw FHIRError.responseResourceTypeMismatch(resourceType, resource.dynamicType.resourceName)
		}
		if let errors = resource.populate(fromJSON: json) {
			for error in errors {
				fhir_warn("\(resource) \(error)")
			}
		}
	}
}


// MARK: -

/**
Return a human-readable, localized string for error codes of the NSURLErrorDomain.
*/
func NSURLErrorHumanize(_ error: NSError) -> String {
	assert(NSURLErrorDomain == error.domain, "Can only use this function with errors in the NSURLErrorDomain")
	switch error.code {
		case NSURLErrorBadURL:                return "The URL was malformed".fhir_localized
		case NSURLErrorTimedOut:              return "The connection timed out".fhir_localized
		case NSURLErrorUnsupportedURL:        return "The URL scheme is not supported".fhir_localized
		case NSURLErrorCannotFindHost:        return "The host could not be found".fhir_localized
		case NSURLErrorCannotConnectToHost:   return "A connection to the host cannot be established".fhir_localized
		case NSURLErrorNetworkConnectionLost: return "The network connection was lost".fhir_localized
		case NSURLErrorDNSLookupFailed:       return "The connection failed because the DNS lookup failed".fhir_localized
		case NSURLErrorHTTPTooManyRedirects:  return "The HTTP connection failed due to too many redirects".fhir_localized
		default:                              return error.localizedDescription
	}
}

