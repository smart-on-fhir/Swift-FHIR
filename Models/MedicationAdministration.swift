//
//  MedicationAdministration.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Administration of medication to a patient.
 *
 *  Scope and Usage This resource covers the administration of all medications with the exception of vaccines. It
 *  will principally be used within inpatient settings to record the capture of medication administrations
 *  including self-administrations of oral medications, injections, intra-venous adjustments, etc. It can also be
 *  used in out-patient settings to record allergy shots and other non-immunization administrations. In some cases
 *  it might be used for home-health reporting, such as recording self-administered or even device-administered
 *  insulin.
 */
class MedicationAdministration: FHIRResource
{
	override var resourceName: String {
		get { return "MedicationAdministration" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! External identifier */
	var identifier: Identifier[]?

	/*! in progress | on hold | completed | entered in error | stopped */
	var status: String

	/*! Who received medication? */
	var patient: ResourceReference

	/*! Who administered substance? */
	var practitioner: ResourceReference

	/*! Encounter administered as part of */
	var encounter: ResourceReference?

	/*! Order administration performed against */
	var prescription: ResourceReference

	/*! True if medication not administered */
	var wasNotGiven: Bool?

	/*! Reason administration not performed */
	var reasonNotGiven: CodeableConcept[]?

	/*! Start and end time of administration */
	var whenGiven: Period

	/*! What was administered? */
	var medication: ResourceReference?

	/*! Device used to administer */
	var device: ResourceReference[]?

	/*! Medicine administration instructions to the patient/carer */
	var dosage: MedicationAdministrationDosage[]?

	init(status: String, patient: ResourceReference, practitioner: ResourceReference, prescription: ResourceReference, whenGiven: Period) {
		self.status = status
		self.patient = patient
		self.practitioner = practitioner
		self.prescription = prescription
		self.whenGiven = whenGiven
	}
}


/*!
 *  Medicine administration instructions to the patient/carer.
 *
 *  Provides details of how much of the medication was administered.
 */
class MedicationAdministrationDosage: FHIRElement
{
	/*! When dose(s) were given */
	var timingDateTime: NSDate?

	/*! When dose(s) were given */
	var timingPeriod: Period?

	/*! Take "as needed" f(or x) */
	var asNeededCodeableConcept: CodeableConcept?

	/*! Take "as needed" f(or x) */
	var asNeededBoolean: Bool?

	/*! Body site administered to */
	var site: CodeableConcept?

	/*! Path of substance into body */
	var route: CodeableConcept?

	/*! How drug was administered */
	var method: CodeableConcept?

	/*! Amount administered in one dose */
	var quantity: Quantity?

	/*! Dose quantity per unit of time */
	var rate: Ratio?

	/*! Total dose that was consumed per unit of time */
	var maxDosePerPeriod: Ratio?

}
