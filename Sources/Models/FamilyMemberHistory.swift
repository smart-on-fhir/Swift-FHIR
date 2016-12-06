//
//  FamilyMemberHistory.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Information about patient's relatives, relevant for patient.

Significant health events and conditions for a person related to the patient relevant in the context of care for the
patient.
*/
open class FamilyMemberHistory: DomainResource {
	override open class var resourceType: String {
		get { return "FamilyMemberHistory" }
	}
	
	/// (approximate) age.
	public var ageAge: Age?
	
	/// (approximate) age.
	public var ageRange: Range?
	
	/// (approximate) age.
	public var ageString: FHIRString?
	
	/// (approximate) date of birth.
	public var bornDate: FHIRDate?
	
	/// (approximate) date of birth.
	public var bornPeriod: Period?
	
	/// (approximate) date of birth.
	public var bornString: FHIRString?
	
	/// Condition that the related person had.
	public var condition: [FamilyMemberHistoryCondition]?
	
	/// When history was captured/updated.
	public var date: DateTime?
	
	/// Dead? How old/when?.
	public var deceasedAge: Age?
	
	/// Dead? How old/when?.
	public var deceasedBoolean: Bool?
	
	/// Dead? How old/when?.
	public var deceasedDate: FHIRDate?
	
	/// Dead? How old/when?.
	public var deceasedRange: Range?
	
	/// Dead? How old/when?.
	public var deceasedString: FHIRString?
	
	/// Age is estimated?.
	public var estimatedAge: Bool?
	
	/// Administrative Gender - the gender that the relative is considered to have for administration and record keeping
	/// purposes.
	public var gender: AdministrativeGender?
	
	/// External Id(s) for this record.
	public var identifier: [Identifier]?
	
	/// The family member described.
	public var name: FHIRString?
	
	/// General note about related person.
	public var note: Annotation?
	
	/// Patient history is about.
	public var patient: Reference?
	
	/// Relationship to the subject.
	public var relationship: CodeableConcept?
	
