//
//  Procedure.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Procedure) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
An action that is being or was performed on a patient.

An action that is or was performed on or for a patient. This can be a physical intervention like an operation, or less
invasive like long term services, counseling, or hypnotherapy.
*/
open class Procedure: DomainResource {
	override open class var resourceType: String {
		get { return "Procedure" }
	}
	
	/// Person who asserts this procedure.
	public var asserter: Reference?
	
	/// A request for this procedure.
	public var basedOn: [Reference]?
	
	/// Target body sites.
	public var bodySite: [CodeableConcept]?
	
	/// Classification of the procedure.
	public var category: CodeableConcept?
	
	/// Identification of the procedure.
	public var code: CodeableConcept?
	
	/// Complication following the procedure.
	public var complication: [CodeableConcept]?
	
	/// A condition that is a result of the procedure.
	public var complicationDetail: [Reference]?
	
	/// Encounter created as part of.
	public var encounter: Reference?
	
	/// Manipulated, implanted, or removed device.
	public var focalDevice: [ProcedureFocalDevice]?
	
	/// Instructions for follow up.
	public var followUp: [CodeableConcept]?
	
	/// External Identifiers for this procedure.
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition.
	public var instantiatesCanonical: [FHIRURL]?
	
	/// Instantiates external protocol or definition.
	public var instantiatesUri: [FHIRURL]?
	
	/// Where the procedure happened.
	public var location: Reference?
	
	/// Additional information about the procedure.
	public var note: [Annotation]?
	
	/// The result of procedure.
	public var outcome: CodeableConcept?
	
	/// Part of referenced event.
	public var partOf: [Reference]?
	
	/// When the procedure was performed.
	public var performedAge: Age?
	
	/// When the procedure was performed.
	public var performedDateTime: DateTime?
	
	/// When the procedure was performed.
	public var performedPeriod: Period?
	
	/// When the procedure was performed.
	public var performedRange: Range?
	
	/// When the procedure was performed.
	public var performedString: FHIRString?
	
	/// The people who performed the procedure.
	public var performer: [ProcedurePerformer]?
	
	/// Coded reason procedure performed.
	public var reasonCode: [CodeableConcept]?
	
	/// The justification that the procedure was performed.
	public var reasonReference: [Reference]?
	
	/// Who recorded the procedure.
	public var recorder: Reference?
	
	/// Any report resulting from the procedure.
	public var report: [Reference]?
	
	/// A code specifying the state of the procedure. Generally, this will be the in-progress or completed state.
	public var status: EventStatus?
	
	/// Reason for current status.
	public var statusReason: CodeableConcept?
	
	/// Who the procedure was performed on.
	public var subject: Reference?
	
	/// Coded items used during the procedure.
	public var usedCode: [CodeableConcept]?
	
