//
//  Procedure.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Procedure) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  An action that was or is currently being performed on a patient.
 *
 *  An action that is or was performed on a patient. This can be a physical 'thing' like an operation, or less invasive
 *  like counseling or hypnotherapy.
 */
public class Procedure: DomainResource
{
	override public class var resourceName: String {
		get { return "Procedure" }
	}
	
	/// Precise location details
	public var bodySite: [ProcedureBodySite]?
	
	/// Classification of the procedure
	public var category: CodeableConcept?
	
	/// Complication following the procedure
	public var complication: [CodeableConcept]?
	
	/// Device changed in procedure
	public var device: [ProcedureDevice]?
	
	/// The encounter when procedure performed
	public var encounter: Reference?
	
	/// Instructions for follow up
	public var followUp: [CodeableConcept]?
	
	/// External Ids for this procedure
	public var identifier: [Identifier]?
	
	/// Reason procedure performed
	public var indication: [CodeableConcept]?
	
	/// Where the procedure happened
	public var location: Reference?
	
	/// Additional information about procedure
	public var notes: String?
	
	/// What was result of procedure?
	public var outcome: CodeableConcept?
	
	/// Who procedure was performed on
	public var patient: Reference?
	
	/// Date/Period the procedure was performed
	public var performedDateTime: DateTime?
	
	/// Date/Period the procedure was performed
	public var performedPeriod: Period?
	
	/// The people who performed the procedure
	public var performer: [ProcedurePerformer]?
	
	/// A procedure that is related to this one
	public var relatedItem: [ProcedureRelatedItem]?
	
	/// Any report that results from the procedure
	public var report: [Reference]?
	
	/// in-progress | aborted | completed | entered-in-error
	public var status: String?
	
	/// Identification of the procedure
	public var type: CodeableConcept?
	
	/// Items used during procedure
	public var used: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference?, status: String?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != status {
			self.status = status
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? [FHIRJSON] {
					self.bodySite = ProcedureBodySite.from(val, owner: self) as? [ProcedureBodySite]
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
			if let exist: AnyObject = js["complication"] {
				presentKeys.insert("complication")
				if let val = exist as? [FHIRJSON] {
					self.complication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "complication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["device"] {
				presentKeys.insert("device")
				if let val = exist as? [FHIRJSON] {
					self.device = ProcedureDevice.from(val, owner: self) as? [ProcedureDevice]
				}
				else {
					errors.append(FHIRJSONError(key: "device", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["indication"] {
				presentKeys.insert("indication")
				if let val = exist as? [FHIRJSON] {
					self.indication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "indication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["notes"] {
				presentKeys.insert("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(FHIRJSONError(key: "notes", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "patient"))
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
			if let exist: AnyObject = js["relatedItem"] {
				presentKeys.insert("relatedItem")
				if let val = exist as? [FHIRJSON] {
					self.relatedItem = ProcedureRelatedItem.from(val, owner: self) as? [ProcedureRelatedItem]
				}
				else {
					errors.append(FHIRJSONError(key: "relatedItem", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["used"] {
				presentKeys.insert("used")
				if let val = exist as? [FHIRJSON] {
					self.used = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "used", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bodySite = self.bodySite {
			json["bodySite"] = ProcedureBodySite.asJSONArray(bodySite)
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let complication = self.complication {
			json["complication"] = CodeableConcept.asJSONArray(complication)
		}
		if let device = self.device {
			json["device"] = ProcedureDevice.asJSONArray(device)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let followUp = self.followUp {
			json["followUp"] = CodeableConcept.asJSONArray(followUp)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let indication = self.indication {
			json["indication"] = CodeableConcept.asJSONArray(indication)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
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
		if let relatedItem = self.relatedItem {
			json["relatedItem"] = ProcedureRelatedItem.asJSONArray(relatedItem)
		}
		if let report = self.report {
			json["report"] = Reference.asJSONArray(report)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let used = self.used {
			json["used"] = Reference.asJSONArray(used)
		}
		
		return json
	}
}


/**
 *  Precise location details.
 *
 *  Detailed and structured anatomical location information. Multiple locations are allowed - e.g. multiple punch
 *  biopsies of a lesion.
 */
public class ProcedureBodySite: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcedureBodySite" }
	}
	
	/// Precise location details
	public var siteCodeableConcept: CodeableConcept?
	
	/// Precise location details
	public var siteReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(siteCodeableConcept: CodeableConcept?, siteReference: Reference?) {
		self.init(json: nil)
		if nil != siteCodeableConcept {
			self.siteCodeableConcept = siteCodeableConcept
		}
		if nil != siteReference {
			self.siteReference = siteReference
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["siteCodeableConcept"] {
				presentKeys.insert("siteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.siteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "siteCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["siteReference"] {
				presentKeys.insert("siteReference")
				if let val = exist as? FHIRJSON {
					self.siteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "siteReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.siteCodeableConcept && nil == self.siteReference {
				errors.append(FHIRJSONError(key: "site[x]*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let siteCodeableConcept = self.siteCodeableConcept {
			json["siteCodeableConcept"] = siteCodeableConcept.asJSON()
		}
		if let siteReference = self.siteReference {
			json["siteReference"] = siteReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Device changed in procedure.
 *
 *  A device change during the procedure.
 */
public class ProcedureDevice: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcedureDevice" }
	}
	
	/// Kind of change to device
	public var action: CodeableConcept?
	
	/// Device that was changed
	public var manipulated: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(manipulated: Reference?) {
		self.init(json: nil)
		if nil != manipulated {
			self.manipulated = manipulated
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
public class ProcedurePerformer: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcedurePerformer" }
	}
	
	/// The reference to the practitioner
	public var person: Reference?
	
	/// The role the person was in
	public var role: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["person"] {
				presentKeys.insert("person")
				if let val = exist as? FHIRJSON {
					self.person = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "person", wants: FHIRJSON.self, has: exist.dynamicType))
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
		
		if let person = self.person {
			json["person"] = person.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		
		return json
	}
}


/**
 *  A procedure that is related to this one.
 *
 *  Procedures may be related to other items such as procedures or medications. For example treating wound dehiscence
 *  following a previous procedure.
 */
public class ProcedureRelatedItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcedureRelatedItem" }
	}
	
	/// The related item - e.g. a procedure
	public var target: Reference?
	
	/// caused-by | because-of
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

