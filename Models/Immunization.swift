//
//  Immunization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Immunization event information.
 *
 *  Scope and Usage The immunization resource is intended to cover the administration of vaccines to patients
 *  across all healthcare disciplines in all care settings and all regions. This includes immunization of both
 *  humans and animals but does not include the administration of non-vaccine agents, even those that may have or
 *  claim immunological effects.
 *  
 *  Additionally, the immunization resource is expected to cover key concepts related to the creation, revision
 *  and querying of a patient's immunization history. This resource - through consultation with the PHER work
 *  group - is believed to meet key use cases and information requirements as defined in the existing HL7 v2.x
 *  immunization implementation guide, HL7 v3 POIZ domain and Immunization Domain Analysis Model.
 */
class Immunization: FHIRResource
{
	override var resourceName: String {
		get { return "Immunization" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Business identifier */
	var identifier: Identifier[]?

	/*! Vaccination administration date */
	var date: NSDate

	/*! Vaccine product administered */
	var vaccineType: CodeableConcept

	/*! Who was immunized? */
	var subject: ResourceReference

	/*! Was immunization refused? */
	var refusedIndicator: Bool

	/*! Is this a self-reported record? */
	var reported: Bool

	/*! Who administered vaccine? */
	var performer: ResourceReference?

	/*! Who ordered vaccination? */
	var requester: ResourceReference?

	/*! Vaccine manufacturer */
	var manufacturer: ResourceReference?

	/*! Where did vaccination occur? */
	var location: ResourceReference?

	/*! Vaccine lot number */
	var lotNumber: String?

	/*! Vaccine expiration date */
	var expirationDate: NSDate?

	/*! Body site vaccine  was administered */
	var site: CodeableConcept?

	/*! How vaccine entered body */
	var route: CodeableConcept?

	/*! Amount of vaccine administered */
	var doseQuantity: Quantity?

	/*! Administration / refusal reasons */
	var explanation: ImmunizationExplanation?

	/*! Details of a reaction that follows immunization */
	var reaction: ImmunizationReaction[]?

	/*! What protocol was followed */
	var vaccinationProtocol: ImmunizationVaccinationProtocol[]?

	init(date: NSDate, vaccineType: CodeableConcept, subject: ResourceReference, refusedIndicator: Bool, reported: Bool) {
		self.date = date
		self.vaccineType = vaccineType
		self.subject = subject
		self.refusedIndicator = refusedIndicator
		self.reported = reported
	}
}


/*!
 *  Administration / refusal reasons.
 *
 *  Reasons why a vaccine was administered or refused.
 */
class ImmunizationExplanation: FHIRElement
{
	/*! Why immunization occurred */
	var reason: CodeableConcept[]?

	/*! Why immunization did not occur */
	var refusalReason: CodeableConcept[]?

}


/*!
 *  Details of a reaction that follows immunization.
 *
 *  Categorical data indicating that an adverse event is associated in time to an immunization.
 */
class ImmunizationReaction: FHIRElement
{
	/*! When did reaction start? */
	var date: NSDate?

	/*! Additional information on reaction */
	var detail: ResourceReference?

	/*! Was reaction self-reported? */
	var reported: Bool?

}


/*!
 *  What protocol was followed.
 *
 *  Contains information about the protocol(s) under which the vaccine was administered.
 */
class ImmunizationVaccinationProtocol: FHIRElement
{
	/*! What dose number within series? */
	var doseSequence: Int

	/*! Details of vaccine protocol */
	var description: String?

	/*! Who is responsible for protocol */
	var authority: ResourceReference?

	/*! Name of vaccine series */
	var series: String?

	/*! Recommended number of doses for immunity */
	var seriesDoses: Int?

	/*! Disease immunized against */
	var doseTarget: CodeableConcept

	/*! Does dose count towards immunity? */
	var doseStatus: CodeableConcept

	/*! Why does does count/not count? */
	var doseStatusReason: CodeableConcept?

	init(doseSequence: Int, doseTarget: CodeableConcept, doseStatus: CodeableConcept) {
		self.doseSequence = doseSequence
		self.doseTarget = doseTarget
		self.doseStatus = doseStatus
	}
}
