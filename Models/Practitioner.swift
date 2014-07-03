//
//  Practitioner.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A person with a  formal responsibility in the provisioning of healthcare or related services.
 *
 *  Scope and Usage Practitioner covers all individuals who are engaged in the healthcare process and healthcare-
 *  related services as part of their formal responsibilities and this Resource is used for attribution of
 *  activities and responsibilities to these individuals. Practitioners include (but are not limited to):
 *  
 *  * physicians, dentists, pharmacists
 *  * physician assistants, nurses, scribes
 *  * midwives, dietitians, therapists, optometrists, paramedics
 *  * medical technicians, laboratory scientists, prosthetic technicians, radiographers
 *  * social workers, professional home carers, official volunteers
 *  * receptionists handling patient registration
 *  * IT personnel merging or unmerging patient records
 */
class Practitioner: FHIRResource
{
	override var resourceName: String {
		get { return "Practitioner" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! A identifier for the person as this agent */
	var identifier: Identifier[]?

	/*! A name associated with the person */
	var name: HumanName?

	/*! A contact detail for the practitioner */
	var telecom: Contact[]?

	/*! Where practitioner can be found/visited */
	var address: Address?

	/*! Gender for administrative purposes */
	var gender: CodeableConcept?

	/*! The date and time of birth for the practitioner */
	var birthDate: NSDate?

	/*! Image of the person */
	var photo: Attachment[]?

	/*! The represented organization */
	var organization: ResourceReference?

	/*! Roles which this practitioner may perform */
	var role: CodeableConcept[]?

	/*! Specific specialty of the practitioner */
	var specialty: CodeableConcept[]?

	/*! The period during which the practitioner is authorized to perform in these role(s) */
	var period: Period?

	/*! The location(s) at which this practitioner provides care */
	var location: ResourceReference[]?

	/*! Qualifications obtained by training and certification */
	var qualification: PractitionerQualification[]?

	/*! A language the practitioner is able to use in patient communication */
	var communication: CodeableConcept[]?

}


/*!
 *  Qualifications obtained by training and certification.
 */
class PractitionerQualification: FHIRElement
{
	/*! Coded representation of the qualification */
	var code: CodeableConcept

	/*! Period during which the qualification is valid */
	var period: Period?

	/*! Organization that regulates and issues the qualification */
	var issuer: ResourceReference?

	init(code: CodeableConcept) {
		self.code = code
	}
}
