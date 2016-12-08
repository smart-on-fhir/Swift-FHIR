//
//  MedicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/MedicationRequest) on 2016-12-08.
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
	
	/// An order/prescription that this supersedes.
	public var priorPrescription: Reference?
	
	/// Reason or indication for writing the prescription.
	public var reasonCode: [CodeableConcept]?
	
	/// Condition or Observation that supports why the prescription is being written.
	public var reasonReference: [Reference]?
	
	/// Who ordered the initial medication(s).
	public var requester: Reference?
	
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
		
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		dateWritten = try createInstance(type: DateTime.self, for: "dateWritten", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dateWritten
		definition = try createInstances(of: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		dispenseRequest = try createInstance(type: MedicationRequestDispenseRequest.self, for: "dispenseRequest", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dispenseRequest
		dosageInstruction = try createInstances(of: DosageInstruction.self, for: "dosageInstruction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dosageInstruction
		eventHistory = try createInstances(of: Reference.self, for: "eventHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventHistory
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		medicationCodeableConcept = try createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationCodeableConcept
		medicationReference = try createInstance(type: Reference.self, for: "medicationReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationReference
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		priorPrescription = try createInstance(type: Reference.self, for: "priorPrescription", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priorPrescription
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		requester = try createInstance(type: Reference.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		requisition = try createInstance(type: Identifier.self, for: "requisition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requisition
		stage = try createInstance(type: CodeableConcept.self, for: "stage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? stage
		if nil == stage && !presentKeys.contains("stage") {
			errors.append(FHIRValidationError(missing: "stage"))
		}
		status = createEnum(type: MedicationRequestStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		substitution = try createInstance(type: MedicationRequestSubstitution.self, for: "substitution", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? substitution
		supportingInformation = try createInstances(of: Reference.self, for: "supportingInformation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingInformation
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.dateWritten?.decorate(json: &json, withKey: "dateWritten", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		self.dispenseRequest?.decorate(json: &json, withKey: "dispenseRequest", errors: &errors)
		arrayDecorate(json: &json, withKey: "dosageInstruction", using: self.dosageInstruction, errors: &errors)
		arrayDecorate(json: &json, withKey: "eventHistory", using: self.eventHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.medicationCodeableConcept?.decorate(json: &json, withKey: "medicationCodeableConcept", errors: &errors)
		self.medicationReference?.decorate(json: &json, withKey: "medicationReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.priorPrescription?.decorate(json: &json, withKey: "priorPrescription", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.requisition?.decorate(json: &json, withKey: "requisition", errors: &errors)
		self.stage?.decorate(json: &json, withKey: "stage", errors: &errors)
		if nil == self.stage {
			errors.append(FHIRValidationError(missing: "stage"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.substitution?.decorate(json: &json, withKey: "substitution", errors: &errors)
		arrayDecorate(json: &json, withKey: "supportingInformation", using: self.supportingInformation, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
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
	public var numberOfRepeatsAllowed: FHIRInteger?
	
	/// Intended dispenser.
	public var performer: Reference?
	
	/// Amount of medication to supply per dispense.
	public var quantity: Quantity?
	
	/// Time period supply is authorized for.
	public var validityPeriod: Period?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		expectedSupplyDuration = try createInstance(type: Duration.self, for: "expectedSupplyDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expectedSupplyDuration
		numberOfRepeatsAllowed = try createInstance(type: FHIRInteger.self, for: "numberOfRepeatsAllowed", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? numberOfRepeatsAllowed
		performer = try createInstance(type: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		validityPeriod = try createInstance(type: Period.self, for: "validityPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? validityPeriod
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.expectedSupplyDuration?.decorate(json: &json, withKey: "expectedSupplyDuration", errors: &errors)
		self.numberOfRepeatsAllowed?.decorate(json: &json, withKey: "numberOfRepeatsAllowed", errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.validityPeriod?.decorate(json: &json, withKey: "validityPeriod", errors: &errors)
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
	public var allowed: FHIRBool?
	
	/// Why should (not) substitution be made.
	public var reason: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(allowed: FHIRBool) {
		self.init()
		self.allowed = allowed
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		allowed = try createInstance(type: FHIRBool.self, for: "allowed", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? allowed
		if nil == allowed && !presentKeys.contains("allowed") {
			errors.append(FHIRValidationError(missing: "allowed"))
		}
		reason = try createInstance(type: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.allowed?.decorate(json: &json, withKey: "allowed", errors: &errors)
		if nil == self.allowed {
			errors.append(FHIRValidationError(missing: "allowed"))
		}
		self.reason?.decorate(json: &json, withKey: "reason", errors: &errors)
	}
}

