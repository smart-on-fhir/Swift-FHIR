//
//  Goal.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Goal) on 2019-03-01.
//  2019, SMART Health IT.
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
	
	/// in-progress | improving | worsening | no-change | achieved | sustaining | not-achieved | no-progress | not-
	/// attainable.
	public var achievementStatus: CodeableConcept?
	
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
	
	/// The state of the goal throughout its lifecycle.
	public var lifecycleStatus: GoalLifecycleStatus?
	
	/// Comments about the goal.
	public var note: [Annotation]?
	
	/// What result was achieved regarding the goal?.
	public var outcomeCode: [CodeableConcept]?
	
	/// Observation that resulted from goal.
	public var outcomeReference: [Reference]?
	
	/// high-priority | medium-priority | low-priority.
	public var priority: CodeableConcept?
	
	/// When goal pursuit begins.
	public var startCodeableConcept: CodeableConcept?
	
	/// When goal pursuit begins.
	public var startDate: FHIRDate?
	
	/// When goal status took effect.
	public var statusDate: FHIRDate?
	
	/// Reason for current status.
	public var statusReason: FHIRString?
	
	/// Who this goal is intended for.
	public var subject: Reference?
	
	/// Target outcome for the goal.
	public var target: [GoalTarget]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: CodeableConcept, lifecycleStatus: GoalLifecycleStatus, subject: Reference) {
		self.init()
		self.description_fhir = description_fhir
		self.lifecycleStatus = lifecycleStatus
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		achievementStatus = createInstance(type: CodeableConcept.self, for: "achievementStatus", in: json, context: &instCtx, owner: self) ?? achievementStatus
		addresses = createInstances(of: Reference.self, for: "addresses", in: json, context: &instCtx, owner: self) ?? addresses
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		description_fhir = createInstance(type: CodeableConcept.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		if nil == description_fhir && !instCtx.containsKey("description") {
			instCtx.addError(FHIRValidationError(missing: "description"))
		}
		expressedBy = createInstance(type: Reference.self, for: "expressedBy", in: json, context: &instCtx, owner: self) ?? expressedBy
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		lifecycleStatus = createEnum(type: GoalLifecycleStatus.self, for: "lifecycleStatus", in: json, context: &instCtx) ?? lifecycleStatus
		if nil == lifecycleStatus && !instCtx.containsKey("lifecycleStatus") {
			instCtx.addError(FHIRValidationError(missing: "lifecycleStatus"))
		}
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		outcomeCode = createInstances(of: CodeableConcept.self, for: "outcomeCode", in: json, context: &instCtx, owner: self) ?? outcomeCode
		outcomeReference = createInstances(of: Reference.self, for: "outcomeReference", in: json, context: &instCtx, owner: self) ?? outcomeReference
		priority = createInstance(type: CodeableConcept.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		startCodeableConcept = createInstance(type: CodeableConcept.self, for: "startCodeableConcept", in: json, context: &instCtx, owner: self) ?? startCodeableConcept
		startDate = createInstance(type: FHIRDate.self, for: "startDate", in: json, context: &instCtx, owner: self) ?? startDate
		statusDate = createInstance(type: FHIRDate.self, for: "statusDate", in: json, context: &instCtx, owner: self) ?? statusDate
		statusReason = createInstance(type: FHIRString.self, for: "statusReason", in: json, context: &instCtx, owner: self) ?? statusReason
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		target = createInstances(of: GoalTarget.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.achievementStatus?.decorate(json: &json, withKey: "achievementStatus", errors: &errors)
		arrayDecorate(json: &json, withKey: "addresses", using: self.addresses, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		if nil == self.description_fhir {
			errors.append(FHIRValidationError(missing: "description"))
		}
		self.expressedBy?.decorate(json: &json, withKey: "expressedBy", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.lifecycleStatus?.decorate(json: &json, withKey: "lifecycleStatus", errors: &errors)
		if nil == self.lifecycleStatus {
			errors.append(FHIRValidationError(missing: "lifecycleStatus"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "outcomeCode", using: self.outcomeCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "outcomeReference", using: self.outcomeReference, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.startCodeableConcept?.decorate(json: &json, withKey: "startCodeableConcept", errors: &errors)
		self.startDate?.decorate(json: &json, withKey: "startDate", errors: &errors)
		self.statusDate?.decorate(json: &json, withKey: "statusDate", errors: &errors)
		self.statusReason?.decorate(json: &json, withKey: "statusReason", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "target", using: self.target, errors: &errors)
	}
}


/**
Target outcome for the goal.

Indicates what should be done by when.
*/
open class GoalTarget: BackboneElement {
	override open class var resourceType: String {
		get { return "GoalTarget" }
	}
	
	/// The target value to be achieved.
	public var detailBoolean: FHIRBool?
	
	/// The target value to be achieved.
	public var detailCodeableConcept: CodeableConcept?
	
	/// The target value to be achieved.
	public var detailInteger: FHIRInteger?
	
	/// The target value to be achieved.
	public var detailQuantity: Quantity?
	
	/// The target value to be achieved.
	public var detailRange: Range?
	
	/// The target value to be achieved.
	public var detailRatio: Ratio?
	
	/// The target value to be achieved.
	public var detailString: FHIRString?
	
	/// Reach goal on or before.
	public var dueDate: FHIRDate?
	
	/// Reach goal on or before.
	public var dueDuration: Duration?
	
	/// The parameter whose value is being tracked.
	public var measure: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		detailBoolean = createInstance(type: FHIRBool.self, for: "detailBoolean", in: json, context: &instCtx, owner: self) ?? detailBoolean
		detailCodeableConcept = createInstance(type: CodeableConcept.self, for: "detailCodeableConcept", in: json, context: &instCtx, owner: self) ?? detailCodeableConcept
		detailInteger = createInstance(type: FHIRInteger.self, for: "detailInteger", in: json, context: &instCtx, owner: self) ?? detailInteger
		detailQuantity = createInstance(type: Quantity.self, for: "detailQuantity", in: json, context: &instCtx, owner: self) ?? detailQuantity
		detailRange = createInstance(type: Range.self, for: "detailRange", in: json, context: &instCtx, owner: self) ?? detailRange
		detailRatio = createInstance(type: Ratio.self, for: "detailRatio", in: json, context: &instCtx, owner: self) ?? detailRatio
		detailString = createInstance(type: FHIRString.self, for: "detailString", in: json, context: &instCtx, owner: self) ?? detailString
		dueDate = createInstance(type: FHIRDate.self, for: "dueDate", in: json, context: &instCtx, owner: self) ?? dueDate
		dueDuration = createInstance(type: Duration.self, for: "dueDuration", in: json, context: &instCtx, owner: self) ?? dueDuration
		measure = createInstance(type: CodeableConcept.self, for: "measure", in: json, context: &instCtx, owner: self) ?? measure
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.detailBoolean?.decorate(json: &json, withKey: "detailBoolean", errors: &errors)
		self.detailCodeableConcept?.decorate(json: &json, withKey: "detailCodeableConcept", errors: &errors)
		self.detailInteger?.decorate(json: &json, withKey: "detailInteger", errors: &errors)
		self.detailQuantity?.decorate(json: &json, withKey: "detailQuantity", errors: &errors)
		self.detailRange?.decorate(json: &json, withKey: "detailRange", errors: &errors)
		self.detailRatio?.decorate(json: &json, withKey: "detailRatio", errors: &errors)
		self.detailString?.decorate(json: &json, withKey: "detailString", errors: &errors)
		self.dueDate?.decorate(json: &json, withKey: "dueDate", errors: &errors)
		self.dueDuration?.decorate(json: &json, withKey: "dueDuration", errors: &errors)
		self.measure?.decorate(json: &json, withKey: "measure", errors: &errors)
	}
}

