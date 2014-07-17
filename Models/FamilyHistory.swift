//
//  FamilyHistory.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Information about patient's relatives, relevant for patient.
 *
 *  Scope and Usage This resource records significant health events and conditions for people related to the
 *  subject. This information can be known to different levels of accuracy. Sometimes the exact condition
 *  ('asthma') is known, and sometimes it is less precise ('some sort of cancer'). Equally, sometimes the person
 *  can be identified ('my aunt Agatha') and sometimes all that is known is that the person was an uncle.
 *  
 *  This resource represents a simple structure used to capture an 'elementary' family history. However, it can
 *  also be the basis for capturing a more rigorous history useful for genetic and other analysis - refer to the
 *  Genetic Pedigree profile for an example.
 *  
 *  The entire family history for an individual is stored in a single resource.
 */
class FamilyHistory: FHIRResource
{
	override class var resourceName: String {
		get { return "FamilyHistory" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! External Id(s) for this record */
	var identifier: [Identifier]?
	
	/*! Patient history is about */
	var subject: ResourceReference?
	
	/*! Additional details not covered elsewhere */
	var note: String?
	
	/*! Relative described by history */
	var relation: [FamilyHistoryRelation]?
	
	convenience init(subject: ResourceReference?) {
		self.init(json: nil)
		if subject {
			self.subject = subject
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["relation"] as? [NSDictionary] {
				self.relation = FamilyHistoryRelation.from(val) as? [FamilyHistoryRelation]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Relative described by history.
 *
 *  The related person. Each FamilyHistory resource contains the entire family history for a single person.
 */
class FamilyHistoryRelation: FHIRElement
{	
	/*! The family member described */
	var name: String?
	
	/*! Relationship to the subject */
	var relationship: CodeableConcept?
	
	/*! (approximate) date of birth */
	var bornPeriod: Period?
	
	/*! (approximate) date of birth */
	var bornDate: NSDate?
	
	/*! (approximate) date of birth */
	var bornString: String?
	
	/*! Dead? How old/when? */
	var deceasedBoolean: Bool?
	
	/*! Dead? How old/when? */
	var deceasedAge: Double?
	
	/*! Dead? How old/when? */
	var deceasedRange: Range?
	
	/*! Dead? How old/when? */
	var deceasedDate: NSDate?
	
	/*! Dead? How old/when? */
	var deceasedString: String?
	
	/*! General note about related person */
	var note: String?
	
	/*! Condition that the related person had */
	var condition: [FamilyHistoryRelationCondition]?
	
	convenience init(relationship: CodeableConcept?) {
		self.init(json: nil)
		if relationship {
			self.relationship = relationship
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["relationship"] as? NSDictionary {
				self.relationship = CodeableConcept(json: val)
			}
			if let val = js["bornPeriod"] as? NSDictionary {
				self.bornPeriod = Period(json: val)
			}
			if let val = js["bornDate"] as? String {
				self.bornDate = NSDate(json: val)
			}
			if let val = js["bornString"] as? String {
				self.bornString = val
			}
			if let val = js["deceasedBoolean"] as? Int {
				self.deceasedBoolean = (1 == val)
			}
			if let val = js["deceasedAge"] as? NSNumber {
				self.deceasedAge = Double(val)
			}
			if let val = js["deceasedRange"] as? NSDictionary {
				self.deceasedRange = Range(json: val)
			}
			if let val = js["deceasedDate"] as? String {
				self.deceasedDate = NSDate(json: val)
			}
			if let val = js["deceasedString"] as? String {
				self.deceasedString = val
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["condition"] as? [NSDictionary] {
				self.condition = FamilyHistoryRelationCondition.from(val) as? [FamilyHistoryRelationCondition]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Condition that the related person had.
 *
 *  The significant Conditions (or condition) that the family member had. This is a repeating section to allow a
 *  system to represent more than one condition per resource, though there is nothing stopping multiple resources
 *  - one per condition.
 */
class FamilyHistoryRelationCondition: FHIRElement
{	
	/*! Condition suffered by relation */
	var type: CodeableConcept?
	
	/*! deceased | permanent disability | etc. */
	var outcome: CodeableConcept?
	
	/*! When condition first manifested */
	var onsetAge: Double?
	
	/*! When condition first manifested */
	var onsetRange: Range?
	
	/*! When condition first manifested */
	var onsetString: String?
	
	/*! Extra information about condition */
	var note: String?
	
	convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["outcome"] as? NSDictionary {
				self.outcome = CodeableConcept(json: val)
			}
			if let val = js["onsetAge"] as? NSNumber {
				self.onsetAge = Double(val)
			}
			if let val = js["onsetRange"] as? NSDictionary {
				self.onsetRange = Range(json: val)
			}
			if let val = js["onsetString"] as? String {
				self.onsetString = val
			}
			if let val = js["note"] as? String {
				self.note = val
			}
		}
		super.init(json: json)
	}
}
