//
//  Condition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Condition) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Detailed information about conditions, problems or diagnoses.
 *
 *  Use to record detailed information about conditions, problems or diagnoses recognized by a clinician. There are many
 *  uses including: recording a diagnosis during an encounter; populating a problem list or a summary statement, such as
 *  a discharge summary.
 */
open class Condition: DomainResource {
	override open class var resourceType: String {
		get { return "Condition" }
	}
	
	/// If/when in resolution/remission.
	public var abatementAge: Age?
	
	/// If/when in resolution/remission.
	public var abatementBoolean: Bool?
	
	/// If/when in resolution/remission.
	public var abatementDateTime: DateTime?
	
	/// If/when in resolution/remission.
	public var abatementPeriod: Period?
	
	/// If/when in resolution/remission.
	public var abatementRange: Range?
	
	/// If/when in resolution/remission.
	public var abatementString: String?
	
	/// Person who asserts this condition.
	public var asserter: Reference?
	
	/// Anatomical location, if relevant.
	public var bodySite: [CodeableConcept]?
	
	/// problem-list-item | encounter-diagnosis.
	public var category: [CodeableConcept]?
	
	/// active | relapse | remission | resolved.
	public var clinicalStatus: String?
	
	/// Identification of the condition, problem or diagnosis.
	public var code: CodeableConcept?
	
	/// Encounter when condition first asserted.
	public var context: Reference?
	
	/// When first entered.
	public var dateRecorded: FHIRDate?
	
	/// Supporting evidence.
	public var evidence: [ConditionEvidence]?
	
	/// External Ids for this condition.
	public var identifier: [Identifier]?
	
	/// Additional information about the Condition.
	public var note: [Annotation]?
	
	/// Estimated or actual date,  date-time, or age.
	public var onsetAge: Age?
	
	/// Estimated or actual date,  date-time, or age.
	public var onsetDateTime: DateTime?
	
	/// Estimated or actual date,  date-time, or age.
	public var onsetPeriod: Period?
	
	/// Estimated or actual date,  date-time, or age.
	public var onsetRange: Range?
	
	/// Estimated or actual date,  date-time, or age.
	public var onsetString: String?
	
	/// Subjective severity of condition.
	public var severity: CodeableConcept?
	
	/// Stage/grade, usually assessed formally.
	public var stage: ConditionStage?
	
	/// Who has the condition?.
	public var subject: Reference?
	
