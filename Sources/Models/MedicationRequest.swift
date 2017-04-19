//
//  MedicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/MedicationRequest) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Ordering of medication for patient or group.

An order or request for both supply of the medication and the instructions for administration of the medication to a
patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to
generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow
patterns.
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
	public var dosageInstruction: [Dosage]?
	
	/// A list of events of interest in the lifecycle.
	public var eventHistory: [Reference]?
	
	/// Composite request this is part of.
	public var groupIdentifier: Identifier?
	
	/// External ids for this request.
	public var identifier: [Identifier]?
	
	/// Whether the request is a proposal, plan, or an original order.
	public var intent: MedicationRequestIntent?
	
	/// Medication to be taken.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// Medication to be taken.
	public var medicationReference: Reference?
	
	/// Information about the prescription.
	public var note: [Annotation]?
	
	/// An order/prescription that is being replaced.
	public var priorPrescription: Reference?
	
	/// Indicates how quickly the Medication Request should be addressed with respect to other requests.
	public var priority: MedicationRequestPriority?
	
	/// Reason or indication for writing the prescription.
	public var reasonCode: [CodeableConcept]?
	
	/// Condition or Observation that supports why the prescription is being written.
	public var reasonReference: [Reference]?
	
	/// Person who entered the request.
	public var recorder: Reference?
	
	/// Who/What requested the Request.
	public var requester: MedicationRequestRequester?
	
	/// A code specifying the current state of the order.  Generally this will be active or completed state.
	public var status: MedicationRequestStatus?
	
	/// Who or group medication request is for.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authoredOn = createInstance(type: DateTime.self, for: "authoredOn", in: json, context: &instCtx, owner: self) ?? authoredOn
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		definition = createInstances(of: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		detectedIssue = createInstances(of: Reference.self, for: "detectedIssue", in: json, context: &instCtx, owner: self) ?? detectedIssue
		dispenseRequest = createInstance(type: MedicationRequestDispenseRequest.self, for: "dispenseRequest", in: json, context: &instCtx, owner: self) ?? dispenseRequest
		dosageInstruction = createInstances(of: Dosage.self, for: "dosageInstruction", in: json, context: &instCtx, owner: self) ?? dosageInstruction
		eventHistory = createInstances(of: Reference.self, for: "eventHistory", in: json, context: &instCtx, owner: self) ?? eventHistory
		groupIdentifier = createInstance(type: Identifier.self, for: "groupIdentifier", in: json, context: &instCtx, owner: self) ?? groupIdentifier
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		intent = createEnum(type: MedicationRequestIntent.self, for: "intent", in: json, context: &instCtx) ?? intent
		if nil == intent && !instCtx.containsKey("intent") {
			instCtx.addError(FHIRValidationError(missing: "intent"))
		}
		medicationCodeableConcept = createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, context: &instCtx, owner: self) ?? medicationCodeableConcept
		medicationReference = createInstance(type: Reference.self, for: "medicationReference", in: json, context: &instCtx, owner: self) ?? medicationReference
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		priorPrescription = createInstance(type: Reference.self, for: "priorPrescription", in: json, context: &instCtx, owner: self) ?? priorPrescription
		priority = createEnum(type: MedicationRequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		recorder = createInstance(type: Reference.self, for: "recorder", in: json, context: &instCtx, owner: self) ?? recorder
		requester = createInstance(type: MedicationRequestRequester.self, for: "requester", in: json, context: &instCtx, owner: self) ?? requester
		status = createEnum(type: MedicationRequestStatus.self, for: "status", in: json, context: &instCtx) ?? status
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		substitution = createInstance(type: MedicationRequestSubstitution.self, for: "substitution", in: json, context: &instCtx, owner: self) ?? substitution
		supportingInformation = createInstances(of: Reference.self, for: "supportingInformation", in: json, context: &instCtx, owner: self) ?? supportingInformation
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			instCtx.addError(FHIRValidationError(missing: "medication[x]"))
		}
		
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

Indicates the specific details for the dispense or medication supply part of a medication request (also known as a
Medication Prescription or Medication Order).  Note that this information is not always sent with the order.  There may
be in some settings (e.g. hospitals) institutional or system support for completing the dispense details in the pharmacy
department.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		expectedSupplyDuration = createInstance(type: Duration.self, for: "expectedSupplyDuration", in: json, context: &instCtx, owner: self) ?? expectedSupplyDuration
		numberOfRepeatsAllowed = createInstance(type: FHIRInteger.self, for: "numberOfRepeatsAllowed", in: json, context: &instCtx, owner: self) ?? numberOfRepeatsAllowed
		performer = createInstance(type: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		validityPeriod = createInstance(type: Period.self, for: "validityPeriod", in: json, context: &instCtx, owner: self) ?? validityPeriod
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		agent = createInstance(type: Reference.self, for: "agent", in: json, context: &instCtx, owner: self) ?? agent
		if nil == agent && !instCtx.containsKey("agent") {
			instCtx.addError(FHIRValidationError(missing: "agent"))
		}
		onBehalfOf = createInstance(type: Reference.self, for: "onBehalfOf", in: json, context: &instCtx, owner: self) ?? onBehalfOf
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
other cases substitution must not happen. This block explains the prescriber's intent. If nothing is specified
substitution may be done.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		allowed = createInstance(type: FHIRBool.self, for: "allowed", in: json, context: &instCtx, owner: self) ?? allowed
		if nil == allowed && !instCtx.containsKey("allowed") {
			instCtx.addError(FHIRValidationError(missing: "allowed"))
		}
		reason = createInstance(type: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
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

