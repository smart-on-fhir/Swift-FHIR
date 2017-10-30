//
//  Resource+Instantiation.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 8/14/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


extension Resource {
	
	/**
	Attempt to instantiate a Resource of the receiving class by reading a JSON file at the given filesystem path.
	
	- parameter path: The local path to read the JSON file from
	- returns:        An instance of the receiving class
	*/
	public class func instantiate(fromPath path: String) throws -> Self {
		let data = try Data(contentsOf: URL(fileURLWithPath: path), options: [])
		let json = try JSONSerialization.jsonObject(with: data, options: []) as! FHIRJSON
		return try self.init(json: json, owner: nil)        // must use required initializer on dynamic type
	}
}


public extension Foundation.Bundle {
	
	/**
	Attempt to read a JSON file with the given name (.json) from the bundle, parse the JSON and instantiate a FHIR resource corresponding
	to the "resourceType" in the file.
	
	- parameter name: The filename, without ".json" extension, to read the resource from
	- parameter type: The type the resource is expected to be; must be a subclass of `Resource`
	- returns:        A Resource subclass corresponding to the "resourceType" entry, as specified under `type`
	*/
	public func fhir_bundledResource<T: Resource>(_ name: String, type: T.Type) throws -> T {
		return try fhir_bundledResource(name, subdirectory: nil, type: type)
	}
	
	/**
	Attempts to read a JSON file with the given name (without ".json") from the given directory. Parses the JSON and instantiates a FHIR
	resource corresponding to "resourceType".
	
	- parameter name:         The filename, without ".json" extension, to read the resource from
	- parameter subdirectory: The directory name to search for the resource; `nil` for top level
	- parameter type:         The type the resource is expected to be; must be a subclass of `Resource`
	- returns:                A Resource subclass corresponding to the "resourceType" entry, as specified under `type`
	*/
	public func fhir_bundledResource<T: Resource>(_ name: String, subdirectory: String?, type: T.Type) throws -> T {
		let json = try fhir_json(from: name, subdirectory: subdirectory)
		var context = FHIRInstantiationContext()
		let resource = T.instantiate(from: json, owner: nil, context: &context)
		try context.validate()
		return resource
	}
	
	/**
	Attempts to read a JSON file with the given name (without ".json") from the given directory. Parses the JSON and instantiates a FHIR
	resource corresponding to "resourceType".
	
	- parameter name:         The filename, without ".json" extension, to read the resource from
	- parameter subdirectory: The directory name to search for the resource; `nil` for top level
	- parameter type:         The type the resource is expected to be; must be a subclass of `Resource`
	- returns:                A Resource subclass corresponding to the "resourceType" entry, as specified under `type`
	*/
	public func fhir_json(from name: String, subdirectory: String?) throws -> FHIRJSON {
		if let url = url(forResource: name, withExtension: "json", subdirectory: subdirectory) {
			let data = try Data(contentsOf: url)
			if let json = try JSONSerialization.jsonObject(with: data, options: []) as? FHIRJSON {
				return json
			}
			throw FHIRError.resourceFailedToInstantiate(url.description, "Invalid JSON")
		}
		throw FHIRError.resourceFailedToInstantiate((nil == subdirectory) ? "\(name).json" : "\(subdirectory!)/\(name).json", "Resource not found in \(self)")
	}
}

