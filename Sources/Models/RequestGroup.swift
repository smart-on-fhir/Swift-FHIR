//
//  RequestGroup.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/RequestGroup) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
A group of related requests.

A group of related requests that can be used to capture intended activities that have inter-dependencies such as "give
this medication after that one".
*/
open class RequestGroup: DomainResource {
	override open class var resourceType: String {
		get { return "RequestGroup" }
	}
	
	/// Proposed actions, if any.
	public var action: [RequestGroupAction]?
	
	/// Device or practitioner that authored the request group.
	public var author: Reference?
	
	/// Encounter or Episode for the request group.
	public var context: Reference?
	
	/// Business identifier.
	public var identifier: Identifier?
	
	/// Additional notes about the response.
	public var note: [Annotation]?
	
	/// When the request group was authored.
	public var occurrenceDateTime: DateTime?
	
	/// Reason for the request group.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason for the request group.
	public var reasonReference: Reference?
	
	/// Subject of the request group.
	public var subject: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		action = try createInstances(of: RequestGroupAction.self, for: "action", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? action
		author = try createInstance(type: Reference.self, for: "author", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? author
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		occurrenceDateTime = try createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceDateTime
		reasonCodeableConcept = try createInstance(type: CodeableConcept.self, for: "reasonCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCodeableConcept
		reasonReference = try createInstance(type: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.reasonCodeableConcept?.decorate(json: &json, withKey: "reasonCodeableConcept", errors: &errors)
		self.reasonReference?.decorate(json: &json, withKey: "reasonReference", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
	}
}


/**
Proposed actions, if any.

The actions, if any, produced by the evaluation of the artifact.
*/
open class RequestGroupAction: BackboneElement {
	override open class var resourceType: String {
		get { return "RequestGroupAction" }
	}
	
	/// Sub action.
	public var action: [RequestGroupAction]?
	
	/// Unique identifier.
	public var actionIdentifier: Identifier?
	
	/// Defines whether the action can be selected multiple times.
	public var cardinalityBehavior: PlanActionCardinalityBehavior?
	
	/// The meaning of the action or its sub-actions.
	public var code: [CodeableConcept]?
	
	/// Whether or not the action is applicable.
	public var condition: [RequestGroupActionCondition]?
	
	/// Short description of the action.
	public var description_fhir: FHIRString?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [RelatedArtifact]?
	
	/// Defines the grouping behavior for the action and its children.
	public var groupingBehavior: PlanActionGroupingBehavior?
	
	/// User-visible label for the action (e.g. 1. or A.).
	public var label: FHIRString?
	
	/// Participant.
	public var participant: [Reference]?
	
	/// Defines whether the action should usually be preselected.
	public var precheckBehavior: PlanActionPrecheckBehavior?
	
	/// Relationship to another action.
	public var relatedAction: [RequestGroupActionRelatedAction]?
	
	/// Defines the requiredness behavior for the action.
	public var requiredBehavior: PlanActionRequiredBehavior?
	
	/// The target of the action.
	public var resource: Reference?
	
	/// Defines the selection behavior for the action and its children.
	public var selectionBehavior: PlanActionSelectionBehavior?
	
	/// Static text equivalent of the action, used if the dynamic aspects cannot be interpreted by the receiving system.
	public var textEquivalent: FHIRString?
	
	/// When the action should take place.
	public var timingDateTime: DateTime?
	
	/// When the action should take place.
	public var timingDuration: Duration?
	
	/// When the action should take place.
	public var timingPeriod: Period?
	
	/// When the action should take place.
	public var timingRange: Range?
	
	/// When the action should take place.
	public var timingTiming: Timing?
	
	/// User-visible title.
	public var title: FHIRString?
	
	/// create | update | remove | fire-event.
	public var type: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		action = try createInstances(of: RequestGroupAction.self, for: "action", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? action
		actionIdentifier = try createInstance(type: Identifier.self, for: "actionIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actionIdentifier
		cardinalityBehavior = createEnum(type: PlanActionCardinalityBehavior.self, for: "cardinalityBehavior", in: json, presentKeys: &presentKeys, errors: &errors) ?? cardinalityBehavior
		code = try createInstances(of: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		condition = try createInstances(of: RequestGroupActionCondition.self, for: "condition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? condition
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		documentation = try createInstances(of: RelatedArtifact.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		groupingBehavior = createEnum(type: PlanActionGroupingBehavior.self, for: "groupingBehavior", in: json, presentKeys: &presentKeys, errors: &errors) ?? groupingBehavior
		label = try createInstance(type: FHIRString.self, for: "label", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? label
		participant = try createInstances(of: Reference.self, for: "participant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? participant
		precheckBehavior = createEnum(type: PlanActionPrecheckBehavior.self, for: "precheckBehavior", in: json, presentKeys: &presentKeys, errors: &errors) ?? precheckBehavior
		relatedAction = try createInstances(of: RequestGroupActionRelatedAction.self, for: "relatedAction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatedAction
		requiredBehavior = createEnum(type: PlanActionRequiredBehavior.self, for: "requiredBehavior", in: json, presentKeys: &presentKeys, errors: &errors) ?? requiredBehavior
		resource = try createInstance(type: Reference.self, for: "resource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resource
		selectionBehavior = createEnum(type: PlanActionSelectionBehavior.self, for: "selectionBehavior", in: json, presentKeys: &presentKeys, errors: &errors) ?? selectionBehavior
		textEquivalent = try createInstance(type: FHIRString.self, for: "textEquivalent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? textEquivalent
		timingDateTime = try createInstance(type: DateTime.self, for: "timingDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingDateTime
		timingDuration = try createInstance(type: Duration.self, for: "timingDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingDuration
		timingPeriod = try createInstance(type: Period.self, for: "timingPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingPeriod
		timingRange = try createInstance(type: Range.self, for: "timingRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingRange
		timingTiming = try createInstance(type: Timing.self, for: "timingTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingTiming
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		type = try createInstance(type: Coding.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		self.actionIdentifier?.decorate(json: &json, withKey: "actionIdentifier", errors: &errors)
		self.cardinalityBehavior?.decorate(json: &json, withKey: "cardinalityBehavior", errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "condition", using: self.condition, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "documentation", using: self.documentation, errors: &errors)
		self.groupingBehavior?.decorate(json: &json, withKey: "groupingBehavior", errors: &errors)
		self.label?.decorate(json: &json, withKey: "label", errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.precheckBehavior?.decorate(json: &json, withKey: "precheckBehavior", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedAction", using: self.relatedAction, errors: &errors)
		self.requiredBehavior?.decorate(json: &json, withKey: "requiredBehavior", errors: &errors)
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
		self.selectionBehavior?.decorate(json: &json, withKey: "selectionBehavior", errors: &errors)
		self.textEquivalent?.decorate(json: &json, withKey: "textEquivalent", errors: &errors)
		self.timingDateTime?.decorate(json: &json, withKey: "timingDateTime", errors: &errors)
		self.timingDuration?.decorate(json: &json, withKey: "timingDuration", errors: &errors)
		self.timingPeriod?.decorate(json: &json, withKey: "timingPeriod", errors: &errors)
		self.timingRange?.decorate(json: &json, withKey: "timingRange", errors: &errors)
		self.timingTiming?.decorate(json: &json, withKey: "timingTiming", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Whether or not the action is applicable.

An expression that describes applicability criteria, or start/stop conditions for the action.
*/
open class RequestGroupActionCondition: BackboneElement {
	override open class var resourceType: String {
		get { return "RequestGroupActionCondition" }
	}
	
	/// Natural language description of the condition.
	public var description_fhir: FHIRString?
	
	/// Boolean-valued expression.
	public var expression: FHIRString?
	
	/// The kind of condition.
	public var kind: PlanActionConditionKind?
	
	/// Language of the expression.
	public var language: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(kind: PlanActionConditionKind) {
		self.init()
		self.kind = kind
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		expression = try createInstance(type: FHIRString.self, for: "expression", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expression
		kind = createEnum(type: PlanActionConditionKind.self, for: "kind", in: json, presentKeys: &presentKeys, errors: &errors) ?? kind
		if nil == kind && !presentKeys.contains("kind") {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		language = try createInstance(type: FHIRString.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		if nil == self.kind {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
	}
}


/**
Relationship to another action.

A relationship to another action such as "before" or "30-60 minutes after start of".
*/
open class RequestGroupActionRelatedAction: BackboneElement {
	override open class var resourceType: String {
		get { return "RequestGroupActionRelatedAction" }
	}
	
	/// Identifier of the related action.
	public var actionIdentifier: Identifier?
	
	/// Time offset for the relationship.
	public var offsetDuration: Duration?
	
	/// Time offset for the relationship.
	public var offsetRange: Range?
	
	/// The relationship of this action to the related action.
	public var relationship: PlanActionRelationshipType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actionIdentifier: Identifier, relationship: PlanActionRelationshipType) {
		self.init()
		self.actionIdentifier = actionIdentifier
		self.relationship = relationship
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actionIdentifier = try createInstance(type: Identifier.self, for: "actionIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actionIdentifier
		if nil == actionIdentifier && !presentKeys.contains("actionIdentifier") {
			errors.append(FHIRValidationError(missing: "actionIdentifier"))
		}
		offsetDuration = try createInstance(type: Duration.self, for: "offsetDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? offsetDuration
		offsetRange = try createInstance(type: Range.self, for: "offsetRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? offsetRange
		relationship = createEnum(type: PlanActionRelationshipType.self, for: "relationship", in: json, presentKeys: &presentKeys, errors: &errors) ?? relationship
		if nil == relationship && !presentKeys.contains("relationship") {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actionIdentifier?.decorate(json: &json, withKey: "actionIdentifier", errors: &errors)
		if nil == self.actionIdentifier {
			errors.append(FHIRValidationError(missing: "actionIdentifier"))
		}
		self.offsetDuration?.decorate(json: &json, withKey: "offsetDuration", errors: &errors)
		self.offsetRange?.decorate(json: &json, withKey: "offsetRange", errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
		if nil == self.relationship {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
	}
}

