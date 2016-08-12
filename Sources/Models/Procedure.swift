//
//  Procedure.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Procedure) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  An action that is being or was performed on a patient.
 *
 *  An action that is or was performed on a patient. This can be a physical intervention like an operation, or less
 *  invasive like counseling or hypnotherapy.
 */
public class Procedure: DomainResource {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? [FHIRJSON] {
					self.bodySite = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["complication"] {
				presentKeys.insert("complication")
				if let val = exist as? [FHIRJSON] {
					self.complication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "complication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["component"] {
				presentKeys.insert("component")
				if let val = exist as? [FHIRJSON] {
					self.component = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "component", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["focalDevice"] {
				presentKeys.insert("focalDevice")
				if let val = exist as? [FHIRJSON] {
					self.focalDevice = ProcedureFocalDevice.from(val, owner: self) as? [ProcedureFocalDevice]
				}
				else {
					errors.append(FHIRJSONError(key: "focalDevice", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["followUp"] {
				presentKeys.insert("followUp")
				if let val = exist as? [FHIRJSON] {
					self.followUp = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "followUp", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["notPerformed"] {
				presentKeys.insert("notPerformed")
				if let val = exist as? Bool {
					self.notPerformed = val
				}
				else {
					errors.append(FHIRJSONError(key: "notPerformed", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.insert("notes")
				if let val = exist as? [FHIRJSON] {
					self.notes = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "notes", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["performedDateTime"] {
				presentKeys.insert("performedDateTime")
				if let val = exist as? String {
					self.performedDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "performedDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["performedPeriod"] {
				presentKeys.insert("performedPeriod")
				if let val = exist as? FHIRJSON {
					self.performedPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "performedPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? [FHIRJSON] {
					self.performer = ProcedurePerformer.from(val, owner: self) as? [ProcedurePerformer]
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonCode"] {
				presentKeys.insert("reasonCode")
				if let val = exist as? [FHIRJSON] {
					self.reasonCode = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonNotPerformed"] {
				presentKeys.insert("reasonNotPerformed")
				if let val = exist as? [FHIRJSON] {
					self.reasonNotPerformed = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonNotPerformed", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? [FHIRJSON] {
					self.reasonReference = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["report"] {
				presentKeys.insert("report")
				if let val = exist as? [FHIRJSON] {
					self.report = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "report", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["request"] {
				presentKeys.insert("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "request", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			if let exist: AnyObject = js["usedCode"] {
				presentKeys.insert("usedCode")
				if let val = exist as? [FHIRJSON] {
					self.usedCode = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "usedCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["usedReference"] {
				presentKeys.insert("usedReference")
				if let val = exist as? [FHIRJSON] {
					self.usedReference = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "usedReference", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bodySite = self.bodySite {
			json["bodySite"] = CodeableConcept.asJSONArray(bodySite)
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let complication = self.complication {
			json["complication"] = CodeableConcept.asJSONArray(complication)
		}
		if let component = self.component {
			json["component"] = Reference.asJSONArray(component)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let focalDevice = self.focalDevice {
			json["focalDevice"] = ProcedureFocalDevice.asJSONArray(focalDevice)
		}
		if let followUp = self.followUp {
			json["followUp"] = CodeableConcept.asJSONArray(followUp)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let notPerformed = self.notPerformed {
			json["notPerformed"] = notPerformed.asJSON()
		}
		if let notes = self.notes {
			json["notes"] = Annotation.asJSONArray(notes)
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
			json["performer"] = ProcedurePerformer.asJSONArray(performer)
		}
		if let reasonCode = self.reasonCode {
			json["reasonCode"] = CodeableConcept.asJSONArray(reasonCode)
		}
		if let reasonNotPerformed = self.reasonNotPerformed {
			json["reasonNotPerformed"] = CodeableConcept.asJSONArray(reasonNotPerformed)
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = Reference.asJSONArray(reasonReference)
		}
		if let report = self.report {
			json["report"] = Reference.asJSONArray(report)
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
			json["usedCode"] = CodeableConcept.asJSONArray(usedCode)
		}
		if let usedReference = self.usedReference {
			json["usedReference"] = Reference.asJSONArray(usedReference)
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
public class ProcedureFocalDevice: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? FHIRJSON {
					self.action = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["manipulated"] {
				presentKeys.insert("manipulated")
				if let val = exist as? FHIRJSON {
					self.manipulated = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "manipulated", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "manipulated"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class ProcedurePerformer: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? FHIRJSON {
					self.actor = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? FHIRJSON {
					self.role = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

