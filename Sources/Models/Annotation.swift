//
//  Annotation.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Annotation) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authorReference = try createInstance(type: Reference.self, for: "authorReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authorReference
		authorString = try createInstance(type: FHIRString.self, for: "authorString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authorString
		text = try createInstance(type: FHIRString.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		if nil == text && !presentKeys.contains("text") {
			errors.append(FHIRValidationError(missing: "text"))
		}
		time = try createInstance(type: DateTime.self, for: "time", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? time
		
		return errors.isEmpty ? nil : errors
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

