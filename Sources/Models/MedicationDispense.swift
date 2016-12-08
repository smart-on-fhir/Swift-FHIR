//
//  MedicationDispense.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/MedicationDispense) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// Amount of medication expressed as a timing amount.
	public var daysSupply: Quantity?
	
	/// Where the medication was sent.
	public var destination: Reference?
	
	/// Practitioner responsible for dispensing medication.
	public var dispenser: Reference?
	
	/// Organization responsible for the dispense of the medication.
	public var dispensingOrganization: Reference?
	
	/// Medicine administration instructions to the patient/caregiver.
	public var dosageInstruction: [DosageInstruction]?
	
	/// A list of events of interest in the lifecycle.
	public var eventHistory: [Reference]?
	
	/// External identifier.
	public var identifier: Identifier?
	
	/// What medication was supplied.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// What medication was supplied.
	public var medicationReference: Reference?
	
	/// Information about the dispense.
	public var note: [Annotation]?
	
	/// Who the dispense is for.
	public var patient: Reference?
	
	/// Amount dispensed.
	public var quantity: Quantity?
	
	/// Who collected the medication.
	public var receiver: [Reference]?
	
	/// A code specifying the state of the set of dispense events.
	public var status: MedicationDispenseStatus?
	
	/// Deals with substitution of one medicine for another.
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
		daysSupply = try createInstance(type: Quantity.self, for: "daysSupply", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? daysSupply
		destination = try createInstance(type: Reference.self, for: "destination", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? destination
		dispenser = try createInstance(type: Reference.self, for: "dispenser", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dispenser
		dispensingOrganization = try createInstance(type: Reference.self, for: "dispensingOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dispensingOrganization
		dosageInstruction = try createInstances(of: DosageInstruction.self, for: "dosageInstruction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dosageInstruction
		eventHistory = try createInstances(of: Reference.self, for: "eventHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventHistory
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		medicationCodeableConcept = try createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationCodeableConcept
		medicationReference = try createInstance(type: Reference.self, for: "medicationReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationReference
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		receiver = try createInstances(of: Reference.self, for: "receiver", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? receiver
		status = createEnum(type: MedicationDispenseStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
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
		self.daysSupply?.decorate(json: &json, withKey: "daysSupply", errors: &errors)
		self.destination?.decorate(json: &json, withKey: "destination", errors: &errors)
		self.dispenser?.decorate(json: &json, withKey: "dispenser", errors: &errors)
		self.dispensingOrganization?.decorate(json: &json, withKey: "dispensingOrganization", errors: &errors)
		arrayDecorate(json: &json, withKey: "dosageInstruction", using: self.dosageInstruction, errors: &errors)
		arrayDecorate(json: &json, withKey: "eventHistory", using: self.eventHistory, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.medicationCodeableConcept?.decorate(json: &json, withKey: "medicationCodeableConcept", errors: &errors)
		self.medicationReference?.decorate(json: &json, withKey: "medicationReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "receiver", using: self.receiver, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
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
Deals with substitution of one medicine for another.

Indicates whether or not substitution was made as part of the dispense.  In some cases substitution will be expected but
does not happen, in other cases substitution is not expected but does happen.  This block explains what substitution did
or did not happen and why.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		reason = try createInstances(of: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		responsibleParty = try createInstances(of: Reference.self, for: "responsibleParty", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? responsibleParty
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		arrayDecorate(json: &json, withKey: "responsibleParty", using: self.responsibleParty, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

