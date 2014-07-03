//
//  FamilyHistory.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	override var resourceName: String {
		get { return "FamilyHistory" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! External Id(s) for this record */
	var identifier: Identifier[]?

	/*! Patient history is about */
	var subject: ResourceReference

	/*! Additional details not covered elsewhere */
	var note: String?

	/*! Relative described by history */
	var relation: FamilyHistoryRelation[]?

	init(subject: ResourceReference) {
		self.subject = subject
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
	var relationship: CodeableConcept

	/*! (approximate) date of birth */
	var bornString: String?

	/*! (approximate) date of birth */
	var bornDate: NSDate?

	/*! (approximate) date of birth */
	var bornPeriod: Period?

	/*! Dead? How old/when? */
	var deceasedDate: NSDate?

	/*! Dead? How old/when? */
	var deceasedString: String?

	/*! Dead? How old/when? */
	var deceasedAge: Double?

	/*! Dead? How old/when? */
	var deceasedBoolean: Bool?

	/*! Dead? How old/when? */
	var deceasedRange: Range?

	/*! General note about related person */
	var note: String?

	/*! Condition that the related person had */
	var condition: FamilyHistoryRelationCondition[]?

	init(relationship: CodeableConcept) {
		self.relationship = relationship
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
	var type: CodeableConcept

	/*! deceased | permanent disability | etc. */
	var outcome: CodeableConcept?

	/*! When condition first manifested */
	var onsetString: String?

	/*! When condition first manifested */
	var onsetAge: Double?

	/*! When condition first manifested */
	var onsetRange: Range?

	/*! Extra information about condition */
	var note: String?

	init(type: CodeableConcept) {
		self.type = type
	}
}
