//
//  MedicationAdministration.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/MedicationAdministration) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Administration of medication to a patient.
 *
 *  Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as
 *  swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing
 *  prescription, and the specific encounter between patient and health care practitioner.
 */
open class MedicationAdministration: DomainResource {
	override open class var resourceType: String {
		get { return "MedicationAdministration" }
	}
	
	/// Device used to administer.
	public var device: [Reference]?
	
	/// Details of how medication was taken.
	public var dosage: MedicationAdministrationDosage?
	
	/// Start and end time of administration.
	public var effectiveTimeDateTime: DateTime?
	
	/// Start and end time of administration.
	public var effectiveTimePeriod: Period?
	
	/// Encounter administered as part of.
	public var encounter: Reference?
	
	/// A list of events of interest in the lifecycle.
	public var eventHistory: [Reference]?
	
	/// External identifier.
	public var identifier: [Identifier]?
	
	/// What was administered.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// What was administered.
	public var medicationReference: Reference?
	
	/// True if medication not administered.
	public var notGiven: Bool?
	
	/// Information about the administration.
	public var note: [Annotation]?
	
	/// Who received medication.
	public var patient: Reference?
	
	/// Who administered substance.
	public var performer: Reference?
	
	/// Order administration performed against.
	public var prescription: Reference?
	
	/// Reason administration performed.
	public var reasonGiven: [CodeableConcept]?
	
	/// Reason administration not performed.
	public var reasonNotGiven: [CodeableConcept]?
	
	/// Condition or Observation that supports why the medication was administered.
	public var reasonReference: [Reference]?
	
	/// in-progress | on-hold | completed | entered-in-error | stopped.
	public var status: String?
	
