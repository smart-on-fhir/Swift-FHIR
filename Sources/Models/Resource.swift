//
//  Resource.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Resource) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
Base Resource.

This is the base resource type for everything.
*/
open class Resource: FHIRAbstractResource {
	override open class var resourceType: String {
		get { return "Resource" }
	}
	
	/// Logical id of this artifact.
	public var id: FHIRString?
	
	/// A set of rules under which this content was created.
	public var implicitRules: FHIRURL?
	
	/// Language of the resource content.
	public var language: FHIRString?
	
	/// Metadata about the resource.
	public var meta: Meta?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		id = try createInstance(type: FHIRString.self, for: "id", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? id
		implicitRules = try createInstance(type: FHIRURL.self, for: "implicitRules", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? implicitRules
		language = try createInstance(type: FHIRString.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		meta = try createInstance(type: Meta.self, for: "meta", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? meta
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.id?.decorate(json: &json, withKey: "id", errors: &errors)
		self.implicitRules?.decorate(json: &json, withKey: "implicitRules", errors: &errors)
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.meta?.decorate(json: &json, withKey: "meta", errors: &errors)
	}
}

