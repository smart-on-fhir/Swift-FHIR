//
//  PaymentReconciliation.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// Details.
	public var detail: [PaymentReconciliationDetail]?
	
	/// Disposition Message.
	public var disposition: FHIRString?
	
	/// Printed Form Identifier.
	public var form: CodeableConcept?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Note text.
	public var note: [PaymentReconciliationNote]?
	
	/// Insurer.
	public var organization: Reference?
	
	/// complete | error | partial.
	public var outcome: CodeableConcept?
	
	/// Period covered.
	public var period: Period?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		created = try createInstance(type: DateTime.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		detail = try createInstances(of: PaymentReconciliationDetail.self, for: "detail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detail
		disposition = try createInstance(type: FHIRString.self, for: "disposition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? disposition
		form = try createInstance(type: CodeableConcept.self, for: "form", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? form
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		note = try createInstances(of: PaymentReconciliationNote.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		organization = try createInstance(type: Reference.self, for: "organization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? organization
		outcome = try createInstance(type: CodeableConcept.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		request = try createInstance(type: Reference.self, for: "request", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? request
		requestOrganization = try createInstance(type: Reference.self, for: "requestOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requestOrganization
		requestProvider = try createInstance(type: Reference.self, for: "requestProvider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requestProvider
		status = try createInstance(type: FHIRString.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		total = try createInstance(type: Money.self, for: "total", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? total
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.requestOrganization?.decorate(json: &json, withKey: "requestOrganization", errors: &errors)
		self.requestProvider?.decorate(json: &json, withKey: "requestProvider", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.total?.decorate(json: &json, withKey: "total", errors: &errors)
	}
}


/**
Details.

List of individual settlement amounts and the corresponding transaction.
*/
open class PaymentReconciliationDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "PaymentReconciliationDetail" }
	}
	
	/// Detail amount.
	public var amount: Money?
	
	/// Invoice date.
	public var date: FHIRDate?
	
	/// Payee.
	public var payee: Reference?
	
	/// Claim.
	public var request: Reference?
	
	/// Claim Response.
	public var response: Reference?
	
	/// Submitter.
	public var submitter: Reference?
	
	/// Type code.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		amount = try createInstance(type: Money.self, for: "amount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? amount
		date = try createInstance(type: FHIRDate.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		payee = try createInstance(type: Reference.self, for: "payee", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? payee
		request = try createInstance(type: Reference.self, for: "request", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? request
		response = try createInstance(type: Reference.self, for: "response", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? response
		submitter = try createInstance(type: Reference.self, for: "submitter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? submitter
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
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
Note text.

Suite of notes.
*/
open class PaymentReconciliationNote: BackboneElement {
	override open class var resourceType: String {
		get { return "PaymentReconciliationNote" }
	}
	
	/// Notes text.
	public var text: FHIRString?
	
	/// display | print | printoper.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		text = try createInstance(type: FHIRString.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

