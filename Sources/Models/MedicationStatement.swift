//
//  MedicationStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/MedicationStatement) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Record of medication being taken by a patient.
 *
 *  A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient
 *  may be taking the medication now, or has taken the medication in the past or will be taking the medication in the
 *  future.  The source of this information can be the patient, significant other (such as a family member or spouse),
 *  or a clinician.  A common scenario where this information is captured is during the history taking process during a
 *  patient visit or stay.   The medication information may come from e.g. the patient's memory, from a prescription
 *  bottle,  or from a list of medications the patient, clinician or other party maintains The primary difference
 *  between a medication statement and a medication administration is that the medication administration has complete
 *  administration information and is based on actual administration information from the person who administered the
 *  medication.  A medication statement is often, if not always, less specific.  There is no required date/time when the
 *  medication was administered, in fact we only know that a source has reported the patient is taking this medication,
 *  where details such as time, quantity, or rate or even medication product may be incomplete or missing or less
 *  precise.  As stated earlier, the medication statement information may come from the patient's memory, from a
 *  prescription bottle or from a list of medications the patient, clinician or other party maintains.  Medication
 *  administration is more formal and is not missing detailed information.
 */
public class MedicationStatement: DomainResource {
	override public class var resourceName: String {
		get { return "MedicationStatement" }
	}
	
	/// Type of medication usage.
	public var category: String?
	
	/// When the statement was asserted?.
	public var dateAsserted: DateTime?
	
	/// Details of how medication was taken.
	public var dosage: [MedicationStatementDosage]?
	
	/// Over what period was medication consumed?.
	public var effectiveDateTime: DateTime?
	
	/// Over what period was medication consumed?.
	public var effectivePeriod: Period?
	
	/// External identifier.
	public var identifier: [Identifier]?
	
	/// Person who provided the information about the taking of this medication.
	public var informationSource: Reference?
	
	/// What medication was taken.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// What medication was taken.
	public var medicationReference: Reference?
	
	/// True if medication is/was not being taken.
	public var notTaken: Bool?
	
	/// Further information about the statement.
	public var note: [Annotation]?
	
	/// Who is/was taking  the medication.
	public var patient: Reference?
	
	/// Reason for why the medication is being/was taken.
	public var reasonForUseCode: [CodeableConcept]?
	
	/// Condition that supports why the medication is being/was taken.
	public var reasonForUseReference: [Reference]?
	
	/// True if asserting medication was not given.
	public var reasonNotTaken: [CodeableConcept]?
	
	/// active | completed | entered-in-error | intended | stopped | on-hold.
	public var status: String?
	