	/// Additional information to support administration.
	public var supportingInformation: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(effectiveTimeDateTime: DateTime, effectiveTimePeriod: Period, medicationCodeableConcept: CodeableConcept, medicationReference: Reference, patient: Reference, status: String) {
		self.init(json: nil)
		self.effectiveTimeDateTime = effectiveTimeDateTime
		self.effectiveTimePeriod = effectiveTimePeriod
		self.medicationCodeableConcept = medicationCodeableConcept
		self.medicationReference = medicationReference
		self.patient = patient
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["device"] {
				presentKeys.insert("device")
				if let val = exist as? [FHIRJSON] {
					self.device = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "device", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["dosage"] {
				presentKeys.insert("dosage")
				if let val = exist as? FHIRJSON {
					self.dosage = MedicationAdministrationDosage(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dosage", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["effectiveTimeDateTime"] {
				presentKeys.insert("effectiveTimeDateTime")
				if let val = exist as? String {
					self.effectiveTimeDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "effectiveTimeDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["effectiveTimePeriod"] {
				presentKeys.insert("effectiveTimePeriod")
				if let val = exist as? FHIRJSON {
					self.effectiveTimePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "effectiveTimePeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
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
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["notGiven"] {
				presentKeys.insert("notGiven")
				if let val = exist as? Bool {
					self.notGiven = val
				}
				else {
					errors.append(FHIRJSONError(key: "notGiven", wants: Bool.self, has: type(of: exist)))
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
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? FHIRJSON {
					self.performer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["prescription"] {
				presentKeys.insert("prescription")
				if let val = exist as? FHIRJSON {
					self.prescription = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescription", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonGiven"] {
				presentKeys.insert("reasonGiven")
				if let val = exist as? [FHIRJSON] {
					self.reasonGiven = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonGiven", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonNotGiven"] {
				presentKeys.insert("reasonNotGiven")
				if let val = exist as? [FHIRJSON] {
					self.reasonNotGiven = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonNotGiven", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? [FHIRJSON] {
					self.reasonReference = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			else {
				errors.append(FHIRJSONError(key: "status"))
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
			
			// check if nonoptional expanded properties are present
			if nil == self.effectiveTimeDateTime && nil == self.effectiveTimePeriod {
				errors.append(FHIRJSONError(key: "effectiveTime*"))
			}
			if nil == self.medicationCodeableConcept && nil == self.medicationReference {
				errors.append(FHIRJSONError(key: "medication*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let device = self.device {
			json["device"] = device.map() { $0.asJSON() }
		}
		if let dosage = self.dosage {
			json["dosage"] = dosage.asJSON()
		}
		if let effectiveTimeDateTime = self.effectiveTimeDateTime {
			json["effectiveTimeDateTime"] = effectiveTimeDateTime.asJSON()
		}
		if let effectiveTimePeriod = self.effectiveTimePeriod {
			json["effectiveTimePeriod"] = effectiveTimePeriod.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let eventHistory = self.eventHistory {
			json["eventHistory"] = eventHistory.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let medicationCodeableConcept = self.medicationCodeableConcept {
			json["medicationCodeableConcept"] = medicationCodeableConcept.asJSON()
		}
		if let medicationReference = self.medicationReference {
			json["medicationReference"] = medicationReference.asJSON()
		}
		if let notGiven = self.notGiven {
			json["notGiven"] = notGiven.asJSON()
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON() }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON()
		}
		if let prescription = self.prescription {
			json["prescription"] = prescription.asJSON()
		}
		if let reasonGiven = self.reasonGiven {
			json["reasonGiven"] = reasonGiven.map() { $0.asJSON() }
		}
		if let reasonNotGiven = self.reasonNotGiven {
			json["reasonNotGiven"] = reasonNotGiven.map() { $0.asJSON() }
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.map() { $0.asJSON() }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let supportingInformation = self.supportingInformation {
			json["supportingInformation"] = supportingInformation.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Details of how medication was taken.
 *
 *  Describes the medication dosage information details e.g. dose, rate, site, route, etc.
 */
open class MedicationAdministrationDosage: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationAdministrationDosage" }
	}
	
	/// Amount of medication per dose.
	public var dose: Quantity?
	
	/// How drug was administered.
	public var method: CodeableConcept?
	
	/// Dose quantity per unit of time.
	public var rateQuantity: Quantity?
	
	/// Dose quantity per unit of time.
	public var rateRatio: Ratio?
	
	/// Path of substance into body.
	public var route: CodeableConcept?
	
	/// Body site administered to.
	public var siteCodeableConcept: CodeableConcept?
	
	/// Body site administered to.
	public var siteReference: Reference?
	
	/// Free text dosage instructions e.g. SIG.
	public var text: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["dose"] {
				presentKeys.insert("dose")
				if let val = exist as? FHIRJSON {
					self.dose = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dose", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["rateQuantity"] {
				presentKeys.insert("rateQuantity")
				if let val = exist as? FHIRJSON {
					self.rateQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rateQuantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["rateRatio"] {
				presentKeys.insert("rateRatio")
				if let val = exist as? FHIRJSON {
					self.rateRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rateRatio", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["route"] {
				presentKeys.insert("route")
				if let val = exist as? FHIRJSON {
					self.route = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "route", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["siteCodeableConcept"] {
				presentKeys.insert("siteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.siteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "siteCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["siteReference"] {
				presentKeys.insert("siteReference")
				if let val = exist as? FHIRJSON {
					self.siteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "siteReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dose = self.dose {
			json["dose"] = dose.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let rateQuantity = self.rateQuantity {
			json["rateQuantity"] = rateQuantity.asJSON()
		}
		if let rateRatio = self.rateRatio {
			json["rateRatio"] = rateRatio.asJSON()
		}
		if let route = self.route {
			json["route"] = route.asJSON()
		}
		if let siteCodeableConcept = self.siteCodeableConcept {
			json["siteCodeableConcept"] = siteCodeableConcept.asJSON()
		}
		if let siteReference = self.siteReference {
			json["siteReference"] = siteReference.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

