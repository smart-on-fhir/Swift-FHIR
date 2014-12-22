//
//  MedicationPrescription.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (medicationprescription.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Prescription of medication to for patient.
 *
 *  An order for both supply of the medication and the instructions for administration of the medicine to a patient.
 */
public class MedicationPrescription: FHIRResource
{
	override public class var resourceName: String {
		get { return "MedicationPrescription" }
	}
	
	/// When prescription was authorized
	public var dateWritten: NSDate?
	
	/// Medication supply authorization
	public var dispense: MedicationPrescriptionDispense?
	
	/// How medication should be taken
	public var dosageInstruction: [MedicationPrescriptionDosageInstruction]?
	
	/// Created during encounter / admission / stay
	public var encounter: Reference?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Medication to be taken
	public var medication: Reference?
	
	/// Who prescription is for
	public var patient: Reference?
	
	/// Who ordered the medication(s)
	public var prescriber: Reference?
	
	/// Reason or indication for writing the prescription
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason or indication for writing the prescription
	public var reasonReference: Reference?
	
	/// active | on hold | completed | entered in error | stopped | superceded
	public var status: String?
	
	/// Any restrictions on medication substitution?
	public var substitution: MedicationPrescriptionSubstitution?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["dateWritten"] as? String {
				self.dateWritten = NSDate(json: val)
			}
			if let val = js["dispense"] as? NSDictionary {
				self.dispense = MedicationPrescriptionDispense(json: val, owner: self)
			}
			if let val = js["dosageInstruction"] as? [NSDictionary] {
				self.dosageInstruction = MedicationPrescriptionDosageInstruction.from(val, owner: self) as? [MedicationPrescriptionDosageInstruction]
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
			if let val = js["prescriber"] as? NSDictionary {
				self.prescriber = Reference(json: val, owner: self)
			}
			if let val = js["reasonCodeableConcept"] as? NSDictionary {
				self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reasonReference"] as? NSDictionary {
				self.reasonReference = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["substitution"] as? NSDictionary {
				self.substitution = MedicationPrescriptionSubstitution(json: val, owner: self)
			}
		}
	}
}


/**
 *  Medication supply authorization.
 *
 *  Deals with details of the dispense part of the order.
 */
public class MedicationPrescriptionDispense: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPrescriptionDispense" }
	}
	
	/// Days supply per dispense
	public var expectedSupplyDuration: Duration?
	
	/// Product to be supplied
	public var medication: Reference?
	
	/// # of refills authorized
	public var numberOfRepeatsAllowed: Int?
	
	/// Amount of medication to supply per dispense
	public var quantity: Quantity?
	
	/// Time period supply is authorized for
	public var validityPeriod: Period?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["expectedSupplyDuration"] as? NSDictionary {
				self.expectedSupplyDuration = Duration(json: val, owner: self)
			}
			if let val = js["medication"] as? NSDictionary {
				self.medication = Reference(json: val, owner: self)
			}
			if let val = js["numberOfRepeatsAllowed"] as? Int {
				self.numberOfRepeatsAllowed = val
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["validityPeriod"] as? NSDictionary {
				self.validityPeriod = Period(json: val, owner: self)
			}
		}
	}
}


/**
 *  How medication should be taken.
 *
 *  Indicates how the medication is to be used by the patient.
 */
public class MedicationPrescriptionDosageInstruction: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPrescriptionDosageInstruction" }
	}
	
	/// Supplemental instructions - e.g. "with meals"
	public var additionalInstructions: CodeableConcept?
	
	/// Take "as needed" f(or x)
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" f(or x)
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Amount of medication per dose
	public var doseQuantity: Quantity?
	
	/// Upper limit on medication per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique for administering medication
	public var method: CodeableConcept?
	
	/// Amount of medication per unit of time
	public var rate: Ratio?
	
	/// How drug should enter body
	public var route: CodeableConcept?
	
	/// When medication should be administered
	public var scheduledDateTime: NSDate?
	
	/// When medication should be administered
	public var scheduledPeriod: Period?
	
	/// When medication should be administered
	public var scheduledTiming: Timing?
	
	/// Body site to administer to
	public var site: CodeableConcept?
	
	/// Dosage instructions expressed as text
	public var text: String?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additionalInstructions"] as? NSDictionary {
				self.additionalInstructions = CodeableConcept(json: val, owner: self)
			}
			if let val = js["asNeededBoolean"] as? Bool {
				self.asNeededBoolean = val
			}
			if let val = js["asNeededCodeableConcept"] as? NSDictionary {
				self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["doseQuantity"] as? NSDictionary {
				self.doseQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["maxDosePerPeriod"] as? NSDictionary {
				self.maxDosePerPeriod = Ratio(json: val, owner: self)
			}
			if let val = js["method"] as? NSDictionary {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["rate"] as? NSDictionary {
				self.rate = Ratio(json: val, owner: self)
			}
			if let val = js["route"] as? NSDictionary {
				self.route = CodeableConcept(json: val, owner: self)
			}
			if let val = js["scheduledDateTime"] as? String {
				self.scheduledDateTime = NSDate(json: val)
			}
			if let val = js["scheduledPeriod"] as? NSDictionary {
				self.scheduledPeriod = Period(json: val, owner: self)
			}
			if let val = js["scheduledTiming"] as? NSDictionary {
				self.scheduledTiming = Timing(json: val, owner: self)
			}
			if let val = js["site"] as? NSDictionary {
				self.site = CodeableConcept(json: val, owner: self)
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
	}
}


/**
 *  Any restrictions on medication substitution?.
 *
 *  Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen,
 *  in other cases substitution must not happen, and in others it does not matter. This block explains the prescriber's
 *  intent. If nothing is specified substitution may be done.
 */
public class MedicationPrescriptionSubstitution: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPrescriptionSubstitution" }
	}
	
	/// Why should substitution (not) be made
	public var reason: CodeableConcept?
	
	/// generic | formulary +
	public var type: CodeableConcept?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["reason"] as? NSDictionary {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

