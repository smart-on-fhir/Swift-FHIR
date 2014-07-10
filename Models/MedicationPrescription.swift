//
//  MedicationPrescription.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-10.
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
	override class var resourceName: String {
		get { return "MedicationPrescription" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: [FHIRResource]?
	
	/*! External identifier */
	var identifier: [Identifier]?
	
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
	var reasonCodeableConcept: CodeableConcept?
	
	/*! Reason or indication for writing the prescription */
	var reasonResourceReference: ResourceReference?
	
	/*! Medication to be taken */
	var medication: ResourceReference?
	
	/*! How medication should be taken */
	var dosageInstruction: [MedicationPrescriptionDosageInstruction]?
	
	/*! Medication supply authorization */
	var dispense: MedicationPrescriptionDispense?
	
	/*! Any restrictions on medication substitution? */
	var substitution: MedicationPrescriptionSubstitution?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? [NSDictionary] {
				self.contained = FHIRResource.from(val) as? [FHIRResource]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["dateWritten"] as? String {
				self.dateWritten = NSDate(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = ResourceReference(json: val)
			}
			if let val = js["prescriber"] as? NSDictionary {
				self.prescriber = ResourceReference(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = ResourceReference(json: val)
			}
			if let val = js["reasonCodeableConcept"] as? NSDictionary {
				self.reasonCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["reasonResourceReference"] as? NSDictionary {
				self.reasonResourceReference = ResourceReference(json: val)
			}
			if let val = js["medication"] as? NSDictionary {
				self.medication = ResourceReference(json: val)
			}
			if let val = js["dosageInstruction"] as? [NSDictionary] {
				self.dosageInstruction = MedicationPrescriptionDosageInstruction.from(val) as? [MedicationPrescriptionDosageInstruction]
			}
			if let val = js["dispense"] as? NSDictionary {
				self.dispense = MedicationPrescriptionDispense(json: val)
			}
			if let val = js["substitution"] as? NSDictionary {
				self.substitution = MedicationPrescriptionSubstitution(json: val)
			}
		}
		super.init(json: json)
	}
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
	var timingDateTime: NSDate?
	
	/*! When medication should be administered */
	var timingPeriod: Period?
	
	/*! When medication should be administered */
	var timingSchedule: Schedule?
	
	/*! Take "as needed" f(or x) */
	var asNeededBoolean: Bool?
	
	/*! Take "as needed" f(or x) */
	var asNeededCodeableConcept: CodeableConcept?
	
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
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["additionalInstructions"] as? NSDictionary {
				self.additionalInstructions = CodeableConcept(json: val)
			}
			if let val = js["timingDateTime"] as? String {
				self.timingDateTime = NSDate(json: val)
			}
			if let val = js["timingPeriod"] as? NSDictionary {
				self.timingPeriod = Period(json: val)
			}
			if let val = js["timingSchedule"] as? NSDictionary {
				self.timingSchedule = Schedule(json: val)
			}
			if let val = js["asNeededBoolean"] as? Int {
				self.asNeededBoolean = (1 == val)
			}
			if let val = js["asNeededCodeableConcept"] as? NSDictionary {
				self.asNeededCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["site"] as? NSDictionary {
				self.site = CodeableConcept(json: val)
			}
			if let val = js["route"] as? NSDictionary {
				self.route = CodeableConcept(json: val)
			}
			if let val = js["method"] as? NSDictionary {
				self.method = CodeableConcept(json: val)
			}
			if let val = js["doseQuantity"] as? NSDictionary {
				self.doseQuantity = Quantity(json: val)
			}
			if let val = js["rate"] as? NSDictionary {
				self.rate = Ratio(json: val)
			}
			if let val = js["maxDosePerPeriod"] as? NSDictionary {
				self.maxDosePerPeriod = Ratio(json: val)
			}
		}
		super.init(json: json)
	}
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
	var expectedSupplyDuration: Double?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["medication"] as? NSDictionary {
				self.medication = ResourceReference(json: val)
			}
			if let val = js["validityPeriod"] as? NSDictionary {
				self.validityPeriod = Period(json: val)
			}
			if let val = js["numberOfRepeatsAllowed"] as? Int {
				self.numberOfRepeatsAllowed = val
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
			}
			if let val = js["expectedSupplyDuration"] as? NSNumber {
				self.expectedSupplyDuration = Double(val)
			}
		}
		super.init(json: json)
	}
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
	var type: CodeableConcept?
	
	/*! Why should substitution (not) be made */
	var reason: CodeableConcept?
	
	convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["reason"] as? NSDictionary {
				self.reason = CodeableConcept(json: val)
			}
		}
		super.init(json: json)
	}
}
