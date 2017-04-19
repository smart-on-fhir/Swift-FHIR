//
//  EnrollmentRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/EnrollmentRequest) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
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

