//
//  MedicationAdministration.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (medicationadministration.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Administration of medication to a patient.
 *
 *  Scope and Usage This resource covers the administration of all medications with the exception of vaccines. It will
 *  principally be used within inpatient settings to record the capture of medication administrations including self-
 *  administrations of oral medications, injections, intra-venous adjustments, etc. It can also be used in out-patient
 *  settings to record allergy shots and other non-immunization administrations. In some cases it might be used for
 *  home-health reporting, such as recording self-administered or even device-administered insulin.
 */
public class MedicationAdministration: FHIRResource
{
	override public class var resourceName: String {
		get { return "MedicationAdministration" }
	}
	
	/// Device used to administer
	public var device: [FHIRReference<Device>]?
	
	/// Medicine administration instructions to the patient/carer
	public var dosage: [MedicationAdministrationDosage]?
	
	/// Encounter administered as part of
	public var encounter: FHIRReference<Encounter>?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// What was administered?
	public var medication: FHIRReference<Medication>?
	
	/// Who received medication?
	public var patient: FHIRReference<Patient>?
	
	/// Who administered substance?
	public var practitioner: FHIRReference<Practitioner>?
	
	/// Order administration performed against
	public var prescription: FHIRReference<MedicationPrescription>?
	
	/// Reason administration not performed
	public var reasonNotGiven: [CodeableConcept]?
	
	/// in progress | on hold | completed | entered in error | stopped
	public var status: String?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// True if medication not administered
	public var wasNotGiven: Bool?
	
	/// Start and end time of administration
	public var whenGiven: Period?
	
	public convenience init(patient: FHIRReference<Patient>?, practitioner: FHIRReference<Practitioner>?, prescription: FHIRReference<MedicationPrescription>?, status: String?, whenGiven: Period?) {
		self.init(json: nil)
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
		if nil != whenGiven {
			self.whenGiven = whenGiven
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["device"] as? [NSDictionary] {
				self.device = FHIRReference.from(val, owner: self)
			}
			if let val = js["dosage"] as? [NSDictionary] {
				self.dosage = MedicationAdministrationDosage.from(val) as? [MedicationAdministrationDosage]
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = FHIRReference(json: val, owner: self)
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
			if let val = js["practitioner"] as? NSDictionary {
				self.practitioner = FHIRReference(json: val, owner: self)
			}
			if let val = js["prescription"] as? NSDictionary {
				self.prescription = FHIRReference(json: val, owner: self)
			}
			if let val = js["reasonNotGiven"] as? [NSDictionary] {
				self.reasonNotGiven = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["status"] as? String {
				self.status = val
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
 *  Medicine administration instructions to the patient/carer.
 *
 *  Provides details of how much of the medication was administered.
 */
public class MedicationAdministrationDosage: FHIRElement
{	
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
			if let val = js["timingDateTime"] as? String {
				self.timingDateTime = NSDate(json: val)
			}
			if let val = js["timingPeriod"] as? NSDictionary {
				self.timingPeriod = Period(json: val)
			}
		}
	}
}

