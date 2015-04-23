//
//  Goal.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Goal) on 2015-04-23.
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(description_fhir: String?, status: String?) {
		self.init(json: nil)
		if nil != description_fhir {
			self.description_fhir = description_fhir
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.addObject("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"author\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["concern"] {
				presentKeys.addObject("concern")
				if let val = exist as? [FHIRJSON] {
					self.concern = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"concern\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"description\" but it is missing"))
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.addObject("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"notes\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["outcome"] {
				presentKeys.addObject("outcome")
				if let val = exist as? [FHIRJSON] {
					self.outcome = GoalOutcome.from(val, owner: self) as? [GoalOutcome]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"outcome\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["priority"] {
				presentKeys.addObject("priority")
				if let val = exist as? FHIRJSON {
					self.priority = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"priority\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["statusDate"] {
				presentKeys.addObject("statusDate")
				if let val = exist as? String {
					self.statusDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"statusDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["targetDate"] {
				presentKeys.addObject("targetDate")
				if let val = exist as? String {
					self.targetDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"targetDate\" to be `String`, but is \(exist.dynamicType)"))
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["resultCodeableConcept"] {
				presentKeys.addObject("resultCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.resultCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"resultCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["resultReference"] {
				presentKeys.addObject("resultReference")
				if let val = exist as? FHIRJSON {
					self.resultReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"resultReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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

