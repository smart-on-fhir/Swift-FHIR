//
//  RelatedPerson.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  An person that is related to a patient, but who is not a direct target of care.
 *
 *  Scope and Usage RelatedPersons typically have a personal or non-healthcare-specific professional relationship
 *  to the patient. A RelatedPerson resource is primarily used for attribution of information, since
 *  RelatedPersons are often a source of information about the patient. For keeping information about persons for
 *  contact purposes for a patient, use a Patient's Contact element instead.
 *  
 *  Example RelatedPersons are:
 *  
 *  * A patient's wife or husband
 *  * A patient's relatives or friends
 *  * A neighbor bringing a patient to the hospital
 *  * The owner or trainer of a horse
 *  * A patient's attorney or guardian
 */
class RelatedPerson: FHIRResource
{
	override var resourceName: String {
		get { return "RelatedPerson" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! A Human identifier for this person */
	var identifier: Identifier[]?

	/*! The patient this person is related to */
	var patient: ResourceReference

	/*! The nature of the relationship */
	var relationship: CodeableConcept?

	/*! A name associated with the person */
	var name: HumanName?

	/*! A contact detail for the person */
	var telecom: Contact[]?

	/*! Gender for administrative purposes */
	var gender: CodeableConcept?

	/*! Address where the related person can be contacted or visited */
	var address: Address?

	/*! Image of the person */
	var photo: Attachment[]?

	init(patient: ResourceReference) {
		self.patient = patient
	}
}
