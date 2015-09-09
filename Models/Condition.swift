//
//  Condition.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Condition) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Detailed information about conditions, problems or diagnoses.
 *
 *  Use to record detailed information about conditions, problems or diagnoses recognized by a clinician. There are many
 *  uses including: recording a Diagnosis during an Encounter; populating a problem List or a Summary Statement, such as
 *  a Discharge Summary.
 */
public class Condition: DomainResource
{
	override public class var resourceName: String {
		get { return "Condition" }
	}
	
	/// If/when in resolution/remission
	public var abatementAge: Age?
	
	/// If/when in resolution/remission
	public var abatementBoolean: Bool?
	
	/// If/when in resolution/remission
	public var abatementDate: Date?
	
	/// If/when in resolution/remission
	public var abatementPeriod: Period?
	
	/// If/when in resolution/remission
	public var abatementRange: Range?
	
	/// If/when in resolution/remission
	public var abatementString: String?
	
	/// Person who asserts this condition
	public var asserter: Reference?
	
	/// E.g. complaint | symptom | finding | diagnosis
	public var category: CodeableConcept?
	
	/// provisional | working | confirmed | refuted | entered-in-error | unknown
	public var clinicalStatus: String?
	
	/// Identification of the condition, problem or diagnosis
	public var code: CodeableConcept?
	
	/// When first detected/suspected/entered
	public var dateAsserted: Date?
	
	/// Causes for this Condition
	public var dueTo: [ConditionDueTo]?
	
	/// Encounter when condition first asserted
	public var encounter: Reference?
	
	/// Supporting evidence
	public var evidence: [ConditionEvidence]?
	
	/// External Ids for this condition
	public var identifier: [Identifier]?
	
	/// Anatomical location, if relevant
	public var location: [ConditionLocation]?
	
	/// Additional information about the Condition
	public var notes: String?
	
	/// Precedent for this Condition
	public var occurredFollowing: [ConditionOccurredFollowing]?
	
	/// Estimated or actual date,  date-time, or age
	public var onsetAge: Age?
	
	/// Estimated or actual date,  date-time, or age
	public var onsetDateTime: DateTime?
	
	/// Estimated or actual date,  date-time, or age
	public var onsetPeriod: Period?
	
	/// Estimated or actual date,  date-time, or age
	public var onsetRange: Range?
	
	/// Estimated or actual date,  date-time, or age
	public var onsetString: String?
	
	/// Who has the condition?
	public var patient: Reference?
	
	/// Subjective severity of condition
	public var severity: CodeableConcept?
	
	/// Stage/grade, usually assessed formally
	public var stage: ConditionStage?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(clinicalStatus: String?, code: CodeableConcept?, patient: Reference?) {
		self.init(json: nil)
		if nil != clinicalStatus {
			self.clinicalStatus = clinicalStatus
		}
		if nil != code {
			self.code = code
		}
		if nil != patient {
			self.patient = patient
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["abatementDate"] {
				presentKeys.insert("abatementDate")
				if let val = exist as? String {
					self.abatementDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "abatementDate", wants: String.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "clinicalStatus"))
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
			if let exist: AnyObject = js["dateAsserted"] {
				presentKeys.insert("dateAsserted")
				if let val = exist as? String {
					self.dateAsserted = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateAsserted", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dueTo"] {
				presentKeys.insert("dueTo")
				if let val = exist as? [FHIRJSON] {
					self.dueTo = ConditionDueTo.from(val, owner: self) as? [ConditionDueTo]
				}
				else {
					errors.append(FHIRJSONError(key: "dueTo", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? [FHIRJSON] {
					self.location = ConditionLocation.from(val, owner: self) as? [ConditionLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.insert("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(FHIRJSONError(key: "notes", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["occurredFollowing"] {
				presentKeys.insert("occurredFollowing")
				if let val = exist as? [FHIRJSON] {
					self.occurredFollowing = ConditionOccurredFollowing.from(val, owner: self) as? [ConditionOccurredFollowing]
				}
				else {
					errors.append(FHIRJSONError(key: "occurredFollowing", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		if let abatementDate = self.abatementDate {
			json["abatementDate"] = abatementDate.asJSON()
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
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let clinicalStatus = self.clinicalStatus {
			json["clinicalStatus"] = clinicalStatus.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let dateAsserted = self.dateAsserted {
			json["dateAsserted"] = dateAsserted.asJSON()
		}
		if let dueTo = self.dueTo {
			json["dueTo"] = ConditionDueTo.asJSONArray(dueTo)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let evidence = self.evidence {
			json["evidence"] = ConditionEvidence.asJSONArray(evidence)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let location = self.location {
			json["location"] = ConditionLocation.asJSONArray(location)
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let occurredFollowing = self.occurredFollowing {
			json["occurredFollowing"] = ConditionOccurredFollowing.asJSONArray(occurredFollowing)
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
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let severity = self.severity {
			json["severity"] = severity.asJSON()
		}
		if let stage = self.stage {
			json["stage"] = stage.asJSON()
		}
		
		return json
	}
}


/**
 *  Causes for this Condition.
 *
 *  Further conditions, problems, diagnoses, procedures or events or the substance that caused/triggered this Condition.
 */
public class ConditionDueTo: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConditionDueTo" }
	}
	
	/// Relationship target by means of a predefined code
	public var code: CodeableConcept?
	
	/// Relationship target resource
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}


/**
 *  Supporting evidence.
 *
 *  Supporting Evidence / manifestations that are the basis on which this condition is suspected or confirmed.
 */
public class ConditionEvidence: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConditionEvidence" }
	}
	
	/// Manifestation/symptom
	public var code: CodeableConcept?
	
	/// Supporting information found elsewhere
	public var detail: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
 *  Anatomical location, if relevant.
 *
 *  The anatomical location where this condition manifests itself.
 */
public class ConditionLocation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConditionLocation" }
	}
	
	/// Location - may include laterality
	public var siteCodeableConcept: CodeableConcept?
	
	/// Location - may include laterality
	public var siteReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let siteCodeableConcept = self.siteCodeableConcept {
			json["siteCodeableConcept"] = siteCodeableConcept.asJSON()
		}
		if let siteReference = self.siteReference {
			json["siteReference"] = siteReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Precedent for this Condition.
 *
 *  Further conditions, problems, diagnoses, procedures or events or the substance that preceded this Condition.
 */
public class ConditionOccurredFollowing: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConditionOccurredFollowing" }
	}
	
	/// Relationship target by means of a predefined code
	public var code: CodeableConcept?
	
	/// Relationship target resource
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}


/**
 *  Stage/grade, usually assessed formally.
 *
 *  Clinical stage or grade of a condition. May include formal severity assessments.
 */
public class ConditionStage: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConditionStage" }
	}
	
	/// Formal record of assessment
	public var assessment: [Reference]?
	
	/// Simple summary (disease specific)
	public var summary: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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

