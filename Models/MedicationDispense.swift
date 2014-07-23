//
//  MedicationDispense.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Dispensing a medication to a named patient.
 *
 *  Scope and Usage This resource covers the supply of all medications to a patient. Examples include dispensing
 *  and pick-up from an out-patient pharmacy, dispensing patient-specific medications from in-patient pharmacy to
 *  ward as well as issuing a single dose from ward stock to a patient for consumption.
 */
public class MedicationDispense: FHIRResource
{
	override public class var resourceName: String {
		get { return "MedicationDispense" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** External identifier */
	public var identifier: Identifier?
	
	/** in progress | on hold | completed | entered in error | stopped */
	public var status: String?
	
	/** Who the dispense is for */
	public var patient: FHIRElement? {
		get { return resolveReference("patient") }
		set {
			if newValue {
				didSetReference(newValue!, name: "patient")
			}
		}
	}
	
	/** Practitioner responsible for dispensing medication */
	public var dispenser: FHIRElement? {
		get { return resolveReference("dispenser") }
		set {
			if newValue {
				didSetReference(newValue!, name: "dispenser")
			}
		}
	}
	
	/** Medication order that authorizes the dispense */
	public var authorizingPrescription: [FHIRElement]? {
		get { return resolveReferences("authorizingPrescription") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "authorizingPrescription")
			}
		}
	}
	
	/** Details for individual dispensed medicationdetails */
	public var dispense: [MedicationDispenseDispense]?
	
	/** Deals with substitution of one medicine for another */
	public var substitution: MedicationDispenseSubstitution?
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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
			if let val = js["authorizingPrescription"] as? [NSDictionary] {
				self.authorizingPrescription = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["dispense"] as? [NSDictionary] {
				self.dispense = MedicationDispenseDispense.from(val) as? [MedicationDispenseDispense]
			}
			if let val = js["substitution"] as? NSDictionary {
				self.substitution = MedicationDispenseSubstitution(json: val)
			}
		}
	}
}


/**
 *  Details for individual dispensed medicationdetails.
 *
 *  Indicates the details of the dispense event such as the days supply and quantity of medication dispensed.
 */
public class MedicationDispenseDispense: FHIRElement
{	
	/** External identifier for individual item */
	public var identifier: Identifier?
	
	/** in progress | on hold | completed | entered in error | stopped */
	public var status: String?
	
	/** Trial fill, partial fill, emergency fill, etc. */
	public var type: CodeableConcept?
	
	/** Amount dispensed */
	public var quantity: Quantity?
	
	/** What medication was supplied */
	public var medication: FHIRElement? {
		get { return resolveReference("medication") }
		set {
			if newValue {
				didSetReference(newValue!, name: "medication")
			}
		}
	}
	
	/** Dispense processing time */
	public var whenPrepared: NSDate?
	
	/** Handover time */
	public var whenHandedOver: NSDate?
	
	/** Where the medication was sent */
	public var destination: FHIRElement? {
		get { return resolveReference("destination") }
		set {
			if newValue {
				didSetReference(newValue!, name: "destination")
			}
		}
	}
	
	/** Who collected the medication */
	public var receiver: [FHIRElement]? {
		get { return resolveReferences("receiver") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "receiver")
			}
		}
	}
	
	/** Medicine administration instructions to the patient/carer */
	public var dosage: [MedicationDispenseDispenseDosage]?
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
			if let val = js["receiver"] as? [NSDictionary] {
				self.receiver = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["dosage"] as? [NSDictionary] {
				self.dosage = MedicationDispenseDispenseDosage.from(val) as? [MedicationDispenseDispenseDosage]
			}
		}
	}
}


/**
 *  Medicine administration instructions to the patient/carer.
 *
 *  Indicates how the medication is to be used by the patient.
 */
public class MedicationDispenseDispenseDosage: FHIRElement
{	
	/** E.g. "Take with food" */
	public var additionalInstructions: CodeableConcept?
	
	/** When medication should be administered */
	public var timingDateTime: NSDate?
	
	/** When medication should be administered */
	public var timingPeriod: Period?
	
	/** When medication should be administered */
	public var timingSchedule: Schedule?
	
	/** Take "as needed" f(or x) */
	public var asNeededBoolean: Bool?
	
	/** Take "as needed" f(or x) */
	public var asNeededCodeableConcept: CodeableConcept?
	
	/** Body site to administer to */
	public var site: CodeableConcept?
	
	/** How drug should enter body */
	public var route: CodeableConcept?
	
	/** Technique for administering medication */
	public var method: CodeableConcept?
	
	/** Amount of medication per dose */
	public var quantity: Quantity?
	
	/** Amount of medication per unit of time */
	public var rate: Ratio?
	
	/** Upper limit on medication per unit of time */
	public var maxDosePerPeriod: Ratio?
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Deals with substitution of one medicine for another.
 *
 *  Indicates whether or not substitution was made as part of the dispense.  In some cases substitution will be
 *  expected but doesn't happen, in other cases substitution is not expected but does happen.  This block explains
 *  what substitition did or did not happen and why.
 */
public class MedicationDispenseSubstitution: FHIRElement
{	
	/** Type of substitiution */
	public var type: CodeableConcept?
	
	/** Why was substitution made */
	public var reason: [CodeableConcept]?
	
	/** Who is responsible for the substitution */
	public var responsibleParty: [FHIRElement]? {
		get { return resolveReferences("responsibleParty") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "responsibleParty")
			}
		}
	}
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["reason"] as? [NSDictionary] {
				self.reason = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["responsibleParty"] as? [NSDictionary] {
				self.responsibleParty = ResourceReference.from(val) as? [ResourceReference]
			}
		}
	}
}

