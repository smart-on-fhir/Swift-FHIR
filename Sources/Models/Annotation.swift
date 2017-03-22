//
//  Annotation.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Annotation) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Text node with attribution.

A  text note which also  contains information about who made the statement and when.
*/
open class Annotation: Element {
	override open class var resourceType: String {
		get { return "Annotation" }
	}
	
	/// Individual responsible for the annotation.
	public var authorReference: Reference?
	
	/// Individual responsible for the annotation.
	public var authorString: FHIRString?
	
	/// The annotation  - text content.
	public var text: FHIRString?
	
	/// When the annotation was made.
	public var time: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(text: FHIRString) {
		self.init()
		self.text = text
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authorReference = createInstance(type: Reference.self, for: "authorReference", in: json, context: &instCtx, owner: self) ?? authorReference
		authorString = createInstance(type: FHIRString.self, for: "authorString", in: json, context: &instCtx, owner: self) ?? authorString
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		if nil == text && !instCtx.containsKey("text") {
			instCtx.addError(FHIRValidationError(missing: "text"))
		}
		time = createInstance(type: DateTime.self, for: "time", in: json, context: &instCtx, owner: self) ?? time
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authorReference?.decorate(json: &json, withKey: "authorReference", errors: &errors)
		self.authorString?.decorate(json: &json, withKey: "authorString", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		if nil == self.text {
			errors.append(FHIRValidationError(missing: "text"))
		}
		self.time?.decorate(json: &json, withKey: "time", errors: &errors)
	}
}

