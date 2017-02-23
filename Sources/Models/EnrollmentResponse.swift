//
//  EnrollmentResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/EnrollmentResponse) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
EnrollmentResponse resource.

This resource provides enrollment and plan details from the processing of an Enrollment resource.
*/
open class EnrollmentResponse: DomainResource {
	override open class var resourceType: String {
		get { return "EnrollmentResponse" }
	}
	
	/// Creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: FHIRString?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Insurer.
	public var organization: Reference?
	
	/// complete | error | partial.
	public var outcome: CodeableConcept?
	
	/// Claim reference.
	public var request: Reference?
	
	/// Responsible organization.
	public var requestOrganization: Reference?
	
	/// Responsible practitioner.
	public var requestProvider: Reference?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		created = try createInstance(type: DateTime.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		disposition = try createInstance(type: FHIRString.self, for: "disposition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? disposition
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		organization = try createInstance(type: Reference.self, for: "organization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? organization
		outcome = try createInstance(type: CodeableConcept.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		request = try createInstance(type: Reference.self, for: "request", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? request
		requestOrganization = try createInstance(type: Reference.self, for: "requestOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requestOrganization
		requestProvider = try createInstance(type: Reference.self, for: "requestProvider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requestProvider
		status = try createInstance(type: FHIRString.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.requestOrganization?.decorate(json: &json, withKey: "requestOrganization", errors: &errors)
		self.requestProvider?.decorate(json: &json, withKey: "requestProvider", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}

