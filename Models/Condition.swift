//
//  Condition.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Condition) on 2015-04-03.
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["abatementAge"] as? FHIRJSON {
				self.abatementAge = Age(json: val, owner: self)
			}
			if let val = js["abatementBoolean"] as? Bool {
				self.abatementBoolean = val
			}
			if let val = js["abatementDate"] as? String {
				self.abatementDate = Date(string: val)
			}
			if let val = js["abatementPeriod"] as? FHIRJSON {
				self.abatementPeriod = Period(json: val, owner: self)
			}
			if let val = js["abatementRange"] as? FHIRJSON {
				self.abatementRange = Range(json: val, owner: self)
			}
			if let val = js["abatementString"] as? String {
				self.abatementString = val
			}
			if let val = js["asserter"] as? FHIRJSON {
				self.asserter = Reference(json: val, owner: self)
			}
			if let val = js["category"] as? FHIRJSON {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["clinicalStatus"] as? String {
				self.clinicalStatus = val
			}
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["dateAsserted"] as? String {
				self.dateAsserted = Date(string: val)
			}
			if let val = js["dueTo"] as? [FHIRJSON] {
				self.dueTo = ConditionDueTo.from(val, owner: self) as? [ConditionDueTo]
			}
			if let val = js["encounter"] as? FHIRJSON {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["evidence"] as? [FHIRJSON] {
				self.evidence = ConditionEvidence.from(val, owner: self) as? [ConditionEvidence]
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? [FHIRJSON] {
				self.location = ConditionLocation.from(val, owner: self) as? [ConditionLocation]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["occurredFollowing"] as? [FHIRJSON] {
				self.occurredFollowing = ConditionOccurredFollowing.from(val, owner: self) as? [ConditionOccurredFollowing]
			}
			if let val = js["onsetAge"] as? FHIRJSON {
				self.onsetAge = Age(json: val, owner: self)
			}
			if let val = js["onsetDateTime"] as? String {
				self.onsetDateTime = DateTime(string: val)
			}
			if let val = js["onsetPeriod"] as? FHIRJSON {
				self.onsetPeriod = Period(json: val, owner: self)
			}
			if let val = js["onsetRange"] as? FHIRJSON {
				self.onsetRange = Range(json: val, owner: self)
			}
			if let val = js["onsetString"] as? String {
				self.onsetString = val
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["severity"] as? FHIRJSON {
				self.severity = CodeableConcept(json: val, owner: self)
			}
			if let val = js["stage"] as? FHIRJSON {
				self.stage = ConditionStage(json: val, owner: self)
			}
		}
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["target"] as? FHIRJSON {
				self.target = Reference(json: val, owner: self)
			}
		}
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["detail"] as? [FHIRJSON] {
				self.detail = Reference.from(val, owner: self) as? [Reference]
			}
		}
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["siteCodeableConcept"] as? FHIRJSON {
				self.siteCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["siteReference"] as? FHIRJSON {
				self.siteReference = Reference(json: val, owner: self)
			}
		}
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["target"] as? FHIRJSON {
				self.target = Reference(json: val, owner: self)
			}
		}
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["assessment"] as? [FHIRJSON] {
				self.assessment = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["summary"] as? FHIRJSON {
				self.summary = CodeableConcept(json: val, owner: self)
			}
		}
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

