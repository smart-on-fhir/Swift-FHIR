//
//  Goal.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Goal) on 2016-12-08.
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
		
		addresses = try createInstances(of: Reference.self, for: "addresses", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? addresses
		category = try createInstances(of: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		description_fhir = try createInstance(type: CodeableConcept.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		if nil == description_fhir && !presentKeys.contains("description") {
			errors.append(FHIRValidationError(missing: "description"))
		}
		expressedBy = try createInstance(type: Reference.self, for: "expressedBy", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expressedBy
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		outcome = try createInstances(of: GoalOutcome.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		priority = try createInstance(type: CodeableConcept.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priority
		startCodeableConcept = try createInstance(type: CodeableConcept.self, for: "startCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? startCodeableConcept
		startDate = try createInstance(type: FHIRDate.self, for: "startDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? startDate
		status = createEnum(type: GoalStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		statusDate = try createInstance(type: FHIRDate.self, for: "statusDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? statusDate
		statusReason = try createInstances(of: CodeableConcept.self, for: "statusReason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? statusReason
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		targetDate = try createInstance(type: FHIRDate.self, for: "targetDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? targetDate
		targetDuration = try createInstance(type: Duration.self, for: "targetDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? targetDuration
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "addresses", using: self.addresses, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		if nil == self.description_fhir {
			errors.append(FHIRValidationError(missing: "description"))
		}
		self.expressedBy?.decorate(json: &json, withKey: "expressedBy", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "outcome", using: self.outcome, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.startCodeableConcept?.decorate(json: &json, withKey: "startCodeableConcept", errors: &errors)
		self.startDate?.decorate(json: &json, withKey: "startDate", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusDate?.decorate(json: &json, withKey: "statusDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "statusReason", using: self.statusReason, errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.targetDate?.decorate(json: &json, withKey: "targetDate", errors: &errors)
		self.targetDuration?.decorate(json: &json, withKey: "targetDuration", errors: &errors)
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
		
		resultCodeableConcept = try createInstance(type: CodeableConcept.self, for: "resultCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resultCodeableConcept
		resultReference = try createInstance(type: Reference.self, for: "resultReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resultReference
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.resultCodeableConcept?.decorate(json: &json, withKey: "resultCodeableConcept", errors: &errors)
		self.resultReference?.decorate(json: &json, withKey: "resultReference", errors: &errors)
	}
}

