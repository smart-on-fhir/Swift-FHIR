//
//  PaymentNotice.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/PaymentNotice) on 2018-05-03.
//  2018, SMART Health IT.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		paymentStatus = createInstance(type: CodeableConcept.self, for: "paymentStatus", in: json, context: &instCtx, owner: self) ?? paymentStatus
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		response = createInstance(type: Reference.self, for: "response", in: json, context: &instCtx, owner: self) ?? response
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		statusDate = createInstance(type: FHIRDate.self, for: "statusDate", in: json, context: &instCtx, owner: self) ?? statusDate
		target = createInstance(type: Reference.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.paymentStatus?.decorate(json: &json, withKey: "paymentStatus", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.statusDate?.decorate(json: &json, withKey: "statusDate", errors: &errors)
		self.target?.decorate(json: &json, withKey: "target", errors: &errors)
	}
}

