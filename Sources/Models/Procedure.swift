//
//  Procedure.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Procedure) on 2016-09-15.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, status: String, subject: Reference) {
		self.init(json: nil)
		self.code = code
		self.status = status
		self.subject = subject
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? [FHIRJSON] {
					self.bodySite = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["complication"] {
				presentKeys.insert("complication")
				if let val = exist as? [FHIRJSON] {
					self.complication = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "complication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["component"] {
				presentKeys.insert("component")
				if let val = exist as? [FHIRJSON] {
					self.component = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "component", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["focalDevice"] {
				presentKeys.insert("focalDevice")
				if let val = exist as? [FHIRJSON] {
					self.focalDevice = ProcedureFocalDevice.instantiate(fromArray: val, owner: self) as? [ProcedureFocalDevice]
				}
				else {
					errors.append(FHIRJSONError(key: "focalDevice", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["followUp"] {
				presentKeys.insert("followUp")
				if let val = exist as? [FHIRJSON] {
					self.followUp = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "followUp", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["notPerformed"] {
				presentKeys.insert("notPerformed")
				if let val = exist as? Bool {
					self.notPerformed = val
				}
				else {
					errors.append(FHIRJSONError(key: "notPerformed", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["notes"] {
				presentKeys.insert("notes")
				if let val = exist as? [FHIRJSON] {
					self.notes = Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "notes", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["performedDateTime"] {
				presentKeys.insert("performedDateTime")
				if let val = exist as? String {
					self.performedDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "performedDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["performedPeriod"] {
				presentKeys.insert("performedPeriod")
				if let val = exist as? FHIRJSON {
					self.performedPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "performedPeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? [FHIRJSON] {
					self.performer = ProcedurePerformer.instantiate(fromArray: val, owner: self) as? [ProcedurePerformer]
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["reasonNotPerformed"] {
				presentKeys.insert("reasonNotPerformed")
				if let val = exist as? [FHIRJSON] {
					self.reasonNotPerformed = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonNotPerformed", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["report"] {
				presentKeys.insert("report")
				if let val = exist as? [FHIRJSON] {
					self.report = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "report", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["request"] {
				presentKeys.insert("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "request", wants: FHIRJSON.self, has: type(of: exist)))
				}
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
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			if let exist = js["usedCode"] {
				presentKeys.insert("usedCode")
				if let val = exist as? [FHIRJSON] {
					self.usedCode = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "usedCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["usedReference"] {
				presentKeys.insert("usedReference")
				if let val = exist as? [FHIRJSON] {
					self.usedReference = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "usedReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.map() { $0.asJSON() }
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let complication = self.complication {
			json["complication"] = complication.map() { $0.asJSON() }
		}
		if let component = self.component {
			json["component"] = component.map() { $0.asJSON() }
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let focalDevice = self.focalDevice {
			json["focalDevice"] = focalDevice.map() { $0.asJSON() }
		}
		if let followUp = self.followUp {
			json["followUp"] = followUp.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let notPerformed = self.notPerformed {
			json["notPerformed"] = notPerformed.asJSON()
		}
		if let notes = self.notes {
			json["notes"] = notes.map() { $0.asJSON() }
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let performedDateTime = self.performedDateTime {
			json["performedDateTime"] = performedDateTime.asJSON()
		}
		if let performedPeriod = self.performedPeriod {
			json["performedPeriod"] = performedPeriod.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.map() { $0.asJSON() }
		}
		if let reasonCode = self.reasonCode {
			json["reasonCode"] = reasonCode.map() { $0.asJSON() }
		}
		if let reasonNotPerformed = self.reasonNotPerformed {
			json["reasonNotPerformed"] = reasonNotPerformed.map() { $0.asJSON() }
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.map() { $0.asJSON() }
		}
		if let report = self.report {
			json["report"] = report.map() { $0.asJSON() }
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let usedCode = self.usedCode {
			json["usedCode"] = usedCode.map() { $0.asJSON() }
		}
		if let usedReference = self.usedReference {
			json["usedReference"] = usedReference.map() { $0.asJSON() }
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(manipulated: Reference) {
		self.init(json: nil)
		self.manipulated = manipulated
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? FHIRJSON {
					self.action = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["manipulated"] {
				presentKeys.insert("manipulated")
				if let val = exist as? FHIRJSON {
					self.manipulated = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "manipulated", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "manipulated"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.asJSON()
		}
		if let manipulated = self.manipulated {
			json["manipulated"] = manipulated.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? FHIRJSON {
					self.actor = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? FHIRJSON {
					self.role = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		
		return json
	}
}

