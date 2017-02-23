//
//  CodeableConcept.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/CodeableConcept) on 2017-02-23.
//  2017, SMART Health IT.
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
	public var text: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		coding = try createInstances(of: Coding.self, for: "coding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? coding
		text = try createInstance(type: FHIRString.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "coding", using: self.coding, errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
	}
}

