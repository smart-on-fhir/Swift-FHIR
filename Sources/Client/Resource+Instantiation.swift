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
	
	- parameter name: The filename, without ".json" extension, to read the resource from
	- parameter type: The type the resource is expected to be; must be a subclass of `Resource`
	- returns: A Resource subclass corresponding to the "resourceType" entry, as specified under `type`
	*/
	public func fhir_bundledResource<T: Resource>(name: String, type: T.Type) throws -> T {
		if let url = URLForResource(name, withExtension: "json"), let data = NSData(contentsOfURL: url) {
			if let json = try NSJSONSerialization.JSONObjectWithData(data, options: []) as? FHIRJSON {
				if let resource = Resource.instantiateFrom(json, owner: nil) as? T {
					return resource
				}
				throw FHIRError.ResponseResourceTypeMismatch(json["resourceType"] as? String ?? "Unknown", "\(T.self)")
			}
			throw FHIRError.ResourceFailedToInstantiate(url.absoluteString)
		}
		throw FHIRError.ResourceFailedToInstantiate(name)
	}
}

