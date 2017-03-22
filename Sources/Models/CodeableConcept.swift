//
//  CodeableConcept.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/CodeableConcept) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		coding = createInstances(of: Coding.self, for: "coding", in: json, context: &instCtx, owner: self) ?? coding
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "coding", using: self.coding, errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
	}
}

