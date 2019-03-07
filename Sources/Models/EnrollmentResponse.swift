//
//  EnrollmentResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/EnrollmentResponse) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
EnrollmentResponse resource.

This resource provides enrollment and plan details from the processing of an EnrollmentRequest resource.
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
	
	/// Processing status: error, complete.
	public var outcome: ClaimProcessingCodes?
	
	/// Claim reference.
	public var request: Reference?
	
	/// Responsible practitioner.
	public var requestProvider: Reference?
	
	/// The status of the resource instance.
	public var status: FinancialResourceStatusCodes?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		disposition = createInstance(type: FHIRString.self, for: "disposition", in: json, context: &instCtx, owner: self) ?? disposition
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		outcome = createEnum(type: ClaimProcessingCodes.self, for: "outcome", in: json, context: &instCtx) ?? outcome
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		requestProvider = createInstance(type: Reference.self, for: "requestProvider", in: json, context: &instCtx, owner: self) ?? requestProvider
		status = createEnum(type: FinancialResourceStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.requestProvider?.decorate(json: &json, withKey: "requestProvider", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}

