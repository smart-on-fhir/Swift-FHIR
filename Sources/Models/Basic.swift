//
//  Basic.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Basic) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
Resource for non-supported content.

Basic is used for handling concepts not yet defined in FHIR, narrative-only resources that don't map to an existing
resource, and custom resources not appropriate for inclusion in the FHIR specification.
*/
open class Basic: DomainResource {
	override open class var resourceType: String {
		get { return "Basic" }
	}
	
	/// Who created.
	public var author: Reference?
	
	/// Kind of Resource.
	public var code: CodeableConcept?
	
	/// When created.
	public var created: FHIRDate?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Identifies the focus of this resource.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		author = try createInstance(type: Reference.self, for: "author", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? author
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		created = try createInstance(type: FHIRDate.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
	}
}

