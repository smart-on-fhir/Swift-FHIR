//
//  FamilyMemberHistory.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory) on 2016-12-08.
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
	public var deceasedBoolean: FHIRBool?
	
	/// Dead? How old/when?.
	public var deceasedDate: FHIRDate?
	
	/// Dead? How old/when?.
	public var deceasedRange: Range?
	
	/// Dead? How old/when?.
	public var deceasedString: FHIRString?
	
	/// Age is estimated?.
	public var estimatedAge: FHIRBool?
	
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
		
		ageAge = try createInstance(type: Age.self, for: "ageAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? ageAge
		ageRange = try createInstance(type: Range.self, for: "ageRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? ageRange
		ageString = try createInstance(type: FHIRString.self, for: "ageString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? ageString
		bornDate = try createInstance(type: FHIRDate.self, for: "bornDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bornDate
		bornPeriod = try createInstance(type: Period.self, for: "bornPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bornPeriod
		bornString = try createInstance(type: FHIRString.self, for: "bornString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bornString
		condition = try createInstances(of: FamilyMemberHistoryCondition.self, for: "condition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? condition
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		deceasedAge = try createInstance(type: Age.self, for: "deceasedAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deceasedAge
		deceasedBoolean = try createInstance(type: FHIRBool.self, for: "deceasedBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deceasedBoolean
		deceasedDate = try createInstance(type: FHIRDate.self, for: "deceasedDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deceasedDate
		deceasedRange = try createInstance(type: Range.self, for: "deceasedRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deceasedRange
		deceasedString = try createInstance(type: FHIRString.self, for: "deceasedString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deceasedString
		estimatedAge = try createInstance(type: FHIRBool.self, for: "estimatedAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? estimatedAge
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, presentKeys: &presentKeys, errors: &errors) ?? gender
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		note = try createInstance(type: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		relationship = try createInstance(type: CodeableConcept.self, for: "relationship", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relationship
		if nil == relationship && !presentKeys.contains("relationship") {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
		status = createEnum(type: FamilyHistoryStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.ageAge?.decorate(json: &json, withKey: "ageAge", errors: &errors)
		self.ageRange?.decorate(json: &json, withKey: "ageRange", errors: &errors)
		self.ageString?.decorate(json: &json, withKey: "ageString", errors: &errors)
		self.bornDate?.decorate(json: &json, withKey: "bornDate", errors: &errors)
		self.bornPeriod?.decorate(json: &json, withKey: "bornPeriod", errors: &errors)
		self.bornString?.decorate(json: &json, withKey: "bornString", errors: &errors)
		arrayDecorate(json: &json, withKey: "condition", using: self.condition, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.deceasedAge?.decorate(json: &json, withKey: "deceasedAge", errors: &errors)
		self.deceasedBoolean?.decorate(json: &json, withKey: "deceasedBoolean", errors: &errors)
		self.deceasedDate?.decorate(json: &json, withKey: "deceasedDate", errors: &errors)
		self.deceasedRange?.decorate(json: &json, withKey: "deceasedRange", errors: &errors)
		self.deceasedString?.decorate(json: &json, withKey: "deceasedString", errors: &errors)
		self.estimatedAge?.decorate(json: &json, withKey: "estimatedAge", errors: &errors)
		self.gender?.decorate(json: &json, withKey: "gender", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.note?.decorate(json: &json, withKey: "note", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
		if nil == self.relationship {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
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
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		note = try createInstance(type: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		onsetAge = try createInstance(type: Age.self, for: "onsetAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetAge
		onsetPeriod = try createInstance(type: Period.self, for: "onsetPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetPeriod
		onsetRange = try createInstance(type: Range.self, for: "onsetRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetRange
		onsetString = try createInstance(type: FHIRString.self, for: "onsetString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetString
		outcome = try createInstance(type: CodeableConcept.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.note?.decorate(json: &json, withKey: "note", errors: &errors)
		self.onsetAge?.decorate(json: &json, withKey: "onsetAge", errors: &errors)
		self.onsetPeriod?.decorate(json: &json, withKey: "onsetPeriod", errors: &errors)
		self.onsetRange?.decorate(json: &json, withKey: "onsetRange", errors: &errors)
		self.onsetString?.decorate(json: &json, withKey: "onsetString", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
	}
}

