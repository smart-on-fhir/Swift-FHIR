//
//  Procedure.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Procedure) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// Target body sites.
	public var bodySite: [CodeableConcept]?
	
	/// Classification of the procedure.
	public var category: CodeableConcept?
	
	/// Identification of the procedure.
	public var code: CodeableConcept?
	
	/// Complication following the procedure.
	public var complication: [CodeableConcept]?
	
	/// Events related to the procedure.
	public var component: [Reference]?
	
	/// The encounter associated with the procedure.
	public var encounter: Reference?
	
	/// Device changed in procedure.
	public var focalDevice: [ProcedureFocalDevice]?
	
	/// Instructions for follow up.
	public var followUp: [CodeableConcept]?
	
	/// External Identifiers for this procedure.
	public var identifier: [Identifier]?
	
	/// Where the procedure happened.
	public var location: Reference?
	
	/// True if procedure was not performed as scheduled.
	public var notPerformed: FHIRBool?
	
	/// Additional information about the procedure.
	public var notes: [Annotation]?
	
	/// The result of procedure.
	public var outcome: CodeableConcept?
	
	/// Date/Period the procedure was performed.
	public var performedDateTime: DateTime?
	
	/// Date/Period the procedure was performed.
	public var performedPeriod: Period?
	
	/// The people who performed the procedure.
	public var performer: [ProcedurePerformer]?
	
	/// Coded reason procedure performed.
	public var reasonCode: [CodeableConcept]?
	
	/// Reason procedure was not performed.
	public var reasonNotPerformed: [CodeableConcept]?
	
	/// Condition that is the reason the procedure performed.
	public var reasonReference: [Reference]?
	
	/// Any report resulting from the procedure.
	public var report: [Reference]?
	
	/// A request for this procedure.
	public var request: Reference?
	
	/// A code specifying the state of the procedure. Generally this will be in-progress or completed state.
	public var status: ProcedureStatus?
	
	/// Who the procedure was performed on.
	public var subject: Reference?
	
	/// Coded items used during the procedure.
	public var usedCode: [CodeableConcept]?
	
	/// Items used during procedure.
	public var usedReference: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, status: ProcedureStatus, subject: Reference) {
		self.init()
		self.code = code
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		bodySite = try createInstances(of: CodeableConcept.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		complication = try createInstances(of: CodeableConcept.self, for: "complication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? complication
		component = try createInstances(of: Reference.self, for: "component", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? component
		encounter = try createInstance(type: Reference.self, for: "encounter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? encounter
		focalDevice = try createInstances(of: ProcedureFocalDevice.self, for: "focalDevice", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? focalDevice
		followUp = try createInstances(of: CodeableConcept.self, for: "followUp", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? followUp
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		location = try createInstance(type: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		notPerformed = try createInstance(type: FHIRBool.self, for: "notPerformed", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notPerformed
		notes = try createInstances(of: Annotation.self, for: "notes", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notes
		outcome = try createInstance(type: CodeableConcept.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		performedDateTime = try createInstance(type: DateTime.self, for: "performedDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performedDateTime
		performedPeriod = try createInstance(type: Period.self, for: "performedPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performedPeriod
		performer = try createInstances(of: ProcedurePerformer.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonNotPerformed = try createInstances(of: CodeableConcept.self, for: "reasonNotPerformed", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonNotPerformed
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		report = try createInstances(of: Reference.self, for: "report", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? report
		request = try createInstance(type: Reference.self, for: "request", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? request
		status = createEnum(type: ProcedureStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
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
		
		arrayDecorate(json: &json, withKey: "bodySite", using: self.bodySite, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "complication", using: self.complication, errors: &errors)
		arrayDecorate(json: &json, withKey: "component", using: self.component, errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "focalDevice", using: self.focalDevice, errors: &errors)
		arrayDecorate(json: &json, withKey: "followUp", using: self.followUp, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.notPerformed?.decorate(json: &json, withKey: "notPerformed", errors: &errors)
		arrayDecorate(json: &json, withKey: "notes", using: self.notes, errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.performedDateTime?.decorate(json: &json, withKey: "performedDateTime", errors: &errors)
		self.performedPeriod?.decorate(json: &json, withKey: "performedPeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonNotPerformed", using: self.reasonNotPerformed, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "report", using: self.report, errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
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
		if nil == manipulated && !presentKeys.contains("manipulated") {
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
	
	/// The role the actor was in.
	public var role: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actor = try createInstance(type: Reference.self, for: "actor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actor
		role = try createInstance(type: CodeableConcept.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
	}
}

