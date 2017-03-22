//
//  MedicationDispense.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/MedicationDispense) on 2017-03-22.
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
	
	/// Clinical issue with action.
	public var detectedIssue: [Reference]?
	
	/// How the medication is to be used by the patient or administered by the caregiver.
	public var dosageInstruction: [Dosage]?
	
	/// A list of releveant lifecycle events.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authorizingPrescription = createInstances(of: Reference.self, for: "authorizingPrescription", in: json, context: &instCtx, owner: self) ?? authorizingPrescription
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		daysSupply = createInstance(type: Quantity.self, for: "daysSupply", in: json, context: &instCtx, owner: self) ?? daysSupply
		destination = createInstance(type: Reference.self, for: "destination", in: json, context: &instCtx, owner: self) ?? destination
		detectedIssue = createInstances(of: Reference.self, for: "detectedIssue", in: json, context: &instCtx, owner: self) ?? detectedIssue
		dosageInstruction = createInstances(of: Dosage.self, for: "dosageInstruction", in: json, context: &instCtx, owner: self) ?? dosageInstruction
		eventHistory = createInstances(of: Reference.self, for: "eventHistory", in: json, context: &instCtx, owner: self) ?? eventHistory
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		medicationCodeableConcept = createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, context: &instCtx, owner: self) ?? medicationCodeableConcept
		medicationReference = createInstance(type: Reference.self, for: "medicationReference", in: json, context: &instCtx, owner: self) ?? medicationReference
		notDone = createInstance(type: FHIRBool.self, for: "notDone", in: json, context: &instCtx, owner: self) ?? notDone
		notDoneReasonCodeableConcept = createInstance(type: CodeableConcept.self, for: "notDoneReasonCodeableConcept", in: json, context: &instCtx, owner: self) ?? notDoneReasonCodeableConcept
		notDoneReasonReference = createInstance(type: Reference.self, for: "notDoneReasonReference", in: json, context: &instCtx, owner: self) ?? notDoneReasonReference
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		performer = createInstances(of: MedicationDispensePerformer.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		receiver = createInstances(of: Reference.self, for: "receiver", in: json, context: &instCtx, owner: self) ?? receiver
		status = createEnum(type: MedicationDispenseStatus.self, for: "status", in: json, context: &instCtx) ?? status
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		substitution = createInstance(type: MedicationDispenseSubstitution.self, for: "substitution", in: json, context: &instCtx, owner: self) ?? substitution
		supportingInformation = createInstances(of: Reference.self, for: "supportingInformation", in: json, context: &instCtx, owner: self) ?? supportingInformation
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		whenHandedOver = createInstance(type: DateTime.self, for: "whenHandedOver", in: json, context: &instCtx, owner: self) ?? whenHandedOver
		whenPrepared = createInstance(type: DateTime.self, for: "whenPrepared", in: json, context: &instCtx, owner: self) ?? whenPrepared
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			instCtx.addError(FHIRValidationError(missing: "medication[x]"))
		}
		
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

Indicates who or what performed the event.  It should be assumed that the performer is the dispenser of the medication.
*/
open class MedicationDispensePerformer: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationDispensePerformer" }
	}
	
	/// Individual who was performing.
	public var actor: Reference?
	
	/// Organization organization was acting for.
	public var onBehalfOf: Reference?
	
	
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
		onBehalfOf = createInstance(type: Reference.self, for: "onBehalfOf", in: json, context: &instCtx, owner: self) ?? onBehalfOf
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		reason = createInstances(of: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		responsibleParty = createInstances(of: Reference.self, for: "responsibleParty", in: json, context: &instCtx, owner: self) ?? responsibleParty
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		wasSubstituted = createInstance(type: FHIRBool.self, for: "wasSubstituted", in: json, context: &instCtx, owner: self) ?? wasSubstituted
		if nil == wasSubstituted && !instCtx.containsKey("wasSubstituted") {
			instCtx.addError(FHIRValidationError(missing: "wasSubstituted"))
		}
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

