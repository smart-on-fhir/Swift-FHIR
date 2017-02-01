//
//  MedicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/MedicationRequest) on 2017-02-01.
//  2017, SMART Health IT.
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
	
	/// When request was initially authored.
	public var authoredOn: DateTime?
	
	/// What request fulfills.
	public var basedOn: [Reference]?
	
	/// Type of medication usage.
	public var category: CodeableConcept?
	
	/// Created during encounter/admission/stay.
	public var context: Reference?
	
	/// Protocol or definition.
	public var definition: [Reference]?
	
	/// Clinical Issue with action.
	public var detectedIssue: [Reference]?
	
	/// Medication supply authorization.
	public var dispenseRequest: MedicationRequestDispenseRequest?
	
	/// How the medication should be taken.
	public var dosageInstruction: [DosageInstruction]?
	
	/// A list of events of interest in the lifecycle.
	public var eventHistory: [Reference]?
	
	/// Composite request this is part of.
	public var groupIdentifier: Identifier?
	
	/// External identifier.
	public var identifier: [Identifier]?
	
	/// Whether the request is a proposal, plan, or an original order.
	public var intent: MedicationRequestIntent?
	
	/// Medication to be taken.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// Medication to be taken.
	public var medicationReference: Reference?
	
	/// Information about the prescription.
	public var note: [Annotation]?
	
	/// An order/prescription that replaces.
	public var priorPrescription: Reference?
	
	/// Indicates how quickly the Medicaiton Request should be addressed with respect to other requests.
	public var priority: MedicationRequestPriority?
	
	/// Reason or indication for writing the prescription.
	public var reasonCode: [CodeableConcept]?
	
	/// Condition or Observation that supports why the prescription is being written.
	public var reasonReference: [Reference]?
	
	/// Person who entered the request.
	public var recorder: Reference?
	
	/// Who/What requested the Request.
	public var requester: MedicationRequestRequester?
	
	/// A code specifying the state of the order.  Generally this will be active or completed state.
	public var status: MedicationRequestStatus?
	
	/// Who or group prescription is for.
	public var subject: Reference?
	
	/// Any restrictions on medication substitution.
	public var substitution: MedicationRequestSubstitution?
	
	/// Information to support ordering of the medication.
	public var supportingInformation: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(intent: MedicationRequestIntent, medication: Any, subject: Reference) {
		self.init()
		self.intent = intent
		if let value = medication as? CodeableConcept {
			self.medicationCodeableConcept = value
		}
		else if let value = medication as? Reference {
			self.medicationReference = value
		}
		else {
			fhir_warn("Type “\(type(of: medication))” for property “\(medication)” is invalid, ignoring")
		}
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authoredOn = try createInstance(type: DateTime.self, for: "authoredOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authoredOn
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		definition = try createInstances(of: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		detectedIssue = try createInstances(of: Reference.self, for: "detectedIssue", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detectedIssue
		dispenseRequest = try createInstance(type: MedicationRequestDispenseRequest.self, for: "dispenseRequest", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dispenseRequest
		dosageInstruction = try createInstances(of: DosageInstruction.self, for: "dosageInstruction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dosageInstruction
		eventHistory = try createInstances(of: Reference.self, for: "eventHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventHistory
		groupIdentifier = try createInstance(type: Identifier.self, for: "groupIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? groupIdentifier
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		intent = createEnum(type: MedicationRequestIntent.self, for: "intent", in: json, presentKeys: &presentKeys, errors: &errors) ?? intent
		if nil == intent && !presentKeys.contains("intent") {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		medicationCodeableConcept = try createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationCodeableConcept
		medicationReference = try createInstance(type: Reference.self, for: "medicationReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationReference
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		priorPrescription = try createInstance(type: Reference.self, for: "priorPrescription", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priorPrescription
		priority = createEnum(type: MedicationRequestPriority.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors) ?? priority
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		recorder = try createInstance(type: Reference.self, for: "recorder", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recorder
		requester = try createInstance(type: MedicationRequestRequester.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		status = createEnum(type: MedicationRequestStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
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
		
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		arrayDecorate(json: &json, withKey: "detectedIssue", using: self.detectedIssue, errors: &errors)
		self.dispenseRequest?.decorate(json: &json, withKey: "dispenseRequest", errors: &errors)
		arrayDecorate(json: &json, withKey: "dosageInstruction", using: self.dosageInstruction, errors: &errors)
		arrayDecorate(json: &json, withKey: "eventHistory", using: self.eventHistory, errors: &errors)
		self.groupIdentifier?.decorate(json: &json, withKey: "groupIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.intent?.decorate(json: &json, withKey: "intent", errors: &errors)
		if nil == self.intent {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		self.medicationCodeableConcept?.decorate(json: &json, withKey: "medicationCodeableConcept", errors: &errors)
		self.medicationReference?.decorate(json: &json, withKey: "medicationReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.priorPrescription?.decorate(json: &json, withKey: "priorPrescription", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.recorder?.decorate(json: &json, withKey: "recorder", errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
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
Who/What requested the Request.

The individual, organization or device that initiated the request and has responsibility for its activation.
*/
open class MedicationRequestRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationRequestRequester" }
	}
	
	/// Who ordered the initial medication(s).
	public var agent: Reference?
	
	/// Organization agent is acting for.
	public var onBehalfOf: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(agent: Reference) {
		self.init()
		self.agent = agent
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		agent = try createInstance(type: Reference.self, for: "agent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? agent
		if nil == agent && !presentKeys.contains("agent") {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		onBehalfOf = try createInstance(type: Reference.self, for: "onBehalfOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onBehalfOf
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.agent?.decorate(json: &json, withKey: "agent", errors: &errors)
		if nil == self.agent {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
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

