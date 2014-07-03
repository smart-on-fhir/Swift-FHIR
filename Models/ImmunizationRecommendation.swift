//
//  ImmunizationRecommendation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Immunization profile.
 *
 *  Scope and Usage The ImmunizationRecommendation resource is intended to cover communication of a specified
 *  patient's immunization recommendation and status across all healthcare disciplines in all care settings and
 *  all regions.
 *  
 *  Additionally, the ImmunizationRecommendation resource is expected to cover key concepts related to the
 *  querying of a patient's immunization recommendation and status. This resource - through consultation with the
 *  PHER work group - is believed to meet key use cases and information requirements as defined in the existing
 *  HL7 v3 POIZ domain and Immunization Domain Analysis Model.
 */
class ImmunizationRecommendation: FHIRResource
{
	override var resourceName: String {
		get { return "ImmunizationRecommendation" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Business identifier */
	var identifier: Identifier[]?

	/*! Who this profile is for */
	var subject: ResourceReference

	/*! Vaccine administration recommendations */
	var recommendation: ImmunizationRecommendationRecommendation[]

	init(subject: ResourceReference, recommendation: ImmunizationRecommendationRecommendation[]) {
		self.subject = subject
		self.recommendation = recommendation
	}
}


/*!
 *  Vaccine administration recommendations.
 */
class ImmunizationRecommendationRecommendation: FHIRElement
{
	/*! Date recommendation created */
	var date: NSDate

	/*! Vaccine recommendation applies to */
	var vaccineType: CodeableConcept

	/*! Recommended dose number */
	var doseNumber: Int?

	/*! Vaccine administration status */
	var forecastStatus: CodeableConcept

	/*! Dates governing proposed immunization */
	var dateCriterion: ImmunizationRecommendationRecommendationDateCriterion[]?

	/*! Protocol used by recommendation */
	var proto: ImmunizationRecommendationRecommendationProtocol?

	/*! Past immunizations supporting recommendation */
	var supportingImmunization: ResourceReference[]?

	/*! Patient observations supporting recommendation */
	var supportingPatientInformation: ResourceReference[]?

	init(date: NSDate, vaccineType: CodeableConcept, forecastStatus: CodeableConcept) {
		self.date = date
		self.vaccineType = vaccineType
		self.forecastStatus = forecastStatus
	}
}


/*!
 *  Dates governing proposed immunization.
 *
 *  Vaccine date recommendations - e.g. earliest date to administer, latest date to administer, etc.
 */
class ImmunizationRecommendationRecommendationDateCriterion: FHIRElement
{
	/*! Type of date */
	var code: CodeableConcept

	/*! Recommended date */
	var value: NSDate

	init(code: CodeableConcept, value: NSDate) {
		self.code = code
		self.value = value
	}
}


/*!
 *  Protocol used by recommendation.
 *
 *  Contains information about the protocol under which the vaccine was administered.
 */
class ImmunizationRecommendationRecommendationProtocol: FHIRElement
{
	/*! Number of dose within sequence */
	var doseSequence: Int?

	/*! Protocol details */
	var description: String?

	/*! Who is responsible for protocol */
	var authority: ResourceReference?

	/*! Name of vaccination series */
	var series: String?

}
