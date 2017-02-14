//
//  EnrollmentRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/EnrollmentRequest) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Enrollment request.

This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
*/
open class EnrollmentRequest: DomainResource {
	override open class var resourceType: String {
		get { return "EnrollmentRequest" }
	}
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Target.
	public var insurer: Reference?
	
	/// Responsible organization.
	public var organization: Reference?
	
	/// Responsible practitioner.
	public var provider: Reference?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	/// The subject of the Products and Services.
	public var subject: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		coverage = try createInstance(type: Reference.self, for: "coverage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? coverage
		created = try createInstance(type: DateTime.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		insurer = try createInstance(type: Reference.self, for: "insurer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? insurer
		organization = try createInstance(type: Reference.self, for: "organization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? organization
		provider = try createInstance(type: Reference.self, for: "provider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? provider
		status = try createInstance(type: FHIRString.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
	}
}

