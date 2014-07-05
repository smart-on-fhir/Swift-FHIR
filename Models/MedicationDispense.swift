//
//  MedicationDispense.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
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
	override class var resourceName: String {
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
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = ResourceReference(json: val)
			}
			if let val = js["dispenser"] as? NSDictionary {
				self.dispenser = ResourceReference(json: val)
			}
			if let val = js["authorizingPrescription"] as? Array<NSDictionary> {
				self.authorizingPrescription = ResourceReference.from(val) as? ResourceReference[]
			}
			if let val = js["dispense"] as? Array<NSDictionary> {
				self.dispense = MedicationDispenseDispense.from(val) as? MedicationDispenseDispense[]
			}
			if let val = js["substitution"] as? NSDictionary {
				self.substitution = MedicationDispenseSubstitution(json: val)
			}
		}
		super.init(json: json)
	}
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
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
			}
			if let val = js["medication"] as? NSDictionary {
				self.medication = ResourceReference(json: val)
			}
			if let val = js["whenPrepared"] as? String {
				self.whenPrepared = NSDate(json: val)
			}
			if let val = js["whenHandedOver"] as? String {
				self.whenHandedOver = NSDate(json: val)
			}
			if let val = js["destination"] as? NSDictionary {
				self.destination = ResourceReference(json: val)
			}
			if let val = js["receiver"] as? Array<NSDictionary> {
				self.receiver = ResourceReference.from(val) as? ResourceReference[]
			}
			if let val = js["dosage"] as? Array<NSDictionary> {
				self.dosage = MedicationDispenseDispenseDosage.from(val) as? MedicationDispenseDispenseDosage[]
			}
		}
		super.init(json: json)
	}
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
	var quantity: Quantity?
	
	/*! Amount of medication per unit of time */
	var rate: Ratio?
	
	/*! Upper limit on medication per unit of time */
	var maxDosePerPeriod: Ratio?
	
	
	init(json: NSDictionary?) {
		if let js = json {
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
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
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
 *  Deals with substitution of one medicine for another.
 *
 *  Indicates whether or not substitution was made as part of the dispense.  In some cases substitution will be
 *  expected but doesn't happen, in other cases substitution is not expected but does happen.  This block explains
 *  what substitition did or did not happen and why.
 */
class MedicationDispenseSubstitution: FHIRElement
{	
	/*! Type of substitiution */
	var type: CodeableConcept?
	
	/*! Why was substitution made */
	var reason: CodeableConcept[]?
	
	/*! Who is responsible for the substitution */
	var responsibleParty: ResourceReference[]?
	
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
			if let val = js["reason"] as? Array<NSDictionary> {
				self.reason = CodeableConcept.from(val) as? CodeableConcept[]
			}
			if let val = js["responsibleParty"] as? Array<NSDictionary> {
				self.responsibleParty = ResourceReference.from(val) as? ResourceReference[]
			}
		}
		super.init(json: json)
	}
}
