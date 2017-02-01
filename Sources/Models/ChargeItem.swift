//
//  ChargeItem.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/ChargeItem) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
ChargeItem.
*/
open class ChargeItem: DomainResource {
	override open class var resourceType: String {
		get { return "ChargeItem" }
	}
	
	/// Account to place this charge.
	public var account: Reference?
	
	/// Anatomical location, if relevant.
	public var bodysite: [CodeableConcept]?
	
	/// Code of the ChargeItem.
	public var code: CodeableConcept?
	
	/// Encounter / Episode associated with event.
	public var context: Reference?
	
	/// Definition of the Charge Item.
	public var definition: [Reference]?
	
	/// Date the charge item was entered.
	public var enteredDate: DateTime?
	
	/// Individual who was entering.
	public var enterer: Reference?
	
	/// Factor overriding the associated rules.
	public var factorOverride: FHIRDecimal?
	
	/// Business Identifer for item.
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
	
	/// Why was the charged service rendered?.
	public var reasonCodeableConcept: [CodeableConcept]?
	
	/// Organization requesting the charged service.
	public var requestingOrganization: Reference?
	
	/// Which rendered service is being charged?.
	public var service: [Reference]?
	
	/// Individual service was done for/to.
	public var subject: Reference?
	
	/// Further information supporting the this charge.
	public var supportingInformation: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(subject: Reference) {
		self.init()
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		account = try createInstance(type: Reference.self, for: "account", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? account
		bodysite = try createInstances(of: CodeableConcept.self, for: "bodysite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodysite
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		definition = try createInstances(of: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		enteredDate = try createInstance(type: DateTime.self, for: "enteredDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? enteredDate
		enterer = try createInstance(type: Reference.self, for: "enterer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? enterer
		factorOverride = try createInstance(type: FHIRDecimal.self, for: "factorOverride", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? factorOverride
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		occurrenceDateTime = try createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceDateTime
		occurrencePeriod = try createInstance(type: Period.self, for: "occurrencePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrencePeriod
		occurrenceTiming = try createInstance(type: Timing.self, for: "occurrenceTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceTiming
		overrideReason = try createInstance(type: FHIRString.self, for: "overrideReason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? overrideReason
		partOf = try createInstances(of: Reference.self, for: "partOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partOf
		participant = try createInstances(of: ChargeItemParticipant.self, for: "participant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? participant
		performingOrganization = try createInstance(type: Reference.self, for: "performingOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performingOrganization
		priceOverride = try createInstance(type: Money.self, for: "priceOverride", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priceOverride
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		reasonCodeableConcept = try createInstances(of: CodeableConcept.self, for: "reasonCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCodeableConcept
		requestingOrganization = try createInstance(type: Reference.self, for: "requestingOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requestingOrganization
		service = try createInstances(of: Reference.self, for: "service", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? service
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		supportingInformation = try createInstances(of: Reference.self, for: "supportingInformation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingInformation
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.account?.decorate(json: &json, withKey: "account", errors: &errors)
		arrayDecorate(json: &json, withKey: "bodysite", using: self.bodysite, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
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
		arrayDecorate(json: &json, withKey: "reasonCodeableConcept", using: self.reasonCodeableConcept, errors: &errors)
		self.requestingOrganization?.decorate(json: &json, withKey: "requestingOrganization", errors: &errors)
		arrayDecorate(json: &json, withKey: "service", using: self.service, errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actor = try createInstance(type: Reference.self, for: "actor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actor
		if nil == actor && !presentKeys.contains("actor") {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		role = try createInstance(type: CodeableConcept.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		
		return errors.isEmpty ? nil : errors
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

