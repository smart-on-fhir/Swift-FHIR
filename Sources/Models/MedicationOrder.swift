//
//  MedicationOrder.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/MedicationOrder) on 2016-10-26.
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
open class MedicationOrder: DomainResource {
	override open class var resourceType: String {
		get { return "MedicationOrder" }
	}
	
	/// What request fulfills.
	public var basedOn: [Reference]?
	
	/// Type of medication usage.
	public var category: String?
	
	/// When prescription was initially authorized.
	public var dateWritten: DateTime?
	
	/// Protocol or definition.
	public var definition: [Reference]?
	
	/// Medication supply authorization.
	public var dispenseRequest: MedicationOrderDispenseRequest?
	
	/// How the medication should be taken.
	public var dosageInstruction: [DosageInstruction]?
	
	/// Created during encounter/admission/stay.
	public var encounter: Reference?
	
	/// A list of events of interest in the lifecycle.
	public var eventHistory: [Reference]?
	
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
	
	/// Condition or Observation that supports why the prescription is being written.
	public var reasonReference: [Reference]?
	
	/// Identifier of composite.
	public var requisition: Identifier?
	
	/// proposal | plan | original-order.
	public var stage: CodeableConcept?
	
	/// active | on-hold | completed | entered-in-error | stopped | draft.
	public var status: String?
	
	/// Any restrictions on medication substitution.
	public var substitution: MedicationOrderSubstitution?
	
	/// Information to support ordering of the medication.
	public var supportingInformation: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(medicationCodeableConcept: CodeableConcept, medicationReference: Reference, stage: CodeableConcept) {
		self.init(json: nil)
		self.medicationCodeableConcept = medicationCodeableConcept
		self.medicationReference = medicationReference
		self.stage = stage
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["basedOn"] {
				presentKeys.insert("basedOn")
				if let val = exist as? [FHIRJSON] {
					self.basedOn = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basedOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["dateWritten"] {
				presentKeys.insert("dateWritten")
				if let val = exist as? String {
					self.dateWritten = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateWritten", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? [FHIRJSON] {
					self.definition = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["dispenseRequest"] {
				presentKeys.insert("dispenseRequest")
				if let val = exist as? FHIRJSON {
					self.dispenseRequest = MedicationOrderDispenseRequest(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dispenseRequest", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["dosageInstruction"] {
				presentKeys.insert("dosageInstruction")
				if let val = exist as? [FHIRJSON] {
					self.dosageInstruction = DosageInstruction.instantiate(fromArray: val, owner: self) as? [DosageInstruction]
				}
				else {
					errors.append(FHIRJSONError(key: "dosageInstruction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["eventHistory"] {
				presentKeys.insert("eventHistory")
				if let val = exist as? [FHIRJSON] {
					self.eventHistory = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "eventHistory", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["medicationCodeableConcept"] {
				presentKeys.insert("medicationCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.medicationCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medicationCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["medicationReference"] {
				presentKeys.insert("medicationReference")
				if let val = exist as? FHIRJSON {
					self.medicationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medicationReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["prescriber"] {
				presentKeys.insert("prescriber")
				if let val = exist as? FHIRJSON {
					self.prescriber = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescriber", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["priorPrescription"] {
				presentKeys.insert("priorPrescription")
				if let val = exist as? FHIRJSON {
					self.priorPrescription = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priorPrescription", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonCode"] {
				presentKeys.insert("reasonCode")
				if let val = exist as? [FHIRJSON] {
					self.reasonCode = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? [FHIRJSON] {
					self.reasonReference = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["requisition"] {
				presentKeys.insert("requisition")
				if let val = exist as? FHIRJSON {
					self.requisition = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requisition", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["stage"] {
				presentKeys.insert("stage")
				if let val = exist as? FHIRJSON {
					self.stage = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "stage", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "stage"))
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["substitution"] {
				presentKeys.insert("substitution")
				if let val = exist as? FHIRJSON {
					self.substitution = MedicationOrderSubstitution(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substitution", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["supportingInformation"] {
				presentKeys.insert("supportingInformation")
				if let val = exist as? [FHIRJSON] {
					self.supportingInformation = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingInformation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.medicationCodeableConcept && nil == self.medicationReference {
				errors.append(FHIRJSONError(key: "medication*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.map() { $0.asJSON() }
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let dateWritten = self.dateWritten {
			json["dateWritten"] = dateWritten.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = definition.map() { $0.asJSON() }
		}
		if let dispenseRequest = self.dispenseRequest {
			json["dispenseRequest"] = dispenseRequest.asJSON()
		}
		if let dosageInstruction = self.dosageInstruction {
			json["dosageInstruction"] = dosageInstruction.map() { $0.asJSON() }
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let eventHistory = self.eventHistory {
			json["eventHistory"] = eventHistory.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let medicationCodeableConcept = self.medicationCodeableConcept {
			json["medicationCodeableConcept"] = medicationCodeableConcept.asJSON()
		}
		if let medicationReference = self.medicationReference {
			json["medicationReference"] = medicationReference.asJSON()
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON() }
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
			json["reasonCode"] = reasonCode.map() { $0.asJSON() }
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.map() { $0.asJSON() }
		}
		if let requisition = self.requisition {
			json["requisition"] = requisition.asJSON()
		}
		if let stage = self.stage {
			json["stage"] = stage.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let substitution = self.substitution {
			json["substitution"] = substitution.asJSON()
		}
		if let supportingInformation = self.supportingInformation {
			json["supportingInformation"] = supportingInformation.map() { $0.asJSON() }
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
open class MedicationOrderDispenseRequest: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["expectedSupplyDuration"] {
				presentKeys.insert("expectedSupplyDuration")
				if let val = exist as? FHIRJSON {
					self.expectedSupplyDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "expectedSupplyDuration", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["numberOfRepeatsAllowed"] {
				presentKeys.insert("numberOfRepeatsAllowed")
				if let val = exist as? UInt {
					self.numberOfRepeatsAllowed = val
				}
				else {
					errors.append(FHIRJSONError(key: "numberOfRepeatsAllowed", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["validityPeriod"] {
				presentKeys.insert("validityPeriod")
				if let val = exist as? FHIRJSON {
					self.validityPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "validityPeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
 *  Any restrictions on medication substitution.
 *
 *  Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen,
 *  in other cases substitution must not happen, and in others it does not matter. This block explains the prescriber's
 *  intent. If nothing is specified substitution may be done.
 */
open class MedicationOrderSubstitution: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["allowed"] {
				presentKeys.insert("allowed")
				if let val = exist as? Bool {
					self.allowed = val
				}
				else {
					errors.append(FHIRJSONError(key: "allowed", wants: Bool.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "allowed"))
			}
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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

