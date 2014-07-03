//
//  MedicationStatement.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Administration of medication to a patient.
 *
 *  Scope and Usage Common usage includes:
 *  
 *  * the recording of non-prescription and/or recreational drugs
 *  * the recording of an intake medication list upon admission to hospital
 *  * the summarization of a patient's "active medications" in a patient profile
 */
class MedicationStatement: FHIRResource
{
	override var resourceName: String {
		get { return "MedicationStatement" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! External Identifier */
	var identifier: Identifier[]?

	/*! Who was/is taking medication */
	var patient: ResourceReference?

	/*! True if medication is/was not being taken */
	var wasNotGiven: Bool?

	/*! True if asserting medication was not given */
	var reasonNotGiven: CodeableConcept[]?

	/*! Over what period was medication consumed? */
	var whenGiven: Period?

	/*! What medication was taken? */
	var medication: ResourceReference?

	/*! E.g. infusion pump */
	var device: ResourceReference[]?

	/*! Details of how medication was taken */
	var dosage: MedicationStatementDosage[]?

}


/*!
 *  Details of how medication was taken.
 *
 *  Indicates how the medication is/was used by the patient.
 */
class MedicationStatementDosage: FHIRElement
{
	/*! When/how often was medication taken? */
	var timing: Schedule?

	/*! Take "as needed" f(or x) */
	var asNeededCodeableConcept: CodeableConcept?

	/*! Take "as needed" f(or x) */
	var asNeededBoolean: Bool?

	/*! Where on body was medication administered? */
	var site: CodeableConcept?

	/*! How did the medication enter the body? */
	var route: CodeableConcept?

	/*! Technique used to administer medication */
	var method: CodeableConcept?

	/*! Amount administered in one dose */
	var quantity: Quantity?

	/*! Dose quantity per unit of time */
	var rate: Ratio?

	/*! Maximum dose that was consumed per unit of time */
	var maxDosePerPeriod: Ratio?

}
