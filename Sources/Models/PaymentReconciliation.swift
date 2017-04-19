//
//  PaymentReconciliation.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
PaymentReconciliation resource.

This resource provides payment details and claim references supporting a bulk payment.
*/
open class PaymentReconciliation: DomainResource {
	override open class var resourceType: String {
		get { return "PaymentReconciliation" }
	}
	
	/// Creation date.
	public var created: DateTime?
	
	/// List of settlements.
	public var detail: [PaymentReconciliationDetail]?
	
	/// Disposition Message.
	public var disposition: FHIRString?
	
	/// Printed Form Identifier.
	public var form: CodeableConcept?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Insurer.
	public var organization: Reference?
	
	/// complete | error | partial.
	public var outcome: CodeableConcept?
	
	/// Period covered.
	public var period: Period?
	
	/// Processing comments.
	public var processNote: [PaymentReconciliationProcessNote]?
	
	/// Claim reference.
	public var request: Reference?
	
	/// Responsible organization.
	public var requestOrganization: Reference?
	
	/// Responsible practitioner.
	public var requestProvider: Reference?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	/// Total amount of Payment.
	public var total: Money?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		detail = createInstances(of: PaymentReconciliationDetail.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		disposition = createInstance(type: FHIRString.self, for: "disposition", in: json, context: &instCtx, owner: self) ?? disposition
		form = createInstance(type: CodeableConcept.self, for: "form", in: json, context: &instCtx, owner: self) ?? form
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		outcome = createInstance(type: CodeableConcept.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		processNote = createInstances(of: PaymentReconciliationProcessNote.self, for: "processNote", in: json, context: &instCtx, owner: self) ?? processNote
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		requestOrganization = createInstance(type: Reference.self, for: "requestOrganization", in: json, context: &instCtx, owner: self) ?? requestOrganization
		requestProvider = createInstance(type: Reference.self, for: "requestProvider", in: json, context: &instCtx, owner: self) ?? requestProvider
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		total = createInstance(type: Money.self, for: "total", in: json, context: &instCtx, owner: self) ?? total
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "processNote", using: self.processNote, errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.requestOrganization?.decorate(json: &json, withKey: "requestOrganization", errors: &errors)
		self.requestProvider?.decorate(json: &json, withKey: "requestProvider", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.total?.decorate(json: &json, withKey: "total", errors: &errors)
	}
}


/**
List of settlements.

List of individual settlement amounts and the corresponding transaction.
*/
open class PaymentReconciliationDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "PaymentReconciliationDetail" }
	}
	
	/// Amount being paid.
	public var amount: Money?
	
	/// Invoice date.
	public var date: FHIRDate?
	
	/// Organization which is receiving the payment.
	public var payee: Reference?
	
	/// Claim.
	public var request: Reference?
	
	/// Claim Response.
	public var response: Reference?
	
	/// Organization which submitted the claim.
	public var submitter: Reference?
	
	/// Type code.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Money.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		date = createInstance(type: FHIRDate.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		payee = createInstance(type: Reference.self, for: "payee", in: json, context: &instCtx, owner: self) ?? payee
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		response = createInstance(type: Reference.self, for: "response", in: json, context: &instCtx, owner: self) ?? response
		submitter = createInstance(type: Reference.self, for: "submitter", in: json, context: &instCtx, owner: self) ?? submitter
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.payee?.decorate(json: &json, withKey: "payee", errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.submitter?.decorate(json: &json, withKey: "submitter", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Processing comments.

Suite of notes.
*/
open class PaymentReconciliationProcessNote: BackboneElement {
	override open class var resourceType: String {
		get { return "PaymentReconciliationProcessNote" }
	}
	
	/// Comment on the processing.
	public var text: FHIRString?
	
	/// display | print | printoper.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