	/// A code specifying the status of the record of the family history of a specific family member.
	public var status: FamilyHistoryStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, relationship: CodeableConcept, status: FamilyHistoryStatus) {
		self.init()
		self.patient = patient
		self.relationship = relationship
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["ageAge"] {
			presentKeys.insert("ageAge")
			if let val = exist as? FHIRJSON {
				do {
					self.ageAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "ageAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "ageAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["ageRange"] {
			presentKeys.insert("ageRange")
			if let val = exist as? FHIRJSON {
				do {
					self.ageRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "ageRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "ageRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["ageString"] {
			presentKeys.insert("ageString")
			if let val = exist as? String {
				self.ageString = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "ageString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["bornDate"] {
			presentKeys.insert("bornDate")
			if let val = exist as? String {
				self.bornDate = FHIRDate(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "bornDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["bornPeriod"] {
			presentKeys.insert("bornPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.bornPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "bornPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "bornPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["bornString"] {
			presentKeys.insert("bornString")
			if let val = exist as? String {
				self.bornString = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "bornString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["condition"] {
			presentKeys.insert("condition")
			if let val = exist as? [FHIRJSON] {
				do {
					self.condition = try FamilyMemberHistoryCondition.instantiate(fromArray: val, owner: self) as? [FamilyMemberHistoryCondition]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "condition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "condition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["deceasedAge"] {
			presentKeys.insert("deceasedAge")
			if let val = exist as? FHIRJSON {
				do {
					self.deceasedAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "deceasedAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "deceasedAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["deceasedBoolean"] {
			presentKeys.insert("deceasedBoolean")
			if let val = exist as? Bool {
				self.deceasedBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "deceasedBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["deceasedDate"] {
			presentKeys.insert("deceasedDate")
			if let val = exist as? String {
				self.deceasedDate = FHIRDate(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "deceasedDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["deceasedRange"] {
			presentKeys.insert("deceasedRange")
			if let val = exist as? FHIRJSON {
				do {
					self.deceasedRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "deceasedRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "deceasedRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["deceasedString"] {
			presentKeys.insert("deceasedString")
			if let val = exist as? String {
				self.deceasedString = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "deceasedString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["estimatedAge"] {
			presentKeys.insert("estimatedAge")
			if let val = exist as? Bool {
				self.estimatedAge = val
			}
			else {
				errors.append(FHIRValidationError(key: "estimatedAge", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["gender"] {
			presentKeys.insert("gender")
			if let val = exist as? String {
				if let enumval = AdministrativeGender(rawValue: val) {
					self.gender = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "gender", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "gender", wants: String.self, has: type(of: exist)))
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
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? FHIRJSON {
				do {
					self.note = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["relationship"] {
			presentKeys.insert("relationship")
			if let val = exist as? FHIRJSON {
				do {
					self.relationship = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relationship"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relationship", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = FamilyHistoryStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let ageAge = self.ageAge {
			json["ageAge"] = ageAge.asJSON(errors: &errors)
		}
		if let ageRange = self.ageRange {
			json["ageRange"] = ageRange.asJSON(errors: &errors)
		}
		if let ageString = self.ageString {
			json["ageString"] = ageString.asJSON()
		}
		if let bornDate = self.bornDate {
			json["bornDate"] = bornDate.asJSON()
		}
		if let bornPeriod = self.bornPeriod {
			json["bornPeriod"] = bornPeriod.asJSON(errors: &errors)
		}
		if let bornString = self.bornString {
			json["bornString"] = bornString.asJSON()
		}
		if let condition = self.condition {
			json["condition"] = condition.map() { $0.asJSON(errors: &errors) }
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let deceasedAge = self.deceasedAge {
			json["deceasedAge"] = deceasedAge.asJSON(errors: &errors)
		}
		if let deceasedBoolean = self.deceasedBoolean {
			json["deceasedBoolean"] = deceasedBoolean.asJSON()
		}
		if let deceasedDate = self.deceasedDate {
			json["deceasedDate"] = deceasedDate.asJSON()
		}
		if let deceasedRange = self.deceasedRange {
			json["deceasedRange"] = deceasedRange.asJSON(errors: &errors)
		}
		if let deceasedString = self.deceasedString {
			json["deceasedString"] = deceasedString.asJSON()
		}
		if let estimatedAge = self.estimatedAge {
			json["estimatedAge"] = estimatedAge.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.rawValue
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON(errors: &errors)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		
		return json
	}
}


/**
Condition that the related person had.

The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system to
represent more than one condition per resource, though there is nothing stopping multiple resources - one per condition.
*/
open class FamilyMemberHistoryCondition: BackboneElement {
	override open class var resourceType: String {
		get { return "FamilyMemberHistoryCondition" }
	}
	
	/// Condition suffered by relation.
	public var code: CodeableConcept?
	
	/// Extra information about condition.
	public var note: Annotation?
	
	/// When condition first manifested.
	public var onsetAge: Age?
	
	/// When condition first manifested.
	public var onsetPeriod: Period?
	
	/// When condition first manifested.
	public var onsetRange: Range?
	
	/// When condition first manifested.
	public var onsetString: FHIRString?
	
	/// deceased | permanent disability | etc..
	public var outcome: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? FHIRJSON {
				do {
					self.note = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["onsetAge"] {
			presentKeys.insert("onsetAge")
			if let val = exist as? FHIRJSON {
				do {
					self.onsetAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "onsetAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "onsetAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["onsetPeriod"] {
			presentKeys.insert("onsetPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.onsetPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "onsetPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "onsetPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["onsetRange"] {
			presentKeys.insert("onsetRange")
			if let val = exist as? FHIRJSON {
				do {
					self.onsetRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "onsetRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "onsetRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["onsetString"] {
			presentKeys.insert("onsetString")
			if let val = exist as? String {
				self.onsetString = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "onsetString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["outcome"] {
			presentKeys.insert("outcome")
			if let val = exist as? FHIRJSON {
				do {
					self.outcome = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outcome"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let note = self.note {
			json["note"] = note.asJSON(errors: &errors)
		}
		if let onsetAge = self.onsetAge {
			json["onsetAge"] = onsetAge.asJSON(errors: &errors)
		}
		if let onsetPeriod = self.onsetPeriod {
			json["onsetPeriod"] = onsetPeriod.asJSON(errors: &errors)
		}
		if let onsetRange = self.onsetRange {
			json["onsetRange"] = onsetRange.asJSON(errors: &errors)
		}
		if let onsetString = self.onsetString {
			json["onsetString"] = onsetString.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON(errors: &errors)
		}
		
		return json
	}
}

