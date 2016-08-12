//
//  MedicationOrder.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/MedicationOrder) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Prescription of medication to for patient.
 *
 *  An order for both supply of the medication and the instructions for administration of the medication to a patient.
 *  The resource is called "MedicationOrder" rather than "MedicationPrescription" to generalize the use across inpatient
 *  and outpatient settings as well as for care plans, etc.
 */
public class MedicationOrder: DomainResource {
	override public class var resourceName: String {
		get { return "MedicationOrder" }
	}
	
	/// Type of medication usage.
	public var category: String?
	
	/// When prescription was initially authorized.
	public var dateWritten: DateTime?
	
	/// Medication supply authorization.
	public var dispenseRequest: MedicationOrderDispenseRequest?
	
	/// How medication should be taken.
	public var dosageInstruction: [MedicationOrderDosageInstruction]?
	
	/// Created during encounter/admission/stay.
	public var encounter: Reference?
	
	/// A list of events of interest in the lifecycle.
	public var eventHistory: [MedicationOrderEventHistory]?
	
	/// External identifier.
	public var identifier: [Identifier]?
	
	/// Medication to be taken.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// Medication to be taken.
	public var medicationReference: Reference?
	
	/// Information about the prescription.
	public var note: [Annotation]?
	
	/// Who prescription is for.
	public var patient: Reference?
	
	/// Who ordered the initial medication(s).
	public var prescriber: Reference?
	
	/// An order/prescription that this supersedes.
	public var priorPrescription: Reference?
	
	/// Reason or indication for writing the prescription.
	public var reasonCode: [CodeableConcept]?
	
	/// Condition that supports why the prescription is being written.
	public var reasonReference: [Reference]?
	
	/// active | on-hold | completed | entered-in-error | stopped | draft.
	public var status: String?
	
