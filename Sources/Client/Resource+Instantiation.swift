//
//  FHIRElement+Utilities.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 8/14/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


public extension Resource {
	
	/**
	Attempt to instantiate a Resource of the receiving class by reading a JSON file at the given filesystem path.
	
	- parameter path: The local path to read the JSON file from
	- returns: An instance of the receiving class
	*/
	public class func instantiateFromPath(path: String) throws -> Self {
		let data = try NSData(contentsOfFile: path, options: [])
		let json = try NSJSONSerialization.JSONObjectWithData(data, options: []) as? FHIRJSON
		return self.init(json: json)
	}
}


public extension NSBundle {
	
	/**
	Attempt to read a JSON file with the given name (.json) from the bundle, parse the JSON and instantiate a FHIR resource corresponding
	to the "resourceType" in the file.
	
	- returns: A FHIRResource subclass corresponding to the "resourceType" entry or nil
	*/
	public func fhir_bundledResource(name: String) throws -> Resource? {
		if let url = URLForResource(name, withExtension: "json"), let data = NSData(contentsOfURL: url) {
			if let json = try NSJSONSerialization.JSONObjectWithData(data, options: []) as? FHIRJSON {
				return Resource.instantiateFrom(json, owner: nil) as? Resource
			}
			throw FHIRError.ResourceFailedToInstantiate("Failed to deserialize JSON of bundled resource as FHIRJSON")
		}
		throw FHIRError.ResourceFailedToInstantiate("Not bundled as «\(name)»")
	}
}

