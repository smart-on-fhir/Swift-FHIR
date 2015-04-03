//
//  CodeableConcept.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/CodeableConcept) on 2015-04-03.
//  2015, SMART Health IT.
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["coding"] as? [FHIRJSON] {
				self.coding = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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

