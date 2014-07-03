//
//  Patient.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Information about a person or animal receiving health care services.
 *
 *  Scope and Usage This Resource covers data about persons and animals involved in a wide range of health-related
 *  activities, including:
 *  
 *  * Curative activities
 *  * Psychiatric care
 *  * Social services
 *  * Pregnancy care
 *  * Nursing and assisted living
 *  * Dietary services
 *  * Tracking of personal health and exercise data
 *  The data in the Resource covers the "who" information about the patient: its attributes are focused on the
 *  demographic information necessary to support the administrative, financial and logistic procedures. A Patient
 *  record is generally created and maintained by each organization providing care for a patient. A person or
 *  animal receiving care at multiple organizations may therefore have its information present in multiple Patient
 *  Resources.
 */
class Patient: FHIRResource
{
	override var resourceName: String {
		get { return "Patient" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! An identifier for the person as this patient */
	var identifier: Identifier[]?

	/*! A name associated with the patient */
	var name: HumanName[]?

	/*! A contact detail for the individual */
	var telecom: Contact[]?

	/*! Gender for administrative purposes */
	var gender: CodeableConcept?

	/*! The date and time of birth for the individual */
	var birthDate: NSDate?

	/*! Indicates if the individual is deceased or not */
	var deceasedDateTime: NSDate?

	/*! Indicates if the individual is deceased or not */
	var deceasedBoolean: Bool?

	/*! Addresses for the individual */
	var address: Address[]?

	/*! Marital (civil) status of a person */
	var maritalStatus: CodeableConcept?

	/*! Whether patient is part of a multiple birth */
	var multipleBirthInteger: Int?

	/*! Whether patient is part of a multiple birth */
	var multipleBirthBoolean: Bool?

	/*! Image of the person */
	var photo: Attachment[]?

	/*! A contact party (e.g. guardian, partner, friend) for the patient */
	var contact: PatientContact[]?

	/*! If this patient is an animal (non-human) */
	var animal: PatientAnimal?

	/*! Languages which may be used to communicate with the patient about his or her health */
	var communication: CodeableConcept[]?

	/*! Patient's nominated care provider */
	var careProvider: ResourceReference[]?

	/*! Organization that is the custodian of the patient record */
	var managingOrganization: ResourceReference?

	/*! Link to another patient resource that concerns the same actual person */
	var link: PatientLink[]?

	/*! Whether this patient's record is in active use */
	var active: Bool?

}


/*!
 *  A contact party (e.g. guardian, partner, friend) for the patient.
 */
class PatientContact: FHIRElement
{
	/*! The kind of relationship */
	var relationship: CodeableConcept[]?

	/*! A name associated with the person */
	var name: HumanName?

	/*! A contact detail for the person */
	var telecom: Contact[]?

	/*! Address for the contact person */
	var address: Address?

	/*! Gender for administrative purposes */
	var gender: CodeableConcept?

	/*! Organization that is associated with the contact */
	var organization: ResourceReference?

}


/*!
 *  If this patient is an animal (non-human).
 *
 *  This element has a value if the patient is an animal.
 */
class PatientAnimal: FHIRElement
{
	/*! E.g. Dog, Cow */
	var species: CodeableConcept

	/*! E.g. Poodle, Angus */
	var breed: CodeableConcept?

	/*! E.g. Neutered, Intact */
	var genderStatus: CodeableConcept?

	init(species: CodeableConcept) {
		self.species = species
	}
}


/*!
 *  Link to another patient resource that concerns the same actual person.
 */
class PatientLink: FHIRElement
{
	/*! The other patient resource that the link refers to */
	var other: ResourceReference

	/*! replace | refer | seealso - type of link */
	var type: String

	init(other: ResourceReference, type: String) {
		self.other = other
		self.type = type
	}
}
