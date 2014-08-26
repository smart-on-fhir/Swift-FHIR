//
//  MedicationAdministration.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (medicationadministration.profile.json) on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Administration of medication to a patient.
 *
 *  Scope and Usage This resource covers the administration of all medications with the exception of vaccines. It
 *  will principally be used within inpatient settings to record the capture of medication administrations
 *  including self-administrations of oral medications, injections, intra-venous adjustments, etc. It can also be
 *  used in out-patient settings to record allergy shots and other non-immunization administrations. In some cases
 *  it might be used for home-health reporting, such as recording self-administered or even device-administered
 *  insulin.
 */
public class MedicationAdministration: FHIRResource
{
	override public class var resourceName: String {
		get { return "MedicationAdministration" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** External identifier */
	public var identifier: [Identifier]?
	
	/** in progress | on hold | completed | entered in error | stopped */
	public var status: String?
	
	/** Who received medication? */
	public var patient: FHIRElement? {
		get { return resolveReference("patient") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "patient")
			}
		}
	}
	
	/** Who administered substance? */
	public var practitioner: FHIRElement? {
		get { return resolveReference("practitioner") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "practitioner")
			}
		}
	}
	
	/** Encounter administered as part of */
	public var encounter: FHIRElement? {
		get { return resolveReference("encounter") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "encounter")
			}
		}
	}
	
	/** Order administration performed against */
	public var prescription: FHIRElement? {
		get { return resolveReference("prescription") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "prescription")
			}
		}
	}
	
	/** True if medication not administered */
	public var wasNotGiven: Bool?
	
	/** Reason administration not performed */
	public var reasonNotGiven: [CodeableConcept]?
	
	/** Start and end time of administration */
	public var whenGiven: Period?
	
	/** What was administered? */
	public var medication: FHIRElement? {
		get { return resolveReference("medication") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "medication")
			}
		}
	}
	
	/** Device used to administer */
	public var device: [FHIRElement]? {
		get { return resolveReferences("device") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "device")
			}
		}
	}
	
	/** Medicine administration instructions to the patient/carer */
	public var dosage: [MedicationAdministrationDosage]?
	
	public convenience init(status: String?, patient: ResourceReference?, practitioner: ResourceReference?, prescription: ResourceReference?, whenGiven: Period?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
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
		if nil != whenGiven {
			self.whenGiven = whenGiven
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
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
			if let val = js["reasonNotGiven"] as? [NSDictionary] {
				self.reasonNotGiven = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["whenGiven"] as? NSDictionary {
				self.whenGiven = Period(json: val)
			}
			if let val = js["medication"] as? NSDictionary {
				self.medication = ResourceReference(json: val)
			}
			if let val = js["device"] as? [NSDictionary] {
				self.device = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["dosage"] as? [NSDictionary] {
				self.dosage = MedicationAdministrationDosage.from(val) as? [MedicationAdministrationDosage]
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
	/** When dose(s) were given */
	public var timingDateTime: NSDate?
	
	/** When dose(s) were given */
	public var timingPeriod: Period?
	
	/** Take "as needed" f(or x) */
	public var asNeededBoolean: Bool?
	
	/** Take "as needed" f(or x) */
	public var asNeededCodeableConcept: CodeableConcept?
	
	/** Body site administered to */
	public var site: CodeableConcept?
	
	/** Path of substance into body */
	public var route: CodeableConcept?
	
	/** How drug was administered */
	public var method: CodeableConcept?
	
	/** Amount administered in one dose */
	public var quantity: Quantity?
	
	/** Dose quantity per unit of time */
	public var rate: Ratio?
	
	/** Total dose that was consumed per unit of time */
	public var maxDosePerPeriod: Ratio?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}

