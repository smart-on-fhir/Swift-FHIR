//
//  Condition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Condition) on 2016-08-12.
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
public class Condition: DomainResource {
	override public class var resourceName: String {
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
	
	/// complaint | symptom | finding | diagnosis.
	public var category: CodeableConcept?
	
	/// active | relapse | remission | resolved.
	public var clinicalStatus: String?
	
	/// Identification of the condition, problem or diagnosis.
	public var code: CodeableConcept?
	
	/// Encounter when condition first asserted.
	public var context: Reference?
	
	/// When first entered.
	public var dateRecorded: Date?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, subject: Reference, verificationStatus: String) {
		self.init(json: nil)
		self.code = code
		self.subject = subject
		self.verificationStatus = verificationStatus
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["abatementAge"] {
				presentKeys.insert("abatementAge")
				if let val = exist as? FHIRJSON {
					self.abatementAge = Age(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "abatementAge", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["abatementBoolean"] {
				presentKeys.insert("abatementBoolean")
				if let val = exist as? Bool {
					self.abatementBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "abatementBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["abatementDateTime"] {
				presentKeys.insert("abatementDateTime")
				if let val = exist as? String {
					self.abatementDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "abatementDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["abatementPeriod"] {
				presentKeys.insert("abatementPeriod")
				if let val = exist as? FHIRJSON {
					self.abatementPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "abatementPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["abatementRange"] {
				presentKeys.insert("abatementRange")
				if let val = exist as? FHIRJSON {
					self.abatementRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "abatementRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["abatementString"] {
				presentKeys.insert("abatementString")
				if let val = exist as? String {
					self.abatementString = val
				}
				else {
					errors.append(FHIRJSONError(key: "abatementString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["asserter"] {
				presentKeys.insert("asserter")
				if let val = exist as? FHIRJSON {
					self.asserter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "asserter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? [FHIRJSON] {
					self.bodySite = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["clinicalStatus"] {
				presentKeys.insert("clinicalStatus")
				if let val = exist as? String {
					self.clinicalStatus = val
				}
				else {
					errors.append(FHIRJSONError(key: "clinicalStatus", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dateRecorded"] {
				presentKeys.insert("dateRecorded")
				if let val = exist as? String {
					self.dateRecorded = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateRecorded", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["evidence"] {
				presentKeys.insert("evidence")
				if let val = exist as? [FHIRJSON] {
					self.evidence = ConditionEvidence.from(val, owner: self) as? [ConditionEvidence]
				}
				else {
					errors.append(FHIRJSONError(key: "evidence", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["onsetAge"] {
				presentKeys.insert("onsetAge")
				if let val = exist as? FHIRJSON {
					self.onsetAge = Age(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "onsetAge", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["onsetDateTime"] {
				presentKeys.insert("onsetDateTime")
				if let val = exist as? String {
					self.onsetDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "onsetDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["onsetPeriod"] {
				presentKeys.insert("onsetPeriod")
				if let val = exist as? FHIRJSON {
					self.onsetPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "onsetPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["onsetRange"] {
				presentKeys.insert("onsetRange")
				if let val = exist as? FHIRJSON {
					self.onsetRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "onsetRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["onsetString"] {
				presentKeys.insert("onsetString")
				if let val = exist as? String {
					self.onsetString = val
				}
				else {
					errors.append(FHIRJSONError(key: "onsetString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["severity"] {
				presentKeys.insert("severity")
				if let val = exist as? FHIRJSON {
					self.severity = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "severity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["stage"] {
				presentKeys.insert("stage")
				if let val = exist as? FHIRJSON {
					self.stage = ConditionStage(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "stage", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			if let exist: AnyObject = js["verificationStatus"] {
				presentKeys.insert("verificationStatus")
				if let val = exist as? String {
					self.verificationStatus = val
				}
				else {
					errors.append(FHIRJSONError(key: "verificationStatus", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "verificationStatus"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let abatementAge = self.abatementAge {
			json["abatementAge"] = abatementAge.asJSON()
		}
		if let abatementBoolean = self.abatementBoolean {
			json["abatementBoolean"] = abatementBoolean.asJSON()
		}
		if let abatementDateTime = self.abatementDateTime {
			json["abatementDateTime"] = abatementDateTime.asJSON()
		}
		if let abatementPeriod = self.abatementPeriod {
			json["abatementPeriod"] = abatementPeriod.asJSON()
		}
		if let abatementRange = self.abatementRange {
			json["abatementRange"] = abatementRange.asJSON()
		}
		if let abatementString = self.abatementString {
			json["abatementString"] = abatementString.asJSON()
		}
		if let asserter = self.asserter {
			json["asserter"] = asserter.asJSON()
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = CodeableConcept.asJSONArray(bodySite)
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let clinicalStatus = self.clinicalStatus {
			json["clinicalStatus"] = clinicalStatus.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let dateRecorded = self.dateRecorded {
			json["dateRecorded"] = dateRecorded.asJSON()
		}
		if let evidence = self.evidence {
			json["evidence"] = ConditionEvidence.asJSONArray(evidence)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
		}
		if let onsetAge = self.onsetAge {
			json["onsetAge"] = onsetAge.asJSON()
		}
		if let onsetDateTime = self.onsetDateTime {
			json["onsetDateTime"] = onsetDateTime.asJSON()
		}
		if let onsetPeriod = self.onsetPeriod {
			json["onsetPeriod"] = onsetPeriod.asJSON()
		}
		if let onsetRange = self.onsetRange {
			json["onsetRange"] = onsetRange.asJSON()
		}
		if let onsetString = self.onsetString {
			json["onsetString"] = onsetString.asJSON()
		}
		if let severity = self.severity {
			json["severity"] = severity.asJSON()
		}
		if let stage = self.stage {
			json["stage"] = stage.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
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
public class ConditionEvidence: BackboneElement {
	override public class var resourceName: String {
		get { return "ConditionEvidence" }
	}
	
	/// Manifestation/symptom.
	public var code: CodeableConcept?
	
	/// Supporting information found elsewhere.
	public var detail: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = Reference.asJSONArray(detail)
		}
		
		return json
	}
}


/**
 *  Stage/grade, usually assessed formally.
 *
 *  Clinical stage or grade of a condition. May include formal severity assessments.
 */
public class ConditionStage: BackboneElement {
	override public class var resourceName: String {
		get { return "ConditionStage" }
	}
	
	/// Formal record of assessment.
	public var assessment: [Reference]?
	
	/// Simple summary (disease specific).
	public var summary: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["assessment"] {
				presentKeys.insert("assessment")
				if let val = exist as? [FHIRJSON] {
					self.assessment = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "assessment", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["summary"] {
				presentKeys.insert("summary")
				if let val = exist as? FHIRJSON {
					self.summary = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "summary", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let assessment = self.assessment {
			json["assessment"] = Reference.asJSONArray(assessment)
		}
		if let summary = self.summary {
			json["summary"] = summary.asJSON()
		}
		
		return json
	}
}

