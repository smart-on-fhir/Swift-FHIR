//
//  Goal.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Goal) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Describes the intended objective(s) of patient care.
 *
 *  Describes the intended objective(s) of patient care, for example, weight loss, restoring an activity of daily
 *  living, etc.
 */
public class Goal: DomainResource
{
	override public class var resourceName: String {
		get { return "Goal" }
	}
	
	/// Who's responsible for creating Goal?
	public var author: Reference?
	
	/// Health issues this goal addresses
	public var concern: [Reference]?
	
	/// What's the desired outcome?
	public var description_fhir: String?
	
	/// External Ids for this goal
	public var identifier: [Identifier]?
	
	/// Comments about the goal
	public var notes: String?
	
	/// What was end result of goal?
	public var outcome: [GoalOutcome]?
	
	/// The patient for whom this goal is intended for
	public var patient: Reference?
	
	/// high | medium |low
	public var priority: CodeableConcept?
	
	/// proposed | planned | in-progress | achieved | sustaining | cancelled | accepted | rejected
	public var status: String?
	
	/// When goal status took effect
	public var statusDate: Date?
	
	/// Reach goal on or before
	public var targetDate: Date?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: String?, status: String?) {
		self.init(json: nil)
		if nil != description_fhir {
			self.description_fhir = description_fhir
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["concern"] {
				presentKeys.insert("concern")
				if let val = exist as? [FHIRJSON] {
					self.concern = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "concern", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "description"))
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
				if let val = exist as? [FHIRJSON] {
					self.outcome = GoalOutcome.from(val, owner: self) as? [GoalOutcome]
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? FHIRJSON {
					self.priority = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["statusDate"] {
				presentKeys.insert("statusDate")
				if let val = exist as? String {
					self.statusDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "statusDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["targetDate"] {
				presentKeys.insert("targetDate")
				if let val = exist as? String {
					self.targetDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "targetDate", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let concern = self.concern {
			json["concern"] = Reference.asJSONArray(concern)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = GoalOutcome.asJSONArray(outcome)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let statusDate = self.statusDate {
			json["statusDate"] = statusDate.asJSON()
		}
		if let targetDate = self.targetDate {
			json["targetDate"] = targetDate.asJSON()
		}
		
		return json
	}
}


/**
 *  What was end result of goal?.
 *
 *  Identifies the change (or lack of change) at the point where the goal was deepmed to be cancelled or achieved.
 */
public class GoalOutcome: FHIRElement
{
	override public class var resourceName: String {
		get { return "GoalOutcome" }
	}
	
	/// Code or observation that resulted from gual
	public var resultCodeableConcept: CodeableConcept?
	
	/// Code or observation that resulted from gual
	public var resultReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["resultCodeableConcept"] {
				presentKeys.insert("resultCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.resultCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resultCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resultReference"] {
				presentKeys.insert("resultReference")
				if let val = exist as? FHIRJSON {
					self.resultReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resultReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let resultCodeableConcept = self.resultCodeableConcept {
			json["resultCodeableConcept"] = resultCodeableConcept.asJSON()
		}
		if let resultReference = self.resultReference {
			json["resultReference"] = resultReference.asJSON()
		}
		
		return json
	}
}

