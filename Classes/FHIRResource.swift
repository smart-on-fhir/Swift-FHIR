//
//  FHIRResource.swift
//  SMART-on-FHIR
//
//  Created by Pascal Pfiffner on 7/2/14.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Abstract superclass for all FHIR resource models.
 */
class FHIRResource: FHIRElement
{
	/*! If this instance was read from a server, this is the identifier that was used. */
	var _id: String?
	
	/*! A specific version id, if the instance was created using `vread`. */
	var _versionId: String?
	
	/*! If this instance lives on a server, this property represents that server. */
	var _server: FHIRServer?
	
	init(json: NSDictionary?) {
		super.init(json: json)
	}
	
	
	// MARK: Retrieving Resources
	
	/*!
	 *  Reads the resource with the given id from the given server.
	 */
	class func read(id: String, server: FHIRServer, callback: ((resource: FHIRResource?, error: NSError?) -> ())) {
		let url = server.baseURL.URLByAppendingPathComponent(resourceName).URLByAppendingPathComponent(id)
		server.requestJSON(url) { json, error in
			if error {
				callback(resource: nil, error: error)
			}
			else {
				let resource = self(json: json)
				resource._id = id
				resource._server = server
				callback(resource: resource, error: nil)
			}
		}
	}
}


/*!
 *  Protocol for server objects to be used by `FHIRResource` and subclasses.
 */
protocol FHIRServer {
	
	/*! A server object must always have a base URL. */
	var baseURL: NSURL { get }
	
	/*! Instance method that needs to take a URL, retrieve data from that URL and return a decoded NSDictionary or an error in a callback. */
	func requestJSON(url: NSURL, callback: ((json: NSDictionary?, error: NSError?) -> Void))
}
