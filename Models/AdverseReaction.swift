//
//  AdverseReaction.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Specific reactions to a substance.
 *
 *  Scope and Usage Adverse Reaction resources are used to provide information about specific reactions to a
 *  substance. These are normally associated with an AllergyIntolerance resource, but can be reported on their own
 *  when no assumption of further reactions is being made, or when specific events are being described.
 */
class AdverseReaction: FHIRResource
{
	override var resourceName: String {
		get { return "AdverseReaction" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! External Ids for this adverse reaction */
	var identifier: Identifier[]?

	/*! When the reaction occurred */
	var date: NSDate?

	/*! Who had the reaction */
	var subject: ResourceReference

	/*! Indicates lack of reaction */
	var didNotOccurFlag: Bool

	/*! Who recorded the reaction */
	var recorder: ResourceReference?

	/*! What was reaction? */
	var symptom: AdverseReactionSymptom[]?

	/*! Suspected substance */
	var exposure: AdverseReactionExposure[]?

	init(subject: ResourceReference, didNotOccurFlag: Bool) {
		self.subject = subject
		self.didNotOccurFlag = didNotOccurFlag
	}
}


/*!
 *  What was reaction?.
 *
 *  The signs and symptoms that were observed as part of the reaction.
 */
class AdverseReactionSymptom: FHIRElement
{
	/*! E.g. Rash, vomiting */
	var code: CodeableConcept

	/*! severe | serious | moderate | minor */
	var severity: String?

	init(code: CodeableConcept) {
		self.code = code
	}
}


/*!
 *  Suspected substance.
 *
 *  An exposure to a substance that preceded a reaction occurrence.
 */
class AdverseReactionExposure: FHIRElement
{
	/*! When the exposure occurred */
	var date: NSDate?

	/*! drugadmin | immuniz | coincidental */
	var type: String?

	/*! likely | unlikely | confirmed | unknown */
	var causalityExpectation: String?

	/*! Presumed causative substance */
	var substance: ResourceReference?

}
