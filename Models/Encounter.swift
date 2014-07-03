//
//  Encounter.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  An interaction during which services are provided to the patient.
 *
 *  Scope and Usage A patient encounter is further characterized by the setting in which it takes place. Amongst
 *  them are ambulatory, emergency, home health, inpatient and virtual encounters. An Encounter encompasses the
 *  lifecycle from pre-admission, the actual encounter (for ambulatory encounters), and admission, stay and
 *  discharge (for inpatient encounters). During the encounter the patient may move from practitioner to
 *  practitioner and location to location.
 *  
 *  Because of the broad scope of Encounter, not all elements will be relevant in all settings. For this reason,
 *  admission/discharge related information is kept in a separate Hospitalization component within Encounter. The
 *  class element is used to distinguish between these settings, which will guide further validation and
 *  application of business rules.
 *  
 *  There is also substantial variance from organization to organization (and between jurisdictions and countries)
 *  on which business events translate to the start of a new Encounter, or what level of aggregation is used for
 *  Encounter. For example, each single visit of a practitioner during a hospitalization may lead to a new
 *  instance of Encounter, but depending on local practice and the systems involved, it may well be that this is
 *  aggregated to a single instance for a whole hospitalization. Even more aggregation may occur where
 *  jurisdictions introduce groups of Encounters for financial or other reasons. Encounters can be aggregated or
 *  grouped under other Encounters using the partOf element. See below for examples.
 *  
 *  Encounter instances may exist before the actual encounter takes place to convey pre-admission information,
 *  including using Encounters elements to reflect the planned start date, planned accommodation or planned
 *  encounter locations. In this case the status element is set to 'planned'.
 */
class Encounter: FHIRResource
{
	override var resourceName: String {
		get { return "Encounter" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Identifier(s) by which this encounter is known */
	var identifier: Identifier[]?

	/*! planned | in progress | onleave | finished | cancelled */
	var status: String

	/*! inpatient | outpatient | ambulatory | emergency + */
	var classification: String

	/*! Specific type of encounter */
	var type: CodeableConcept[]?

	/*! The patient present at the encounter */
	var subject: ResourceReference?

	/*! List of participants involved in the encounter */
	var participant: EncounterParticipant[]?

	/*! The start and end time of the encounter */
	var period: Period?

	/*! Quantity of time the encounter lasted */
	var length: Duration?

	/*! Reason the encounter takes place (code) */
	var reason: CodeableConcept?

	/*! Reason the encounter takes place (resource) */
	var indication: ResourceReference?

	/*! Indicates the urgency of the encounter */
	var priority: CodeableConcept?

	/*! Details about an admission to a clinic */
	var hospitalization: EncounterHospitalization?

	/*! List of locations the patient has been at */
	var location: EncounterLocation[]?

	/*! Department or team providing care */
	var serviceProvider: ResourceReference?

	/*! Another Encounter this encounter is part of */
	var partOf: ResourceReference?

	init(status: String, classification: String) {
		self.status = status
		self.classification = classification
	}
}


/*!
 *  List of participants involved in the encounter.
 *
 *  The main practitioner responsible for providing the service.
 */
class EncounterParticipant: FHIRElement
{
	/*! Role of participant in encounter */
	var type: CodeableConcept[]?

	/*! Persons involved in the encounter other than the patient */
	var individual: ResourceReference?

}


/*!
 *  Details about an admission to a clinic.
 */
class EncounterHospitalization: FHIRElement
{
	/*! Pre-admission identifier */
	var preAdmissionIdentifier: Identifier?

	/*! The location from which the patient came before admission */
	var origin: ResourceReference?

	/*! From where patient was admitted (physician referral, transfer) */
	var admitSource: CodeableConcept?

	/*! Period during which the patient was admitted */
	var period: Period?

	/*! Where the patient stays during this encounter */
	var accomodation: EncounterHospitalizationAccomodation[]?

	/*! Dietary restrictions for the patient */
	var diet: CodeableConcept?

	/*! Special courtesies (VIP, board member) */
	var specialCourtesy: CodeableConcept[]?

	/*! Wheelchair, translator, stretcher, etc */
	var specialArrangement: CodeableConcept[]?

	/*! Location to which the patient is discharged */
	var destination: ResourceReference?

	/*! Category or kind of location after discharge */
	var dischargeDisposition: CodeableConcept?

	/*! The final diagnosis given a patient before release from the hospital after all testing, surgery, and workup are complete */
	var dischargeDiagnosis: ResourceReference?

	/*! Is this hospitalization a readmission? */
	var reAdmission: Bool?

}


/*!
 *  Where the patient stays during this encounter.
 */
class EncounterHospitalizationAccomodation: FHIRElement
{
	/*! The bed that is assigned to the patient */
	var bed: ResourceReference?

	/*! Period during which the patient was assigned the bed */
	var period: Period?

}


/*!
 *  List of locations the patient has been at.
 *
 *  List of locations at which the patient has been.
 */
class EncounterLocation: FHIRElement
{
	/*! Location the encounter takes place */
	var location: ResourceReference

	/*! Time period during which the patient was present at the location */
	var period: Period

	init(location: ResourceReference, period: Period) {
		self.location = location
		self.period = period
	}
}
