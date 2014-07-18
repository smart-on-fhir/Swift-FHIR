//
//  FHIRContainedResource.swift
//  SMART-on-FHIR
//
//  Created by Pascal Pfiffner on 7/18/14.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Contained resources are store to instances of this class until they need to be resolved.
 *
 *  http://hl7.org/implement/standards/fhir/references.html#contained
 */
class FHIRContainedResource
{
	/*! The id of the resource. */
	var id: String?
	
	/*! The type of the resource. */
	var type: String?
	
	/*! The complete JSON dictionary. */
	var json: NSDictionary?
	
	init(id: String?, type: String?, json: NSDictionary?) {
		self.id = id
		self.type = type
		self.json = json
	}
	
	convenience init(json: NSDictionary) {
		let id = json["_id"] as? String
		let type = json["resourceType"] as? String
		self.init(id: id, type: type, json: json)
	}
	
	
	// MARK: Resolving References
	
	func resolve() -> FHIRElement? {
		if type && json {
			return FHIRElement.factory(type!, json: json!)
		}
		
		return nil
	}
	
	class func processIdentifier(identifier: String?) -> String? {
		if identifier?.utf16count > 0 {
			
			// process fragment-only id
			if "#" == identifier!.substringToIndex(1) {
				return identifier!.substringFromIndex(1)
			}
			
			// TODO: resolve other
			println("TODO: resolve id \(identifier)")
		}
		return nil
	}
}

