//
//  Reference.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Reference) on 2019-03-01.
//  2019, SMART Health IT.
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
	
	/// Type the reference refers to (e.g. "Patient").
	public var type: FHIRURL?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		display = createInstance(type: FHIRString.self, for: "display", in: json, context: &instCtx, owner: self) ?? display
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		reference = createInstance(type: FHIRString.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		type = createInstance(type: FHIRURL.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

