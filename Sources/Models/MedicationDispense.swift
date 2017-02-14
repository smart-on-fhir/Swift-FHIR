//
//  MedicationDispense.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/MedicationDispense) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Dispensing a medication to a named patient.

Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a
description of the medication product (supply) provided and the instructions for administering the medication.  The
medication dispense is the result of a pharmacy system responding to a medication order.
*/
open class MedicationDispense: DomainResource {
	override open class var resourceType: String {
		get { return "MedicationDispense" }
	}
	
	/// Medication order that authorizes the dispense.
	public var authorizingPrescription: [Reference]?
	
	/// Type of medication dispense.
	public var category: CodeableConcept?
	
	/// Encounter / Episode associated with event.
	public var context: Reference?
	
	/// Amount of medication expressed as a timing amount.
	public var daysSupply: Quantity?
	
	/// Where the medication was sent.
	public var destination: Reference?
	
	/// Clinical Issue with action.
	public var detectedIssue: [Reference]?
	
	/// Medicine administration instructions to the patient/caregiver.
	public var dosageInstruction: [DosageInstruction]?
	
	/// A list of events of interest in the lifecycle.
	public var eventHistory: [Reference]?
	
	/// External identifier.
	public var identifier: [Identifier]?
	
	/// What medication was supplied.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// What medication was supplied.
	public var medicationReference: Reference?
	
	/// Whether the dispense was or was not performed.
	public var notDone: FHIRBool?
	
	/// Why a dispense was not performed.
	public var notDoneReasonCodeableConcept: CodeableConcept?
	
	/// Why a dispense was not performed.
	public var notDoneReasonReference: Reference?
	
	/// Information about the dispense.
	public var note: [Annotation]?
	
	/// Event that dispense is part of.
	public var partOf: [Reference]?
	
	/// Who performed event.
	public var performer: [MedicationDispensePerformer]?
	
	/// Amount dispensed.
	public var quantity: Quantity?
	
	/// Who collected the medication.
	public var receiver: [Reference]?
	
	/// A code specifying the state of the set of dispense events.
	public var status: MedicationDispenseStatus?
	
	/// Who the dispense is for.
	public var subject: Reference?
	
	/// Whether a substitution was performed on the dispense.
	public var substitution: MedicationDispenseSubstitution?
	
	/// Information that supports the dispensing of the medication.
	public var supportingInformation: [Reference]?
	
	/// Trial fill, partial fill, emergency fill, etc..
	public var type: CodeableConcept?
	
	/// When product was given out.
	public var whenHandedOver: DateTime?
	