	/// Additional supporting information.
	public var supportingInformation: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(medicationCodeableConcept: CodeableConcept, medicationReference: Reference, patient: Reference, status: String) {
		self.init(json: nil)
		self.medicationCodeableConcept = medicationCodeableConcept
		self.medicationReference = medicationReference
		self.patient = patient
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dateAsserted"] {
				presentKeys.insert("dateAsserted")
				if let val = exist as? String {
					self.dateAsserted = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateAsserted", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dosage"] {
				presentKeys.insert("dosage")
				if let val = exist as? [FHIRJSON] {
					self.dosage = MedicationStatementDosage.from(val, owner: self) as? [MedicationStatementDosage]
				}
				else {
					errors.append(FHIRJSONError(key: "dosage", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["effectiveDateTime"] {
				presentKeys.insert("effectiveDateTime")
				if let val = exist as? String {
					self.effectiveDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "effectiveDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["effectivePeriod"] {
				presentKeys.insert("effectivePeriod")
				if let val = exist as? FHIRJSON {
					self.effectivePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "effectivePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["informationSource"] {
				presentKeys.insert("informationSource")
				if let val = exist as? FHIRJSON {
					self.informationSource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "informationSource", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["medicationCodeableConcept"] {
				presentKeys.insert("medicationCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.medicationCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medicationCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["medicationReference"] {
				presentKeys.insert("medicationReference")
				if let val = exist as? FHIRJSON {
					self.medicationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medicationReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["notTaken"] {
				presentKeys.insert("notTaken")
				if let val = exist as? Bool {
					self.notTaken = val
				}
				else {
					errors.append(FHIRJSONError(key: "notTaken", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist: AnyObject = js["reasonForUseCode"] {
				presentKeys.insert("reasonForUseCode")
				if let val = exist as? [FHIRJSON] {
					self.reasonForUseCode = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonForUseCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonForUseReference"] {
				presentKeys.insert("reasonForUseReference")
				if let val = exist as? [FHIRJSON] {
					self.reasonForUseReference = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonForUseReference", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonNotTaken"] {
				presentKeys.insert("reasonNotTaken")
				if let val = exist as? [FHIRJSON] {
					self.reasonNotTaken = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonNotTaken", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["supportingInformation"] {
				presentKeys.insert("supportingInformation")
				if let val = exist as? [FHIRJSON] {
					self.supportingInformation = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingInformation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.medicationCodeableConcept && nil == self.medicationReference {
				errors.append(FHIRJSONError(key: "medication*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let dateAsserted = self.dateAsserted {
			json["dateAsserted"] = dateAsserted.asJSON()
		}
		if let dosage = self.dosage {
			json["dosage"] = MedicationStatementDosage.asJSONArray(dosage)
		}
		if let effectiveDateTime = self.effectiveDateTime {
			json["effectiveDateTime"] = effectiveDateTime.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let informationSource = self.informationSource {
			json["informationSource"] = informationSource.asJSON()
		}
		if let medicationCodeableConcept = self.medicationCodeableConcept {
			json["medicationCodeableConcept"] = medicationCodeableConcept.asJSON()
		}
		if let medicationReference = self.medicationReference {
			json["medicationReference"] = medicationReference.asJSON()
		}
		if let notTaken = self.notTaken {
			json["notTaken"] = notTaken.asJSON()
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let reasonForUseCode = self.reasonForUseCode {
			json["reasonForUseCode"] = CodeableConcept.asJSONArray(reasonForUseCode)
		}
		if let reasonForUseReference = self.reasonForUseReference {
			json["reasonForUseReference"] = Reference.asJSONArray(reasonForUseReference)
		}
		if let reasonNotTaken = self.reasonNotTaken {
			json["reasonNotTaken"] = CodeableConcept.asJSONArray(reasonNotTaken)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let supportingInformation = self.supportingInformation {
			json["supportingInformation"] = Reference.asJSONArray(supportingInformation)
		}
		
		return json
	}
}


/**
 *  Details of how medication was taken.
 *
 *  Indicates how the medication is/was used by the patient.
 */
public class MedicationStatementDosage: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationStatementDosage" }
	}
	
	/// Supplemental instructions - e.g. "with meals".
	public var additionalInstructions: [CodeableConcept]?
	
	/// Take "as needed" (for x).
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" (for x).
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Amount of medication per dose.
	public var doseQuantity: Quantity?
	
	/// Amount of medication per dose.
	public var doseRange: Range?
	
	/// Maximum dose that was consumed per unit of time.
	public var maxDosePerPeriod: Ratio?
	
	/// Technique used to administer medication.
	public var method: CodeableConcept?
	
	/// Dose quantity per unit of time.
	public var rateQuantity: Quantity?
	
	/// Dose quantity per unit of time.
	public var rateRange: Range?
	
	/// Dose quantity per unit of time.
	public var rateRatio: Ratio?
	
	/// How the medication entered the body.
	public var route: CodeableConcept?
	
	/// Where (on body) medication is/was administered.
	public var siteCodeableConcept: CodeableConcept?
	
	/// Where (on body) medication is/was administered.
	public var siteReference: Reference?
	
	/// Free text dosage instructions as reported by the information source.
	public var text: String?
	
	/// When/how often was medication taken.
	public var timing: Timing?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["additionalInstructions"] {
				presentKeys.insert("additionalInstructions")
				if let val = exist as? [FHIRJSON] {
					self.additionalInstructions = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "additionalInstructions", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["rateQuantity"] {
				presentKeys.insert("rateQuantity")
				if let val = exist as? FHIRJSON {
					self.rateQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rateQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rateRange"] {
				presentKeys.insert("rateRange")
				if let val = exist as? FHIRJSON {
					self.rateRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rateRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rateRatio"] {
				presentKeys.insert("rateRatio")
				if let val = exist as? FHIRJSON {
					self.rateRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rateRatio", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["siteCodeableConcept"] {
				presentKeys.insert("siteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.siteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "siteCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["siteReference"] {
				presentKeys.insert("siteReference")
				if let val = exist as? FHIRJSON {
					self.siteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "siteReference", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["timing"] {
				presentKeys.insert("timing")
				if let val = exist as? FHIRJSON {
					self.timing = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timing", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let additionalInstructions = self.additionalInstructions {
			json["additionalInstructions"] = CodeableConcept.asJSONArray(additionalInstructions)
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
		if let rateQuantity = self.rateQuantity {
			json["rateQuantity"] = rateQuantity.asJSON()
		}
		if let rateRange = self.rateRange {
			json["rateRange"] = rateRange.asJSON()
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
		if let timing = self.timing {
			json["timing"] = timing.asJSON()
		}
		
		return json
	}
}

