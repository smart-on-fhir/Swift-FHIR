//
//  MedicationPrescription.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (medicationprescription.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Prescription of medication to for patient.
 *
 *  Scope and Usage This resource covers all orders for medications for a patient. This includes in-patient medication
 *  orders as well as community orders (whether filled by the prescriber or by a pharmacy). It also includes orders for
 *  over-the-counter medications (e.g. Aspirin) and dietary supplements. It may be used to support the order of
 *  medication-related devices. It is not intended for use in prescribing particular diets, or for ordering non-
 *  medication-related items (eye-glasses, supplies, etc.)
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
	public var encounter: FHIRReference<Encounter>?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Medication to be taken
	public var medication: FHIRReference<Medication>?
	
	/// Who prescription is for
	public var patient: FHIRReference<Patient>?
	
	/// Who ordered the medication(s)
	public var prescriber: FHIRReference<Practitioner>?
	
	/// Reason or indication for writing the prescription
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason or indication for writing the prescription
	public var reasonResource: FHIRReference<Condition>?
	
	/// active | on hold | completed | entered in error | stopped | superceded
	public var status: String?
	
	/// Any restrictions on medication substitution?
	public var substitution: MedicationPrescriptionSubstitution?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["dateWritten"] as? String {
				self.dateWritten = NSDate(json: val)
			}
			if let val = js["dispense"] as? NSDictionary {
				self.dispense = MedicationPrescriptionDispense(json: val)
			}
			if let val = js["dosageInstruction"] as? [NSDictionary] {
				self.dosageInstruction = MedicationPrescriptionDosageInstruction.from(val) as? [MedicationPrescriptionDosageInstruction]
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
			if let val = js["prescriber"] as? NSDictionary {
				self.prescriber = FHIRReference(json: val, owner: self)
			}
			if let val = js["reasonCodeableConcept"] as? NSDictionary {
				self.reasonCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["reasonResource"] as? NSDictionary {
				self.reasonResource = FHIRReference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["substitution"] as? NSDictionary {
				self.substitution = MedicationPrescriptionSubstitution(json: val)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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
	
	/// Body site to administer to
	public var site: CodeableConcept?
	
	/// Dosage instructions expressed as text
	public var text: String?
	
	/// When medication should be administered
	public var timingDateTime: NSDate?
	
	/// When medication should be administered
	public var timingPeriod: Period?
	
	/// When medication should be administered
	public var timingSchedule: Schedule?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additionalInstructions"] as? NSDictionary {
				self.additionalInstructions = CodeableConcept(json: val)
			}
			if let val = js["asNeededBoolean"] as? Int {
				self.asNeededBoolean = (1 == val)
			}
			if let val = js["asNeededCodeableConcept"] as? NSDictionary {
				self.asNeededCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["doseQuantity"] as? NSDictionary {
				self.doseQuantity = Quantity(json: val)
			}
			if let val = js["maxDosePerPeriod"] as? NSDictionary {
				self.maxDosePerPeriod = Ratio(json: val)
			}
			if let val = js["method"] as? NSDictionary {
				self.method = CodeableConcept(json: val)
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
			if let val = js["text"] as? String {
				self.text = val
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
	/// Days supply per dispense
	public var expectedSupplyDuration: Duration?
	
	/// Product to be supplied
	public var medication: FHIRReference<Medication>?
	
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
				self.expectedSupplyDuration = Duration(json: val)
			}
			if let val = js["medication"] as? NSDictionary {
				self.medication = FHIRReference(json: val, owner: self)
			}
			if let val = js["numberOfRepeatsAllowed"] as? Int {
				self.numberOfRepeatsAllowed = val
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
			}
			if let val = js["validityPeriod"] as? NSDictionary {
				self.validityPeriod = Period(json: val)
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
				self.reason = CodeableConcept(json: val)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
		}
	}
}

