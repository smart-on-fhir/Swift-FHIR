//
//  MedicationDispense.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/MedicationDispense) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Dispensing a medication to a named patient.
 *
 *  Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a
 *  description of the medication product (supply) provided and the instructions for administering the medication.  The
 *  medication dispense is the result of a pharmacy system responding to a medication order.
 */
public class MedicationDispense: DomainResource {
	override public class var resourceName: String {
		get { return "MedicationDispense" }
	}
	
	/// Medication order that authorizes the dispense.
	public var authorizingPrescription: [Reference]?
	
	/// Amount of medication expressed as a timing amount.
	public var daysSupply: Quantity?
	
	/// Where the medication was sent.
	public var destination: Reference?
	
	/// Practitioner responsible for dispensing medication.
	public var dispenser: Reference?
	
	/// Organization responsible for the dispense of the medication.
	public var dispensingOrganization: Reference?
	
	/// Medicine administration instructions to the patient/caregiver.
	public var dosageInstruction: [MedicationDispenseDosageInstruction]?
	
	/// A list of events of interest in the lifecycle.
	public var eventHistory: [MedicationDispenseEventHistory]?
	
	/// External identifier.
	public var identifier: Identifier?
	
	/// What medication was supplied.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// What medication was supplied.
	public var medicationReference: Reference?
	
	/// Information about the dispense.
	public var note: [Annotation]?
	
	/// Who the dispense is for.
	public var patient: Reference?
	
	/// Amount dispensed.
	public var quantity: Quantity?
	
	/// Who collected the medication.
	public var receiver: [Reference]?
	
	/// in-progress | on-hold | completed | entered-in-error | stopped.
	public var status: String?
	
	/// Deals with substitution of one medicine for another.
	public var substitution: MedicationDispenseSubstitution?
	
	/// Trial fill, partial fill, emergency fill, etc..
	public var type: CodeableConcept?
	
	/// When product was given out.
	public var whenHandedOver: DateTime?
	
