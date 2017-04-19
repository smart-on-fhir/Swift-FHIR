//
//  FamilyMemberHistory.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// Instantiates protocol or definition.
	public var definition: [Reference]?
	
	/// Age is estimated?.
	public var estimatedAge: FHIRBool?
	
	/// Administrative Gender - the gender that the relative is considered to have for administration and record keeping
	/// purposes.
	public var gender: AdministrativeGender?
	
	/// External Id(s) for this record.
	public var identifier: [Identifier]?
	
	/// The family member described.
	public var name: FHIRString?
	
	/// The taking of a family member's history did not occur.
	public var notDone: FHIRBool?
	
	/// subject-unknown | withheld | unable-to-obtain | deferred.
	public var notDoneReason: CodeableConcept?
	
	/// General note about related person.
	public var note: [Annotation]?
	
	/// Patient history is about.
	public var patient: Reference?
	
	/// Why was family member history performed?.
	public var reasonCode: [CodeableConcept]?
	
	/// Why was family member history performed?.
	public var reasonReference: [Reference]?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		ageAge = createInstance(type: Age.self, for: "ageAge", in: json, context: &instCtx, owner: self) ?? ageAge
		ageRange = createInstance(type: Range.self, for: "ageRange", in: json, context: &instCtx, owner: self) ?? ageRange
		ageString = createInstance(type: FHIRString.self, for: "ageString", in: json, context: &instCtx, owner: self) ?? ageString
		bornDate = createInstance(type: FHIRDate.self, for: "bornDate", in: json, context: &instCtx, owner: self) ?? bornDate
		bornPeriod = createInstance(type: Period.self, for: "bornPeriod", in: json, context: &instCtx, owner: self) ?? bornPeriod
		bornString = createInstance(type: FHIRString.self, for: "bornString", in: json, context: &instCtx, owner: self) ?? bornString
		condition = createInstances(of: FamilyMemberHistoryCondition.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		deceasedAge = createInstance(type: Age.self, for: "deceasedAge", in: json, context: &instCtx, owner: self) ?? deceasedAge
		deceasedBoolean = createInstance(type: FHIRBool.self, for: "deceasedBoolean", in: json, context: &instCtx, owner: self) ?? deceasedBoolean
		deceasedDate = createInstance(type: FHIRDate.self, for: "deceasedDate", in: json, context: &instCtx, owner: self) ?? deceasedDate
		deceasedRange = createInstance(type: Range.self, for: "deceasedRange", in: json, context: &instCtx, owner: self) ?? deceasedRange
		deceasedString = createInstance(type: FHIRString.self, for: "deceasedString", in: json, context: &instCtx, owner: self) ?? deceasedString
		definition = createInstances(of: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		estimatedAge = createInstance(type: FHIRBool.self, for: "estimatedAge", in: json, context: &instCtx, owner: self) ?? estimatedAge
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, context: &instCtx) ?? gender
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		notDone = createInstance(type: FHIRBool.self, for: "notDone", in: json, context: &instCtx, owner: self) ?? notDone
		notDoneReason = createInstance(type: CodeableConcept.self, for: "notDoneReason", in: json, context: &instCtx, owner: self) ?? notDoneReason
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		relationship = createInstance(type: CodeableConcept.self, for: "relationship", in: json, context: &instCtx, owner: self) ?? relationship
		if nil == relationship && !instCtx.containsKey("relationship") {
			instCtx.addError(FHIRValidationError(missing: "relationship"))
		}
		status = createEnum(type: FamilyHistoryStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
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
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		self.estimatedAge?.decorate(json: &json, withKey: "estimatedAge", errors: &errors)
		self.gender?.decorate(json: &json, withKey: "gender", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.notDone?.decorate(json: &json, withKey: "notDone", errors: &errors)
		self.notDoneReason?.decorate(json: &json, withKey: "notDoneReason", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
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
	public var note: [Annotation]?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		onsetAge = createInstance(type: Age.self, for: "onsetAge", in: json, context: &instCtx, owner: self) ?? onsetAge
		onsetPeriod = createInstance(type: Period.self, for: "onsetPeriod", in: json, context: &instCtx, owner: self) ?? onsetPeriod
		onsetRange = createInstance(type: Range.self, for: "onsetRange", in: json, context: &instCtx, owner: self) ?? onsetRange
		onsetString = createInstance(type: FHIRString.self, for: "onsetString", in: json, context: &instCtx, owner: self) ?? onsetString
		outcome = createInstance(type: CodeableConcept.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.onsetAge?.decorate(json: &json, withKey: "onsetAge", errors: &errors)
		self.onsetPeriod?.decorate(json: &json, withKey: "onsetPeriod", errors: &errors)
		self.onsetRange?.decorate(json: &json, withKey: "onsetRange", errors: &errors)
		self.onsetString?.decorate(json: &json, withKey: "onsetString", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
	}
}

