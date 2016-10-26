//
//  MedicationDispense.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/MedicationDispense) on 2016-10-26.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(medicationCodeableConcept: CodeableConcept, medicationReference: Reference) {
		self.init(json: nil)
		self.medicationCodeableConcept = medicationCodeableConcept
		self.medicationReference = medicationReference
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["authorizingPrescription"] {
				presentKeys.insert("authorizingPrescription")
				if let val = exist as? [FHIRJSON] {
					self.authorizingPrescription = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "authorizingPrescription", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["daysSupply"] {
				presentKeys.insert("daysSupply")
				if let val = exist as? FHIRJSON {
					self.daysSupply = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "daysSupply", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? FHIRJSON {
					self.destination = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["dispenser"] {
				presentKeys.insert("dispenser")
				if let val = exist as? FHIRJSON {
					self.dispenser = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dispenser", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["dispensingOrganization"] {
				presentKeys.insert("dispensingOrganization")
				if let val = exist as? FHIRJSON {
					self.dispensingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dispensingOrganization", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["dosageInstruction"] {
				presentKeys.insert("dosageInstruction")
				if let val = exist as? [FHIRJSON] {
					self.dosageInstruction = DosageInstruction.instantiate(fromArray: val, owner: self) as? [DosageInstruction]
				}
				else {
					errors.append(FHIRJSONError(key: "dosageInstruction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["eventHistory"] {
				presentKeys.insert("eventHistory")
				if let val = exist as? [FHIRJSON] {
					self.eventHistory = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "eventHistory", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["medicationCodeableConcept"] {
				presentKeys.insert("medicationCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.medicationCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medicationCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["medicationReference"] {
				presentKeys.insert("medicationReference")
				if let val = exist as? FHIRJSON {
					self.medicationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medicationReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["receiver"] {
				presentKeys.insert("receiver")
				if let val = exist as? [FHIRJSON] {
					self.receiver = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "receiver", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["substitution"] {
				presentKeys.insert("substitution")
				if let val = exist as? FHIRJSON {
					self.substitution = MedicationDispenseSubstitution(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substitution", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["supportingInformation"] {
				presentKeys.insert("supportingInformation")
				if let val = exist as? [FHIRJSON] {
					self.supportingInformation = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingInformation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["whenHandedOver"] {
				presentKeys.insert("whenHandedOver")
				if let val = exist as? String {
					self.whenHandedOver = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "whenHandedOver", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["whenPrepared"] {
				presentKeys.insert("whenPrepared")
				if let val = exist as? String {
					self.whenPrepared = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "whenPrepared", wants: String.self, has: type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.medicationCodeableConcept && nil == self.medicationReference {
				errors.append(FHIRJSONError(key: "medication*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authorizingPrescription = self.authorizingPrescription {
			json["authorizingPrescription"] = authorizingPrescription.map() { $0.asJSON() }
		}
		if let daysSupply = self.daysSupply {
			json["daysSupply"] = daysSupply.asJSON()
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON()
		}
		if let dispenser = self.dispenser {
			json["dispenser"] = dispenser.asJSON()
		}
		if let dispensingOrganization = self.dispensingOrganization {
			json["dispensingOrganization"] = dispensingOrganization.asJSON()
		}
		if let dosageInstruction = self.dosageInstruction {
			json["dosageInstruction"] = dosageInstruction.map() { $0.asJSON() }
		}
		if let eventHistory = self.eventHistory {
			json["eventHistory"] = eventHistory.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let medicationCodeableConcept = self.medicationCodeableConcept {
			json["medicationCodeableConcept"] = medicationCodeableConcept.asJSON()
		}
		if let medicationReference = self.medicationReference {
			json["medicationReference"] = medicationReference.asJSON()
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON() }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let receiver = self.receiver {
			json["receiver"] = receiver.map() { $0.asJSON() }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let substitution = self.substitution {
			json["substitution"] = substitution.asJSON()
		}
		if let supportingInformation = self.supportingInformation {
			json["supportingInformation"] = supportingInformation.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init(json: nil)
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["responsibleParty"] {
				presentKeys.insert("responsibleParty")
				if let val = exist as? [FHIRJSON] {
					self.responsibleParty = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "responsibleParty", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON() }
		}
		if let responsibleParty = self.responsibleParty {
			json["responsibleParty"] = responsibleParty.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

