//
//  MedicationAdministration.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (medicationadministration.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Administration of medication to a patient.
 *
 *  Describes the event of a patient being given a dose of a medication.  This may be as simple as swallowing a tablet
 *  or it may be a long running infusion.
 *  
 *  Related resources tie this event to the authorizing prescription, and the specific encounter between patient and
 *  health care practitioner.
 */
public class MedicationAdministration: FHIRResource
{
	override public class var resourceName: String {
		get { return "MedicationAdministration" }
	}
	
	/// Device used to administer
	public var device: [Reference]?
	
	/// Medicine administration instructions to the patient/carer
	public var dosage: [MedicationAdministrationDosage]?
	
	/// Start and end time of administration
	public var effectiveTimeDateTime: NSDate?
	
	/// Start and end time of administration
	public var effectiveTimePeriod: Period?
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// What was administered?
	public var medication: Reference?
	
	/// Who received medication?
	public var patient: Reference?
	
	/// Who administered substance?
	public var practitioner: Reference?
	
	/// Order administration performed against
	public var prescription: Reference?
	
	/// Reason administration not performed
	public var reasonNotGiven: [CodeableConcept]?
	
	/// in progress | on hold | completed | entered in error | stopped
	public var status: String?
	
	/// True if medication not administered
	public var wasNotGiven: Bool?
	
	public convenience init(effectiveTimeDateTime: NSDate?, effectiveTimePeriod: Period?, patient: Reference?, practitioner: Reference?, prescription: Reference?, status: String?) {
		self.init(json: nil)
		if nil != effectiveTimeDateTime {
			self.effectiveTimeDateTime = effectiveTimeDateTime
		}
		if nil != effectiveTimePeriod {
			self.effectiveTimePeriod = effectiveTimePeriod
		}
		if nil != patient {
			self.patient = patient
		}
		if nil != practitioner {
			self.practitioner = practitioner
		}
		if nil != prescription {
			self.prescription = prescription
		}
		if nil != status {
			self.status = status
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["device"] as? [NSDictionary] {
				self.device = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["dosage"] as? [NSDictionary] {
				self.dosage = MedicationAdministrationDosage.from(val, owner: self) as? [MedicationAdministrationDosage]
			}
			if let val = js["effectiveTimeDateTime"] as? String {
				self.effectiveTimeDateTime = NSDate(json: val)
			}
			if let val = js["effectiveTimePeriod"] as? NSDictionary {
				self.effectiveTimePeriod = Period(json: val, owner: self)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = Reference(json: val, owner: self)
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
			if let val = js["practitioner"] as? NSDictionary {
				self.practitioner = Reference(json: val, owner: self)
			}
			if let val = js["prescription"] as? NSDictionary {
				self.prescription = Reference(json: val, owner: self)
			}
			if let val = js["reasonNotGiven"] as? [NSDictionary] {
				self.reasonNotGiven = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["wasNotGiven"] as? Bool {
				self.wasNotGiven = val
			}
		}
	}
}


/**
 *  Medicine administration instructions to the patient/carer.
 *
 *  Provides details of how much of the medication was administered.
 */
public class MedicationAdministrationDosage: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationAdministrationDosage" }
	}
	
	/// Take "as needed" f(or x)
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" f(or x)
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Total dose that was consumed per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// How drug was administered
	public var method: CodeableConcept?
	
	/// Amount administered in one dose
	public var quantity: Quantity?
	
	/// Dose quantity per unit of time
	public var rate: Ratio?
	
	/// Path of substance into body
	public var route: CodeableConcept?
	
	/// Body site administered to
	public var site: CodeableConcept?
	
	/// When dose(s) were given
	public var timingDateTime: NSDate?
	
	/// When dose(s) were given
	public var timingPeriod: Period?
	

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
			if let val = js["site"] as? NSDictionary {
				self.site = CodeableConcept(json: val, owner: self)
			}
			if let val = js["timingDateTime"] as? String {
				self.timingDateTime = NSDate(json: val)
			}
			if let val = js["timingPeriod"] as? NSDictionary {
				self.timingPeriod = Period(json: val, owner: self)
			}
		}
	}
}

