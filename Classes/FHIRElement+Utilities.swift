//
//  FHIRElement+Utilities.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 8/14/15.
//  Copyright (c) 2015 SMART Health IT. All rights reserved.
//

import Foundation


public extension FHIRElement
{
	/** Returns an array of `Extension` elements for the given extension URL, if any. */
	public final func extensionsFor(uri: String) -> [Extension]? {
		return extension_fhir?.filter() { return $0.url?.absoluteString == uri }
	}
}


public extension FHIRResource
{
	/**
	Attempt to instantiate a Resource of the receiving class by reading a JSON file at the given filesystem path.
	
	:param path: The local path to read the JSON file from
	:param error: An NSError pointer to fill on failure
	:returns: An instance of the receiving class or nil
	*/
	final class func instantiateFromPath(path: String) throws -> Self? {
		let data = try NSData(contentsOfFile: path, options: [])
		let json = try NSJSONSerialization.JSONObjectWithData(data, options: []) as? FHIRJSON
		return self.init(json: json)
	}
}


extension NSBundle
{
	/**
	Attempt to read a JSON file with the given name (.json) from the bundle, parse the JSON and instantiate a FHIR resource corresponding
	to the "resourceType" in the file.
	
	:returns: A FHIRResource subclass corresponding to the "resourceType" entry or nil
	*/
	public func fhir_bundledResource(name: String) throws -> FHIRResource? {
		if let url = URLForResource(name, withExtension: "json"), let data = NSData(contentsOfURL: url) {
			if let json = try NSJSONSerialization.JSONObjectWithData(data, options: []) as? FHIRJSON {
				return FHIRElement.instantiateFrom(json, owner: nil) as? FHIRResource
			}
			throw NSError(domain: "FHIRErrorDomain", code: 0, userInfo: [NSLocalizedDescriptionKey: "Failed to deserialize JSON of bundled resource as FHIRJSON"])
		}
		throw NSError(domain: "FHIRErrorDomain", code: 0, userInfo: [NSLocalizedDescriptionKey: "Failed to read bundled resource named «\(name)»"])
	}
}

