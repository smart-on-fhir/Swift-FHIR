//
//  MedicationDispense.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Dispensing a medication to a named patient.
 *
 *  Scope and Usage This resource covers the supply of all medications to a patient. Examples include dispensing
 *  and pick-up from an out-patient pharmacy, dispensing patient-specific medications from in-patient pharmacy to
 *  ward as well as issuing a single dose from ward stock to a patient for consumption.
 */
class MedicationDispense: FHIRResource
{
	override var resourceName: String {
		get { return "MedicationDispense" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! External identifier */
	var identifier: Identifier?

	/*! in progress | on hold | completed | entered in error | stopped */
	var status: String?

	/*! Who the dispense is for */
	var patient: ResourceReference?

	/*! Practitioner responsible for dispensing medication */
	var dispenser: ResourceReference?

	/*! Medication order that authorizes the dispense */
	var authorizingPrescription: ResourceReference[]?

	/*! Details for individual dispensed medicationdetails */
	var dispense: MedicationDispenseDispense[]?

	/*! Deals with substitution of one medicine for another */
	var substitution: MedicationDispenseSubstitution?

}


/*!
 *  Details for individual dispensed medicationdetails.
 *
 *  Indicates the details of the dispense event such as the days supply and quantity of medication dispensed.
 */
class MedicationDispenseDispense: FHIRElement
{
	/*! External identifier for individual item */
	var identifier: Identifier?

	/*! in progress | on hold | completed | entered in error | stopped */
	var status: String?

	/*! Trial fill, partial fill, emergency fill, etc. */
	var type: CodeableConcept?

	/*! Amount dispensed */
	var quantity: Quantity?

	/*! What medication was supplied */
	var medication: ResourceReference?

	/*! Dispense processing time */
	var whenPrepared: NSDate?

	/*! Handover time */
	var whenHandedOver: NSDate?

	/*! Where the medication was sent */
	var destination: ResourceReference?

	/*! Who collected the medication */
	var receiver: ResourceReference[]?

	/*! Medicine administration instructions to the patient/carer */
	var dosage: MedicationDispenseDispenseDosage[]?

}


/*!
 *  Medicine administration instructions to the patient/carer.
 *
 *  Indicates how the medication is to be used by the patient.
 */
class MedicationDispenseDispenseDosage: FHIRElement
{
	/*! E.g. "Take with food" */
	var additionalInstructions: CodeableConcept?

	/*! When medication should be administered */
	var timingSchedule: Schedule?

	/*! When medication should be administered */
	var timingDateTime: NSDate?

	/*! When medication should be administered */
	var timingPeriod: Period?

	/*! Take "as needed" f(or x) */
	var asNeededCodeableConcept: CodeableConcept?

	/*! Take "as needed" f(or x) */
	var asNeededBoolean: Bool?

	/*! Body site to administer to */
	var site: CodeableConcept?

	/*! How drug should enter body */
	var route: CodeableConcept?

	/*! Technique for administering medication */
	var method: CodeableConcept?

	/*! Amount of medication per dose */
	var quantity: Quantity?

	/*! Amount of medication per unit of time */
	var rate: Ratio?

	/*! Upper limit on medication per unit of time */
	var maxDosePerPeriod: Ratio?

}


/*!
 *  Deals with substitution of one medicine for another.
 *
 *  Indicates whether or not substitution was made as part of the dispense.  In some cases substitution will be
 *  expected but doesn't happen, in other cases substitution is not expected but does happen.  This block explains
 *  what substitition did or did not happen and why.
 */
class MedicationDispenseSubstitution: FHIRElement
{
	/*! Type of substitiution */
	var type: CodeableConcept

	/*! Why was substitution made */
	var reason: CodeableConcept[]?

	/*! Who is responsible for the substitution */
	var responsibleParty: ResourceReference[]?

	init(type: CodeableConcept) {
		self.type = type
	}
}
