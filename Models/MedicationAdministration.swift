//
//  MedicationAdministration.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
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
	override class var resourceName: String {
		get { return "MedicationAdministration" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! External identifier */
	var identifier: Identifier[]?
	
	/*! in progress | on hold | completed | entered in error | stopped */
	var status: String?
	
	/*! Who received medication? */
	var patient: ResourceReference?
	
	/*! Who administered substance? */
	var practitioner: ResourceReference?
	
	/*! Encounter administered as part of */
	var encounter: ResourceReference?
	
	/*! Order administration performed against */
	var prescription: ResourceReference?
	
	/*! True if medication not administered */
	var wasNotGiven: Bool?
	
	/*! Reason administration not performed */
	var reasonNotGiven: CodeableConcept[]?
	
	/*! Start and end time of administration */
	var whenGiven: Period?
	
	/*! What was administered? */
	var medication: ResourceReference?
	
	/*! Device used to administer */
	var device: ResourceReference[]?
	
	/*! Medicine administration instructions to the patient/carer */
	var dosage: MedicationAdministrationDosage[]?
	
	convenience init(status: String?, patient: ResourceReference?, practitioner: ResourceReference?, prescription: ResourceReference?, whenGiven: Period?) {
		self.init(json: nil)
		if status {
			self.status = status
		}
		if patient {
			self.patient = patient
		}
		if practitioner {
			self.practitioner = practitioner
		}
		if prescription {
			self.prescription = prescription
		}
		if whenGiven {
			self.whenGiven = whenGiven
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["identifier"] as? Array<NSDictionary> {
				self.identifier = Identifier.from(val) as? Identifier[]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = ResourceReference(json: val)
			}
			if let val = js["practitioner"] as? NSDictionary {
				self.practitioner = ResourceReference(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = ResourceReference(json: val)
			}
			if let val = js["prescription"] as? NSDictionary {
				self.prescription = ResourceReference(json: val)
			}
			if let val = js["wasNotGiven"] as? Int {
				self.wasNotGiven = (1 == val)
			}
			if let val = js["reasonNotGiven"] as? Array<NSDictionary> {
				self.reasonNotGiven = CodeableConcept.from(val) as? CodeableConcept[]
			}
			if let val = js["whenGiven"] as? NSDictionary {
				self.whenGiven = Period(json: val)
			}
			if let val = js["medication"] as? NSDictionary {
				self.medication = ResourceReference(json: val)
			}
			if let val = js["device"] as? Array<NSDictionary> {
				self.device = ResourceReference.from(val) as? ResourceReference[]
			}
			if let val = js["dosage"] as? Array<NSDictionary> {
				self.dosage = MedicationAdministrationDosage.from(val) as? MedicationAdministrationDosage[]
			}
		}
		super.init(json: json)
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
	var asNeededBoolean: Bool?
	
	/*! Take "as needed" f(or x) */
	var asNeededCodeableConcept: CodeableConcept?
	
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
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["timingDateTime"] as? String {
				self.timingDateTime = NSDate(json: val)
			}
			if let val = js["timingPeriod"] as? NSDictionary {
				self.timingPeriod = Period(json: val)
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