	/// Any restrictions on medication substitution.
	public var substitution: MedicationOrderSubstitution?
	
	
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
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dateWritten"] {
				presentKeys.insert("dateWritten")
				if let val = exist as? String {
					self.dateWritten = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateWritten", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dispenseRequest"] {
				presentKeys.insert("dispenseRequest")
				if let val = exist as? FHIRJSON {
					self.dispenseRequest = MedicationOrderDispenseRequest(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dispenseRequest", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dosageInstruction"] {
				presentKeys.insert("dosageInstruction")
				if let val = exist as? [FHIRJSON] {
					self.dosageInstruction = MedicationOrderDosageInstruction.from(val, owner: self) as? [MedicationOrderDosageInstruction]
				}
				else {
					errors.append(FHIRJSONError(key: "dosageInstruction", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["eventHistory"] {
				presentKeys.insert("eventHistory")
				if let val = exist as? [FHIRJSON] {
					self.eventHistory = MedicationOrderEventHistory.from(val, owner: self) as? [MedicationOrderEventHistory]
				}
				else {
					errors.append(FHIRJSONError(key: "eventHistory", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["prescriber"] {
				presentKeys.insert("prescriber")
				if let val = exist as? FHIRJSON {
					self.prescriber = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescriber", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["priorPrescription"] {
				presentKeys.insert("priorPrescription")
				if let val = exist as? FHIRJSON {
					self.priorPrescription = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priorPrescription", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonCode"] {
				presentKeys.insert("reasonCode")
				if let val = exist as? [FHIRJSON] {
					self.reasonCode = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? [FHIRJSON] {
					self.reasonReference = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
					self.substitution = MedicationOrderSubstitution(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substitution", wants: FHIRJSON.self, has: exist.dynamicType))
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
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let dateWritten = self.dateWritten {
			json["dateWritten"] = dateWritten.asJSON()
		}
		if let dispenseRequest = self.dispenseRequest {
			json["dispenseRequest"] = dispenseRequest.asJSON()
		}
		if let dosageInstruction = self.dosageInstruction {
			json["dosageInstruction"] = MedicationOrderDosageInstruction.asJSONArray(dosageInstruction)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let eventHistory = self.eventHistory {
			json["eventHistory"] = MedicationOrderEventHistory.asJSONArray(eventHistory)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
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
		if let prescriber = self.prescriber {
			json["prescriber"] = prescriber.asJSON()
		}
		if let priorPrescription = self.priorPrescription {
			json["priorPrescription"] = priorPrescription.asJSON()
		}
		if let reasonCode = self.reasonCode {
			json["reasonCode"] = CodeableConcept.asJSONArray(reasonCode)
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = Reference.asJSONArray(reasonReference)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let substitution = self.substitution {
			json["substitution"] = substitution.asJSON()
		}
		
		return json
	}
}


/**
 *  Medication supply authorization.
 *
 *  Indicates the specific details for the dispense or medication supply part of a medication order (also known as a
 *  Medication Prescription).  Note that this information is NOT always sent with the order.  There may be in some
 *  settings (e.g. hospitals) institutional or system support for completing the dispense details in the pharmacy
 *  department.
 */
public class MedicationOrderDispenseRequest: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationOrderDispenseRequest" }
	}
	
	/// Number of days supply per dispense.
	public var expectedSupplyDuration: Duration?
	
	/// Number of refills authorized.
	public var numberOfRepeatsAllowed: UInt?
	
	/// Amount of medication to supply per dispense.
	public var quantity: Quantity?
	
	/// Time period supply is authorized for.
	public var validityPeriod: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["expectedSupplyDuration"] {
				presentKeys.insert("expectedSupplyDuration")
				if let val = exist as? FHIRJSON {
					self.expectedSupplyDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "expectedSupplyDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["numberOfRepeatsAllowed"] {
				presentKeys.insert("numberOfRepeatsAllowed")
				if let val = exist as? UInt {
					self.numberOfRepeatsAllowed = val
				}
				else {
					errors.append(FHIRJSONError(key: "numberOfRepeatsAllowed", wants: UInt.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["validityPeriod"] {
				presentKeys.insert("validityPeriod")
				if let val = exist as? FHIRJSON {
					self.validityPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "validityPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let expectedSupplyDuration = self.expectedSupplyDuration {
			json["expectedSupplyDuration"] = expectedSupplyDuration.asJSON()
		}
		if let numberOfRepeatsAllowed = self.numberOfRepeatsAllowed {
			json["numberOfRepeatsAllowed"] = numberOfRepeatsAllowed.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let validityPeriod = self.validityPeriod {
			json["validityPeriod"] = validityPeriod.asJSON()
		}
		
		return json
	}
}


/**
 *  How medication should be taken.
 *
 *  Indicates how the medication is to be used by the patient.
 */
public class MedicationOrderDosageInstruction: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationOrderDosageInstruction" }
	}
	
	/// Supplemental instructions - e.g. "with meals".
	public var additionalInstructions: [CodeableConcept]?
	
	/// Take "as needed" (for x).
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" (for x).
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Amount of medication per dose.
	public var doseQuantity: Quantity?
	
	/// Amount of medication per dose.
	public var doseRange: Range?
	
	/// Upper limit on medication per administration.
	public var maxDosePerAdministration: Quantity?
	
	/// Upper limit on medication per lifetime of the patient.
	public var maxDosePerLifetime: Quantity?
	
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
			if let exist: AnyObject = js["maxDosePerAdministration"] {
				presentKeys.insert("maxDosePerAdministration")
				if let val = exist as? FHIRJSON {
					self.maxDosePerAdministration = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "maxDosePerAdministration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxDosePerLifetime"] {
				presentKeys.insert("maxDosePerLifetime")
				if let val = exist as? FHIRJSON {
					self.maxDosePerLifetime = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "maxDosePerLifetime", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let maxDosePerAdministration = self.maxDosePerAdministration {
			json["maxDosePerAdministration"] = maxDosePerAdministration.asJSON()
		}
		if let maxDosePerLifetime = self.maxDosePerLifetime {
			json["maxDosePerLifetime"] = maxDosePerLifetime.asJSON()
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
 *  A summary of the events of interest that have occurred as the request is processed; e.g. when the order was verified
 *  or when it was completed.
 */
public class MedicationOrderEventHistory: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationOrderEventHistory" }
	}
	
	/// Action taken (e.g. verify, discontinue).
	public var action: CodeableConcept?
	
	/// Who took the action.
	public var actor: Reference?
	
	/// The date at which the event happened.
	public var dateTime: DateTime?
	
	/// Reason the action was taken.
	public var reason: CodeableConcept?
	
	/// active | on-hold | completed | entered-in-error | stopped | draft.
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
 *  Any restrictions on medication substitution.
 *
 *  Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen,
 *  in other cases substitution must not happen, and in others it does not matter. This block explains the prescriber's
 *  intent. If nothing is specified substitution may be done.
 */
public class MedicationOrderSubstitution: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationOrderSubstitution" }
	}
	
	/// Whether substitution is allowed or not.
	public var allowed: Bool?
	
	/// Why should (not) substitution be made.
	public var reason: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(allowed: Bool) {
		self.init(json: nil)
		self.allowed = allowed
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["allowed"] {
				presentKeys.insert("allowed")
				if let val = exist as? Bool {
					self.allowed = val
				}
				else {
					errors.append(FHIRJSONError(key: "allowed", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "allowed"))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let allowed = self.allowed {
			json["allowed"] = allowed.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		
		return json
	}
}

