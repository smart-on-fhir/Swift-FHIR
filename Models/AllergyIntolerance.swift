//
//  AllergyIntolerance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Drug, food, environmental and others.
 *
 *  Scope and Usage Allergy/Intolerance resources are used to provide information about adverse sensitivities to
 *  substances that lead to physiologic changes that are clinically observable. An adverse sensitivity is defined
 *  as:
 *  
 *  A condition expected to result in undesirable physiologic reaction to an amount of a substance that would not
 *  produce a reaction in most individuals. The substance is the trigger of an immunologic response that produces
 *  the observed physiologic changes, or in some instances nonimmunologic mechanisms that produce clinically
 *  identical physiologic changes. The immunologic response might be considered the actual cause of the reaction,
 *  but it is exposure to the trigger substance that is clinically observable.
 *  
 *  This definition excludes clinically identical episodes that may be caused by physical agents, such as heat,
 *  cold, sunlight, or vibration, by exercise activity, or by infectious agents. Those conditions caused by
 *  physical agents or infectious would be captured on the problem list (List/Condition Resources). The
 *  allergy/intolerance list is a list of conditions that represent a propensity unique to this individual for a
 *  reaction upon future exposure to a specified substance.
 *  
 *  Note that this specification draws a distinction between the patients condition/problem list and an
 *  allergy/intolerance list, even though allergies and intolerances are also conditions. This is because the
 *  distinction is a long established clinical workflow, even to patients. Asking an individual "if they have any
 *  problems" is not going to invoke an account of their past reactions to medications or foods. Instead, they are
 *  asked if they "have any allergies". An allergy/intolerance is also different in that a potential harm from
 *  exposure to an external substance that may be ordered by a provider in the course of their care but is not
 *  inherent to exposure to that substance for the general population.
 */
class AllergyIntolerance: FHIRResource
{
	override var resourceName: String {
		get { return "AllergyIntolerance" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! External Ids for this item */
	var identifier: Identifier[]?

	/*! fatal | high | medium | low */
	var criticality: String?

	/*! allergy | intolerance | unknown */
	var sensitivityType: String

	/*! When recorded */
	var recordedDate: NSDate?

	/*! suspected | confirmed | refuted | resolved */
	var status: String

	/*! Who the sensitivity is for */
	var subject: ResourceReference

	/*! Who recorded the sensitivity */
	var recorder: ResourceReference?

	/*! The substance that causes the sensitivity */
	var substance: ResourceReference

	/*! Reactions associated with the sensitivity */
	var reaction: ResourceReference[]?

	/*! Observations that confirm or refute */
	var sensitivityTest: ResourceReference[]?

	init(sensitivityType: String, status: String, subject: ResourceReference, substance: ResourceReference) {
		self.sensitivityType = sensitivityType
		self.status = status
		self.subject = subject
		self.substance = substance
	}
}
