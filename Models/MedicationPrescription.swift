//
//  MedicationPrescription.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Prescription of medication to for patient.
 *
 *  Scope and Usage This resource covers all orders for medications for a patient. This includes in-patient
 *  medication orders as well as community orders (whether filled by the prescriber or by a pharmacy). It also
 *  includes orders for over-the-counter medications (e.g. Aspirin) and dietary supplements. It may be used to
 *  support the order of medication-related devices. It is not intended for use in prescribing particular diets,
 *  or for ordering non-medication-related items (eye-glasses, supplies, etc.)
 */
class MedicationPrescription: FHIRResource
{
	override var resourceName: String {
		get { return "MedicationPrescription" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! External identifier */
	var identifier: Identifier[]?

	/*! When prescription was authorized */
	var dateWritten: NSDate?

	/*! active | on hold | completed | entered in error | stopped | superceded */
	var status: String?

	/*! Who prescription is for */
	var patient: ResourceReference?

	/*! Who ordered the medication(s) */
	var prescriber: ResourceReference?

	/*! Created during encounter / admission / stay */
	var encounter: ResourceReference?

	/*! Reason or indication for writing the prescription */
	var reasonResourceReference: ResourceReference?

	/*! Reason or indication for writing the prescription */
	var reasonCodeableConcept: CodeableConcept?

	/*! Medication to be taken */
	var medication: ResourceReference?

	/*! How medication should be taken */
	var dosageInstruction: MedicationPrescriptionDosageInstruction[]?

	/*! Medication supply authorization */
	var dispense: MedicationPrescriptionDispense?

	/*! Any restrictions on medication substitution? */
	var substitution: MedicationPrescriptionSubstitution?

}


/*!
 *  How medication should be taken.
 *
 *  Indicates how the medication is to be used by the patient.
 */
class MedicationPrescriptionDosageInstruction: FHIRElement
{
	/*! Dosage instructions expressed as text */
	var text: String?

	/*! Supplemental instructions - e.g. "with meals" */
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
	var doseQuantity: Quantity?

	/*! Amount of medication per unit of time */
	var rate: Ratio?

	/*! Upper limit on medication per unit of time */
	var maxDosePerPeriod: Ratio?

}


/*!
 *  Medication supply authorization.
 *
 *  Deals with details of the dispense part of the order.
 */
class MedicationPrescriptionDispense: FHIRElement
{
	/*! Product to be supplied */
	var medication: ResourceReference?

	/*! Time period supply is authorized for */
	var validityPeriod: Period?

	/*! # of refills authorized */
	var numberOfRepeatsAllowed: Int?

	/*! Amount of medication to supply per dispense */
	var quantity: Quantity?

	/*! Days supply per dispense */
	var expectedSupplyDuration: Duration?

}


/*!
 *  Any restrictions on medication substitution?.
 *
 *  Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must
 *  happen, in other cases substitution must not happen, and in others it does not matter. This block explains the
 *  prescriber's intent. If nothing is specified substitution may be done.
 */
class MedicationPrescriptionSubstitution: FHIRElement
{
	/*! generic | formulary + */
	var type: CodeableConcept

	/*! Why should substitution (not) be made */
	var reason: CodeableConcept?

	init(type: CodeableConcept) {
		self.type = type
	}
}
