//
//  ChargeItem.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ChargeItem) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Item containing charge code(s) associated with the provision of healthcare provider products.

The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore
referring not only to the product, but containing in addition details of the provision, like date, time, amounts and
participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal cost
allocation.
*/
open class ChargeItem: DomainResource {
	override open class var resourceType: String {
		get { return "ChargeItem" }
	}
	
	/// Account to place this charge.
	public var account: [Reference]?
	
	/// Anatomical location, if relevant.
	public var bodysite: [CodeableConcept]?
	
	/// A code that identifies the charge, like a billing code.
	public var code: CodeableConcept?
	
	/// Encounter / Episode associated with event.
	public var context: Reference?
	
	/// Defining information about the code of this charge item.
	public var definition: [FHIRURL]?
	
	/// Date the charge item was entered.
	public var enteredDate: DateTime?
	
	/// Individual who was entering.
	public var enterer: Reference?
	
	/// Factor overriding the associated rules.
	public var factorOverride: FHIRDecimal?
	
	/// Business Identifier for item.
	public var identifier: Identifier?
	
	/// Comments made about the ChargeItem.
	public var note: [Annotation]?
	
	/// When the charged service was applied.
	public var occurrenceDateTime: DateTime?
	
	/// When the charged service was applied.
	public var occurrencePeriod: Period?
	
	/// When the charged service was applied.
	public var occurrenceTiming: Timing?
	
	/// Reason for overriding the list price/factor.
	public var overrideReason: FHIRString?
	
	/// Part of referenced ChargeItem.
	public var partOf: [Reference]?
	
	/// Who performed charged service.
	public var participant: [ChargeItemParticipant]?
	
	/// Organization providing the charged sevice.
	public var performingOrganization: Reference?
	
	/// Price overriding the associated rules.
	public var priceOverride: Money?
	
	/// Quantity of which the charge item has been serviced.
	public var quantity: Quantity?
	
	/// Why was the charged  service rendered?.
	public var reason: [CodeableConcept]?
	
	/// Organization requesting the charged service.
	public var requestingOrganization: Reference?
	
	/// Which rendered service is being charged?.
	public var service: [Reference]?
	
	/// The current state of the ChargeItem.
	public var status: ChargeItemStatus?
	
	/// Individual service was done for/to.
	public var subject: Reference?
	
	/// Further information supporting the this charge.
	public var supportingInformation: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, status: ChargeItemStatus, subject: Reference) {
		self.init()
		self.code = code
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		account = createInstances(of: Reference.self, for: "account", in: json, context: &instCtx, owner: self) ?? account
		bodysite = createInstances(of: CodeableConcept.self, for: "bodysite", in: json, context: &instCtx, owner: self) ?? bodysite
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		definition = createInstances(of: FHIRURL.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		enteredDate = createInstance(type: DateTime.self, for: "enteredDate", in: json, context: &instCtx, owner: self) ?? enteredDate
		enterer = createInstance(type: Reference.self, for: "enterer", in: json, context: &instCtx, owner: self) ?? enterer
		factorOverride = createInstance(type: FHIRDecimal.self, for: "factorOverride", in: json, context: &instCtx, owner: self) ?? factorOverride
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		occurrencePeriod = createInstance(type: Period.self, for: "occurrencePeriod", in: json, context: &instCtx, owner: self) ?? occurrencePeriod
		occurrenceTiming = createInstance(type: Timing.self, for: "occurrenceTiming", in: json, context: &instCtx, owner: self) ?? occurrenceTiming
		overrideReason = createInstance(type: FHIRString.self, for: "overrideReason", in: json, context: &instCtx, owner: self) ?? overrideReason
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		participant = createInstances(of: ChargeItemParticipant.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		performingOrganization = createInstance(type: Reference.self, for: "performingOrganization", in: json, context: &instCtx, owner: self) ?? performingOrganization
		priceOverride = createInstance(type: Money.self, for: "priceOverride", in: json, context: &instCtx, owner: self) ?? priceOverride
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		reason = createInstances(of: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		requestingOrganization = createInstance(type: Reference.self, for: "requestingOrganization", in: json, context: &instCtx, owner: self) ?? requestingOrganization
		service = createInstances(of: Reference.self, for: "service", in: json, context: &instCtx, owner: self) ?? service
		status = createEnum(type: ChargeItemStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		supportingInformation = createInstances(of: Reference.self, for: "supportingInformation", in: json, context: &instCtx, owner: self) ?? supportingInformation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "account", using: self.account, errors: &errors)
		arrayDecorate(json: &json, withKey: "bodysite", using: self.bodysite, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		self.enteredDate?.decorate(json: &json, withKey: "enteredDate", errors: &errors)
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.factorOverride?.decorate(json: &json, withKey: "factorOverride", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.occurrenceTiming?.decorate(json: &json, withKey: "occurrenceTiming", errors: &errors)
		self.overrideReason?.decorate(json: &json, withKey: "overrideReason", errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.performingOrganization?.decorate(json: &json, withKey: "performingOrganization", errors: &errors)
		self.priceOverride?.decorate(json: &json, withKey: "priceOverride", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		self.requestingOrganization?.decorate(json: &json, withKey: "requestingOrganization", errors: &errors)
		arrayDecorate(json: &json, withKey: "service", using: self.service, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "supportingInformation", using: self.supportingInformation, errors: &errors)
	}
}


/**
Who performed charged service.

Indicates who or what performed or participated in the charged service.
*/
open class ChargeItemParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "ChargeItemParticipant" }
	}
	
	/// Individual who was performing.
	public var actor: Reference?
	
	/// What type of performance was done.
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actor = createInstance(type: Reference.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		if nil == actor && !instCtx.containsKey("actor") {
			instCtx.addError(FHIRValidationError(missing: "actor"))
		}
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
	}
}