	/// Items used during procedure.
	public var usedReference: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: EventStatus, subject: Reference) {
		self.init()
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		asserter = createInstance(type: Reference.self, for: "asserter", in: json, context: &instCtx, owner: self) ?? asserter
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		bodySite = createInstances(of: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		complication = createInstances(of: CodeableConcept.self, for: "complication", in: json, context: &instCtx, owner: self) ?? complication
		complicationDetail = createInstances(of: Reference.self, for: "complicationDetail", in: json, context: &instCtx, owner: self) ?? complicationDetail
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		focalDevice = createInstances(of: ProcedureFocalDevice.self, for: "focalDevice", in: json, context: &instCtx, owner: self) ?? focalDevice
		followUp = createInstances(of: CodeableConcept.self, for: "followUp", in: json, context: &instCtx, owner: self) ?? followUp
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		instantiatesCanonical = createInstances(of: FHIRURL.self, for: "instantiatesCanonical", in: json, context: &instCtx, owner: self) ?? instantiatesCanonical
		instantiatesUri = createInstances(of: FHIRURL.self, for: "instantiatesUri", in: json, context: &instCtx, owner: self) ?? instantiatesUri
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		outcome = createInstance(type: CodeableConcept.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		performedAge = createInstance(type: Age.self, for: "performedAge", in: json, context: &instCtx, owner: self) ?? performedAge
		performedDateTime = createInstance(type: DateTime.self, for: "performedDateTime", in: json, context: &instCtx, owner: self) ?? performedDateTime
		performedPeriod = createInstance(type: Period.self, for: "performedPeriod", in: json, context: &instCtx, owner: self) ?? performedPeriod
		performedRange = createInstance(type: Range.self, for: "performedRange", in: json, context: &instCtx, owner: self) ?? performedRange
		performedString = createInstance(type: FHIRString.self, for: "performedString", in: json, context: &instCtx, owner: self) ?? performedString
		performer = createInstances(of: ProcedurePerformer.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		recorder = createInstance(type: Reference.self, for: "recorder", in: json, context: &instCtx, owner: self) ?? recorder
		report = createInstances(of: Reference.self, for: "report", in: json, context: &instCtx, owner: self) ?? report
		status = createEnum(type: EventStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusReason = createInstance(type: CodeableConcept.self, for: "statusReason", in: json, context: &instCtx, owner: self) ?? statusReason
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		usedCode = createInstances(of: CodeableConcept.self, for: "usedCode", in: json, context: &instCtx, owner: self) ?? usedCode
		usedReference = createInstances(of: Reference.self, for: "usedReference", in: json, context: &instCtx, owner: self) ?? usedReference
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.asserter?.decorate(json: &json, withKey: "asserter", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		arrayDecorate(json: &json, withKey: "bodySite", using: self.bodySite, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "complication", using: self.complication, errors: &errors)
		arrayDecorate(json: &json, withKey: "complicationDetail", using: self.complicationDetail, errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "focalDevice", using: self.focalDevice, errors: &errors)
		arrayDecorate(json: &json, withKey: "followUp", using: self.followUp, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiatesCanonical", using: self.instantiatesCanonical, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiatesUri", using: self.instantiatesUri, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		self.performedAge?.decorate(json: &json, withKey: "performedAge", errors: &errors)
		self.performedDateTime?.decorate(json: &json, withKey: "performedDateTime", errors: &errors)
		self.performedPeriod?.decorate(json: &json, withKey: "performedPeriod", errors: &errors)
		self.performedRange?.decorate(json: &json, withKey: "performedRange", errors: &errors)
		self.performedString?.decorate(json: &json, withKey: "performedString", errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.recorder?.decorate(json: &json, withKey: "recorder", errors: &errors)
		arrayDecorate(json: &json, withKey: "report", using: self.report, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusReason?.decorate(json: &json, withKey: "statusReason", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "usedCode", using: self.usedCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "usedReference", using: self.usedReference, errors: &errors)
	}
}


/**
Manipulated, implanted, or removed device.

A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis,
attaching a wound-vac, etc.) as a focal portion of the Procedure.
*/
open class ProcedureFocalDevice: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcedureFocalDevice" }
	}
	
	/// Kind of change to device.
	public var action: CodeableConcept?
	
	/// Device that was changed.
	public var manipulated: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(manipulated: Reference) {
		self.init()
		self.manipulated = manipulated
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstance(type: CodeableConcept.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		manipulated = createInstance(type: Reference.self, for: "manipulated", in: json, context: &instCtx, owner: self) ?? manipulated
		if nil == manipulated && !instCtx.containsKey("manipulated") {
			instCtx.addError(FHIRValidationError(missing: "manipulated"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.action?.decorate(json: &json, withKey: "action", errors: &errors)
		self.manipulated?.decorate(json: &json, withKey: "manipulated", errors: &errors)
		if nil == self.manipulated {
			errors.append(FHIRValidationError(missing: "manipulated"))
		}
	}
}


/**
The people who performed the procedure.

Limited to "real" people rather than equipment.
*/
open class ProcedurePerformer: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcedurePerformer" }
	}
	
	/// The reference to the practitioner.
	public var actor: Reference?
	
	/// Type of performance.
	public var function: CodeableConcept?
	
	/// Organization the device or practitioner was acting for.
	public var onBehalfOf: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actor = createInstance(type: Reference.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		if nil == actor && !instCtx.containsKey("actor") {
			instCtx.addError(FHIRValidationError(missing: "actor"))
		}
		function = createInstance(type: CodeableConcept.self, for: "function", in: json, context: &instCtx, owner: self) ?? function
		onBehalfOf = createInstance(type: Reference.self, for: "onBehalfOf", in: json, context: &instCtx, owner: self) ?? onBehalfOf
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.function?.decorate(json: &json, withKey: "function", errors: &errors)
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
	}
}

