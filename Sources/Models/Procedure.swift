//
//  Procedure.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/Procedure) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
An action that is being or was performed on a patient.

An action that is or was performed on a patient. This can be a physical intervention like an operation, or less invasive
like counseling or hypnotherapy.
*/
open class Procedure: DomainResource {
	override open class var resourceType: String {
		get { return "Procedure" }
	}
	
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
	
	/// A condition that is a result of the procedure.
	public var complicationDetail: [Reference]?
	
	/// Encounter or episode associated with the procedure.
	public var context: Reference?
	
	/// Instantiates protocol or definition.
	public var definition: [Reference]?
	
	/// Device changed in procedure.
	public var focalDevice: [ProcedureFocalDevice]?
	
	/// Instructions for follow up.
	public var followUp: [CodeableConcept]?
	
	/// External Identifiers for this procedure.
	public var identifier: [Identifier]?
	
	/// Where the procedure happened.
	public var location: Reference?
	
	/// True if procedure was not performed as scheduled.
	public var notDone: FHIRBool?
	
	/// Reason procedure was not performed.
	public var notDoneReason: CodeableConcept?
	
	/// Additional information about the procedure.
	public var note: [Annotation]?
	
	/// The result of procedure.
	public var outcome: CodeableConcept?
	
	/// Part of referenced event.
	public var partOf: [Reference]?
	
	/// Date/Period the procedure was performed.
	public var performedDateTime: DateTime?
	
	/// Date/Period the procedure was performed.
	public var performedPeriod: Period?
	
	/// The people who performed the procedure.
	public var performer: [ProcedurePerformer]?
	
	/// Coded reason procedure performed.
	public var reasonCode: [CodeableConcept]?
	
	/// Condition that is the reason the procedure performed.
	public var reasonReference: [Reference]?
	
	/// Any report resulting from the procedure.
	public var report: [Reference]?
	
	/// A code specifying the state of the procedure. Generally this will be in-progress or completed state.
	public var status: EventStatus?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		bodySite = try createInstances(of: CodeableConcept.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		complication = try createInstances(of: CodeableConcept.self, for: "complication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? complication
		complicationDetail = try createInstances(of: Reference.self, for: "complicationDetail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? complicationDetail
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		definition = try createInstances(of: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		focalDevice = try createInstances(of: ProcedureFocalDevice.self, for: "focalDevice", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? focalDevice
		followUp = try createInstances(of: CodeableConcept.self, for: "followUp", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? followUp
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		location = try createInstance(type: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		notDone = try createInstance(type: FHIRBool.self, for: "notDone", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notDone
		notDoneReason = try createInstance(type: CodeableConcept.self, for: "notDoneReason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notDoneReason
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		outcome = try createInstance(type: CodeableConcept.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		partOf = try createInstances(of: Reference.self, for: "partOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partOf
		performedDateTime = try createInstance(type: DateTime.self, for: "performedDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performedDateTime
		performedPeriod = try createInstance(type: Period.self, for: "performedPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performedPeriod
		performer = try createInstances(of: ProcedurePerformer.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		report = try createInstances(of: Reference.self, for: "report", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? report
		status = createEnum(type: EventStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		usedCode = try createInstances(of: CodeableConcept.self, for: "usedCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? usedCode
		usedReference = try createInstances(of: Reference.self, for: "usedReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? usedReference
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		arrayDecorate(json: &json, withKey: "bodySite", using: self.bodySite, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "complication", using: self.complication, errors: &errors)
		arrayDecorate(json: &json, withKey: "complicationDetail", using: self.complicationDetail, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		arrayDecorate(json: &json, withKey: "focalDevice", using: self.focalDevice, errors: &errors)
		arrayDecorate(json: &json, withKey: "followUp", using: self.followUp, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.notDone?.decorate(json: &json, withKey: "notDone", errors: &errors)
		self.notDoneReason?.decorate(json: &json, withKey: "notDoneReason", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		self.performedDateTime?.decorate(json: &json, withKey: "performedDateTime", errors: &errors)
		self.performedPeriod?.decorate(json: &json, withKey: "performedPeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "report", using: self.report, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "usedCode", using: self.usedCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "usedReference", using: self.usedReference, errors: &errors)
	}
}


/**
Device changed in procedure.

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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		action = try createInstance(type: CodeableConcept.self, for: "action", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? action
		manipulated = try createInstance(type: Reference.self, for: "manipulated", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? manipulated
		if nil == manipulated && !presentKeys.contains("manipulated") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "manipulated"))
		}
		
		return errors.isEmpty ? nil : errors
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

Limited to 'real' people rather than equipment.
*/
open class ProcedurePerformer: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcedurePerformer" }
	}
	
	/// The reference to the practitioner.
	public var actor: Reference?
	
	/// Organization the device or practitioner was acting for.
	public var onBehalfOf: Reference?
	
	/// The role the actor was in.
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actor = try createInstance(type: Reference.self, for: "actor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actor
		if nil == actor && !presentKeys.contains("actor") {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		onBehalfOf = try createInstance(type: Reference.self, for: "onBehalfOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onBehalfOf
		role = try createInstance(type: CodeableConcept.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
	}
}