	/// provisional | differential | confirmed | refuted | entered-in-error | unknown.
	public var verificationStatus: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, subject: Reference, verificationStatus: String) {
		self.init()
		self.code = code
		self.subject = subject
		self.verificationStatus = verificationStatus
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["abatementAge"] {
			presentKeys.insert("abatementAge")
			if let val = exist as? FHIRJSON {
				do {
					self.abatementAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "abatementAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "abatementAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["abatementBoolean"] {
			presentKeys.insert("abatementBoolean")
			if let val = exist as? Bool {
				self.abatementBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "abatementBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["abatementDateTime"] {
			presentKeys.insert("abatementDateTime")
			if let val = exist as? String {
				self.abatementDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "abatementDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["abatementPeriod"] {
			presentKeys.insert("abatementPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.abatementPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "abatementPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "abatementPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["abatementRange"] {
			presentKeys.insert("abatementRange")
			if let val = exist as? FHIRJSON {
				do {
					self.abatementRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "abatementRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "abatementRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["abatementString"] {
			presentKeys.insert("abatementString")
			if let val = exist as? String {
				self.abatementString = val
			}
			else {
				errors.append(FHIRValidationError(key: "abatementString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["asserter"] {
			presentKeys.insert("asserter")
			if let val = exist as? FHIRJSON {
				do {
					self.asserter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "asserter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "asserter", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["bodySite"] {
			presentKeys.insert("bodySite")
			if let val = exist as? [FHIRJSON] {
				do {
					self.bodySite = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "bodySite"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "bodySite", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? [FHIRJSON] {
				do {
					self.category = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["clinicalStatus"] {
			presentKeys.insert("clinicalStatus")
			if let val = exist as? String {
				self.clinicalStatus = val
			}
			else {
				errors.append(FHIRValidationError(key: "clinicalStatus", wants: String.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? FHIRJSON {
				do {
					self.context = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "context"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["dateRecorded"] {
			presentKeys.insert("dateRecorded")
			if let val = exist as? String {
				self.dateRecorded = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "dateRecorded", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["evidence"] {
			presentKeys.insert("evidence")
			if let val = exist as? [FHIRJSON] {
				do {
					self.evidence = try ConditionEvidence.instantiate(fromArray: val, owner: self) as? [ConditionEvidence]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "evidence"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "evidence", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["onsetDateTime"] {
			presentKeys.insert("onsetDateTime")
			if let val = exist as? String {
				self.onsetDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "onsetDateTime", wants: String.self, has: type(of: exist)))
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
				self.onsetString = val
			}
			else {
				errors.append(FHIRValidationError(key: "onsetString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["severity"] {
			presentKeys.insert("severity")
			if let val = exist as? FHIRJSON {
				do {
					self.severity = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "severity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "severity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["stage"] {
			presentKeys.insert("stage")
			if let val = exist as? FHIRJSON {
				do {
					self.stage = try ConditionStage(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "stage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "stage", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		if let exist = json["verificationStatus"] {
			presentKeys.insert("verificationStatus")
			if let val = exist as? String {
				self.verificationStatus = val
			}
			else {
				errors.append(FHIRValidationError(key: "verificationStatus", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "verificationStatus"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let abatementAge = self.abatementAge {
			json["abatementAge"] = abatementAge.asJSON(errors: &errors)
		}
		if let abatementBoolean = self.abatementBoolean {
			json["abatementBoolean"] = abatementBoolean.asJSON()
		}
		if let abatementDateTime = self.abatementDateTime {
			json["abatementDateTime"] = abatementDateTime.asJSON()
		}
		if let abatementPeriod = self.abatementPeriod {
			json["abatementPeriod"] = abatementPeriod.asJSON(errors: &errors)
		}
		if let abatementRange = self.abatementRange {
			json["abatementRange"] = abatementRange.asJSON(errors: &errors)
		}
		if let abatementString = self.abatementString {
			json["abatementString"] = abatementString.asJSON()
		}
		if let asserter = self.asserter {
			json["asserter"] = asserter.asJSON(errors: &errors)
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON(errors: &errors) }
		}
		if let clinicalStatus = self.clinicalStatus {
			json["clinicalStatus"] = clinicalStatus.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let dateRecorded = self.dateRecorded {
			json["dateRecorded"] = dateRecorded.asJSON()
		}
		if let evidence = self.evidence {
			json["evidence"] = evidence.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let onsetAge = self.onsetAge {
			json["onsetAge"] = onsetAge.asJSON(errors: &errors)
		}
		if let onsetDateTime = self.onsetDateTime {
			json["onsetDateTime"] = onsetDateTime.asJSON()
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
		if let severity = self.severity {
			json["severity"] = severity.asJSON(errors: &errors)
		}
		if let stage = self.stage {
			json["stage"] = stage.asJSON(errors: &errors)
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let verificationStatus = self.verificationStatus {
			json["verificationStatus"] = verificationStatus.asJSON()
		}
		
		return json
	}
}


/**
 *  Supporting evidence.
 *
 *  Supporting Evidence / manifestations that are the basis on which this condition is suspected or confirmed.
 */
open class ConditionEvidence: BackboneElement {
	override open class var resourceType: String {
		get { return "ConditionEvidence" }
	}
	
	/// Manifestation/symptom.
	public var code: CodeableConcept?
	
	/// Supporting information found elsewhere.
	public var detail: [Reference]?
	
	
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
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? [FHIRJSON] {
				do {
					self.detail = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "detail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let detail = self.detail {
			json["detail"] = detail.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
 *  Stage/grade, usually assessed formally.
 *
 *  Clinical stage or grade of a condition. May include formal severity assessments.
 */
open class ConditionStage: BackboneElement {
	override open class var resourceType: String {
		get { return "ConditionStage" }
	}
	
	/// Formal record of assessment.
	public var assessment: [Reference]?
	
	/// Simple summary (disease specific).
	public var summary: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["assessment"] {
			presentKeys.insert("assessment")
			if let val = exist as? [FHIRJSON] {
				do {
					self.assessment = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "assessment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "assessment", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["summary"] {
			presentKeys.insert("summary")
			if let val = exist as? FHIRJSON {
				do {
					self.summary = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "summary"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "summary", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let assessment = self.assessment {
			json["assessment"] = assessment.map() { $0.asJSON(errors: &errors) }
		}
		if let summary = self.summary {
			json["summary"] = summary.asJSON(errors: &errors)
		}
		
		return json
	}
}

