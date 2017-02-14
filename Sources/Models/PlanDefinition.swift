//
//  PlanDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/PlanDefinition) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
The definition of a plan for a series of actions, independent of any specific patient or context.

This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact.
The resource is general enough to support the description of a broad range of clinical artifacts such as clinical
decision support rules, order sets and protocols.
*/
open class PlanDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "PlanDefinition" }
	}
	
	/// Action defined by the plan.
	public var actionDefinition: [PlanDefinitionActionDefinition]?
	
	/// When plan definition approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the plan definition.
	public var description_fhir: FHIRString?
	
	/// The effective date range for the plan definition.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Goals of the plan.
	public var goalDefinition: [PlanDefinitionGoalDefinition]?
	
	/// Additional identifier for the plan definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for plan definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Last review date for the plan definition.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the plan definition.
	public var library: [Reference]?
	
	/// Name for this plan definition (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this plan definition is defined.
	public var purpose: FHIRString?
	
	/// Related artifacts for the asset.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// The status of this plan definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this plan definition (Human friendly).
	public var title: FHIRString?
	
	/// Descriptional topics for the asset.
	public var topic: [CodeableConcept]?
	
	/// order-set | protocol | eca-rule.
	public var type: CodeableConcept?
	
	/// Logical uri to reference this plan definition (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the asset.
	public var usage: FHIRString?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the plan definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actionDefinition = try createInstances(of: PlanDefinitionActionDefinition.self, for: "actionDefinition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actionDefinition
		approvalDate = try createInstance(type: FHIRDate.self, for: "approvalDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? approvalDate
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		contributor = try createInstances(of: Contributor.self, for: "contributor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contributor
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		effectivePeriod = try createInstance(type: Period.self, for: "effectivePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectivePeriod
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		goalDefinition = try createInstances(of: PlanDefinitionGoalDefinition.self, for: "goalDefinition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? goalDefinition
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		lastReviewDate = try createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lastReviewDate
		library = try createInstances(of: Reference.self, for: "library", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? library
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		relatedArtifact = try createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatedArtifact
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		topic = try createInstances(of: CodeableConcept.self, for: "topic", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? topic
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		usage = try createInstance(type: FHIRString.self, for: "usage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? usage
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "actionDefinition", using: self.actionDefinition, errors: &errors)
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "contributor", using: self.contributor, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "goalDefinition", using: self.goalDefinition, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "library", using: self.library, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.usage?.decorate(json: &json, withKey: "usage", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Action defined by the plan.

An action to be taken as part of the plan.
*/
open class PlanDefinitionActionDefinition: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionDefinition" }
	}
	
	/// A sub-action.
	public var actionDefinition: [PlanDefinitionActionDefinition]?
	
	/// Defines whether the action can be selected multiple times.
	public var cardinalityBehavior: ActionCardinalityBehavior?
	
	/// Code representing the meaning of the action or sub-actions.
	public var code: [CodeableConcept]?
	
	/// Whether or not the action is applicable.
	public var condition: [PlanDefinitionActionDefinitionCondition]?
	
	/// Description of the activity to be performed.
	public var definition: Reference?
	
	/// Short description of the action.
	public var description_fhir: FHIRString?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [RelatedArtifact]?
	
	/// Dynamic aspects of the definition.
	public var dynamicValue: [PlanDefinitionActionDefinitionDynamicValue]?
	
	/// What goals this action supports.
	public var goalId: [FHIRString]?
	
	/// Defines the grouping behavior for the action and its children.
	public var groupingBehavior: ActionGroupingBehavior?
	
	/// Input data requirements.
	public var input: [DataRequirement]?
	
	/// User-visible label for the action (e.g. 1. or A.).
	public var label: FHIRString?
	
	/// Output data definition.
	public var output: [DataRequirement]?
	
	/// The type of participant in the action.
	public var participantType: [ActionParticipantType]?
	
	/// Defines whether the action should usually be preselected.
	public var precheckBehavior: ActionPrecheckBehavior?
	
	/// Why the action should be performed.
	public var reason: [CodeableConcept]?
	
	/// Relationship to another action.
	public var relatedAction: [PlanDefinitionActionDefinitionRelatedAction]?
	
	/// Defines the requiredness behavior for the action.
	public var requiredBehavior: ActionRequiredBehavior?
	
	/// Defines the selection behavior for the action and its children.
	public var selectionBehavior: ActionSelectionBehavior?
	
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
	
	/// Transform to apply the template.
	public var transform: Reference?
	
	/// When the action should be triggered.
	public var triggerDefinition: [TriggerDefinition]?
	
	/// create | update | remove | fire-event.
	public var type: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actionDefinition = try createInstances(of: PlanDefinitionActionDefinition.self, for: "actionDefinition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actionDefinition
		cardinalityBehavior = createEnum(type: ActionCardinalityBehavior.self, for: "cardinalityBehavior", in: json, presentKeys: &presentKeys, errors: &errors) ?? cardinalityBehavior
		code = try createInstances(of: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		condition = try createInstances(of: PlanDefinitionActionDefinitionCondition.self, for: "condition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? condition
		definition = try createInstance(type: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		documentation = try createInstances(of: RelatedArtifact.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		dynamicValue = try createInstances(of: PlanDefinitionActionDefinitionDynamicValue.self, for: "dynamicValue", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dynamicValue
		goalId = try createInstances(of: FHIRString.self, for: "goalId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? goalId
		groupingBehavior = createEnum(type: ActionGroupingBehavior.self, for: "groupingBehavior", in: json, presentKeys: &presentKeys, errors: &errors) ?? groupingBehavior
		input = try createInstances(of: DataRequirement.self, for: "input", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? input
		label = try createInstance(type: FHIRString.self, for: "label", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? label
		output = try createInstances(of: DataRequirement.self, for: "output", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? output
		participantType = createEnums(of: ActionParticipantType.self, for: "participantType", in: json, presentKeys: &presentKeys, errors: &errors) ?? participantType
		precheckBehavior = createEnum(type: ActionPrecheckBehavior.self, for: "precheckBehavior", in: json, presentKeys: &presentKeys, errors: &errors) ?? precheckBehavior
		reason = try createInstances(of: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		relatedAction = try createInstances(of: PlanDefinitionActionDefinitionRelatedAction.self, for: "relatedAction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatedAction
		requiredBehavior = createEnum(type: ActionRequiredBehavior.self, for: "requiredBehavior", in: json, presentKeys: &presentKeys, errors: &errors) ?? requiredBehavior
		selectionBehavior = createEnum(type: ActionSelectionBehavior.self, for: "selectionBehavior", in: json, presentKeys: &presentKeys, errors: &errors) ?? selectionBehavior
		textEquivalent = try createInstance(type: FHIRString.self, for: "textEquivalent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? textEquivalent
		timingDateTime = try createInstance(type: DateTime.self, for: "timingDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingDateTime
		timingDuration = try createInstance(type: Duration.self, for: "timingDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingDuration
		timingPeriod = try createInstance(type: Period.self, for: "timingPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingPeriod
		timingRange = try createInstance(type: Range.self, for: "timingRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingRange
		timingTiming = try createInstance(type: Timing.self, for: "timingTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingTiming
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		transform = try createInstance(type: Reference.self, for: "transform", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? transform
		triggerDefinition = try createInstances(of: TriggerDefinition.self, for: "triggerDefinition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? triggerDefinition
		type = try createInstance(type: Coding.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "actionDefinition", using: self.actionDefinition, errors: &errors)
		self.cardinalityBehavior?.decorate(json: &json, withKey: "cardinalityBehavior", errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "condition", using: self.condition, errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "documentation", using: self.documentation, errors: &errors)
		arrayDecorate(json: &json, withKey: "dynamicValue", using: self.dynamicValue, errors: &errors)
		arrayDecorate(json: &json, withKey: "goalId", using: self.goalId, errors: &errors)
		self.groupingBehavior?.decorate(json: &json, withKey: "groupingBehavior", errors: &errors)
		arrayDecorate(json: &json, withKey: "input", using: self.input, errors: &errors)
		self.label?.decorate(json: &json, withKey: "label", errors: &errors)
		arrayDecorate(json: &json, withKey: "output", using: self.output, errors: &errors)
		arrayDecorate(json: &json, withKey: "participantType", using: self.participantType, errors: &errors)
		self.precheckBehavior?.decorate(json: &json, withKey: "precheckBehavior", errors: &errors)
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedAction", using: self.relatedAction, errors: &errors)
		self.requiredBehavior?.decorate(json: &json, withKey: "requiredBehavior", errors: &errors)
		self.selectionBehavior?.decorate(json: &json, withKey: "selectionBehavior", errors: &errors)
		self.textEquivalent?.decorate(json: &json, withKey: "textEquivalent", errors: &errors)
		self.timingDateTime?.decorate(json: &json, withKey: "timingDateTime", errors: &errors)
		self.timingDuration?.decorate(json: &json, withKey: "timingDuration", errors: &errors)
		self.timingPeriod?.decorate(json: &json, withKey: "timingPeriod", errors: &errors)
		self.timingRange?.decorate(json: &json, withKey: "timingRange", errors: &errors)
		self.timingTiming?.decorate(json: &json, withKey: "timingTiming", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.transform?.decorate(json: &json, withKey: "transform", errors: &errors)
		arrayDecorate(json: &json, withKey: "triggerDefinition", using: self.triggerDefinition, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Whether or not the action is applicable.

An expression that describes applicability criteria, or start/stop conditions for the action.
*/
open class PlanDefinitionActionDefinitionCondition: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionDefinitionCondition" }
	}
	
	/// Natural language description of the condition.
	public var description_fhir: FHIRString?
	
	/// Boolean-valued expression.
	public var expression: FHIRString?
	
	/// The kind of condition.
	public var kind: ActionConditionKind?
	
	/// Language of the expression.
	public var language: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(kind: ActionConditionKind) {
		self.init()
		self.kind = kind
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		expression = try createInstance(type: FHIRString.self, for: "expression", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expression
		kind = createEnum(type: ActionConditionKind.self, for: "kind", in: json, presentKeys: &presentKeys, errors: &errors) ?? kind
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
Dynamic aspects of the definition.

Customizations that should be applied to the statically defined resource. For example, if the dosage of a medication
must be computed based on the patient's weight, a customization would be used to specify an expression that calculated
the weight, and the path on the resource that would contain the result.
*/
open class PlanDefinitionActionDefinitionDynamicValue: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionDefinitionDynamicValue" }
	}
	
	/// Natural language description of the dynamic value.
	public var description_fhir: FHIRString?
	
	/// An expression that provides the dynamic value for the customization.
	public var expression: FHIRString?
	
	/// Language of the expression.
	public var language: FHIRString?
	
	/// The path to the element to be set dynamically.
	public var path: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		expression = try createInstance(type: FHIRString.self, for: "expression", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expression
		language = try createInstance(type: FHIRString.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		path = try createInstance(type: FHIRString.self, for: "path", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? path
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
	}
}


/**
Relationship to another action.

A relationship to another action such as "before" or "30-60 minutes after start of".
*/
open class PlanDefinitionActionDefinitionRelatedAction: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionDefinitionRelatedAction" }
	}
	
	/// Id of the related action.
	public var actionId: FHIRString?
	
	/// Time offset for the relationship.
	public var offsetDuration: Duration?
	
	/// Time offset for the relationship.
	public var offsetRange: Range?
	
	/// The relationship of this action to the related action.
	public var relationship: ActionRelationshipType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actionId: FHIRString, relationship: ActionRelationshipType) {
		self.init()
		self.actionId = actionId
		self.relationship = relationship
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actionId = try createInstance(type: FHIRString.self, for: "actionId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actionId
		if nil == actionId && !presentKeys.contains("actionId") {
			errors.append(FHIRValidationError(missing: "actionId"))
		}
		offsetDuration = try createInstance(type: Duration.self, for: "offsetDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? offsetDuration
		offsetRange = try createInstance(type: Range.self, for: "offsetRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? offsetRange
		relationship = createEnum(type: ActionRelationshipType.self, for: "relationship", in: json, presentKeys: &presentKeys, errors: &errors) ?? relationship
		if nil == relationship && !presentKeys.contains("relationship") {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actionId?.decorate(json: &json, withKey: "actionId", errors: &errors)
		if nil == self.actionId {
			errors.append(FHIRValidationError(missing: "actionId"))
		}
		self.offsetDuration?.decorate(json: &json, withKey: "offsetDuration", errors: &errors)
		self.offsetRange?.decorate(json: &json, withKey: "offsetRange", errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
		if nil == self.relationship {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
	}
}


/**
Goals of the plan.

Goals that describe what the activities within the plan are intended to achieve. For example, weight loss, restoring an
activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
*/
open class PlanDefinitionGoalDefinition: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionGoalDefinition" }
	}
	
	/// What does the goal address.
	public var addresses: [CodeableConcept]?
	
	/// E.g. Treatment, dietary, behavioral, etc.
	public var category: CodeableConcept?
	
	/// Code or text describing the goal.
	public var description_fhir: CodeableConcept?
	
	/// Supporting documentation for the goal.
	public var documentation: [RelatedArtifact]?
	
	/// high-priority | medium-priority | low-priority.
	public var priority: CodeableConcept?
	
	/// When goal pursuit begins.
	public var start: CodeableConcept?
	
	/// Target outcome for the goal.
	public var target: [PlanDefinitionGoalDefinitionTarget]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: CodeableConcept) {
		self.init()
		self.description_fhir = description_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		addresses = try createInstances(of: CodeableConcept.self, for: "addresses", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? addresses
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		description_fhir = try createInstance(type: CodeableConcept.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		if nil == description_fhir && !presentKeys.contains("description") {
			errors.append(FHIRValidationError(missing: "description"))
		}
		documentation = try createInstances(of: RelatedArtifact.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		priority = try createInstance(type: CodeableConcept.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priority
		start = try createInstance(type: CodeableConcept.self, for: "start", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? start
		target = try createInstances(of: PlanDefinitionGoalDefinitionTarget.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "addresses", using: self.addresses, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		if nil == self.description_fhir {
			errors.append(FHIRValidationError(missing: "description"))
		}
		arrayDecorate(json: &json, withKey: "documentation", using: self.documentation, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.start?.decorate(json: &json, withKey: "start", errors: &errors)
		arrayDecorate(json: &json, withKey: "target", using: self.target, errors: &errors)
	}
}


/**
Target outcome for the goal.

Indicates what should be done and within what timeframe.
*/
open class PlanDefinitionGoalDefinitionTarget: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionGoalDefinitionTarget" }
	}
	
	/// The target value to be achieved.
	public var detailCodeableConcept: CodeableConcept?
	
	/// The target value to be achieved.
	public var detailQuantity: Quantity?
	
	/// The target value to be achieved.
	public var detailRange: Range?
	
	/// Reach goal within.
	public var due: Duration?
	
	/// The parameter whose value is to be tracked.
	public var measure: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		detailCodeableConcept = try createInstance(type: CodeableConcept.self, for: "detailCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detailCodeableConcept
		detailQuantity = try createInstance(type: Quantity.self, for: "detailQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detailQuantity
		detailRange = try createInstance(type: Range.self, for: "detailRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detailRange
		due = try createInstance(type: Duration.self, for: "due", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? due
		measure = try createInstance(type: CodeableConcept.self, for: "measure", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? measure
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.detailCodeableConcept?.decorate(json: &json, withKey: "detailCodeableConcept", errors: &errors)
		self.detailQuantity?.decorate(json: &json, withKey: "detailQuantity", errors: &errors)
		self.detailRange?.decorate(json: &json, withKey: "detailRange", errors: &errors)
		self.due?.decorate(json: &json, withKey: "due", errors: &errors)
		self.measure?.decorate(json: &json, withKey: "measure", errors: &errors)
	}
}

