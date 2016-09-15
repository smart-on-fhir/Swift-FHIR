//
//  CodeableConcept.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/CodeableConcept) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Concept - reference to a terminology or just  text.
 *
 *  A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
 */
public class CodeableConcept: Element {
	override public class var resourceType: String {
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
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["coding"] {
				presentKeys.insert("coding")
				if let val = exist as? [FHIRJSON] {
					self.coding = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "coding", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: type(of: exist)))
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

