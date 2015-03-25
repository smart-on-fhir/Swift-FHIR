//
//  MedicationDispense.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/MedicationDispense) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Dispensing a medication to a named patient.
 *
 *  Dispensing a medication to a named patient.  This includes a description of the supply provided and the instructions
 *  for administering the medication.
 */
public class MedicationDispense: DomainResource
{
	override public class var resourceName: String {
		get { return "MedicationDispense" }
	}
	
	/// Medication order that authorizes the dispense
	public var authorizingPrescription: [Reference]?
	
	/// Days Supply
	public var daysSupply: Quantity?
	
	/// Where the medication was sent
	public var destination: Reference?
	
	/// Practitioner responsible for dispensing medication
	public var dispenser: Reference?
	
	/// Medicine administration instructions to the patient/carer
	public var dosageInstruction: [MedicationDispenseDosageInstruction]?
	
	/// External identifier
	public var identifier: Identifier?
	
	/// What medication was supplied
	public var medication: Reference?
	
	/// Information about the dispense
	public var note: String?
	
	/// Who the dispense is for
	public var patient: Reference?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Who collected the medication
	public var receiver: [Reference]?
	
	/// in-progress | on-hold | completed | entered-in-error | stopped
	public var status: String?
	
	/// Deals with substitution of one medicine for another
	public var substitution: MedicationDispenseSubstitution?
	
	/// Trial fill, partial fill, emergency fill, etc.
	public var type: CodeableConcept?
	
	/// Handover time
	public var whenHandedOver: DateTime?
	
	/// Dispense processing time
	public var whenPrepared: DateTime?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authorizingPrescription"] as? [FHIRJSON] {
				self.authorizingPrescription = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["daysSupply"] as? FHIRJSON {
				self.daysSupply = Quantity(json: val, owner: self)
			}
			if let val = js["destination"] as? FHIRJSON {
				self.destination = Reference(json: val, owner: self)
			}
			if let val = js["dispenser"] as? FHIRJSON {
				self.dispenser = Reference(json: val, owner: self)
			}
			if let val = js["dosageInstruction"] as? [FHIRJSON] {
				self.dosageInstruction = MedicationDispenseDosageInstruction.from(val, owner: self) as? [MedicationDispenseDosageInstruction]
			}
			if let val = js["identifier"] as? FHIRJSON {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["medication"] as? FHIRJSON {
				self.medication = Reference(json: val, owner: self)
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["quantity"] as? FHIRJSON {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["receiver"] as? [FHIRJSON] {
				self.receiver = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["substitution"] as? FHIRJSON {
				self.substitution = MedicationDispenseSubstitution(json: val, owner: self)
			}
			if let val = js["type"] as? FHIRJSON {
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
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authorizingPrescription = self.authorizingPrescription {
			json["authorizingPrescription"] = Reference.asJSONArray(authorizingPrescription)
		}
		if let daysSupply = self.daysSupply {
			json["daysSupply"] = daysSupply.asJSON()
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON()
		}
		if let dispenser = self.dispenser {
			json["dispenser"] = dispenser.asJSON()
		}
		if let dosageInstruction = self.dosageInstruction {
			json["dosageInstruction"] = MedicationDispenseDosageInstruction.asJSONArray(dosageInstruction)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
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
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let receiver = self.receiver {
			json["receiver"] = Reference.asJSONArray(receiver)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let substitution = self.substitution {
			json["substitution"] = substitution.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let whenHandedOver = self.whenHandedOver {
			json["whenHandedOver"] = whenHandedOver.asJSON()
		}
		if let whenPrepared = self.whenPrepared {
			json["whenPrepared"] = whenPrepared.asJSON()
		}
		
		return json
	}
}


/**
 *  Medicine administration instructions to the patient/carer.
 *
 *  Indicates how the medication is to be used by the patient.
 */
public class MedicationDispenseDosageInstruction: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationDispenseDosageInstruction" }
	}
	
	/// E.g. "Take with food"
	public var additionalInstructions: CodeableConcept?
	
	/// Take "as needed" f(or x)
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" f(or x)
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Amount of medication per dose
	public var doseQuantity: Quantity?
	
	/// Amount of medication per dose
	public var doseRange: Range?
	
	/// Upper limit on medication per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique for administering medication
	public var method: CodeableConcept?
	
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additionalInstructions"] as? FHIRJSON {
				self.additionalInstructions = CodeableConcept(json: val, owner: self)
			}
			if let val = js["asNeededBoolean"] as? Bool {
				self.asNeededBoolean = val
			}
			if let val = js["asNeededCodeableConcept"] as? FHIRJSON {
				self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["doseQuantity"] as? FHIRJSON {
				self.doseQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["doseRange"] as? FHIRJSON {
				self.doseRange = Range(json: val, owner: self)
			}
			if let val = js["maxDosePerPeriod"] as? FHIRJSON {
				self.maxDosePerPeriod = Ratio(json: val, owner: self)
			}
			if let val = js["method"] as? FHIRJSON {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["rate"] as? FHIRJSON {
				self.rate = Ratio(json: val, owner: self)
			}
			if let val = js["route"] as? FHIRJSON {
				self.route = CodeableConcept(json: val, owner: self)
			}
			if let val = js["scheduleDateTime"] as? String {
				self.scheduleDateTime = DateTime(string: val)
			}
			if let val = js["schedulePeriod"] as? FHIRJSON {
				self.schedulePeriod = Period(json: val, owner: self)
			}
			if let val = js["scheduleTiming"] as? FHIRJSON {
				self.scheduleTiming = Timing(json: val, owner: self)
			}
			if let val = js["site"] as? FHIRJSON {
				self.site = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let additionalInstructions = self.additionalInstructions {
			json["additionalInstructions"] = additionalInstructions.asJSON()
		}
		if let asNeededBoolean = self.asNeededBoolean {
			json["asNeededBoolean"] = asNeededBoolean.asJSON()
		}
		if let asNeededCodeableConcept = self.asNeededCodeableConcept {
			json["asNeededCodeableConcept"] = asNeededCodeableConcept.asJSON()
		}
		if let doseQuantity = self.doseQuantity {
			json["doseQuantity"] = doseQuantity.asJSON()
		}
		if let doseRange = self.doseRange {
			json["doseRange"] = doseRange.asJSON()
		}
		if let maxDosePerPeriod = self.maxDosePerPeriod {
			json["maxDosePerPeriod"] = maxDosePerPeriod.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let rate = self.rate {
			json["rate"] = rate.asJSON()
		}
		if let route = self.route {
			json["route"] = route.asJSON()
		}
		if let scheduleDateTime = self.scheduleDateTime {
			json["scheduleDateTime"] = scheduleDateTime.asJSON()
		}
		if let schedulePeriod = self.schedulePeriod {
			json["schedulePeriod"] = schedulePeriod.asJSON()
		}
		if let scheduleTiming = self.scheduleTiming {
			json["scheduleTiming"] = scheduleTiming.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		
		return json
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["reason"] as? [FHIRJSON] {
				self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["responsibleParty"] as? [FHIRJSON] {
				self.responsibleParty = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let reason = self.reason {
			json["reason"] = CodeableConcept.asJSONArray(reason)
		}
		if let responsibleParty = self.responsibleParty {
			json["responsibleParty"] = Reference.asJSONArray(responsibleParty)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

