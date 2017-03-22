//
//  MedicationStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/MedicationStatement) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Record of medication being taken by a patient.

A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient may
be taking the medication now, or has taken the medication in the past or will be taking the medication in the future.
The source of this information can be the patient, significant other (such as a family member or spouse), or a
clinician.  A common scenario where this information is captured is during the history taking process during a patient
visit or stay.   The medication information may come from sources such as the patient's memory, from a prescription
bottle,  or from a list of medications the patient, clinician or other party maintains

The primary difference between a medication statement and a medication administration is that the medication
administration has complete administration information and is based on actual administration information from the person
who administered the medication.  A medication statement is often, if not always, less specific.  There is no required
date/time when the medication was administered, in fact we only know that a source has reported the patient is taking
this medication, where details such as time, quantity, or rate or even medication product may be incomplete or missing
or less precise.  As stated earlier, the medication statement information may come from the patient's memory, from a
prescription bottle or from a list of medications the patient, clinician or other party maintains.  Medication
administration is more formal and is not missing detailed information.
*/
open class MedicationStatement: DomainResource {
	override open class var resourceType: String {
		get { return "MedicationStatement" }
	}
	
	/// Fulfils plan, proposal or order.
	public var basedOn: [Reference]?
	
	/// Type of medication usage.
	public var category: CodeableConcept?
	
	/// Encounter / Episode associated with MedicationStatement.
	public var context: Reference?
	
	/// When the statement was asserted?.
	public var dateAsserted: DateTime?
	
	/// Additional supporting information.
	public var derivedFrom: [Reference]?
	
	/// Details of how medication is/was taken or should be taken.
	public var dosage: [Dosage]?
	
	/// The date/time or interval when the medication was taken.
	public var effectiveDateTime: DateTime?
	
	/// The date/time or interval when the medication was taken.
	public var effectivePeriod: Period?
	
	/// External identifier.
	public var identifier: [Identifier]?
	
	/// Person or organization that provided the information about the taking of this medication.
	public var informationSource: Reference?
	
	/// What medication was taken.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// What medication was taken.
	public var medicationReference: Reference?
	
	/// Further information about the statement.
	public var note: [Annotation]?
	
	/// Part of referenced event.
	public var partOf: [Reference]?
	
	/// Reason for why the medication is being/was taken.
	public var reasonCode: [CodeableConcept]?
	
	/// True if asserting medication was not given.
	public var reasonNotTaken: [CodeableConcept]?
	
	/// Condition or observation that supports why the medication is being/was taken.
	public var reasonReference: [Reference]?
	
	/// A code representing the patient or other source's judgment about the state of the medication used that this
	/// statement is about.  Generally this will be active or completed.
	public var status: MedicationStatementStatus?
	
	/// Who is/was taking  the medication.
	public var subject: Reference?
	
	/// Indicator of the certainty of whether the medication was taken by the patient.
	public var taken: MedicationStatementTaken?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(medication: Any, status: MedicationStatementStatus, subject: Reference, taken: MedicationStatementTaken) {
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
		self.status = status
		self.subject = subject
		self.taken = taken
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		dateAsserted = createInstance(type: DateTime.self, for: "dateAsserted", in: json, context: &instCtx, owner: self) ?? dateAsserted
		derivedFrom = createInstances(of: Reference.self, for: "derivedFrom", in: json, context: &instCtx, owner: self) ?? derivedFrom
		dosage = createInstances(of: Dosage.self, for: "dosage", in: json, context: &instCtx, owner: self) ?? dosage
		effectiveDateTime = createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, context: &instCtx, owner: self) ?? effectiveDateTime
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		informationSource = createInstance(type: Reference.self, for: "informationSource", in: json, context: &instCtx, owner: self) ?? informationSource
		medicationCodeableConcept = createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, context: &instCtx, owner: self) ?? medicationCodeableConcept
		medicationReference = createInstance(type: Reference.self, for: "medicationReference", in: json, context: &instCtx, owner: self) ?? medicationReference
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonNotTaken = createInstances(of: CodeableConcept.self, for: "reasonNotTaken", in: json, context: &instCtx, owner: self) ?? reasonNotTaken
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		status = createEnum(type: MedicationStatementStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		taken = createEnum(type: MedicationStatementTaken.self, for: "taken", in: json, context: &instCtx) ?? taken
		if nil == taken && !instCtx.containsKey("taken") {
			instCtx.addError(FHIRValidationError(missing: "taken"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			instCtx.addError(FHIRValidationError(missing: "medication[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.dateAsserted?.decorate(json: &json, withKey: "dateAsserted", errors: &errors)
		arrayDecorate(json: &json, withKey: "derivedFrom", using: self.derivedFrom, errors: &errors)
		arrayDecorate(json: &json, withKey: "dosage", using: self.dosage, errors: &errors)
		self.effectiveDateTime?.decorate(json: &json, withKey: "effectiveDateTime", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.informationSource?.decorate(json: &json, withKey: "informationSource", errors: &errors)
		self.medicationCodeableConcept?.decorate(json: &json, withKey: "medicationCodeableConcept", errors: &errors)
		self.medicationReference?.decorate(json: &json, withKey: "medicationReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonNotTaken", using: self.reasonNotTaken, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		self.taken?.decorate(json: &json, withKey: "taken", errors: &errors)
		if nil == self.taken {
			errors.append(FHIRValidationError(missing: "taken"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
	}
}

