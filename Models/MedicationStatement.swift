//
//  MedicationStatement.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (medicationstatement.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Administration of medication to a patient.
 *
 *  Scope and Usage Common usage includes:
 *  
 *  * the recording of non-prescription and/or recreational drugs
 *  * the recording of an intake medication list upon admission to hospital
 *  * the summarization of a patient's "active medications" in a patient profile
 */
public class MedicationStatement: FHIRResource
{
	override public class var resourceName: String {
		get { return "MedicationStatement" }
	}
	
	/// E.g. infusion pump
	public var device: [FHIRReference<Device>]?
	
	/// Details of how medication was taken
	public var dosage: [MedicationStatementDosage]?
	
	/// External Identifier
	public var identifier: [Identifier]?
	
	/// What medication was taken?
	public var medication: FHIRReference<Medication>?
	
	/// Who was/is taking medication
	public var patient: FHIRReference<Patient>?
	
	/// True if asserting medication was not given
	public var reasonNotGiven: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// True if medication is/was not being taken
	public var wasNotGiven: Bool?
	
	/// Over what period was medication consumed?
	public var whenGiven: Period?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["device"] as? [NSDictionary] {
				self.device = FHIRReference.from(val, owner: self)
			}
			if let val = js["dosage"] as? [NSDictionary] {
				self.dosage = MedicationStatementDosage.from(val) as? [MedicationStatementDosage]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["medication"] as? NSDictionary {
				self.medication = FHIRReference(json: val, owner: self)
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = FHIRReference(json: val, owner: self)
			}
			if let val = js["reasonNotGiven"] as? [NSDictionary] {
				self.reasonNotGiven = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["wasNotGiven"] as? Int {
				self.wasNotGiven = (1 == val)
			}
			if let val = js["whenGiven"] as? NSDictionary {
				self.whenGiven = Period(json: val)
			}
		}
	}
}


/**
 *  Details of how medication was taken.
 *
 *  Indicates how the medication is/was used by the patient.
 */
public class MedicationStatementDosage: FHIRElement
{	
	/// Take "as needed" f(or x)
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" f(or x)
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Maximum dose that was consumed per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique used to administer medication
	public var method: CodeableConcept?
	
	/// Amount administered in one dose
	public var quantity: Quantity?
	
	/// Dose quantity per unit of time
	public var rate: Ratio?
	
	/// How did the medication enter the body?
	public var route: CodeableConcept?
	
	/// Where on body was medication administered?
	public var site: CodeableConcept?
	
	/// When/how often was medication taken?
	public var timing: Schedule?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["asNeededBoolean"] as? Int {
				self.asNeededBoolean = (1 == val)
			}
			if let val = js["asNeededCodeableConcept"] as? NSDictionary {
				self.asNeededCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["maxDosePerPeriod"] as? NSDictionary {
				self.maxDosePerPeriod = Ratio(json: val)
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
			if let val = js["route"] as? NSDictionary {
				self.route = CodeableConcept(json: val)
			}
			if let val = js["site"] as? NSDictionary {
				self.site = CodeableConcept(json: val)
			}
			if let val = js["timing"] as? NSDictionary {
				self.timing = Schedule(json: val)
			}
		}
	}
}

