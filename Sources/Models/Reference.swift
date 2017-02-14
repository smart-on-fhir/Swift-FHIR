//
//  Reference.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Reference) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
A reference from one resource to another.
*/
open class Reference: Element {
	override open class var resourceType: String {
		get { return "Reference" }
	}
	
	/// Text alternative for the resource.
	public var display: FHIRString?
	
	/// Logical reference, when literal reference is not known.
	public var identifier: Identifier?
	
	/// Literal reference, Relative, internal or absolute URL.
	public var reference: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		display = try createInstance(type: FHIRString.self, for: "display", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? display
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		reference = try createInstance(type: FHIRString.self, for: "reference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reference
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
	}
}

