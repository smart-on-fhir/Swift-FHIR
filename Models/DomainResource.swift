//
//  DomainResource.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/DomainResource) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A resource with narrative, extensions, and contained resources.
 *
 *  A resource that includes narrative, extensions, and contained resources.
 */
public class DomainResource: Resource
{
	override public class var resourceName: String {
		get { return "DomainResource" }
	}
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? JSONDictionary {
				self.text = Narrative(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

