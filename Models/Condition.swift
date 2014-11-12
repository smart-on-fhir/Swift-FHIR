//
//  Condition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (condition.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Detailed information about conditions, problems or diagnoses.
 *
 *  Scope and Usage This resource is used to record detailed information about a specific aspect of or issue with the
 *  health state of a patient. It is intended for use for issues that have been identified as relevant for tracking and
 *  reporting purposes or where there's a need to capture a concrete diagnosis or the gathering of data such as signs
 *  and symptoms. There are situations where the same information might appear as both an observation as well as a
 *  condition. For example, the appearance of a rash or an instance of a fever are signs and symptoms that would
 *  typically be captured using the Observation resource. However, a pattern of ongoing fevers or a persistent or severe
 *  rash requiring treatment might be captured as a condition. The Condition resource specifically excludes
 *  AdverseReactions and AllergyIntolerances as those are handled with their own resources.
 *  
 *  The Condition resource may be used to record positive aspects of the health state of a patient (e.g. pregnancy) as
 *  well as the major use, which is for problems/concerns (e.g. hypertension).
 *  
 *  Conditions are frequently referenced by other resources as "reasons" for an action (Prescription, Procedure,
 *  DiagnosticOrder, etc.)
 *  
 *  The conditions represented in this resources are sometimes described as "Problems", and kept as part of a problem
 *  list.
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
	public var abatementDate: NSDate?
	
	/// Person who asserts this condition
	public var asserter: FHIRReference<Practitioner>?
	
	/// E.g. complaint | symptom | finding | diagnosis
	public var category: CodeableConcept?
	
	/// Degree of confidence
	public var certainty: CodeableConcept?
	
	/// Identification of the condition, problem or diagnosis
	public var code: CodeableConcept?
	
	/// When first detected/suspected/entered
	public var dateAsserted: NSDate?
	
	/// Encounter when condition first asserted
	public var encounter: FHIRReference<Encounter>?
	
	/// Supporting evidence
	public var evidence: [ConditionEvidence]?
	
	/// External Ids for this condition
	public var identifier: [Identifier]?
	
	/// Anatomical location, if relevant
	public var location: [ConditionLocation]?
	
	/// Additional information about the Condition
	public var notes: String?
	
	/// Estimated or actual date, or age
	public var onsetAge: Age?
	
	/// Estimated or actual date, or age
	public var onsetDate: NSDate?
	
	/// Causes or precedents for this Condition
	public var relatedItem: [ConditionRelatedItem]?
	
	/// Subjective severity of condition
	public var severity: CodeableConcept?
	
	/// Stage/grade, usually assessed formally
	public var stage: ConditionStage?
	
	/// provisional | working | confirmed | refuted
	public var status: String?
	
	/// Who has the condition?
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(code: CodeableConcept?, status: String?, subject: FHIRReference<Patient>?) {
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["abatementAge"] as? NSDictionary {
				self.abatementAge = Age(json: val, owner: self)
			}
			if let val = js["abatementBoolean"] as? Bool {
				self.abatementBoolean = val
			}
			if let val = js["abatementDate"] as? String {
				self.abatementDate = NSDate(json: val)
			}
			if let val = js["asserter"] as? NSDictionary {
				self.asserter = FHIRReference(json: val, owner: self)
			}
			if let val = js["category"] as? NSDictionary {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["certainty"] as? NSDictionary {
				self.certainty = CodeableConcept(json: val, owner: self)
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["dateAsserted"] as? String {
				self.dateAsserted = NSDate(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = FHIRReference(json: val, owner: self)
			}
			if let val = js["evidence"] as? [NSDictionary] {
				self.evidence = ConditionEvidence.from(val, owner: self) as? [ConditionEvidence]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? [NSDictionary] {
				self.location = ConditionLocation.from(val, owner: self) as? [ConditionLocation]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["onsetAge"] as? NSDictionary {
				self.onsetAge = Age(json: val, owner: self)
			}
			if let val = js["onsetDate"] as? String {
				self.onsetDate = NSDate(json: val)
			}
			if let val = js["relatedItem"] as? [NSDictionary] {
				self.relatedItem = ConditionRelatedItem.from(val, owner: self) as? [ConditionRelatedItem]
			}
			if let val = js["severity"] as? NSDictionary {
				self.severity = CodeableConcept(json: val, owner: self)
			}
			if let val = js["stage"] as? NSDictionary {
				self.stage = ConditionStage(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val, owner: self)
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
	/// Formal record of assessment
	public var assessment: [FHIRReference<FHIRResource>]?
	
	/// Simple summary (disease specific)
	public var summary: CodeableConcept?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["assessment"] as? [NSDictionary] {
				self.assessment = FHIRReference.from(val, owner: self)
			}
			if let val = js["summary"] as? NSDictionary {
				self.summary = CodeableConcept(json: val, owner: self)
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
	/// Manifestation/symptom
	public var code: CodeableConcept?
	
	/// Supporting information found elsewhere
	public var detail: [FHIRReference<FHIRResource>]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["detail"] as? [NSDictionary] {
				self.detail = FHIRReference.from(val, owner: self)
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
	/// Location - may include laterality
	public var code: CodeableConcept?
	
	/// Precise location details
	public var detail: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["detail"] as? String {
				self.detail = val
			}
		}
	}
}


/**
 *  Causes or precedents for this Condition.
 *
 *  Further conditions, problems, diagnoses, procedures or events that are related in some way to this condition, or the
 *  substance that caused/triggered this Condition.
 */
public class ConditionRelatedItem: FHIRElement
{	
	/// Relationship target by means of a predefined code
	public var code: CodeableConcept?
	
	/// Relationship target resource
	public var target: FHIRReference<Condition>?
	
	/// due-to | following
	public var type: String?
	
	public convenience init(type: String?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["target"] as? NSDictionary {
				self.target = FHIRReference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}

