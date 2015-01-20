//
//  Condition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (condition.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Detailed information about conditions, problems or diagnoses.
 *
 *  Use to record detailed information about conditions, problems or diagnoses recognized by a clinician. There are many
 *  uses including: recording a Diagnosis during an Encounter; populating a problem List or a Summary Statement, such as
 *  a Discharge Summary.
 */
public class Condition: FHIRResource
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
	
	/// Person who asserts this condition
	public var asserter: Reference?
	
	/// E.g. complaint | symptom | finding | diagnosis
	public var category: CodeableConcept?
	
	/// Degree of confidence
	public var certainty: CodeableConcept?
	
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
	
	/// Subjective severity of condition
	public var severity: CodeableConcept?
	
	/// Stage/grade, usually assessed formally
	public var stage: ConditionStage?
	
	/// provisional | working | confirmed | refuted
	public var status: String?
	
	/// Who has the condition?
	public var subject: Reference?
	
	public convenience init(code: CodeableConcept?, status: String?, subject: Reference?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != status {
			self.status = status
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["abatementAge"] as? JSONDictionary {
				self.abatementAge = Age(json: val, owner: self)
			}
			if let val = js["abatementBoolean"] as? Bool {
				self.abatementBoolean = val
			}
			if let val = js["abatementDate"] as? String {
				self.abatementDate = Date(string: val)
			}
			if let val = js["asserter"] as? JSONDictionary {
				self.asserter = Reference(json: val, owner: self)
			}
			if let val = js["category"] as? JSONDictionary {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["certainty"] as? JSONDictionary {
				self.certainty = CodeableConcept(json: val, owner: self)
			}
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["dateAsserted"] as? String {
				self.dateAsserted = Date(string: val)
			}
			if let val = js["dueTo"] as? [JSONDictionary] {
				self.dueTo = ConditionDueTo.from(val, owner: self) as? [ConditionDueTo]
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["evidence"] as? [JSONDictionary] {
				self.evidence = ConditionEvidence.from(val, owner: self) as? [ConditionEvidence]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? [JSONDictionary] {
				self.location = ConditionLocation.from(val, owner: self) as? [ConditionLocation]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["occurredFollowing"] as? [JSONDictionary] {
				self.occurredFollowing = ConditionOccurredFollowing.from(val, owner: self) as? [ConditionOccurredFollowing]
			}
			if let val = js["onsetAge"] as? JSONDictionary {
				self.onsetAge = Age(json: val, owner: self)
			}
			if let val = js["onsetDateTime"] as? String {
				self.onsetDateTime = DateTime(string: val)
			}
			if let val = js["severity"] as? JSONDictionary {
				self.severity = CodeableConcept(json: val, owner: self)
			}
			if let val = js["stage"] as? JSONDictionary {
				self.stage = ConditionStage(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
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
	public var codeableConcept: CodeableConcept?
	
	/// Relationship target resource
	public var target: Reference?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["codeableConcept"] as? JSONDictionary {
				self.codeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["detail"] as? [JSONDictionary] {
				self.detail = Reference.from(val, owner: self) as? [Reference]
			}
		}
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
	public var code: CodeableConcept?
	
	/// Precise location details
	public var detail: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["detail"] as? String {
				self.detail = val
			}
		}
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
	public var codeableConcept: CodeableConcept?
	
	/// Relationship target resource
	public var target: Reference?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["codeableConcept"] as? JSONDictionary {
				self.codeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["assessment"] as? [JSONDictionary] {
				self.assessment = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["summary"] as? JSONDictionary {
				self.summary = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

