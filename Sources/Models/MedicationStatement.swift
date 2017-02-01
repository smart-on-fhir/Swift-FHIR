//
//  MedicationStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/MedicationStatement) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
Record of medication being taken by a patient.

A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient may
be taking the medication now, or has taken the medication in the past or will be taking the medication in the future.
The source of this information can be the patient, significant other (such as a family member or spouse), or a
clinician.  A common scenario where this information is captured is during the history taking process during a patient
visit or stay.   The medication information may come from e.g. the patient's memory, from a prescription bottle,  or
from a list of medications the patient, clinician or other party maintains

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
	
	/// Further information about the statement.
	public var note: [Annotation]?
	
	/// Part of referenced event.
	public var partOf: [Reference]?
	
	/// Reason for why the medication is being/was taken.
	public var reasonForUseCodeableConcept: [CodeableConcept]?
	
	/// Condition or observation that supports why the medication is being/was taken.
	public var reasonForUseReference: [Reference]?
	
	/// True if asserting medication was not given.
	public var reasonNotTaken: [CodeableConcept]?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		dateAsserted = try createInstance(type: DateTime.self, for: "dateAsserted", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dateAsserted
		derivedFrom = try createInstances(of: Reference.self, for: "derivedFrom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? derivedFrom
		dosage = try createInstances(of: DosageInstruction.self, for: "dosage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dosage
		effectiveDateTime = try createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectiveDateTime
		effectivePeriod = try createInstance(type: Period.self, for: "effectivePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectivePeriod
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		informationSource = try createInstance(type: Reference.self, for: "informationSource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? informationSource
		medicationCodeableConcept = try createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationCodeableConcept
		medicationReference = try createInstance(type: Reference.self, for: "medicationReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationReference
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		partOf = try createInstances(of: Reference.self, for: "partOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partOf
		reasonForUseCodeableConcept = try createInstances(of: CodeableConcept.self, for: "reasonForUseCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonForUseCodeableConcept
		reasonForUseReference = try createInstances(of: Reference.self, for: "reasonForUseReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonForUseReference
		reasonNotTaken = try createInstances(of: CodeableConcept.self, for: "reasonNotTaken", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonNotTaken
		status = createEnum(type: MedicationStatementStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		taken = createEnum(type: MedicationStatementTaken.self, for: "taken", in: json, presentKeys: &presentKeys, errors: &errors) ?? taken
		if nil == taken && !presentKeys.contains("taken") {
			errors.append(FHIRValidationError(missing: "taken"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
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
		arrayDecorate(json: &json, withKey: "reasonForUseCodeableConcept", using: self.reasonForUseCodeableConcept, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonForUseReference", using: self.reasonForUseReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonNotTaken", using: self.reasonNotTaken, errors: &errors)
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

