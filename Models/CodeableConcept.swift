//
//  CodeableConcept.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/CodeableConcept) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Concept - reference to a terminology or just  text.
 *
 *  A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
 */
public class CodeableConcept: FHIRElement
{
	override public class var resourceName: String {
		get { return "CodeableConcept" }
	}
	
	/// Code defined by a terminology system
	public var coding: [Coding]?
	
	/// Plain text representation of the concept
	public var text: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["coding"] as? [JSONDictionary] {
				self.coding = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let coding = self.coding {
			json["coding"] = Coding.asJSONArray(coding)
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