	/// When product was packaged and reviewed.
	public var whenPrepared: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(medicationCodeableConcept: CodeableConcept, medicationReference: Reference) {
		self.init(json: nil)
		self.medicationCodeableConcept = medicationCodeableConcept
		self.medicationReference = medicationReference
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["dispensingOrganization"] {
				presentKeys.insert("dispensingOrganization")
				if let val = exist as? FHIRJSON {
					self.dispensingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dispensingOrganization", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["eventHistory"] {
				presentKeys.insert("eventHistory")
				if let val = exist as? [FHIRJSON] {
					self.eventHistory = MedicationDispenseEventHistory.from(val, owner: self) as? [MedicationDispenseEventHistory]
				}
				else {
					errors.append(FHIRJSONError(key: "eventHistory", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["medicationCodeableConcept"] {
				presentKeys.insert("medicationCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.medicationCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medicationCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["medicationReference"] {
				presentKeys.insert("medicationReference")
				if let val = exist as? FHIRJSON {
					self.medicationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medicationReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			
			// check if nonoptional expanded properties are present
			if nil == self.medicationCodeableConcept && nil == self.medicationReference {
				errors.append(FHIRJSONError(key: "medication*"))
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
		if let dispensingOrganization = self.dispensingOrganization {
			json["dispensingOrganization"] = dispensingOrganization.asJSON()
		}
		if let dosageInstruction = self.dosageInstruction {
			json["dosageInstruction"] = MedicationDispenseDosageInstruction.asJSONArray(dosageInstruction)
		}
		if let eventHistory = self.eventHistory {
			json["eventHistory"] = MedicationDispenseEventHistory.asJSONArray(eventHistory)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let medicationCodeableConcept = self.medicationCodeableConcept {
			json["medicationCodeableConcept"] = medicationCodeableConcept.asJSON()
		}
		if let medicationReference = self.medicationReference {
			json["medicationReference"] = medicationReference.asJSON()
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
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
 *  Medicine administration instructions to the patient/caregiver.
 *
 *  Indicates how the medication is to be used by the patient.  The pharmacist reviews the medication order prior to
 *  dispense and updates the dosageInstruction based on the actual product being dispensed.
 */
public class MedicationDispenseDosageInstruction: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationDispenseDosageInstruction" }
	}
	
	/// E.g. "Take with food".
	public var additionalInstructions: [CodeableConcept]?
	
	/// Take "as needed" f(or x).
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" f(or x).
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Amount of medication per dose.
	public var doseQuantity: Quantity?
	
	/// Amount of medication per dose.
	public var doseRange: Range?
	
	/// Upper limit on medication per unit of time.
	public var maxDosePerPeriod: Ratio?
	
	/// Technique for administering medication.
	public var method: CodeableConcept?
	
	/// Amount of medication per unit of time.
	public var rateQuantity: Quantity?
	
	/// Amount of medication per unit of time.
	public var rateRange: Range?
	
	/// Amount of medication per unit of time.
	public var rateRatio: Ratio?
	
	/// How drug should enter body.
	public var route: CodeableConcept?
	
	/// Body site to administer to.
	public var siteCodeableConcept: CodeableConcept?
	
	/// Body site to administer to.
	public var siteReference: Reference?
	
	/// Free text dosage instructions e.g. SIG.
	public var text: String?
	
	/// When medication should be administered.
	public var timing: Timing?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["additionalInstructions"] {
				presentKeys.insert("additionalInstructions")
				if let val = exist as? [FHIRJSON] {
					self.additionalInstructions = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "additionalInstructions", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["rateQuantity"] {
				presentKeys.insert("rateQuantity")
				if let val = exist as? FHIRJSON {
					self.rateQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rateQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rateRange"] {
				presentKeys.insert("rateRange")
				if let val = exist as? FHIRJSON {
					self.rateRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rateRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rateRatio"] {
				presentKeys.insert("rateRatio")
				if let val = exist as? FHIRJSON {
					self.rateRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rateRatio", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["siteCodeableConcept"] {
				presentKeys.insert("siteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.siteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "siteCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["siteReference"] {
				presentKeys.insert("siteReference")
				if let val = exist as? FHIRJSON {
					self.siteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "siteReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timing"] {
				presentKeys.insert("timing")
				if let val = exist as? FHIRJSON {
					self.timing = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timing", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let additionalInstructions = self.additionalInstructions {
			json["additionalInstructions"] = CodeableConcept.asJSONArray(additionalInstructions)
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
		if let rateQuantity = self.rateQuantity {
			json["rateQuantity"] = rateQuantity.asJSON()
		}
		if let rateRange = self.rateRange {
			json["rateRange"] = rateRange.asJSON()
		}
		if let rateRatio = self.rateRatio {
			json["rateRatio"] = rateRatio.asJSON()
		}
		if let route = self.route {
			json["route"] = route.asJSON()
		}
		if let siteCodeableConcept = self.siteCodeableConcept {
			json["siteCodeableConcept"] = siteCodeableConcept.asJSON()
		}
		if let siteReference = self.siteReference {
			json["siteReference"] = siteReference.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let timing = self.timing {
			json["timing"] = timing.asJSON()
		}
		
		return json
	}
}


/**
 *  A list of events of interest in the lifecycle.
 *
 *  A summary of the events of interest that have occurred, such as when the dispense was verified.
 */
public class MedicationDispenseEventHistory: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationDispenseEventHistory" }
	}
	
	/// Action taken (e.g. verify).
	public var action: CodeableConcept?
	
	/// Who took the action.
	public var actor: Reference?
	
	/// The date at which the event happened.
	public var dateTime: DateTime?
	
	/// Reason the action was taken.
	public var reason: CodeableConcept?
	
	/// in-progress | on-hold | completed | entered-in-error | stopped.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(dateTime: DateTime, status: String) {
		self.init(json: nil)
		self.dateTime = dateTime
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? FHIRJSON {
					self.action = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? FHIRJSON {
					self.actor = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dateTime"] {
				presentKeys.insert("dateTime")
				if let val = exist as? String {
					self.dateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "dateTime"))
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.asJSON()
		}
		if let actor = self.actor {
			json["actor"] = actor.asJSON()
		}
		if let dateTime = self.dateTime {
			json["dateTime"] = dateTime.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
 *  Deals with substitution of one medicine for another.
 *
 *  Indicates whether or not substitution was made as part of the dispense.  In some cases substitution will be expected
 *  but does not happen, in other cases substitution is not expected but does happen.  This block explains what
 *  substitution did or did not happen and why.
 */
public class MedicationDispenseSubstitution: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationDispenseSubstitution" }
	}
	
	/// Why was substitution made.
	public var reason: [CodeableConcept]?
	
	/// Who is responsible for the substitution.
	public var responsibleParty: [Reference]?
	
	/// Code signifying whether a different drug was dispensed from what was prescribed.
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init(json: nil)
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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

