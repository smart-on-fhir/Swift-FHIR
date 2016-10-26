//
//  Goal.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Goal) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Describes the intended objective(s) for a patient, group or organization.
 *
 *  Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring
 *  an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
 */
open class Goal: DomainResource {
	override open class var resourceType: String {
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
	
	/// What result was achieved regarding the goal?.
	public var outcome: [GoalOutcome]?
	
	/// high | medium |low.
	public var priority: CodeableConcept?
	
	/// When goal pursuit begins.
	public var startCodeableConcept: CodeableConcept?
	
	/// When goal pursuit begins.
	public var startDate: FHIRDate?
	
	/// proposed | planned | accepted | rejected | in-progress | achieved | sustaining | on-hold | cancelled | on-target | ahead-of-target | behind-target | entered-in-error.
	public var status: String?
	
	/// When goal status took effect.
	public var statusDate: FHIRDate?
	
	/// Reason for current status.
	public var statusReason: [CodeableConcept]?
	
	/// Who this goal is intended for.
	public var subject: Reference?
	
	/// Reach goal on or before.
	public var targetDate: FHIRDate?
	
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["addresses"] {
				presentKeys.insert("addresses")
				if let val = exist as? [FHIRJSON] {
					self.addresses = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "addresses", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? [FHIRJSON] {
					self.category = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? FHIRJSON {
					self.description_fhir = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "description"))
			}
			if let exist = js["expressedBy"] {
				presentKeys.insert("expressedBy")
				if let val = exist as? FHIRJSON {
					self.expressedBy = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "expressedBy", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? [FHIRJSON] {
					self.outcome = GoalOutcome.instantiate(fromArray: val, owner: self) as? [GoalOutcome]
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? FHIRJSON {
					self.priority = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["startCodeableConcept"] {
				presentKeys.insert("startCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.startCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "startCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["startDate"] {
				presentKeys.insert("startDate")
				if let val = exist as? String {
					self.startDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "startDate", wants: String.self, has: type(of: exist)))
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
			if let exist = js["statusDate"] {
				presentKeys.insert("statusDate")
				if let val = exist as? String {
					self.statusDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "statusDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["statusReason"] {
				presentKeys.insert("statusReason")
				if let val = exist as? [FHIRJSON] {
					self.statusReason = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "statusReason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
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
			if let exist = js["targetDate"] {
				presentKeys.insert("targetDate")
				if let val = exist as? String {
					self.targetDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "targetDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["targetDuration"] {
				presentKeys.insert("targetDuration")
				if let val = exist as? FHIRJSON {
					self.targetDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "targetDuration", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let addresses = self.addresses {
			json["addresses"] = addresses.map() { $0.asJSON() }
		}
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON() }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let expressedBy = self.expressedBy {
			json["expressedBy"] = expressedBy.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON() }
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.map() { $0.asJSON() }
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
			json["statusReason"] = statusReason.map() { $0.asJSON() }
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
 *  What result was achieved regarding the goal?.
 *
 *  Identifies the change (or lack of change) at the point where the goal was deemed to be cancelled or achieved.
 */
open class GoalOutcome: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["resultCodeableConcept"] {
				presentKeys.insert("resultCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.resultCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resultCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["resultReference"] {
				presentKeys.insert("resultReference")
				if let val = exist as? FHIRJSON {
					self.resultReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resultReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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

