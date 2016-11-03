//
//  MedicationStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/MedicationStatement) on 2016-11-03.
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
open class MedicationStatement: DomainResource {
	override open class var resourceType: String {
		get { return "MedicationStatement" }
	}
	
	/// Type of medication usage.
	public var category: String?
	
	/// When the statement was asserted?.
	public var dateAsserted: DateTime?
	
	/// Additional supporting information.
	public var derivedFrom: [Reference]?
	
	/// Details of how medication was taken.
	public var dosage: [DosageInstruction]?
	
	/// Over what period was medication consumed?.
	public var effectiveDateTime: DateTime?
	
	/// Over what period was medication consumed?.
	public var effectivePeriod: Period?
	
	/// External identifier.
	public var identifier: [Identifier]?
	
	/// Person or organization that provided the information about the taking of this medication.
	public var informationSource: Reference?
	
	/// What medication was taken.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// What medication was taken.
	public var medicationReference: Reference?
	
	/// y | n | unk.
	public var notTaken: String?
	
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(medication: Any, patient: Reference, status: String) {
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
		self.patient = patient
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? String {
				self.category = val
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["dateAsserted"] {
			presentKeys.insert("dateAsserted")
			if let val = exist as? String {
				self.dateAsserted = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "dateAsserted", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["derivedFrom"] {
			presentKeys.insert("derivedFrom")
			if let val = exist as? [FHIRJSON] {
				do {
					self.derivedFrom = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "derivedFrom"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "derivedFrom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["dosage"] {
			presentKeys.insert("dosage")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dosage = try DosageInstruction.instantiate(fromArray: val, owner: self) as? [DosageInstruction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dosage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dosage", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["effectiveDateTime"] {
			presentKeys.insert("effectiveDateTime")
			if let val = exist as? String {
				self.effectiveDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "effectiveDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["effectivePeriod"] {
			presentKeys.insert("effectivePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.effectivePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "effectivePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "effectivePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["informationSource"] {
			presentKeys.insert("informationSource")
			if let val = exist as? FHIRJSON {
				do {
					self.informationSource = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "informationSource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "informationSource", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["notTaken"] {
			presentKeys.insert("notTaken")
			if let val = exist as? String {
				self.notTaken = val
			}
			else {
				errors.append(FHIRValidationError(key: "notTaken", wants: String.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let exist = json["reasonForUseCode"] {
			presentKeys.insert("reasonForUseCode")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonForUseCode = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonForUseCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonForUseCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonForUseReference"] {
			presentKeys.insert("reasonForUseReference")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonForUseReference = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonForUseReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonForUseReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonNotTaken"] {
			presentKeys.insert("reasonNotTaken")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonNotTaken = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonNotTaken"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonNotTaken", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let dateAsserted = self.dateAsserted {
			json["dateAsserted"] = dateAsserted.asJSON()
		}
		if let derivedFrom = self.derivedFrom {
			json["derivedFrom"] = derivedFrom.map() { $0.asJSON(errors: &errors) }
		}
		if let dosage = self.dosage {
			json["dosage"] = dosage.map() { $0.asJSON(errors: &errors) }
		}
		if let effectiveDateTime = self.effectiveDateTime {
			json["effectiveDateTime"] = effectiveDateTime.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let informationSource = self.informationSource {
			json["informationSource"] = informationSource.asJSON(errors: &errors)
		}
		if let medicationCodeableConcept = self.medicationCodeableConcept {
			json["medicationCodeableConcept"] = medicationCodeableConcept.asJSON(errors: &errors)
		}
		if let medicationReference = self.medicationReference {
			json["medicationReference"] = medicationReference.asJSON(errors: &errors)
		}
		if let notTaken = self.notTaken {
			json["notTaken"] = notTaken.asJSON()
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let reasonForUseCode = self.reasonForUseCode {
			json["reasonForUseCode"] = reasonForUseCode.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonForUseReference = self.reasonForUseReference {
			json["reasonForUseReference"] = reasonForUseReference.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonNotTaken = self.reasonNotTaken {
			json["reasonNotTaken"] = reasonNotTaken.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

