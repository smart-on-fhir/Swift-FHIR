//
//  Goal.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Goal) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Describes the intended objective(s) for a patient, group or organization.

Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an
activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
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
	
	/// Indicates whether the goal has been reached and is still considered relevant.
	public var status: GoalStatus?
	
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: CodeableConcept, status: GoalStatus) {
		self.init()
		self.description_fhir = description_fhir
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["addresses"] {
			presentKeys.insert("addresses")
			if let val = exist as? [FHIRJSON] {
				do {
					self.addresses = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "addresses"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "addresses", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? [FHIRJSON] {
				do {
					self.category = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? FHIRJSON {
				do {
					self.description_fhir = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "description"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "description"))
		}
		if let exist = json["expressedBy"] {
			presentKeys.insert("expressedBy")
			if let val = exist as? FHIRJSON {
				do {
					self.expressedBy = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "expressedBy"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "expressedBy", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["outcome"] {
			presentKeys.insert("outcome")
			if let val = exist as? [FHIRJSON] {
				do {
					self.outcome = try GoalOutcome.instantiate(fromArray: val, owner: self) as? [GoalOutcome]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outcome"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["priority"] {
			presentKeys.insert("priority")
			if let val = exist as? FHIRJSON {
				do {
					self.priority = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "priority"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "priority", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["startCodeableConcept"] {
			presentKeys.insert("startCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.startCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "startCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "startCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["startDate"] {
			presentKeys.insert("startDate")
			if let val = exist as? String {
				self.startDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "startDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = GoalStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["statusDate"] {
			presentKeys.insert("statusDate")
			if let val = exist as? String {
				self.statusDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "statusDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["statusReason"] {
			presentKeys.insert("statusReason")
			if let val = exist as? [FHIRJSON] {
				do {
					self.statusReason = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "statusReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "statusReason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
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
		if let exist = json["targetDate"] {
			presentKeys.insert("targetDate")
			if let val = exist as? String {
				self.targetDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "targetDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["targetDuration"] {
			presentKeys.insert("targetDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.targetDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "targetDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "targetDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let addresses = self.addresses {
			json["addresses"] = addresses.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON(errors: &errors) }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON(errors: &errors)
		}
		if let expressedBy = self.expressedBy {
			json["expressedBy"] = expressedBy.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.map() { $0.asJSON(errors: &errors) }
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON(errors: &errors)
		}
		if let startCodeableConcept = self.startCodeableConcept {
			json["startCodeableConcept"] = startCodeableConcept.asJSON(errors: &errors)
		}
		if let startDate = self.startDate {
			json["startDate"] = startDate.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let statusDate = self.statusDate {
			json["statusDate"] = statusDate.asJSON()
		}
		if let statusReason = self.statusReason {
			json["statusReason"] = statusReason.map() { $0.asJSON(errors: &errors) }
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let targetDate = self.targetDate {
			json["targetDate"] = targetDate.asJSON()
		}
		if let targetDuration = self.targetDuration {
			json["targetDuration"] = targetDuration.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
What result was achieved regarding the goal?.

Identifies the change (or lack of change) at the point where the goal was deemed to be cancelled or achieved.
*/
open class GoalOutcome: BackboneElement {
	override open class var resourceType: String {
		get { return "GoalOutcome" }
	}
	
	/// Code or observation that resulted from goal.
	public var resultCodeableConcept: CodeableConcept?
	
	/// Code or observation that resulted from goal.
	public var resultReference: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["resultCodeableConcept"] {
			presentKeys.insert("resultCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.resultCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resultCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resultCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["resultReference"] {
			presentKeys.insert("resultReference")
			if let val = exist as? FHIRJSON {
				do {
					self.resultReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resultReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resultReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let resultCodeableConcept = self.resultCodeableConcept {
			json["resultCodeableConcept"] = resultCodeableConcept.asJSON(errors: &errors)
		}
		if let resultReference = self.resultReference {
			json["resultReference"] = resultReference.asJSON(errors: &errors)
		}
		
		return json
	}
}

