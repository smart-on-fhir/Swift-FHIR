//
//  MedicationDispense.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/MedicationDispense) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Dispensing a medication to a named patient.
 *
 *  Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a
 *  description of the medication product (supply) provided and the instructions for administering the medication.  The
 *  medication dispense is the result of a pharmacy system responding to a medication order.
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
	
	/// in-progress | on-hold | completed | entered-in-error | stopped.
	public var status: String?
	
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
		if let exist = json["authorizingPrescription"] {
			presentKeys.insert("authorizingPrescription")
			if let val = exist as? [FHIRJSON] {
				do {
					self.authorizingPrescription = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "authorizingPrescription"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "authorizingPrescription", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["daysSupply"] {
			presentKeys.insert("daysSupply")
			if let val = exist as? FHIRJSON {
				do {
					self.daysSupply = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "daysSupply"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "daysSupply", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["destination"] {
			presentKeys.insert("destination")
			if let val = exist as? FHIRJSON {
				do {
					self.destination = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "destination"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "destination", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["dispenser"] {
			presentKeys.insert("dispenser")
			if let val = exist as? FHIRJSON {
				do {
					self.dispenser = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dispenser"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dispenser", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["dispensingOrganization"] {
			presentKeys.insert("dispensingOrganization")
			if let val = exist as? FHIRJSON {
				do {
					self.dispensingOrganization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dispensingOrganization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dispensingOrganization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["dosageInstruction"] {
			presentKeys.insert("dosageInstruction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dosageInstruction = try DosageInstruction.instantiate(fromArray: val, owner: self) as? [DosageInstruction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dosageInstruction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dosageInstruction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["eventHistory"] {
			presentKeys.insert("eventHistory")
			if let val = exist as? [FHIRJSON] {
				do {
					self.eventHistory = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "eventHistory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "eventHistory", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["medicationCodeableConcept"] {
			presentKeys.insert("medicationCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.medicationCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "medicationCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "medicationCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["medicationReference"] {
			presentKeys.insert("medicationReference")
			if let val = exist as? FHIRJSON {
				do {
					self.medicationReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "medicationReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "medicationReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["receiver"] {
			presentKeys.insert("receiver")
			if let val = exist as? [FHIRJSON] {
				do {
					self.receiver = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "receiver"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "receiver", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["substitution"] {
			presentKeys.insert("substitution")
			if let val = exist as? FHIRJSON {
				do {
					self.substitution = try MedicationDispenseSubstitution(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "substitution"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "substitution", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["supportingInformation"] {
			presentKeys.insert("supportingInformation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.supportingInformation = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "supportingInformation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "supportingInformation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["whenHandedOver"] {
			presentKeys.insert("whenHandedOver")
			if let val = exist as? String {
				self.whenHandedOver = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "whenHandedOver", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["whenPrepared"] {
			presentKeys.insert("whenPrepared")
			if let val = exist as? String {
				self.whenPrepared = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "whenPrepared", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let authorizingPrescription = self.authorizingPrescription {
			json["authorizingPrescription"] = authorizingPrescription.map() { $0.asJSON(errors: &errors) }
		}
		if let daysSupply = self.daysSupply {
			json["daysSupply"] = daysSupply.asJSON(errors: &errors)
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON(errors: &errors)
		}
		if let dispenser = self.dispenser {
			json["dispenser"] = dispenser.asJSON(errors: &errors)
		}
		if let dispensingOrganization = self.dispensingOrganization {
			json["dispensingOrganization"] = dispensingOrganization.asJSON(errors: &errors)
		}
		if let dosageInstruction = self.dosageInstruction {
			json["dosageInstruction"] = dosageInstruction.map() { $0.asJSON(errors: &errors) }
		}
		if let eventHistory = self.eventHistory {
			json["eventHistory"] = eventHistory.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let medicationCodeableConcept = self.medicationCodeableConcept {
			json["medicationCodeableConcept"] = medicationCodeableConcept.asJSON(errors: &errors)
		}
		if let medicationReference = self.medicationReference {
			json["medicationReference"] = medicationReference.asJSON(errors: &errors)
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let receiver = self.receiver {
			json["receiver"] = receiver.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let substitution = self.substitution {
			json["substitution"] = substitution.asJSON(errors: &errors)
		}
		if let supportingInformation = self.supportingInformation {
			json["supportingInformation"] = supportingInformation.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let whenHandedOver = self.whenHandedOver {
			json["whenHandedOver"] = whenHandedOver.asJSON()
		}
		if let whenPrepared = self.whenPrepared {
			json["whenPrepared"] = whenPrepared.asJSON()
		}
		
		return json
	}
}


/**
 *  Deals with substitution of one medicine for another.
 *
 *  Indicates whether or not substitution was made as part of the dispense.  In some cases substitution will be expected
 *  but does not happen, in other cases substitution is not expected but does happen.  This block explains what
 *  substitution did or did not happen and why.
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
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reason = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["responsibleParty"] {
			presentKeys.insert("responsibleParty")
			if let val = exist as? [FHIRJSON] {
				do {
					self.responsibleParty = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "responsibleParty"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "responsibleParty", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON(errors: &errors) }
		}
		if let responsibleParty = self.responsibleParty {
			json["responsibleParty"] = responsibleParty.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}

