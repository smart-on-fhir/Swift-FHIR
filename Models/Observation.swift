//
//  Observation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Measurements and simple assertions.
 *
 *  Scope and Usage Observations are a central element in healthcare, used to support diagnosis, monitor progress,
 *  determine baselines and patterns and even capture demographic characteristics. Most observations are simple
 *  name/value pair assertions with some metadata, but some observations group other observations together
 *  logically, or even are multi-component observations. Note that the resources DiagnosticReport and
 *  DeviceObservationReport provide a clinical or workflow context for a set of observations. Expected uses for
 *  the Observation resource include:
 *  
 *  * Vital signs: temperature, blood pressure, respiration rate
 *  * Laboratory Data and other Diagnostic Measures
 *  * Measurements emitted by Devices
 *  * Clinical assessments such as APGAR
 *  * Personal characteristics: height, weight, eye-color
 *  * Diagnoses (Note: trackable conditions, allergies, adverse reactions and more complex structures are handled
 *  elsewhere)
 *  * Social history: tobacco use, family supports, cognitive status
 *  * Core characteristics: pregnancy status, death assertion
 */
class Observation: FHIRResource
{
	override var resourceName: String {
		get { return "Observation" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Type of observation (code / type) */
	var name: CodeableConcept

	/*! Actual result */
	var valueSampledData: SampledData?

	/*! Actual result */
	var valueQuantity: Quantity?

	/*! Actual result */
	var valueAttachment: Attachment?

	/*! Actual result */
	var valueString: String?

	/*! Actual result */
	var valueCodeableConcept: CodeableConcept?

	/*! Actual result */
	var valueRatio: Ratio?

	/*! Actual result */
	var valuePeriod: Period?

	/*! High, low, normal, etc. */
	var interpretation: CodeableConcept?

	/*! Comments about result */
	var comments: String?

	/*! Physiologically Relevant time/time-period for observation */
	var appliesDateTime: NSDate?

	/*! Physiologically Relevant time/time-period for observation */
	var appliesPeriod: Period?

	/*! Date/Time this was made available */
	var issued: Int?

	/*! registered | preliminary | final | amended + */
	var status: String

	/*! ok | ongoing | early | questionable | calibrating | error + */
	var reliability: String

	/*! Observed body part */
	var bodySite: CodeableConcept?

	/*! How it was done */
	var method: CodeableConcept?

	/*! Unique Id for this particular observation */
	var identifier: Identifier?

	/*! Who and/or what this is about */
	var subject: ResourceReference?

	/*! Specimen used for this observation */
	var specimen: ResourceReference?

	/*! Who did the observation */
	var performer: ResourceReference[]?

	/*! Provides guide for interpretation */
	var referenceRange: ObservationReferenceRange[]?

	/*! Observations related to this observation */
	var related: ObservationRelated[]?

	init(name: CodeableConcept, status: String, reliability: String) {
		self.name = name
		self.status = status
		self.reliability = reliability
	}
}


/*!
 *  Provides guide for interpretation.
 *
 *  Guidance on how to interpret the value by comparison to a normal or recommended range.
 */
class ObservationReferenceRange: FHIRElement
{
	/*! Low Range, if relevant */
	var low: Quantity?

	/*! High Range, if relevant */
	var high: Quantity?

	/*! Indicates the meaning/use of this range of this range */
	var meaning: CodeableConcept?

	/*! Applicable age range, if relevant */
	var age: Range?

}


/*!
 *  Observations related to this observation.
 *
 *  Related observations - either components, or previous observations, or statements of derivation.
 */
class ObservationRelated: FHIRElement
{
	/*! has-component | has-member | derived-from | sequel-to | replaces | qualified-by | interfered-by */
	var type: String?

	/*! Observation that is related to this one */
	var target: ResourceReference

	init(target: ResourceReference) {
		self.target = target
	}
}
