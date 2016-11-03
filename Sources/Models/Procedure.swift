//
//  Procedure.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Procedure) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  An action that is being or was performed on a patient.
 *
 *  An action that is or was performed on a patient. This can be a physical intervention like an operation, or less
 *  invasive like counseling or hypnotherapy.
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
	public var notPerformed: Bool?
	
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
	
	/// in-progress | aborted | completed | entered-in-error.
	public var status: String?
	
	/// Who the procedure was performed on.
	public var subject: Reference?
	
	/// Coded items used during the procedure.
	public var usedCode: [CodeableConcept]?
	
	/// Items used during procedure.
	public var usedReference: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, status: String, subject: Reference) {
		self.init()
		self.code = code
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["bodySite"] {
			presentKeys.insert("bodySite")
			if let val = exist as? [FHIRJSON] {
				do {
					self.bodySite = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "bodySite"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "bodySite", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["complication"] {
			presentKeys.insert("complication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.complication = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "complication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "complication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["component"] {
			presentKeys.insert("component")
			if let val = exist as? [FHIRJSON] {
				do {
					self.component = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "component"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "component", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["encounter"] {
			presentKeys.insert("encounter")
			if let val = exist as? FHIRJSON {
				do {
					self.encounter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "encounter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["focalDevice"] {
			presentKeys.insert("focalDevice")
			if let val = exist as? [FHIRJSON] {
				do {
					self.focalDevice = try ProcedureFocalDevice.instantiate(fromArray: val, owner: self) as? [ProcedureFocalDevice]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "focalDevice"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "focalDevice", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["followUp"] {
			presentKeys.insert("followUp")
			if let val = exist as? [FHIRJSON] {
				do {
					self.followUp = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "followUp"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "followUp", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? FHIRJSON {
				do {
					self.location = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "location"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["notPerformed"] {
			presentKeys.insert("notPerformed")
			if let val = exist as? Bool {
				self.notPerformed = val
			}
			else {
				errors.append(FHIRValidationError(key: "notPerformed", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["notes"] {
			presentKeys.insert("notes")
			if let val = exist as? [FHIRJSON] {
				do {
					self.notes = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "notes"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "notes", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["outcome"] {
			presentKeys.insert("outcome")
			if let val = exist as? FHIRJSON {
				do {
					self.outcome = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outcome"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["performedDateTime"] {
			presentKeys.insert("performedDateTime")
			if let val = exist as? String {
				self.performedDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "performedDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["performedPeriod"] {
			presentKeys.insert("performedPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.performedPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performedPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performedPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["performer"] {
			presentKeys.insert("performer")
			if let val = exist as? [FHIRJSON] {
				do {
					self.performer = try ProcedurePerformer.instantiate(fromArray: val, owner: self) as? [ProcedurePerformer]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performer", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["reasonNotPerformed"] {
			presentKeys.insert("reasonNotPerformed")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonNotPerformed = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonNotPerformed"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonNotPerformed", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["report"] {
			presentKeys.insert("report")
			if let val = exist as? [FHIRJSON] {
				do {
					self.report = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "report"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "report", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["request"] {
			presentKeys.insert("request")
			if let val = exist as? FHIRJSON {
				do {
					self.request = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "request"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "request", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		if let exist = json["usedCode"] {
			presentKeys.insert("usedCode")
			if let val = exist as? [FHIRJSON] {
				do {
					self.usedCode = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "usedCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "usedCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["usedReference"] {
			presentKeys.insert("usedReference")
			if let val = exist as? [FHIRJSON] {
				do {
					self.usedReference = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "usedReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "usedReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let complication = self.complication {
			json["complication"] = complication.map() { $0.asJSON(errors: &errors) }
		}
		if let component = self.component {
			json["component"] = component.map() { $0.asJSON(errors: &errors) }
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let focalDevice = self.focalDevice {
			json["focalDevice"] = focalDevice.map() { $0.asJSON(errors: &errors) }
		}
		if let followUp = self.followUp {
			json["followUp"] = followUp.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let location = self.location {
			json["location"] = location.asJSON(errors: &errors)
		}
		if let notPerformed = self.notPerformed {
			json["notPerformed"] = notPerformed.asJSON()
		}
		if let notes = self.notes {
			json["notes"] = notes.map() { $0.asJSON(errors: &errors) }
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON(errors: &errors)
		}
		if let performedDateTime = self.performedDateTime {
			json["performedDateTime"] = performedDateTime.asJSON()
		}
		if let performedPeriod = self.performedPeriod {
			json["performedPeriod"] = performedPeriod.asJSON(errors: &errors)
		}
		if let performer = self.performer {
			json["performer"] = performer.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonCode = self.reasonCode {
			json["reasonCode"] = reasonCode.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonNotPerformed = self.reasonNotPerformed {
			json["reasonNotPerformed"] = reasonNotPerformed.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.map() { $0.asJSON(errors: &errors) }
		}
		if let report = self.report {
			json["report"] = report.map() { $0.asJSON(errors: &errors) }
		}
		if let request = self.request {
			json["request"] = request.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let usedCode = self.usedCode {
			json["usedCode"] = usedCode.map() { $0.asJSON(errors: &errors) }
		}
		if let usedReference = self.usedReference {
			json["usedReference"] = usedReference.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
 *  Device changed in procedure.
 *
 *  A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a
 *  prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.
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
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? FHIRJSON {
				do {
					self.action = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["manipulated"] {
			presentKeys.insert("manipulated")
			if let val = exist as? FHIRJSON {
				do {
					self.manipulated = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "manipulated"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "manipulated", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "manipulated"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.asJSON(errors: &errors)
		}
		if let manipulated = self.manipulated {
			json["manipulated"] = manipulated.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  The people who performed the procedure.
 *
 *  Limited to 'real' people rather than equipment.
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
		if let exist = json["actor"] {
			presentKeys.insert("actor")
			if let val = exist as? FHIRJSON {
				do {
					self.actor = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actor", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? FHIRJSON {
				do {
					self.role = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "role"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON(errors: &errors)
		}
		if let role = self.role {
			json["role"] = role.asJSON(errors: &errors)
		}
		
		return json
	}
}

