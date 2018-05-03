//
//  EnrollmentRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/EnrollmentRequest) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Enrol in coverage.

This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
*/
open class EnrollmentRequest: DomainResource {
	override open class var resourceType: String {
		get { return "EnrollmentRequest" }
	}
	
	/// The subject to be enrolled.
	public var candidate: Reference?
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Target.
	public var insurer: Reference?
	
	/// Responsible practitioner.
	public var provider: Reference?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		candidate = createInstance(type: Reference.self, for: "candidate", in: json, context: &instCtx, owner: self) ?? candidate
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.candidate?.decorate(json: &json, withKey: "candidate", errors: &errors)
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}

