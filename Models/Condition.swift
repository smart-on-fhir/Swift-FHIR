//
//  Condition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Detailed information about conditions, problems or diagnoses.
 *
 *  Scope and Usage This resource is used to record detailed information about a specific aspect of or issue with
 *  the health state of a patient. It is intended for use for issues that have been identified as relevant for
 *  tracking and reporting purposes or where there's a need to capture a concrete diagnosis or the gathering of
 *  data such as signs and symptoms. There are situations where the same information might appear as both an
 *  observation as well as a condition. For example, the appearance of a rash or an instance of a fever are signs
 *  and symptoms that would typically be captured using the Observation resource. However, a pattern of ongoing
 *  fevers or a persistent or severe rash requiring treatment might be captured as a condition. The Condition
 *  resource specifically excludes AdverseReactions and AllergyIntolerances as those are handled with their own
 *  resources.
 *  
 *  The Condition resource may be used to record positive aspects of the health state of a patient (e.g.
 *  pregnancy) as well as the major use, which is for problems/concerns (e.g. hypertension).
 *  
 *  Conditions are frequently referenced by other resources as "reasons" for an action (Prescription, Procedure,
 *  DiagnosticOrder, etc.)
 *  
 *  The conditions represented in this resources are sometimes described as "Problems", and kept as part of a
 *  problem list.
 */
class Condition: FHIRResource
{
	override class var resourceName: String {
		get { return "Condition" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! External Ids for this condition */
	var identifier: Identifier[]?
	
	/*! Who has the condition? */
	var subject: ResourceReference?
	
	/*! Encounter when condition first asserted */
	var encounter: ResourceReference?
	
	/*! Person who asserts this condition */
	var asserter: ResourceReference?
	
	/*! When first detected/suspected/entered */
	var dateAsserted: NSDate?
	
	/*! Identification of the condition, problem or diagnosis */
	var code: CodeableConcept?
	
	/*! E.g. complaint | symptom | finding | diagnosis */
	var category: CodeableConcept?
	
	/*! provisional | working | confirmed | refuted */
	var status: String?
	
	/*! Degree of confidence */
	var certainty: CodeableConcept?
	
	/*! Subjective severity of condition */
	var severity: CodeableConcept?
	
	/*! Estimated or actual date, or age */
	var onsetDate: NSDate?
	
	/*! Estimated or actual date, or age */
	var onsetAge: Double?
	
	/*! If/when in resolution/remission */
	var abatementDate: NSDate?
	
	/*! If/when in resolution/remission */
	var abatementAge: Double?
	
	/*! If/when in resolution/remission */
	var abatementBoolean: Bool?
	
	/*! Stage/grade, usually assessed formally */
	var stage: ConditionStage?
	
	/*! Supporting evidence */
	var evidence: ConditionEvidence[]?
	
	/*! Anatomical location, if relevant */
	var location: ConditionLocation[]?
	
	/*! Causes or precedents for this Condition */
	var relatedItem: ConditionRelatedItem[]?
	
	/*! Additional information about the Condition */
	var notes: String?
	
	convenience init(subject: ResourceReference?, code: CodeableConcept?, status: String?) {
		self.init(json: nil)
		if subject {
			self.subject = subject
		}
		if code {
			self.code = code
		}
		if status {
			self.status = status
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["identifier"] as? Array<NSDictionary> {
				self.identifier = Identifier.from(val) as? Identifier[]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = ResourceReference(json: val)
			}
			if let val = js["asserter"] as? NSDictionary {
				self.asserter = ResourceReference(json: val)
			}
			if let val = js["dateAsserted"] as? String {
				self.dateAsserted = NSDate(json: val)
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["category"] as? NSDictionary {
				self.category = CodeableConcept(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["certainty"] as? NSDictionary {
				self.certainty = CodeableConcept(json: val)
			}
			if let val = js["severity"] as? NSDictionary {
				self.severity = CodeableConcept(json: val)
			}
			if let val = js["onsetDate"] as? String {
				self.onsetDate = NSDate(json: val)
			}
			if let val = js["onsetAge"] as? NSNumber {
				self.onsetAge = Double(val)
			}
			if let val = js["abatementDate"] as? String {
				self.abatementDate = NSDate(json: val)
			}
			if let val = js["abatementAge"] as? NSNumber {
				self.abatementAge = Double(val)
			}
			if let val = js["abatementBoolean"] as? Int {
				self.abatementBoolean = (1 == val)
			}
			if let val = js["stage"] as? NSDictionary {
				self.stage = ConditionStage(json: val)
			}
			if let val = js["evidence"] as? Array<NSDictionary> {
				self.evidence = ConditionEvidence.from(val) as? ConditionEvidence[]
			}
			if let val = js["location"] as? Array<NSDictionary> {
				self.location = ConditionLocation.from(val) as? ConditionLocation[]
			}
			if let val = js["relatedItem"] as? Array<NSDictionary> {
				self.relatedItem = ConditionRelatedItem.from(val) as? ConditionRelatedItem[]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Stage/grade, usually assessed formally.
 *
 *  Clinical stage or grade of a condition. May include formal severity assessments.
 */
class ConditionStage: FHIRElement
{	
	/*! Simple summary (disease specific) */
	var summary: CodeableConcept?
	
	/*! Formal record of assessment */
	var assessment: ResourceReference[]?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["summary"] as? NSDictionary {
				self.summary = CodeableConcept(json: val)
			}
			if let val = js["assessment"] as? Array<NSDictionary> {
				self.assessment = ResourceReference.from(val) as? ResourceReference[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Supporting evidence.
 *
 *  Supporting Evidence / manifestations that are the basis on which this condition is suspected or confirmed.
 */
class ConditionEvidence: FHIRElement
{	
	/*! Manifestation/symptom */
	var code: CodeableConcept?
	
	/*! Supporting information found elsewhere */
	var detail: ResourceReference[]?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["detail"] as? Array<NSDictionary> {
				self.detail = ResourceReference.from(val) as? ResourceReference[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Anatomical location, if relevant.
 *
 *  The anatomical location where this condition manifests itself.
 */
class ConditionLocation: FHIRElement
{	
	/*! Location - may include laterality */
	var code: CodeableConcept?
	
	/*! Precise location details */
	var detail: String?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["detail"] as? String {
				self.detail = val
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Causes or precedents for this Condition.
 *
 *  Further conditions, problems, diagnoses, procedures or events that are related in some way to this condition,
 *  or the substance that caused/triggered this Condition.
 */
class ConditionRelatedItem: FHIRElement
{	
	/*! due-to | following */
	var type: String?
	
	/*! Relationship target by means of a predefined code */
	var code: CodeableConcept?
	
	/*! Relationship target resource */
	var target: ResourceReference?
	
	convenience init(type: String?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["target"] as? NSDictionary {
				self.target = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}
