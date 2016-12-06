//
//  CodeableConcept.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/CodeableConcept) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Concept - reference to a terminology or just  text.

A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
*/
open class CodeableConcept: Element {
	override open class var resourceType: String {
		get { return "CodeableConcept" }
	}
	
	/// Code defined by a terminology system.
	public var coding: [Coding]?
	
	/// Plain text representation of the concept.
	public var text: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["coding"] {
			presentKeys.insert("coding")
			if let val = exist as? [FHIRJSON] {
				do {
					self.coding = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "coding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "coding", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? String {
				self.text = val
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let coding = self.coding {
			json["coding"] = coding.map() { $0.asJSON(errors: &errors) }
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

