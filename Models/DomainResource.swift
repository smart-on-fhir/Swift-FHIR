//
//  DomainResource.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 (http://hl7.org/fhir/StructureDefinition/DomainResource) on 2015-09-23.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? FHIRJSON {
					self.text = Narrative(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

