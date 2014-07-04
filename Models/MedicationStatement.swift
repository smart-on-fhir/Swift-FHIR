//
//  MedicationStatement.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
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
			if let val = js["patient"] as? NSDictionary {
				self.patient = ResourceReference(json: val)
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
				self.dosage = MedicationStatementDosage.from(val) as? MedicationStatementDosage[]
			}
		}
		super.init(json: json)
	}
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
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["timing"] as? NSDictionary {
				self.timing = Schedule(json: val)
			}
			if let val = js["asNeededCodeableConcept"] as? NSDictionary {
				self.asNeededCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["asNeededBoolean"] as? Int {
				self.asNeededBoolean = (1 == val)
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
