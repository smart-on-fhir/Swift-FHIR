//
//  MedicationDispense.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (medicationdispense.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Dispensing a medication to a named patient.
 *
 *  Dispensing a medication to a named patient.  This includes a description of the supply provided and the instructions
 *  for administering the medication.
 */
public class MedicationDispense: FHIRResource
{
	override public class var resourceName: String {
		get { return "MedicationDispense" }
	}
	
	/// Medication order that authorizes the dispense
	public var authorizingPrescription: [Reference]?
	
	/// Details for individual dispensed medicationdetails
	public var dispense: [MedicationDispenseDispense]?
	
	/// Practitioner responsible for dispensing medication
	public var dispenser: Reference?
	
	/// External identifier
	public var identifier: Identifier?
	
	/// Who the dispense is for
	public var patient: Reference?
	
	/// in progress | on hold | completed | entered in error | stopped
	public var status: String?
	
	/// Deals with substitution of one medicine for another
	public var substitution: MedicationDispenseSubstitution?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authorizingPrescription"] as? [JSONDictionary] {
				self.authorizingPrescription = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["dispense"] as? [JSONDictionary] {
				self.dispense = MedicationDispenseDispense.from(val, owner: self) as? [MedicationDispenseDispense]
			}
			if let val = js["dispenser"] as? JSONDictionary {
				self.dispenser = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["substitution"] as? JSONDictionary {
				self.substitution = MedicationDispenseSubstitution(json: val, owner: self)
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
	override public class var resourceName: String {
		get { return "MedicationDispenseDispense" }
	}
	
	/// Where the medication was sent
	public var destination: Reference?
	
	/// Medicine administration instructions to the patient/carer
	public var dosage: [MedicationDispenseDispenseDosage]?
	
	/// External identifier for individual item
	public var identifier: Identifier?
	
	/// What medication was supplied
	public var medication: Reference?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Who collected the medication
	public var receiver: [Reference]?
	
	/// in progress | on hold | completed | entered in error | stopped
	public var status: String?
	
	/// Trial fill, partial fill, emergency fill, etc.
	public var type: CodeableConcept?
	
	/// Handover time
	public var whenHandedOver: DateTime?
	
	/// Dispense processing time
	public var whenPrepared: DateTime?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["destination"] as? JSONDictionary {
				self.destination = Reference(json: val, owner: self)
			}
			if let val = js["dosage"] as? [JSONDictionary] {
				self.dosage = MedicationDispenseDispenseDosage.from(val, owner: self) as? [MedicationDispenseDispenseDosage]
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["medication"] as? JSONDictionary {
				self.medication = Reference(json: val, owner: self)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["receiver"] as? [JSONDictionary] {
				self.receiver = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["whenHandedOver"] as? String {
				self.whenHandedOver = DateTime(string: val)
			}
			if let val = js["whenPrepared"] as? String {
				self.whenPrepared = DateTime(string: val)
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
	override public class var resourceName: String {
		get { return "MedicationDispenseDispenseDosage" }
	}
	
	/// E.g. "Take with food"
	public var additionalInstructions: CodeableConcept?
	
	/// Take "as needed" f(or x)
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" f(or x)
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Upper limit on medication per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique for administering medication
	public var method: CodeableConcept?
	
	/// Amount of medication per dose
	public var quantity: Quantity?
	
	/// Amount of medication per unit of time
	public var rate: Ratio?
	
	/// How drug should enter body
	public var route: CodeableConcept?
	
	/// When medication should be administered
	public var scheduleDateTime: DateTime?
	
	/// When medication should be administered
	public var schedulePeriod: Period?
	
	/// When medication should be administered
	public var scheduleTiming: Timing?
	
	/// Body site to administer to
	public var site: CodeableConcept?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additionalInstructions"] as? JSONDictionary {
				self.additionalInstructions = CodeableConcept(json: val, owner: self)
			}
			if let val = js["asNeededBoolean"] as? Bool {
				self.asNeededBoolean = val
			}
			if let val = js["asNeededCodeableConcept"] as? JSONDictionary {
				self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["maxDosePerPeriod"] as? JSONDictionary {
				self.maxDosePerPeriod = Ratio(json: val, owner: self)
			}
			if let val = js["method"] as? JSONDictionary {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["rate"] as? JSONDictionary {
				self.rate = Ratio(json: val, owner: self)
			}
			if let val = js["route"] as? JSONDictionary {
				self.route = CodeableConcept(json: val, owner: self)
			}
			if let val = js["scheduleDateTime"] as? String {
				self.scheduleDateTime = DateTime(string: val)
			}
			if let val = js["schedulePeriod"] as? JSONDictionary {
				self.schedulePeriod = Period(json: val, owner: self)
			}
			if let val = js["scheduleTiming"] as? JSONDictionary {
				self.scheduleTiming = Timing(json: val, owner: self)
			}
			if let val = js["site"] as? JSONDictionary {
				self.site = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Deals with substitution of one medicine for another.
 *
 *  Indicates whether or not substitution was made as part of the dispense.  In some cases substitution will be expected
 *  but doesn't happen, in other cases substitution is not expected but does happen.  This block explains what
 *  substitition did or did not happen and why.
 */
public class MedicationDispenseSubstitution: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationDispenseSubstitution" }
	}
	
	/// Why was substitution made
	public var reason: [CodeableConcept]?
	
	/// Who is responsible for the substitution
	public var responsibleParty: [Reference]?
	
	/// Type of substitiution
	public var type: CodeableConcept?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["reason"] as? [JSONDictionary] {
				self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["responsibleParty"] as? [JSONDictionary] {
				self.responsibleParty = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