	/// When product was packaged and reviewed.
	public var whenPrepared: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(medication: Any) {
		self.init()
		if let value = medication as? CodeableConcept {
			self.medicationCodeableConcept = value
		}
		else if let value = medication as? Reference {
			self.medicationReference = value
		}
		else {
			fhir_warn("Type “\(type(of: medication))” for property “\(medication)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authorizingPrescription = try createInstances(of: Reference.self, for: "authorizingPrescription", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authorizingPrescription
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		daysSupply = try createInstance(type: Quantity.self, for: "daysSupply", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? daysSupply
		destination = try createInstance(type: Reference.self, for: "destination", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? destination
		detectedIssue = try createInstances(of: Reference.self, for: "detectedIssue", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detectedIssue
		dosageInstruction = try createInstances(of: DosageInstruction.self, for: "dosageInstruction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dosageInstruction
		eventHistory = try createInstances(of: Reference.self, for: "eventHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventHistory
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		medicationCodeableConcept = try createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationCodeableConcept
		medicationReference = try createInstance(type: Reference.self, for: "medicationReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationReference
		notDone = try createInstance(type: FHIRBool.self, for: "notDone", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notDone
		notDoneReasonCodeableConcept = try createInstance(type: CodeableConcept.self, for: "notDoneReasonCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notDoneReasonCodeableConcept
		notDoneReasonReference = try createInstance(type: Reference.self, for: "notDoneReasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notDoneReasonReference
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		partOf = try createInstances(of: Reference.self, for: "partOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partOf
		performer = try createInstances(of: MedicationDispensePerformer.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		receiver = try createInstances(of: Reference.self, for: "receiver", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? receiver
		status = createEnum(type: MedicationDispenseStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		substitution = try createInstance(type: MedicationDispenseSubstitution.self, for: "substitution", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? substitution
		supportingInformation = try createInstances(of: Reference.self, for: "supportingInformation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingInformation
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		whenHandedOver = try createInstance(type: DateTime.self, for: "whenHandedOver", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whenHandedOver
		whenPrepared = try createInstance(type: DateTime.self, for: "whenPrepared", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whenPrepared
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "authorizingPrescription", using: self.authorizingPrescription, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.daysSupply?.decorate(json: &json, withKey: "daysSupply", errors: &errors)
		self.destination?.decorate(json: &json, withKey: "destination", errors: &errors)
		arrayDecorate(json: &json, withKey: "detectedIssue", using: self.detectedIssue, errors: &errors)
		arrayDecorate(json: &json, withKey: "dosageInstruction", using: self.dosageInstruction, errors: &errors)
		arrayDecorate(json: &json, withKey: "eventHistory", using: self.eventHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.medicationCodeableConcept?.decorate(json: &json, withKey: "medicationCodeableConcept", errors: &errors)
		self.medicationReference?.decorate(json: &json, withKey: "medicationReference", errors: &errors)
		self.notDone?.decorate(json: &json, withKey: "notDone", errors: &errors)
		self.notDoneReasonCodeableConcept?.decorate(json: &json, withKey: "notDoneReasonCodeableConcept", errors: &errors)
		self.notDoneReasonReference?.decorate(json: &json, withKey: "notDoneReasonReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "receiver", using: self.receiver, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.substitution?.decorate(json: &json, withKey: "substitution", errors: &errors)
		arrayDecorate(json: &json, withKey: "supportingInformation", using: self.supportingInformation, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.whenHandedOver?.decorate(json: &json, withKey: "whenHandedOver", errors: &errors)
		self.whenPrepared?.decorate(json: &json, withKey: "whenPrepared", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
	}
}


/**
Who performed event.

Indicates who or what performed the event.
*/
open class MedicationDispensePerformer: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationDispensePerformer" }
	}
	
	/// Individual who was performing.
	public var actor: Reference?
	
	/// Organization organization was acting for.
	public var onBehalfOf: Reference?
	
	/// What type of role the performer fulfilled.
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
		onBehalfOf = try createInstance(type: Reference.self, for: "onBehalfOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onBehalfOf
		role = try createInstance(type: CodeableConcept.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
	}
}


/**
Whether a substitution was performed on the dispense.

Indicates whether or not substitution was made as part of the dispense.  In some cases substitution will be expected but
does not happen, in other cases substitution is not expected but does happen.  This block explains what substitution did
or did not happen and why.  If nothing is specified, substitution was not done.
*/
open class MedicationDispenseSubstitution: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationDispenseSubstitution" }
	}
	
	/// Why was substitution made.
	public var reason: [CodeableConcept]?
	
	/// Who is responsible for the substitution.
	public var responsibleParty: [Reference]?
	
	/// Code signifying whether a different drug was dispensed from what was prescribed.
	public var type: CodeableConcept?
	
	/// Whether a substitution was or was not performed on the dispense.
	public var wasSubstituted: FHIRBool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(wasSubstituted: FHIRBool) {
		self.init()
		self.wasSubstituted = wasSubstituted
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		reason = try createInstances(of: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		responsibleParty = try createInstances(of: Reference.self, for: "responsibleParty", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? responsibleParty
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		wasSubstituted = try createInstance(type: FHIRBool.self, for: "wasSubstituted", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? wasSubstituted
		if nil == wasSubstituted && !presentKeys.contains("wasSubstituted") {
			errors.append(FHIRValidationError(missing: "wasSubstituted"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		arrayDecorate(json: &json, withKey: "responsibleParty", using: self.responsibleParty, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.wasSubstituted?.decorate(json: &json, withKey: "wasSubstituted", errors: &errors)
		if nil == self.wasSubstituted {
			errors.append(FHIRValidationError(missing: "wasSubstituted"))
		}
	}
}

