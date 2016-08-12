//
//  CodeableConcept.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/CodeableConcept) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Concept - reference to a terminology or just  text.
 *
 *  A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
 */
public class CodeableConcept: Element {
	override public class var resourceName: String {
		get { return "CodeableConcept" }
	}
	
	/// Code defined by a terminology system.
	public var coding: [Coding]?
	
	/// Plain text representation of the concept.
	public var text: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["coding"] {
				presentKeys.insert("coding")
				if let val = exist as? [FHIRJSON] {
					self.coding = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "coding", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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

