//
//  PaymentReconciliation.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
PaymentReconciliation resource.

This resource provides the details including amount of a payment and allocates the payment items being paid.
*/
open class PaymentReconciliation: DomainResource {
	override open class var resourceType: String {
		get { return "PaymentReconciliation" }
	}
	
	/// Creation date.
	public var created: DateTime?
	
	/// Settlement particulars.
	public var detail: [PaymentReconciliationDetail]?
	
	/// Disposition message.
	public var disposition: FHIRString?
	
	/// Printed form identifier.
	public var formCode: CodeableConcept?
	
	/// Business Identifier for a payment reconciliation.
	public var identifier: [Identifier]?
	
	/// The outcome of a request for a reconciliation.
	public var outcome: ClaimProcessingCodes?
	
	/// Total amount of Payment.
	public var paymentAmount: Money?
	
	/// When payment issued.
	public var paymentDate: FHIRDate?
	
	/// Business identifier for the payment.
	public var paymentIdentifier: Identifier?
	
	/// Party generating payment.
	public var paymentIssuer: Reference?
	
	/// Period covered.
	public var period: Period?
	
	/// Note concerning processing.
	public var processNote: [PaymentReconciliationProcessNote]?
	
	/// Reference to requesting resource.
	public var request: Reference?
	
	/// Responsible practitioner.
	public var requestor: Reference?
	
	/// The status of the resource instance.
	public var status: FinancialResourceStatusCodes?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(created: DateTime, paymentAmount: Money, paymentDate: FHIRDate, status: FinancialResourceStatusCodes) {
		self.init()
		self.created = created
		self.paymentAmount = paymentAmount
		self.paymentDate = paymentDate
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		if nil == created && !instCtx.containsKey("created") {
			instCtx.addError(FHIRValidationError(missing: "created"))
		}
		detail = createInstances(of: PaymentReconciliationDetail.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		disposition = createInstance(type: FHIRString.self, for: "disposition", in: json, context: &instCtx, owner: self) ?? disposition
		formCode = createInstance(type: CodeableConcept.self, for: "formCode", in: json, context: &instCtx, owner: self) ?? formCode
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		outcome = createEnum(type: ClaimProcessingCodes.self, for: "outcome", in: json, context: &instCtx) ?? outcome
		paymentAmount = createInstance(type: Money.self, for: "paymentAmount", in: json, context: &instCtx, owner: self) ?? paymentAmount
		if nil == paymentAmount && !instCtx.containsKey("paymentAmount") {
			instCtx.addError(FHIRValidationError(missing: "paymentAmount"))
		}
		paymentDate = createInstance(type: FHIRDate.self, for: "paymentDate", in: json, context: &instCtx, owner: self) ?? paymentDate
		if nil == paymentDate && !instCtx.containsKey("paymentDate") {
			instCtx.addError(FHIRValidationError(missing: "paymentDate"))
		}
		paymentIdentifier = createInstance(type: Identifier.self, for: "paymentIdentifier", in: json, context: &instCtx, owner: self) ?? paymentIdentifier
		paymentIssuer = createInstance(type: Reference.self, for: "paymentIssuer", in: json, context: &instCtx, owner: self) ?? paymentIssuer
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		processNote = createInstances(of: PaymentReconciliationProcessNote.self, for: "processNote", in: json, context: &instCtx, owner: self) ?? processNote
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		requestor = createInstance(type: Reference.self, for: "requestor", in: json, context: &instCtx, owner: self) ?? requestor
		status = createEnum(type: FinancialResourceStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		if nil == self.created {
			errors.append(FHIRValidationError(missing: "created"))
		}
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		self.formCode?.decorate(json: &json, withKey: "formCode", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.paymentAmount?.decorate(json: &json, withKey: "paymentAmount", errors: &errors)
		if nil == self.paymentAmount {
			errors.append(FHIRValidationError(missing: "paymentAmount"))
		}
		self.paymentDate?.decorate(json: &json, withKey: "paymentDate", errors: &errors)
		if nil == self.paymentDate {
			errors.append(FHIRValidationError(missing: "paymentDate"))
		}
		self.paymentIdentifier?.decorate(json: &json, withKey: "paymentIdentifier", errors: &errors)
		self.paymentIssuer?.decorate(json: &json, withKey: "paymentIssuer", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "processNote", using: self.processNote, errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.requestor?.decorate(json: &json, withKey: "requestor", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}


/**
Settlement particulars.

Distribution of the payment amount for a previously acknowledged payable.
*/
open class PaymentReconciliationDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "PaymentReconciliationDetail" }
	}
	
	/// Amount allocated to this payable.
	public var amount: Money?
	
	/// Date of commitment to pay.
	public var date: FHIRDate?
	
	/// Business identifier of the payment detail.
	public var identifier: Identifier?
	
	/// Recipient of the payment.
	public var payee: Reference?
	
	/// Business identifier of the prior payment detail.
	public var predecessor: Identifier?
	
	/// Request giving rise to the payment.
	public var request: Reference?
	
	/// Response committing to a payment.
	public var response: Reference?
	
	/// Contact for the response.
	public var responsible: Reference?
	
	/// Submitter of the request.
	public var submitter: Reference?
	
	/// Category of payment.
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
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		payee = createInstance(type: Reference.self, for: "payee", in: json, context: &instCtx, owner: self) ?? payee
		predecessor = createInstance(type: Identifier.self, for: "predecessor", in: json, context: &instCtx, owner: self) ?? predecessor
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		response = createInstance(type: Reference.self, for: "response", in: json, context: &instCtx, owner: self) ?? response
		responsible = createInstance(type: Reference.self, for: "responsible", in: json, context: &instCtx, owner: self) ?? responsible
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
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.payee?.decorate(json: &json, withKey: "payee", errors: &errors)
		self.predecessor?.decorate(json: &json, withKey: "predecessor", errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.responsible?.decorate(json: &json, withKey: "responsible", errors: &errors)
		self.submitter?.decorate(json: &json, withKey: "submitter", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Note concerning processing.

A note that describes or explains the processing in a human readable form.
*/
open class PaymentReconciliationProcessNote: BackboneElement {
	override open class var resourceType: String {
		get { return "PaymentReconciliationProcessNote" }
	}
	
	/// Note explanatory text.
	public var text: FHIRString?
	
	/// The business purpose of the note text.
	public var type: NoteType?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		type = createEnum(type: NoteType.self, for: "type", in: json, context: &instCtx) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

