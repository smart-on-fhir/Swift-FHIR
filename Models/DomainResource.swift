//
//  DomainResource.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DomainResource) on 2015-04-03.
//  2015, SMART Health IT.
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? FHIRJSON {
				self.text = Narrative(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

