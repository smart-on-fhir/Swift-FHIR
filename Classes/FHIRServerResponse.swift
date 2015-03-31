//
//  FHIRServerResponse.swift
//  SwiftSMART
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation


/**
	Encapsulates a server response, which can also indicate that there was no response or request (status >= 600), in
	which case the `error` property carries the only useful information.
 */
public class FHIRServerResponse
{
	/// The HTTP status code
	public let status: Int
	
	/// Response headers
	public let headers: [String: String]
	
	/// An NSError, generated from status code unless it was explicitly assigned.
	public var error: NSError? {
		get {
			if nil == _error && status >= 400 {
				let errstr = (status >= 600) ? (status >= 700 ? "No request sent" : "No response received") : NSHTTPURLResponse.localizedStringForStatusCode(status)
				_error = genServerError(errstr, code: status)
			}
			return _error
		}
		set {
			_error = newValue
		}
	}
	private var _error: NSError?
	
	public required init(status: Int, headers: [String: String]) {
		self.status = status
		self.headers = headers
	}
	
	/**
		Instantiate a FHIRServerResponse from an NS(HTTP)URLResponse and NSData.
	 */
	public required init(response: NSURLResponse, data: NSData?) {
		var status = 0
		var headers = [String: String]()
		
		if let http = response as? NSHTTPURLResponse {
			status = http.statusCode
			for (key, val) in http.allHeaderFields {
				if let keystr = key as? String {
					if let valstr = val as? String {
						headers[keystr] = valstr
					}
					else {
						println("DEBUG: Not a string in location headers: \(val) (for \(keystr))")
					}
				}
			}
		}
		
		self.status = status
		self.headers = headers
	}
	
	public required init(notSentBecause: NSError) {
		status = 700
		headers = [String: String]()
		error = notSentBecause
	}
	
	/** Initializes with a status of 600 to signal that no response was received. */
	public class func noneReceived() -> Self {
		return self(status: 600, headers: [String: String]())
	}
}


/**
	Encapsulates a server response holding an NSData body.
 */
public class FHIRServerDataResponse: FHIRServerResponse
{
	/// The response body data
	public var body: NSData?
	
	public required init(status: Int, headers: [String: String]) {
		super.init(status: status, headers: headers)
	}
	
	public required init(response: NSURLResponse, data inData: NSData?) {
		super.init(response: response, data: inData)
		if let data = inData {
			body = data
		}
	}
	
	public required init(notSentBecause error: NSError) {
		super.init(notSentBecause: error)
	}
}


/**
	Encapsulates a server response with JSON response body, if any.
 */
public class FHIRServerJSONResponse: FHIRServerDataResponse
{
	/// The response body, decoded into a FHIRJSON
	public var json: FHIRJSON?
	
	public required init(status: Int, headers: [String: String]) {
		super.init(status: status, headers: headers)
	}
	
	/**
		If the status is >= 400, the response body is checked for an OperationOutcome and its first issue item is
		turned into an error message.
	 */
	public required init(response: NSURLResponse, data inData: NSData?) {
		super.init(response: response, data: inData)
		
		if let data = inData {
			var error: NSError? = nil
			if let json = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: &error) as? FHIRJSON {
				self.json = json
				
				// check for OperationOutcome if there was an error
				if status >= 400 {
					if let erritem = resource(OperationOutcome)?.issue?.first {
						let none = "unknown"
						let errstr = "[\(erritem.severity ?? none)] \(erritem.details ?? none)"
						self.error = genServerError(errstr, code: status)
					}
				}
			}
				
			// Cocoa error 3840 is JSON parsing error; some error responses may not return JSON, don't report an error on those
			else if 3840 != error?.code || status < 400 {
				let errstr = "Failed to deserialize JSON into a dictionary: \(error?.localizedDescription)\n"
				"\(NSString(data: data, encoding: NSUTF8StringEncoding))"
				self.error = genServerError(errstr, code: status)
			}
		}
	}
	
	public required init(notSentBecause error: NSError) {
		super.init(notSentBecause: error)
	}
	
	/**
		Uses FHIRElement's factory method to instantiate a resource from the response JSON, if any, and returns that
		resource if it indeed is of the expected type.
	 */
	public func resource<T: FHIRElement>(expectType: T.Type) -> T? {
		if let json = self.json {
			let resource = FHIRElement.instantiateFrom(json, owner: nil)
			return resource as? T
		}
		return nil
	}
}

