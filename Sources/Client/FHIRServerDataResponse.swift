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
	public var body: NSData?
	
	/// The request's operation outcome, if any.
	public internal(set) var outcome: OperationOutcome?
	
	/// The error encountered, if any.
	public var error: FHIRError?
	
	/**
	Instantiate a FHIRServerResponse from an NS(HTTP)URLResponse, NSData and an optional NSError.
	*/
	public required init(response: NSURLResponse, data: NSData?, urlError: NSError?) {
		var status = 0
		var headers = [String: String]()
		
		// parse status and headers from the URL response
		if let http = response as? NSHTTPURLResponse {
			status = http.statusCode
			for (key, val) in http.allHeaderFields {
				if let keystr = key as? String {
					if let valstr = val as? String {
						headers[keystr] = valstr
					}
					else {
						fhir_logIfDebug("Not a string in headers: \(val) (for \(keystr))")
					}
				}
			}
		}
		
		// was there an error?
		if let error = urlError where NSURLErrorDomain == error.domain {
			self.error = FHIRError.RequestError(status, NSURLErrorHumanize(error))
		}
		else if let error = urlError {
			self.error = FHIRError.Error(error.description)
		}
		
		self.status = status
		self.headers = headers
		self.body = data
	}
	
	public required init(error: ErrorType) {
		self.status = 0
		self.headers = [String: String]()
		if NSURLErrorDomain == (error as NSError).domain {
			self.error = FHIRError.RequestError(status, NSURLErrorHumanize(error as NSError))
		}
		else if let error = error as? FHIRError {
			self.error = error
		}
		else {
			self.error = FHIRError.Error("\(error)")
		}
	}
	
	
	// MARK: - Responses
	
	public func responseResource<T: Resource>(expectType: T.Type) -> T? {
		return nil
	}
	
	public func applyToResource(resource: Resource) {
	}
	
	/** Initializes with a no-response error. */
	public class func noneReceived() -> Self {
		return self.init(error: FHIRError.NoResponseReceived)
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
	public required init(response: NSURLResponse, data inData: NSData?, urlError: NSError?) {
		super.init(response: response, data: inData, urlError: urlError)
		
		// parse data as JSON
		if let data = inData where data.length > 0 {
			do {
				let json = try NSJSONSerialization.JSONObjectWithData(data, options: []) as? FHIRJSON
				self.json = json
				self.outcome = responseResource(OperationOutcome)
				
				// check for OperationOutcome if there was an error
				if status >= 400 {
					if let erritem = self.outcome?.issue?.first {
						let errstr = "[\(erritem.severity ?? "unknown")] \(erritem.diagnostics ?? "unknown")"
						self.error = FHIRError.RequestError(status, errstr)
					}
					else if let errstr = json?["error"] as? String {
						self.error = FHIRError.RequestError(status, errstr)
					}
				}
			}
			catch let error as NSError {
				// Cocoa error 3840 is JSON parsing error; some error responses may not return JSON, don't report an error on those
				if 3840 != error.code || NSCocoaErrorDomain != (error.domain ?? "") || status < 400 {
					let raw = NSString(data: data, encoding: NSUTF8StringEncoding) as? String ?? ""
					self.error = FHIRError.JSONParsingError(error.localizedDescription, raw)
				}
			}
			catch let error as FHIRError {
				self.error = error
			}
			catch let error {
				self.error = FHIRError.Error("\(error)")
			}
		}
	}
	
	public required init(error: ErrorType) {
		super.init(error: error)
	}
	
	/**
	Uses FHIRElement's factory method to instantiate a resource from the response JSON, if any, and returns that resource if it is indeed of
	the expected type.
	*/
	public override func responseResource<T: Resource>(expectType: T.Type) -> T? {
		if let json = json {
			let resource = Resource.instantiateFrom(json, owner: nil)
			return resource as? T
		}
		return nil
	}
	
	public override func applyToResource(resource: Resource) {
		if let json = json {
			resource.populateFromJSON(json)
		}
	}
}


// MARK: -

extension FHIRServerResponse {
	
	/// Nicely format status code, response headers and response body (if any).
	public var debugDescription: String {
		var msg = "HTTP 1.1 \(status)"
		headers.forEach() { msg += "\n\($0): \($1)" }
		if let body = body where body.length > 0 {
			msg += "\n\n\(NSString(data: body, encoding: NSUTF8StringEncoding) ?? "")"
		}
		return msg
	}
}

/**
Return a human-readable, localized string for error codes of the NSURLErrorDomain.
*/
func NSURLErrorHumanize(error: NSError) -> String {
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

