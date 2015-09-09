//
//  MedicationPrescription.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/MedicationPrescription) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Prescription of medication to for patient.
 *
 *  An order for both supply of the medication and the instructions for administration of the medicine to a patient.
 */
public class MedicationPrescription: DomainResource
{
	override public class var resourceName: String {
		get { return "MedicationPrescription" }
	}
	
	/// When prescription was authorized
	public var dateWritten: DateTime?
	
	/// Medication supply authorization
	public var dispense: MedicationPrescriptionDispense?
	
	/// How medication should be taken
	public var dosageInstruction: [MedicationPrescriptionDosageInstruction]?
	
	/// Created during encounter / admission / stay
	public var encounter: Reference?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Medication to be taken
	public var medication: Reference?
	
	/// Information about the prescription
	public var note: String?
	
	/// Who prescription is for
	public var patient: Reference?
	
	/// Who ordered the medication(s)
	public var prescriber: Reference?
	
	/// Reason or indication for writing the prescription
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason or indication for writing the prescription
	public var reasonReference: Reference?
	
	/// active | on-hold | completed | entered-in-error | stopped | superceded | draft
	public var status: String?
	
	/// Any restrictions on medication substitution?
	public var substitution: MedicationPrescriptionSubstitution?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["dateWritten"] {
				presentKeys.insert("dateWritten")
				if let val = exist as? String {
					self.dateWritten = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateWritten", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dispense"] {
				presentKeys.insert("dispense")
				if let val = exist as? FHIRJSON {
					self.dispense = MedicationPrescriptionDispense(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dispense", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dosageInstruction"] {
				presentKeys.insert("dosageInstruction")
				if let val = exist as? [FHIRJSON] {
					self.dosageInstruction = MedicationPrescriptionDosageInstruction.from(val, owner: self) as? [MedicationPrescriptionDosageInstruction]
				}
				else {
					errors.append(FHIRJSONError(key: "dosageInstruction", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["medication"] {
				presentKeys.insert("medication")
				if let val = exist as? FHIRJSON {
					self.medication = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medication", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? String {
					self.note = val
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prescriber"] {
				presentKeys.insert("prescriber")
				if let val = exist as? FHIRJSON {
					self.prescriber = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescriber", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonCodeableConcept"] {
				presentKeys.insert("reasonCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? FHIRJSON {
					self.reasonReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["substitution"] {
				presentKeys.insert("substitution")
				if let val = exist as? FHIRJSON {
					self.substitution = MedicationPrescriptionSubstitution(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substitution", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dateWritten = self.dateWritten {
			json["dateWritten"] = dateWritten.asJSON()
		}
		if let dispense = self.dispense {
			json["dispense"] = dispense.asJSON()
		}
		if let dosageInstruction = self.dosageInstruction {
			json["dosageInstruction"] = MedicationPrescriptionDosageInstruction.asJSONArray(dosageInstruction)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let medication = self.medication {
			json["medication"] = medication.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let prescriber = self.prescriber {
			json["prescriber"] = prescriber.asJSON()
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON()
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let substitution = self.substitution {
			json["substitution"] = substitution.asJSON()
		}
		
		return json
	}
}


/**
 *  Medication supply authorization.
 *
 *  Deals with details of the dispense part of the order.
 */
public class MedicationPrescriptionDispense: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPrescriptionDispense" }
	}
	
	/// Days supply per dispense
	public var expectedSupplyDuration: Duration?
	
	/// Product to be supplied
	public var medication: Reference?
	
	/// # of refills authorized
	public var numberOfRepeatsAllowed: UInt?
	
	/// Amount of medication to supply per dispense
	public var quantity: Quantity?
	
	/// Time period supply is authorized for
	public var validityPeriod: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["expectedSupplyDuration"] {
				presentKeys.insert("expectedSupplyDuration")
				if let val = exist as? FHIRJSON {
					self.expectedSupplyDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "expectedSupplyDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["medication"] {
				presentKeys.insert("medication")
				if let val = exist as? FHIRJSON {
					self.medication = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medication", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["numberOfRepeatsAllowed"] {
				presentKeys.insert("numberOfRepeatsAllowed")
				if let val = exist as? UInt {
					self.numberOfRepeatsAllowed = val
				}
				else {
					errors.append(FHIRJSONError(key: "numberOfRepeatsAllowed", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["validityPeriod"] {
				presentKeys.insert("validityPeriod")
				if let val = exist as? FHIRJSON {
					self.validityPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "validityPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let expectedSupplyDuration = self.expectedSupplyDuration {
			json["expectedSupplyDuration"] = expectedSupplyDuration.asJSON()
		}
		if let medication = self.medication {
			json["medication"] = medication.asJSON()
		}
		if let numberOfRepeatsAllowed = self.numberOfRepeatsAllowed {
			json["numberOfRepeatsAllowed"] = numberOfRepeatsAllowed.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let validityPeriod = self.validityPeriod {
			json["validityPeriod"] = validityPeriod.asJSON()
		}
		
		return json
	}
}


/**
 *  How medication should be taken.
 *
 *  Indicates how the medication is to be used by the patient.
 */
public class MedicationPrescriptionDosageInstruction: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPrescriptionDosageInstruction" }
	}
	
	/// Supplemental instructions - e.g. "with meals"
	public var additionalInstructions: CodeableConcept?
	
	/// Take "as needed" f(or x)
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" f(or x)
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Amount of medication per dose
	public var doseQuantity: Quantity?
	
	/// Amount of medication per dose
	public var doseRange: Range?
	
	/// Upper limit on medication per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique for administering medication
	public var method: CodeableConcept?
	
	/// Amount of medication per unit of time
	public var rate: Ratio?
	
	/// How drug should enter body
	public var route: CodeableConcept?
	
	/// When medication should be administered
	public var scheduledDateTime: DateTime?
	
	/// When medication should be administered
	public var scheduledPeriod: Period?
	
	/// When medication should be administered
	public var scheduledTiming: Timing?
	
	/// Body site to administer to
	public var site: CodeableConcept?
	
	/// Dosage instructions expressed as text
	public var text: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["additionalInstructions"] {
				presentKeys.insert("additionalInstructions")
				if let val = exist as? FHIRJSON {
					self.additionalInstructions = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "additionalInstructions", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["asNeededBoolean"] {
				presentKeys.insert("asNeededBoolean")
				if let val = exist as? Bool {
					self.asNeededBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "asNeededBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["asNeededCodeableConcept"] {
				presentKeys.insert("asNeededCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "asNeededCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["doseQuantity"] {
				presentKeys.insert("doseQuantity")
				if let val = exist as? FHIRJSON {
					self.doseQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "doseQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["doseRange"] {
				presentKeys.insert("doseRange")
				if let val = exist as? FHIRJSON {
					self.doseRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "doseRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxDosePerPeriod"] {
				presentKeys.insert("maxDosePerPeriod")
				if let val = exist as? FHIRJSON {
					self.maxDosePerPeriod = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "maxDosePerPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rate"] {
				presentKeys.insert("rate")
				if let val = exist as? FHIRJSON {
					self.rate = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rate", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["route"] {
				presentKeys.insert("route")
				if let val = exist as? FHIRJSON {
					self.route = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "route", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["scheduledDateTime"] {
				presentKeys.insert("scheduledDateTime")
				if let val = exist as? String {
					self.scheduledDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["scheduledPeriod"] {
				presentKeys.insert("scheduledPeriod")
				if let val = exist as? FHIRJSON {
					self.scheduledPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["scheduledTiming"] {
				presentKeys.insert("scheduledTiming")
				if let val = exist as? FHIRJSON {
					self.scheduledTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["site"] {
				presentKeys.insert("site")
				if let val = exist as? FHIRJSON {
					self.site = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "site", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let additionalInstructions = self.additionalInstructions {
			json["additionalInstructions"] = additionalInstructions.asJSON()
		}
		if let asNeededBoolean = self.asNeededBoolean {
			json["asNeededBoolean"] = asNeededBoolean.asJSON()
		}
		if let asNeededCodeableConcept = self.asNeededCodeableConcept {
			json["asNeededCodeableConcept"] = asNeededCodeableConcept.asJSON()
		}
		if let doseQuantity = self.doseQuantity {
			json["doseQuantity"] = doseQuantity.asJSON()
		}
		if let doseRange = self.doseRange {
			json["doseRange"] = doseRange.asJSON()
		}
		if let maxDosePerPeriod = self.maxDosePerPeriod {
			json["maxDosePerPeriod"] = maxDosePerPeriod.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let rate = self.rate {
			json["rate"] = rate.asJSON()
		}
		if let route = self.route {
			json["route"] = route.asJSON()
		}
		if let scheduledDateTime = self.scheduledDateTime {
			json["scheduledDateTime"] = scheduledDateTime.asJSON()
		}
		if let scheduledPeriod = self.scheduledPeriod {
			json["scheduledPeriod"] = scheduledPeriod.asJSON()
		}
		if let scheduledTiming = self.scheduledTiming {
			json["scheduledTiming"] = scheduledTiming.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}


/**
 *  Any restrictions on medication substitution?.
 *
 *  Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen,
 *  in other cases substitution must not happen, and in others it does not matter. This block explains the prescriber's
 *  intent. If nothing is specified substitution may be done.
 */
public class MedicationPrescriptionSubstitution: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPrescriptionSubstitution" }
	}
	
	/// Why should substitution (not) be made
	public var reason: CodeableConcept?
	
	/// generic | formulary +
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

