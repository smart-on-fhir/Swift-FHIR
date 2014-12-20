//
//  MedicationStatement.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (medicationstatement.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Administration of medication to a patient.
 *
 *  A record of medication being taken by a patient, or that the medication has been given to a patient where the record
 *  is the result of a report from the patient or another clinician.
 */
public class MedicationStatement: FHIRResource
{
	override public class var resourceName: String {
		get { return "MedicationStatement" }
	}
	
	/// E.g. infusion pump
	public var device: [Reference]?
	
	/// Details of how medication was taken
	public var dosage: [MedicationStatementDosage]?
	
	/// External Identifier
	public var identifier: [Identifier]?
	
	/// What medication was taken?
	public var medication: Reference?
	
	/// Who was/is taking medication
	public var patient: Reference?
	
	/// True if asserting medication was not given
	public var reasonNotGiven: [CodeableConcept]?
	
	/// True if medication is/was not being taken
	public var wasNotGiven: Bool?
	
	/// Over what period was medication consumed?
	public var whenGiven: Period?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["device"] as? [NSDictionary] {
				self.device = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["dosage"] as? [NSDictionary] {
				self.dosage = MedicationStatementDosage.from(val, owner: self) as? [MedicationStatementDosage]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["medication"] as? NSDictionary {
				self.medication = Reference(json: val, owner: self)
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["reasonNotGiven"] as? [NSDictionary] {
				self.reasonNotGiven = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["wasNotGiven"] as? Bool {
				self.wasNotGiven = val
			}
			if let val = js["whenGiven"] as? NSDictionary {
				self.whenGiven = Period(json: val, owner: self)
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
	override public class var resourceName: String {
		get { return "MedicationStatementDosage" }
	}
	
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
	
	/// When/how often was medication taken?
	public var schedule: Timing?
	
	/// Where on body was medication administered?
	public var site: CodeableConcept?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["asNeededBoolean"] as? Bool {
				self.asNeededBoolean = val
			}
			if let val = js["asNeededCodeableConcept"] as? NSDictionary {
				self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["maxDosePerPeriod"] as? NSDictionary {
				self.maxDosePerPeriod = Ratio(json: val, owner: self)
			}
			if let val = js["method"] as? NSDictionary {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["rate"] as? NSDictionary {
				self.rate = Ratio(json: val, owner: self)
			}
			if let val = js["route"] as? NSDictionary {
				self.route = CodeableConcept(json: val, owner: self)
			}
			if let val = js["schedule"] as? NSDictionary {
				self.schedule = Timing(json: val, owner: self)
			}
			if let val = js["site"] as? NSDictionary {
				self.site = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

