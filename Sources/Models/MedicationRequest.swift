//
//  MedicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/MedicationRequest) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Prescription of medication to for patient.

An order for both supply of the medication and the instructions for administration of the medication to a patient. The
resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to generalize the use
across inpatient and outpatient settings as well as for care plans, etc and to harmonize with workflow patterns.
*/
open class MedicationRequest: DomainResource {
	override open class var resourceType: String {
		get { return "MedicationRequest" }
	}
	
	/// What request fulfills.
	public var basedOn: [Reference]?
	
	/// Type of medication usage.
	public var category: CodeableConcept?
	
	/// Created during encounter/admission/stay.
	public var context: Reference?
	
	/// When prescription was initially authorized.
	public var dateWritten: DateTime?
	
	/// Protocol or definition.
	public var definition: [Reference]?
	
	/// Medication supply authorization.
	public var dispenseRequest: MedicationRequestDispenseRequest?
	
	/// How the medication should be taken.
	public var dosageInstruction: [DosageInstruction]?
	
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
	
	/// A code specifying the state of the order.  Generally this will be active or completed state.
	public var status: MedicationRequestStatus?
	
	/// Any restrictions on medication substitution.
	public var substitution: MedicationRequestSubstitution?
	
	/// Information to support ordering of the medication.
	public var supportingInformation: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(medication: Any, patient: Reference, stage: CodeableConcept) {
		self.init()
		if let value = medication as? CodeableConcept {
			self.medicationCodeableConcept = value
		}
		else if let value = medication as? Reference {
			self.medicationReference = value
		}
		else {
			fhir_warn("Type “\(type(of: medication))” for property “\(medication)” is invalid, ignoring")
		}
		self.patient = patient
		self.stage = stage
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["basedOn"] {
			presentKeys.insert("basedOn")
			if let val = exist as? [FHIRJSON] {
				do {
					self.basedOn = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "basedOn"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "basedOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? FHIRJSON {
				do {
					self.category = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? FHIRJSON {
				do {
					self.context = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "context"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["dateWritten"] {
			presentKeys.insert("dateWritten")
			if let val = exist as? String {
				self.dateWritten = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "dateWritten", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? [FHIRJSON] {
				do {
					self.definition = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "definition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["dispenseRequest"] {
			presentKeys.insert("dispenseRequest")
			if let val = exist as? FHIRJSON {
				do {
					self.dispenseRequest = try MedicationRequestDispenseRequest(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dispenseRequest"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dispenseRequest", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["dosageInstruction"] {
			presentKeys.insert("dosageInstruction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dosageInstruction = try DosageInstruction.instantiate(fromArray: val, owner: self) as? [DosageInstruction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dosageInstruction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dosageInstruction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["eventHistory"] {
			presentKeys.insert("eventHistory")
			if let val = exist as? [FHIRJSON] {
				do {
					self.eventHistory = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "eventHistory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "eventHistory", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["medicationCodeableConcept"] {
			presentKeys.insert("medicationCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.medicationCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "medicationCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "medicationCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["medicationReference"] {
			presentKeys.insert("medicationReference")
			if let val = exist as? FHIRJSON {
				do {
					self.medicationReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "medicationReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "medicationReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let exist = json["prescriber"] {
			presentKeys.insert("prescriber")
			if let val = exist as? FHIRJSON {
				do {
					self.prescriber = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "prescriber"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "prescriber", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["priorPrescription"] {
			presentKeys.insert("priorPrescription")
			if let val = exist as? FHIRJSON {
				do {
					self.priorPrescription = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "priorPrescription"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "priorPrescription", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonCode"] {
			presentKeys.insert("reasonCode")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonCode = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonReference"] {
			presentKeys.insert("reasonReference")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonReference = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["requisition"] {
			presentKeys.insert("requisition")
			if let val = exist as? FHIRJSON {
				do {
					self.requisition = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requisition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requisition", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["stage"] {
			presentKeys.insert("stage")
			if let val = exist as? FHIRJSON {
				do {
					self.stage = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "stage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "stage", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "stage"))
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = MedicationRequestStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["substitution"] {
			presentKeys.insert("substitution")
			if let val = exist as? FHIRJSON {
				do {
					self.substitution = try MedicationRequestSubstitution(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "substitution"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "substitution", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["supportingInformation"] {
			presentKeys.insert("supportingInformation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.supportingInformation = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "supportingInformation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "supportingInformation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let dateWritten = self.dateWritten {
			json["dateWritten"] = dateWritten.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = definition.map() { $0.asJSON(errors: &errors) }
		}
		if let dispenseRequest = self.dispenseRequest {
			json["dispenseRequest"] = dispenseRequest.asJSON(errors: &errors)
		}
		if let dosageInstruction = self.dosageInstruction {
			json["dosageInstruction"] = dosageInstruction.map() { $0.asJSON(errors: &errors) }
		}
		if let eventHistory = self.eventHistory {
			json["eventHistory"] = eventHistory.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let medicationCodeableConcept = self.medicationCodeableConcept {
			json["medicationCodeableConcept"] = medicationCodeableConcept.asJSON(errors: &errors)
		}
		if let medicationReference = self.medicationReference {
			json["medicationReference"] = medicationReference.asJSON(errors: &errors)
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let prescriber = self.prescriber {
			json["prescriber"] = prescriber.asJSON(errors: &errors)
		}
		if let priorPrescription = self.priorPrescription {
			json["priorPrescription"] = priorPrescription.asJSON(errors: &errors)
		}
		if let reasonCode = self.reasonCode {
			json["reasonCode"] = reasonCode.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.map() { $0.asJSON(errors: &errors) }
		}
		if let requisition = self.requisition {
			json["requisition"] = requisition.asJSON(errors: &errors)
		}
		if let stage = self.stage {
			json["stage"] = stage.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let substitution = self.substitution {
			json["substitution"] = substitution.asJSON(errors: &errors)
		}
		if let supportingInformation = self.supportingInformation {
			json["supportingInformation"] = supportingInformation.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Medication supply authorization.

Indicates the specific details for the dispense or medication supply part of a medication order (also known as a
Medication Prescription).  Note that this information is NOT always sent with the order.  There may be in some settings
(e.g. hospitals) institutional or system support for completing the dispense details in the pharmacy department.
*/
open class MedicationRequestDispenseRequest: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationRequestDispenseRequest" }
	}
	
	/// Number of days supply per dispense.
	public var expectedSupplyDuration: Duration?
	
	/// Number of refills authorized.
	public var numberOfRepeatsAllowed: UInt?
	
	/// Intended dispenser.
	public var performer: Reference?
	
	/// Amount of medication to supply per dispense.
	public var quantity: Quantity?
	
	/// Time period supply is authorized for.
	public var validityPeriod: Period?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["expectedSupplyDuration"] {
			presentKeys.insert("expectedSupplyDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.expectedSupplyDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "expectedSupplyDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "expectedSupplyDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["numberOfRepeatsAllowed"] {
			presentKeys.insert("numberOfRepeatsAllowed")
			if let val = exist as? UInt {
				self.numberOfRepeatsAllowed = val
			}
			else {
				errors.append(FHIRValidationError(key: "numberOfRepeatsAllowed", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["performer"] {
			presentKeys.insert("performer")
			if let val = exist as? FHIRJSON {
				do {
					self.performer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["validityPeriod"] {
			presentKeys.insert("validityPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.validityPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "validityPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "validityPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let expectedSupplyDuration = self.expectedSupplyDuration {
			json["expectedSupplyDuration"] = expectedSupplyDuration.asJSON(errors: &errors)
		}
		if let numberOfRepeatsAllowed = self.numberOfRepeatsAllowed {
			json["numberOfRepeatsAllowed"] = numberOfRepeatsAllowed.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON(errors: &errors)
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let validityPeriod = self.validityPeriod {
			json["validityPeriod"] = validityPeriod.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Any restrictions on medication substitution.

Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen, in
other cases substitution must not happen, and in others it does not matter. This block explains the prescriber's intent.
If nothing is specified substitution may be done.
*/
open class MedicationRequestSubstitution: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationRequestSubstitution" }
	}
	
	/// Whether substitution is allowed or not.
	public var allowed: Bool?
	
	/// Why should (not) substitution be made.
	public var reason: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(allowed: Bool) {
		self.init()
		self.allowed = allowed
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["allowed"] {
			presentKeys.insert("allowed")
			if let val = exist as? Bool {
				self.allowed = val
			}
			else {
				errors.append(FHIRValidationError(key: "allowed", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "allowed"))
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? FHIRJSON {
				do {
					self.reason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let allowed = self.allowed {
			json["allowed"] = allowed.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON(errors: &errors)
		}
		
		return json
	}
}

