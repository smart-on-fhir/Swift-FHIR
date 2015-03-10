//
//  MedicationAdministration.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/MedicationAdministration) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Administration of medication to a patient.
 *
 *  Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as
 *  swallowing a tablet or it may be a long running infusion.Related resources tie this event to the authorizing
 *  prescription, and the specific encounter between patient and health care practitioner.
 */
public class MedicationAdministration: DomainResource
{
	override public class var resourceName: String {
		get { return "MedicationAdministration" }
	}
	
	/// Device used to administer
	public var device: [Reference]?
	
	/// Details of how medication was taken
	public var dosage: MedicationAdministrationDosage?
	
	/// Start and end time of administration
	public var effectiveTimeDateTime: DateTime?
	
	/// Start and end time of administration
	public var effectiveTimePeriod: Period?
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// What was administered?
	public var medication: Reference?
	
	/// Information about the administration
	public var note: String?
	
	/// Who received medication?
	public var patient: Reference?
	
	/// Who administered substance?
	public var practitioner: Reference?
	
	/// Order administration performed against
	public var prescription: Reference?
	
	/// Reason administration performed
	public var reasonGiven: [CodeableConcept]?
	
	/// Reason administration not performed
	public var reasonNotGiven: [CodeableConcept]?
	
	/// in-progress | on-hold | completed | entered-in-error | stopped
	public var status: String?
	
	/// True if medication not administered
	public var wasNotGiven: Bool?
	
	public convenience init(effectiveTimeDateTime: DateTime?, effectiveTimePeriod: Period?, patient: Reference?, status: String?) {
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
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["device"] as? [JSONDictionary] {
				self.device = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["dosage"] as? JSONDictionary {
				self.dosage = MedicationAdministrationDosage(json: val, owner: self)
			}
			if let val = js["effectiveTimeDateTime"] as? String {
				self.effectiveTimeDateTime = DateTime(string: val)
			}
			if let val = js["effectiveTimePeriod"] as? JSONDictionary {
				self.effectiveTimePeriod = Period(json: val, owner: self)
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["medication"] as? JSONDictionary {
				self.medication = Reference(json: val, owner: self)
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["practitioner"] as? JSONDictionary {
				self.practitioner = Reference(json: val, owner: self)
			}
			if let val = js["prescription"] as? JSONDictionary {
				self.prescription = Reference(json: val, owner: self)
			}
			if let val = js["reasonGiven"] as? [JSONDictionary] {
				self.reasonGiven = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["reasonNotGiven"] as? [JSONDictionary] {
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let device = self.device {
			json["device"] = Reference.asJSONArray(device)
		}
		if let dosage = self.dosage {
			json["dosage"] = dosage.asJSON()
		}
		if let effectiveTimeDateTime = self.effectiveTimeDateTime {
			json["effectiveTimeDateTime"] = effectiveTimeDateTime.asJSON()
		}
		if let effectiveTimePeriod = self.effectiveTimePeriod {
			json["effectiveTimePeriod"] = effectiveTimePeriod.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let medication = self.medication {
			json["medication"] = medication.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let practitioner = self.practitioner {
			json["practitioner"] = practitioner.asJSON()
		}
		if let prescription = self.prescription {
			json["prescription"] = prescription.asJSON()
		}
		if let reasonGiven = self.reasonGiven {
			json["reasonGiven"] = CodeableConcept.asJSONArray(reasonGiven)
		}
		if let reasonNotGiven = self.reasonNotGiven {
			json["reasonNotGiven"] = CodeableConcept.asJSONArray(reasonNotGiven)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let wasNotGiven = self.wasNotGiven {
			json["wasNotGiven"] = wasNotGiven.asJSON()
		}
		
		return json
	}
}


/**
 *  Details of how medication was taken.
 *
 *  Indicates how the medication is/was used by the patient.
 */
public class MedicationAdministrationDosage: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationAdministrationDosage" }
	}
	
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
	
	/// Dosage Instructions
	public var text: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
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
			if let val = js["site"] as? JSONDictionary {
				self.site = CodeableConcept(json: val, owner: self)
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let rate = self.rate {
			json["rate"] = rate.asJSON()
		}
		if let route = self.route {
			json["route"] = route.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

