//
//  MedicationDispense.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/MedicationDispense) on 2015-07-28.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["authorizingPrescription"] {
				presentKeys.insert("authorizingPrescription")
				if let val = exist as? [FHIRJSON] {
					self.authorizingPrescription = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "authorizingPrescription", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["daysSupply"] {
				presentKeys.insert("daysSupply")
				if let val = exist as? FHIRJSON {
					self.daysSupply = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "daysSupply", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? FHIRJSON {
					self.destination = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dispenser"] {
				presentKeys.insert("dispenser")
				if let val = exist as? FHIRJSON {
					self.dispenser = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dispenser", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dosageInstruction"] {
				presentKeys.insert("dosageInstruction")
				if let val = exist as? [FHIRJSON] {
					self.dosageInstruction = MedicationDispenseDosageInstruction.from(val, owner: self) as? [MedicationDispenseDosageInstruction]
				}
				else {
					errors.append(FHIRJSONError(key: "dosageInstruction", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["medication"] {
				presentKeys.insert("medication")
				if let val = exist as? FHIRJSON {
					self.medication = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medication", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? String {
					self.note = val
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["receiver"] {
				presentKeys.insert("receiver")
				if let val = exist as? [FHIRJSON] {
					self.receiver = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "receiver", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["substitution"] {
				presentKeys.insert("substitution")
				if let val = exist as? FHIRJSON {
					self.substitution = MedicationDispenseSubstitution(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substitution", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["whenHandedOver"] {
				presentKeys.insert("whenHandedOver")
				if let val = exist as? String {
					self.whenHandedOver = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "whenHandedOver", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["whenPrepared"] {
				presentKeys.insert("whenPrepared")
				if let val = exist as? String {
					self.whenPrepared = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "whenPrepared", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["additionalInstructions"] {
				presentKeys.insert("additionalInstructions")
				if let val = exist as? FHIRJSON {
					self.additionalInstructions = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "additionalInstructions", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["asNeededBoolean"] {
				presentKeys.insert("asNeededBoolean")
				if let val = exist as? Bool {
					self.asNeededBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "asNeededBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["asNeededCodeableConcept"] {
				presentKeys.insert("asNeededCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "asNeededCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["doseQuantity"] {
				presentKeys.insert("doseQuantity")
				if let val = exist as? FHIRJSON {
					self.doseQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "doseQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["doseRange"] {
				presentKeys.insert("doseRange")
				if let val = exist as? FHIRJSON {
					self.doseRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "doseRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxDosePerPeriod"] {
				presentKeys.insert("maxDosePerPeriod")
				if let val = exist as? FHIRJSON {
					self.maxDosePerPeriod = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "maxDosePerPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rate"] {
				presentKeys.insert("rate")
				if let val = exist as? FHIRJSON {
					self.rate = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rate", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["route"] {
				presentKeys.insert("route")
				if let val = exist as? FHIRJSON {
					self.route = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "route", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["scheduleDateTime"] {
				presentKeys.insert("scheduleDateTime")
				if let val = exist as? String {
					self.scheduleDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduleDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["schedulePeriod"] {
				presentKeys.insert("schedulePeriod")
				if let val = exist as? FHIRJSON {
					self.schedulePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "schedulePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["scheduleTiming"] {
				presentKeys.insert("scheduleTiming")
				if let val = exist as? FHIRJSON {
					self.scheduleTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduleTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["site"] {
				presentKeys.insert("site")
				if let val = exist as? FHIRJSON {
					self.site = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "site", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["responsibleParty"] {
				presentKeys.insert("responsibleParty")
				if let val = exist as? [FHIRJSON] {
					self.responsibleParty = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "responsibleParty", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
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

