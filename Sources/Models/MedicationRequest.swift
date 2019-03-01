//
//  MedicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MedicationRequest) on 2019-03-01.
//  2019, SMART Health IT.
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
	public var category: [CodeableConcept]?
	
	/// Overall pattern of medication administration.
	public var courseOfTherapyType: CodeableConcept?
	
	/// Clinical Issue with action.
	public var detectedIssue: [Reference]?
	
	/// Medication supply authorization.
	public var dispenseRequest: MedicationRequestDispenseRequest?
	
	/// True if request is prohibiting action.
	public var doNotPerform: FHIRBool?
	
	/// How the medication should be taken.
	public var dosageInstruction: [Dosage]?
	
	/// Encounter created as part of encounter/admission/stay.
	public var encounter: Reference?
	
	/// A list of events of interest in the lifecycle.
	public var eventHistory: [Reference]?
	
	/// Composite request this is part of.
	public var groupIdentifier: Identifier?
	
	/// External ids for this request.
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition.
	public var instantiatesCanonical: [FHIRURL]?
	
	/// Instantiates external protocol or definition.
	public var instantiatesUri: [FHIRURL]?
	
	/// Associated insurance coverage.
	public var insurance: [Reference]?
	
	/// Whether the request is a proposal, plan, or an original order.
	public var intent: MedicationRequestIntent?
	
	/// Medication to be taken.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// Medication to be taken.
	public var medicationReference: Reference?
	
	/// Information about the prescription.
	public var note: [Annotation]?
	
	/// Intended performer of administration.
	public var performer: Reference?
	
	/// Desired kind of performer of the medication administration.
	public var performerType: CodeableConcept?
	
	/// An order/prescription that is being replaced.
	public var priorPrescription: Reference?
	
	/// Indicates how quickly the Medication Request should be addressed with respect to other requests.
	public var priority: RequestPriority?
	
	/// Reason or indication for ordering or not ordering the medication.
	public var reasonCode: [CodeableConcept]?
	
	/// Condition or observation that supports why the prescription is being written.
	public var reasonReference: [Reference]?
	
	/// Person who entered the request.
	public var recorder: Reference?
	
	/// Reported rather than primary record.
	public var reportedBoolean: FHIRBool?
	
	/// Reported rather than primary record.
	public var reportedReference: Reference?
	
	/// Who/What requested the Request.
	public var requester: Reference?
	
	/// A code specifying the current state of the order.  Generally, this will be active or completed state.
	public var status: MedicationrequestStatus?
	
	/// Reason for current status.
	public var statusReason: CodeableConcept?
	
	/// Who or group medication request is for.
	public var subject: Reference?
	
	/// Any restrictions on medication substitution.
	public var substitution: MedicationRequestSubstitution?
	
	/// Information to support ordering of the medication.
	public var supportingInformation: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(intent: MedicationRequestIntent, medication: Any, status: MedicationrequestStatus, subject: Reference) {
		self.init()
		self.intent = intent
		if let value = medication as? CodeableConcept {
			self.medicationCodeableConcept = value
		}
		else if let value = medication as? Reference {
			self.medicationReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: medication))” for property “\(medication)” is invalid, ignoring")
		}
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authoredOn = createInstance(type: DateTime.self, for: "authoredOn", in: json, context: &instCtx, owner: self) ?? authoredOn
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		courseOfTherapyType = createInstance(type: CodeableConcept.self, for: "courseOfTherapyType", in: json, context: &instCtx, owner: self) ?? courseOfTherapyType
		detectedIssue = createInstances(of: Reference.self, for: "detectedIssue", in: json, context: &instCtx, owner: self) ?? detectedIssue
		dispenseRequest = createInstance(type: MedicationRequestDispenseRequest.self, for: "dispenseRequest", in: json, context: &instCtx, owner: self) ?? dispenseRequest
		doNotPerform = createInstance(type: FHIRBool.self, for: "doNotPerform", in: json, context: &instCtx, owner: self) ?? doNotPerform
		dosageInstruction = createInstances(of: Dosage.self, for: "dosageInstruction", in: json, context: &instCtx, owner: self) ?? dosageInstruction
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		eventHistory = createInstances(of: Reference.self, for: "eventHistory", in: json, context: &instCtx, owner: self) ?? eventHistory
		groupIdentifier = createInstance(type: Identifier.self, for: "groupIdentifier", in: json, context: &instCtx, owner: self) ?? groupIdentifier
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		instantiatesCanonical = createInstances(of: FHIRURL.self, for: "instantiatesCanonical", in: json, context: &instCtx, owner: self) ?? instantiatesCanonical
		instantiatesUri = createInstances(of: FHIRURL.self, for: "instantiatesUri", in: json, context: &instCtx, owner: self) ?? instantiatesUri
		insurance = createInstances(of: Reference.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		intent = createEnum(type: MedicationRequestIntent.self, for: "intent", in: json, context: &instCtx) ?? intent
		if nil == intent && !instCtx.containsKey("intent") {
			instCtx.addError(FHIRValidationError(missing: "intent"))
		}
		medicationCodeableConcept = createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, context: &instCtx, owner: self) ?? medicationCodeableConcept
		medicationReference = createInstance(type: Reference.self, for: "medicationReference", in: json, context: &instCtx, owner: self) ?? medicationReference
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		performer = createInstance(type: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		performerType = createInstance(type: CodeableConcept.self, for: "performerType", in: json, context: &instCtx, owner: self) ?? performerType
		priorPrescription = createInstance(type: Reference.self, for: "priorPrescription", in: json, context: &instCtx, owner: self) ?? priorPrescription
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		recorder = createInstance(type: Reference.self, for: "recorder", in: json, context: &instCtx, owner: self) ?? recorder
		reportedBoolean = createInstance(type: FHIRBool.self, for: "reportedBoolean", in: json, context: &instCtx, owner: self) ?? reportedBoolean
		reportedReference = createInstance(type: Reference.self, for: "reportedReference", in: json, context: &instCtx, owner: self) ?? reportedReference
		requester = createInstance(type: Reference.self, for: "requester", in: json, context: &instCtx, owner: self) ?? requester
		status = createEnum(type: MedicationrequestStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusReason = createInstance(type: CodeableConcept.self, for: "statusReason", in: json, context: &instCtx, owner: self) ?? statusReason
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
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.courseOfTherapyType?.decorate(json: &json, withKey: "courseOfTherapyType", errors: &errors)
		arrayDecorate(json: &json, withKey: "detectedIssue", using: self.detectedIssue, errors: &errors)
		self.dispenseRequest?.decorate(json: &json, withKey: "dispenseRequest", errors: &errors)
		self.doNotPerform?.decorate(json: &json, withKey: "doNotPerform", errors: &errors)
		arrayDecorate(json: &json, withKey: "dosageInstruction", using: self.dosageInstruction, errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "eventHistory", using: self.eventHistory, errors: &errors)
		self.groupIdentifier?.decorate(json: &json, withKey: "groupIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiatesCanonical", using: self.instantiatesCanonical, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiatesUri", using: self.instantiatesUri, errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		self.intent?.decorate(json: &json, withKey: "intent", errors: &errors)
		if nil == self.intent {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		self.medicationCodeableConcept?.decorate(json: &json, withKey: "medicationCodeableConcept", errors: &errors)
		self.medicationReference?.decorate(json: &json, withKey: "medicationReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		self.performerType?.decorate(json: &json, withKey: "performerType", errors: &errors)
		self.priorPrescription?.decorate(json: &json, withKey: "priorPrescription", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.recorder?.decorate(json: &json, withKey: "recorder", errors: &errors)
		self.reportedBoolean?.decorate(json: &json, withKey: "reportedBoolean", errors: &errors)
		self.reportedReference?.decorate(json: &json, withKey: "reportedReference", errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusReason?.decorate(json: &json, withKey: "statusReason", errors: &errors)
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
	
	/// Minimum period of time between dispenses.
	public var dispenseInterval: Duration?
	
	/// Number of days supply per dispense.
	public var expectedSupplyDuration: Duration?
	
	/// First fill details.
	public var initialFill: MedicationRequestDispenseRequestInitialFill?
	
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
		
		dispenseInterval = createInstance(type: Duration.self, for: "dispenseInterval", in: json, context: &instCtx, owner: self) ?? dispenseInterval
		expectedSupplyDuration = createInstance(type: Duration.self, for: "expectedSupplyDuration", in: json, context: &instCtx, owner: self) ?? expectedSupplyDuration
		initialFill = createInstance(type: MedicationRequestDispenseRequestInitialFill.self, for: "initialFill", in: json, context: &instCtx, owner: self) ?? initialFill
		numberOfRepeatsAllowed = createInstance(type: FHIRInteger.self, for: "numberOfRepeatsAllowed", in: json, context: &instCtx, owner: self) ?? numberOfRepeatsAllowed
		performer = createInstance(type: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		validityPeriod = createInstance(type: Period.self, for: "validityPeriod", in: json, context: &instCtx, owner: self) ?? validityPeriod
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.dispenseInterval?.decorate(json: &json, withKey: "dispenseInterval", errors: &errors)
		self.expectedSupplyDuration?.decorate(json: &json, withKey: "expectedSupplyDuration", errors: &errors)
		self.initialFill?.decorate(json: &json, withKey: "initialFill", errors: &errors)
		self.numberOfRepeatsAllowed?.decorate(json: &json, withKey: "numberOfRepeatsAllowed", errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.validityPeriod?.decorate(json: &json, withKey: "validityPeriod", errors: &errors)
	}
}


/**
First fill details.

Indicates the quantity or duration for the first dispense of the medication.
*/
open class MedicationRequestDispenseRequestInitialFill: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationRequestDispenseRequestInitialFill" }
	}
	
	/// First fill duration.
	public var duration: Duration?
	
	/// First fill quantity.
	public var quantity: Quantity?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		duration = createInstance(type: Duration.self, for: "duration", in: json, context: &instCtx, owner: self) ?? duration
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
	}
}


/**
Any restrictions on medication substitution.

Indicates whether or not substitution can or should be part of the dispense. In some cases, substitution must happen, in
other cases substitution must not happen. This block explains the prescriber's intent. If nothing is specified
substitution may be done.
*/
open class MedicationRequestSubstitution: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationRequestSubstitution" }
	}
	
	/// Whether substitution is allowed or not.
	public var allowedBoolean: FHIRBool?
	
	/// Whether substitution is allowed or not.
	public var allowedCodeableConcept: CodeableConcept?
	
	/// Why should (not) substitution be made.
	public var reason: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(allowed: Any) {
		self.init()
		if let value = allowed as? FHIRBool {
			self.allowedBoolean = value
		}
		else if let value = allowed as? CodeableConcept {
			self.allowedCodeableConcept = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: allowed))” for property “\(allowed)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		allowedBoolean = createInstance(type: FHIRBool.self, for: "allowedBoolean", in: json, context: &instCtx, owner: self) ?? allowedBoolean
		allowedCodeableConcept = createInstance(type: CodeableConcept.self, for: "allowedCodeableConcept", in: json, context: &instCtx, owner: self) ?? allowedCodeableConcept
		reason = createInstance(type: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.allowedBoolean && nil == self.allowedCodeableConcept {
			instCtx.addError(FHIRValidationError(missing: "allowed[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.allowedBoolean?.decorate(json: &json, withKey: "allowedBoolean", errors: &errors)
		self.allowedCodeableConcept?.decorate(json: &json, withKey: "allowedCodeableConcept", errors: &errors)
		self.reason?.decorate(json: &json, withKey: "reason", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.allowedBoolean && nil == self.allowedCodeableConcept {
			errors.append(FHIRValidationError(missing: "allowed[x]"))
		}
	}
}

