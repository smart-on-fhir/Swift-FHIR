//
//  Goal.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Goal) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Describes the intended objective(s) for a patient, group or organization.
 *
 *  Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring
 *  an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
 */
public class Goal: DomainResource {
	override public class var resourceName: String {
		get { return "Goal" }
	}
	
	/// Issues addressed by this goal.
	public var addresses: [Reference]?
	
	/// E.g. Treatment, dietary, behavioral, etc..
	public var category: [CodeableConcept]?
	
	/// Code or text describing goal.
	public var description_fhir: CodeableConcept?
	
	/// Who's responsible for creating Goal?.
	public var expressedBy: Reference?
	
	/// External Ids for this goal.
	public var identifier: [Identifier]?
	
	/// Comments about the goal.
	public var note: [Annotation]?
	
	/// What was end result of goal?.
	public var outcome: [GoalOutcome]?
	
	/// high | medium |low.
	public var priority: CodeableConcept?
	
	/// When goal pursuit begins.
	public var startCodeableConcept: CodeableConcept?
	
	/// When goal pursuit begins.
	public var startDate: Date?
	
	/// proposed | planned | accepted | rejected | in-progress | achieved | sustaining | on-hold | cancelled | on-target | ahead-of-target | behind-target.
	public var status: String?
	
	/// When goal status took effect.
	public var statusDate: Date?
	
	/// Reason for current status.
	public var statusReason: [CodeableConcept]?
	
	/// Who this goal is intended for.
	public var subject: Reference?
	
	/// Reach goal on or before.
	public var targetDate: Date?
	
	/// Reach goal on or before.
	public var targetDuration: Duration?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: CodeableConcept, status: String) {
		self.init(json: nil)
		self.description_fhir = description_fhir
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["addresses"] {
				presentKeys.insert("addresses")
				if let val = exist as? [FHIRJSON] {
					self.addresses = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "addresses", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? [FHIRJSON] {
					self.category = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? FHIRJSON {
					self.description_fhir = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "description"))
			}
			if let exist: AnyObject = js["expressedBy"] {
				presentKeys.insert("expressedBy")
				if let val = exist as? FHIRJSON {
					self.expressedBy = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "expressedBy", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? FHIRJSON {
					self.priority = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["startCodeableConcept"] {
				presentKeys.insert("startCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.startCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "startCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["startDate"] {
				presentKeys.insert("startDate")
				if let val = exist as? String {
					self.startDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "startDate", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["statusReason"] {
				presentKeys.insert("statusReason")
				if let val = exist as? [FHIRJSON] {
					self.statusReason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "statusReason", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["targetDate"] {
				presentKeys.insert("targetDate")
				if let val = exist as? String {
					self.targetDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "targetDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["targetDuration"] {
				presentKeys.insert("targetDuration")
				if let val = exist as? FHIRJSON {
					self.targetDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "targetDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let addresses = self.addresses {
			json["addresses"] = Reference.asJSONArray(addresses)
		}
		if let category = self.category {
			json["category"] = CodeableConcept.asJSONArray(category)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let expressedBy = self.expressedBy {
			json["expressedBy"] = expressedBy.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
		}
		if let outcome = self.outcome {
			json["outcome"] = GoalOutcome.asJSONArray(outcome)
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let startCodeableConcept = self.startCodeableConcept {
			json["startCodeableConcept"] = startCodeableConcept.asJSON()
		}
		if let startDate = self.startDate {
			json["startDate"] = startDate.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let statusDate = self.statusDate {
			json["statusDate"] = statusDate.asJSON()
		}
		if let statusReason = self.statusReason {
			json["statusReason"] = CodeableConcept.asJSONArray(statusReason)
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let targetDate = self.targetDate {
			json["targetDate"] = targetDate.asJSON()
		}
		if let targetDuration = self.targetDuration {
			json["targetDuration"] = targetDuration.asJSON()
		}
		
		return json
	}
}


/**
 *  What was end result of goal?.
 *
 *  Identifies the change (or lack of change) at the point where the goal was deemed to be cancelled or achieved.
 */
public class GoalOutcome: BackboneElement {
	override public class var resourceName: String {
		get { return "GoalOutcome" }
	}
	
	/// Code or observation that resulted from goal.
	public var resultCodeableConcept: CodeableConcept?
	
	/// Code or observation that resulted from goal.
	public var resultReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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

