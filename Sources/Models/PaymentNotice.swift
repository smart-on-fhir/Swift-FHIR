//
//  PaymentNotice.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/PaymentNotice) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
PaymentNotice request.

This resource provides the status of the payment for goods and services rendered, and the request and response resource
references.
*/
open class PaymentNotice: DomainResource {
	override open class var resourceType: String {
		get { return "PaymentNotice" }
	}
	
	/// Creation date.
	public var created: DateTime?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Responsible organization.
	public var organization: Reference?
	
	/// Whether payment has been sent or cleared.
	public var paymentStatus: CodeableConcept?
	
	/// Responsible practitioner.
	public var provider: Reference?
	
	/// Request reference.
	public var request: Reference?
	
	/// Response reference.
	public var response: Reference?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	/// Payment or clearing date.
	public var statusDate: FHIRDate?
	
	/// Insurer or Regulatory body.
	public var target: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		created = try createInstance(type: DateTime.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		organization = try createInstance(type: Reference.self, for: "organization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? organization
		paymentStatus = try createInstance(type: CodeableConcept.self, for: "paymentStatus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? paymentStatus
		provider = try createInstance(type: Reference.self, for: "provider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? provider
		request = try createInstance(type: Reference.self, for: "request", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? request
		response = try createInstance(type: Reference.self, for: "response", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? response
		status = try createInstance(type: FHIRString.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		statusDate = try createInstance(type: FHIRDate.self, for: "statusDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? statusDate
		target = try createInstance(type: Reference.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.paymentStatus?.decorate(json: &json, withKey: "paymentStatus", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.statusDate?.decorate(json: &json, withKey: "statusDate", errors: &errors)
		self.target?.decorate(json: &json, withKey: "target", errors: &errors)
	}
}

