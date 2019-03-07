//
//  PaymentNotice.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/PaymentNotice) on 2019-03-01.
//  2019, SMART Health IT.
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
	
	/// Monetary amount of the payment.
	public var amount: Money?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Business Identifier for the payment noctice.
	public var identifier: [Identifier]?
	
	/// Party being paid.
	public var payee: Reference?
	
	/// Payment reference.
	public var payment: Reference?
	
	/// Payment or clearing date.
	public var paymentDate: FHIRDate?
	
	/// Issued or cleared Status of the payment.
	public var paymentStatus: CodeableConcept?
	
	/// Responsible practitioner.
	public var provider: Reference?
	
	/// Party being notified.
	public var recipient: Reference?
	
	/// Request reference.
	public var request: Reference?
	
	/// Response reference.
	public var response: Reference?
	
	/// The status of the resource instance.
	public var status: FinancialResourceStatusCodes?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(amount: Money, created: DateTime, payment: Reference, recipient: Reference, status: FinancialResourceStatusCodes) {
		self.init()
		self.amount = amount
		self.created = created
		self.payment = payment
		self.recipient = recipient
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Money.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		if nil == amount && !instCtx.containsKey("amount") {
			instCtx.addError(FHIRValidationError(missing: "amount"))
		}
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		if nil == created && !instCtx.containsKey("created") {
			instCtx.addError(FHIRValidationError(missing: "created"))
		}
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		payee = createInstance(type: Reference.self, for: "payee", in: json, context: &instCtx, owner: self) ?? payee
		payment = createInstance(type: Reference.self, for: "payment", in: json, context: &instCtx, owner: self) ?? payment
		if nil == payment && !instCtx.containsKey("payment") {
			instCtx.addError(FHIRValidationError(missing: "payment"))
		}
		paymentDate = createInstance(type: FHIRDate.self, for: "paymentDate", in: json, context: &instCtx, owner: self) ?? paymentDate
		paymentStatus = createInstance(type: CodeableConcept.self, for: "paymentStatus", in: json, context: &instCtx, owner: self) ?? paymentStatus
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		recipient = createInstance(type: Reference.self, for: "recipient", in: json, context: &instCtx, owner: self) ?? recipient
		if nil == recipient && !instCtx.containsKey("recipient") {
			instCtx.addError(FHIRValidationError(missing: "recipient"))
		}
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		response = createInstance(type: Reference.self, for: "response", in: json, context: &instCtx, owner: self) ?? response
		status = createEnum(type: FinancialResourceStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		if nil == self.amount {
			errors.append(FHIRValidationError(missing: "amount"))
		}
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		if nil == self.created {
			errors.append(FHIRValidationError(missing: "created"))
		}
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.payee?.decorate(json: &json, withKey: "payee", errors: &errors)
		self.payment?.decorate(json: &json, withKey: "payment", errors: &errors)
		if nil == self.payment {
			errors.append(FHIRValidationError(missing: "payment"))
		}
		self.paymentDate?.decorate(json: &json, withKey: "paymentDate", errors: &errors)
		self.paymentStatus?.decorate(json: &json, withKey: "paymentStatus", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.recipient?.decorate(json: &json, withKey: "recipient", errors: &errors)
		if nil == self.recipient {
			errors.append(FHIRValidationError(missing: "recipient"))
		}
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}

