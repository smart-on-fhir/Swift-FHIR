//
//  PlanDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/PlanDefinition) on 2019-03-01.
//  2019, SMART Health IT.
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
	public var action: [PlanDefinitionAction]?
	
	/// When the plan definition was approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Who authored the content.
	public var author: [ContactDetail]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Natural language description of the plan definition.
	public var description_fhir: FHIRString?
	
	/// Who edited the content.
	public var editor: [ContactDetail]?
	
	/// When the plan definition is expected to be used.
	public var effectivePeriod: Period?
	
	/// Who endorsed the content.
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// What the plan is trying to accomplish.
	public var goal: [PlanDefinitionGoal]?
	
	/// Additional identifier for the plan definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for plan definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// When the plan definition was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the plan definition.
	public var library: [FHIRURL]?
	
	/// Name for this plan definition (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this plan definition is defined.
	public var purpose: FHIRString?
	
	/// Additional documentation, citations.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content.
	public var reviewer: [ContactDetail]?
	
	/// The status of this plan definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Type of individual the plan definition is focused on.
	public var subjectCodeableConcept: CodeableConcept?
	
	/// Type of individual the plan definition is focused on.
	public var subjectReference: Reference?
	
	/// Subordinate title of the plan definition.
	public var subtitle: FHIRString?
	
	/// Name for this plan definition (human friendly).
	public var title: FHIRString?
	
	/// E.g. Education, Treatment, Assessment.
	public var topic: [CodeableConcept]?
	
	/// order-set | clinical-protocol | eca-rule | workflow-definition.
	public var type: CodeableConcept?
	
	/// Canonical identifier for this plan definition, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the plan.
	public var usage: FHIRString?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the plan definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: PlanDefinitionAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		approvalDate = createInstance(type: FHIRDate.self, for: "approvalDate", in: json, context: &instCtx, owner: self) ?? approvalDate
		author = createInstances(of: ContactDetail.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		editor = createInstances(of: ContactDetail.self, for: "editor", in: json, context: &instCtx, owner: self) ?? editor
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		endorser = createInstances(of: ContactDetail.self, for: "endorser", in: json, context: &instCtx, owner: self) ?? endorser
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		goal = createInstances(of: PlanDefinitionGoal.self, for: "goal", in: json, context: &instCtx, owner: self) ?? goal
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		library = createInstances(of: FHIRURL.self, for: "library", in: json, context: &instCtx, owner: self) ?? library
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		relatedArtifact = createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, context: &instCtx, owner: self) ?? relatedArtifact
		reviewer = createInstances(of: ContactDetail.self, for: "reviewer", in: json, context: &instCtx, owner: self) ?? reviewer
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subjectCodeableConcept = createInstance(type: CodeableConcept.self, for: "subjectCodeableConcept", in: json, context: &instCtx, owner: self) ?? subjectCodeableConcept
		subjectReference = createInstance(type: Reference.self, for: "subjectReference", in: json, context: &instCtx, owner: self) ?? subjectReference
		subtitle = createInstance(type: FHIRString.self, for: "subtitle", in: json, context: &instCtx, owner: self) ?? subtitle
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		topic = createInstances(of: CodeableConcept.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		usage = createInstance(type: FHIRString.self, for: "usage", in: json, context: &instCtx, owner: self) ?? usage
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "editor", using: self.editor, errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "endorser", using: self.endorser, errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "goal", using: self.goal, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "library", using: self.library, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		arrayDecorate(json: &json, withKey: "reviewer", using: self.reviewer, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subjectCodeableConcept?.decorate(json: &json, withKey: "subjectCodeableConcept", errors: &errors)
		self.subjectReference?.decorate(json: &json, withKey: "subjectReference", errors: &errors)
		self.subtitle?.decorate(json: &json, withKey: "subtitle", errors: &errors)
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

An action or group of actions to be taken as part of the plan.
*/
open class PlanDefinitionAction: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionAction" }
	}
	
	/// A sub-action.
	public var action: [PlanDefinitionAction]?
	
	/// Defines whether the action can be selected multiple times.
	public var cardinalityBehavior: ActionCardinalityBehavior?
	
	/// Code representing the meaning of the action or sub-actions.
	public var code: [CodeableConcept]?
	
	/// Whether or not the action is applicable.
	public var condition: [PlanDefinitionActionCondition]?
	
	/// Description of the activity to be performed.
	public var definitionCanonical: FHIRURL?
	
	/// Description of the activity to be performed.
	public var definitionUri: FHIRURL?
	
	/// Brief description of the action.
	public var description_fhir: FHIRString?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [RelatedArtifact]?
	
	/// Dynamic aspects of the definition.
	public var dynamicValue: [PlanDefinitionActionDynamicValue]?
	
	/// What goals this action supports.
	public var goalId: [FHIRString]?
	
	/// Defines the grouping behavior for the action and its children.
	public var groupingBehavior: ActionGroupingBehavior?
	
	/// Input data requirements.
	public var input: [DataRequirement]?
	
	/// Output data definition.
	public var output: [DataRequirement]?
	
	/// Who should participate in the action.
	public var participant: [PlanDefinitionActionParticipant]?
	
	/// Defines whether the action should usually be preselected.
	public var precheckBehavior: ActionPrecheckBehavior?
	
	/// User-visible prefix for the action (e.g. 1. or A.).
	public var prefix: FHIRString?
	
	/// Indicates how quickly the action should be addressed with respect to other actions.
	public var priority: RequestPriority?
	
	/// Why the action should be performed.
	public var reason: [CodeableConcept]?
	
	/// Relationship to another action.
	public var relatedAction: [PlanDefinitionActionRelatedAction]?
	
	/// Defines the required behavior for the action.
	public var requiredBehavior: ActionRequiredBehavior?
	
	/// Defines the selection behavior for the action and its children.
	public var selectionBehavior: ActionSelectionBehavior?
	
	/// Type of individual the action is focused on.
	public var subjectCodeableConcept: CodeableConcept?
	
	/// Type of individual the action is focused on.
	public var subjectReference: Reference?
	
	/// Static text equivalent of the action, used if the dynamic aspects cannot be interpreted by the receiving system.
	public var textEquivalent: FHIRString?
	
	/// When the action should take place.
	public var timingAge: Age?
	
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
	public var transform: FHIRURL?
	
	/// When the action should be triggered.
	public var trigger: [TriggerDefinition]?
	
	/// create | update | remove | fire-event.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: PlanDefinitionAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		cardinalityBehavior = createEnum(type: ActionCardinalityBehavior.self, for: "cardinalityBehavior", in: json, context: &instCtx) ?? cardinalityBehavior
		code = createInstances(of: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		condition = createInstances(of: PlanDefinitionActionCondition.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		definitionCanonical = createInstance(type: FHIRURL.self, for: "definitionCanonical", in: json, context: &instCtx, owner: self) ?? definitionCanonical
		definitionUri = createInstance(type: FHIRURL.self, for: "definitionUri", in: json, context: &instCtx, owner: self) ?? definitionUri
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		documentation = createInstances(of: RelatedArtifact.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		dynamicValue = createInstances(of: PlanDefinitionActionDynamicValue.self, for: "dynamicValue", in: json, context: &instCtx, owner: self) ?? dynamicValue
		goalId = createInstances(of: FHIRString.self, for: "goalId", in: json, context: &instCtx, owner: self) ?? goalId
		groupingBehavior = createEnum(type: ActionGroupingBehavior.self, for: "groupingBehavior", in: json, context: &instCtx) ?? groupingBehavior
		input = createInstances(of: DataRequirement.self, for: "input", in: json, context: &instCtx, owner: self) ?? input
		output = createInstances(of: DataRequirement.self, for: "output", in: json, context: &instCtx, owner: self) ?? output
		participant = createInstances(of: PlanDefinitionActionParticipant.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		precheckBehavior = createEnum(type: ActionPrecheckBehavior.self, for: "precheckBehavior", in: json, context: &instCtx) ?? precheckBehavior
		prefix = createInstance(type: FHIRString.self, for: "prefix", in: json, context: &instCtx, owner: self) ?? prefix
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		reason = createInstances(of: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		relatedAction = createInstances(of: PlanDefinitionActionRelatedAction.self, for: "relatedAction", in: json, context: &instCtx, owner: self) ?? relatedAction
		requiredBehavior = createEnum(type: ActionRequiredBehavior.self, for: "requiredBehavior", in: json, context: &instCtx) ?? requiredBehavior
		selectionBehavior = createEnum(type: ActionSelectionBehavior.self, for: "selectionBehavior", in: json, context: &instCtx) ?? selectionBehavior
		subjectCodeableConcept = createInstance(type: CodeableConcept.self, for: "subjectCodeableConcept", in: json, context: &instCtx, owner: self) ?? subjectCodeableConcept
		subjectReference = createInstance(type: Reference.self, for: "subjectReference", in: json, context: &instCtx, owner: self) ?? subjectReference
		textEquivalent = createInstance(type: FHIRString.self, for: "textEquivalent", in: json, context: &instCtx, owner: self) ?? textEquivalent
		timingAge = createInstance(type: Age.self, for: "timingAge", in: json, context: &instCtx, owner: self) ?? timingAge
		timingDateTime = createInstance(type: DateTime.self, for: "timingDateTime", in: json, context: &instCtx, owner: self) ?? timingDateTime
		timingDuration = createInstance(type: Duration.self, for: "timingDuration", in: json, context: &instCtx, owner: self) ?? timingDuration
		timingPeriod = createInstance(type: Period.self, for: "timingPeriod", in: json, context: &instCtx, owner: self) ?? timingPeriod
		timingRange = createInstance(type: Range.self, for: "timingRange", in: json, context: &instCtx, owner: self) ?? timingRange
		timingTiming = createInstance(type: Timing.self, for: "timingTiming", in: json, context: &instCtx, owner: self) ?? timingTiming
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		transform = createInstance(type: FHIRURL.self, for: "transform", in: json, context: &instCtx, owner: self) ?? transform
		trigger = createInstances(of: TriggerDefinition.self, for: "trigger", in: json, context: &instCtx, owner: self) ?? trigger
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		self.cardinalityBehavior?.decorate(json: &json, withKey: "cardinalityBehavior", errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "condition", using: self.condition, errors: &errors)
		self.definitionCanonical?.decorate(json: &json, withKey: "definitionCanonical", errors: &errors)
		self.definitionUri?.decorate(json: &json, withKey: "definitionUri", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "documentation", using: self.documentation, errors: &errors)
		arrayDecorate(json: &json, withKey: "dynamicValue", using: self.dynamicValue, errors: &errors)
		arrayDecorate(json: &json, withKey: "goalId", using: self.goalId, errors: &errors)
		self.groupingBehavior?.decorate(json: &json, withKey: "groupingBehavior", errors: &errors)
		arrayDecorate(json: &json, withKey: "input", using: self.input, errors: &errors)
		arrayDecorate(json: &json, withKey: "output", using: self.output, errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.precheckBehavior?.decorate(json: &json, withKey: "precheckBehavior", errors: &errors)
		self.prefix?.decorate(json: &json, withKey: "prefix", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedAction", using: self.relatedAction, errors: &errors)
		self.requiredBehavior?.decorate(json: &json, withKey: "requiredBehavior", errors: &errors)
		self.selectionBehavior?.decorate(json: &json, withKey: "selectionBehavior", errors: &errors)
		self.subjectCodeableConcept?.decorate(json: &json, withKey: "subjectCodeableConcept", errors: &errors)
		self.subjectReference?.decorate(json: &json, withKey: "subjectReference", errors: &errors)
		self.textEquivalent?.decorate(json: &json, withKey: "textEquivalent", errors: &errors)
		self.timingAge?.decorate(json: &json, withKey: "timingAge", errors: &errors)
		self.timingDateTime?.decorate(json: &json, withKey: "timingDateTime", errors: &errors)
		self.timingDuration?.decorate(json: &json, withKey: "timingDuration", errors: &errors)
		self.timingPeriod?.decorate(json: &json, withKey: "timingPeriod", errors: &errors)
		self.timingRange?.decorate(json: &json, withKey: "timingRange", errors: &errors)
		self.timingTiming?.decorate(json: &json, withKey: "timingTiming", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.transform?.decorate(json: &json, withKey: "transform", errors: &errors)
		arrayDecorate(json: &json, withKey: "trigger", using: self.trigger, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Whether or not the action is applicable.

An expression that describes applicability criteria or start/stop conditions for the action.
*/
open class PlanDefinitionActionCondition: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionCondition" }
	}
	
	/// Boolean-valued expression.
	public var expression: Expression?
	
	/// The kind of condition.
	public var kind: ActionConditionKind?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(kind: ActionConditionKind) {
		self.init()
		self.kind = kind
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		expression = createInstance(type: Expression.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		kind = createEnum(type: ActionConditionKind.self, for: "kind", in: json, context: &instCtx) ?? kind
		if nil == kind && !instCtx.containsKey("kind") {
			instCtx.addError(FHIRValidationError(missing: "kind"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		if nil == self.kind {
			errors.append(FHIRValidationError(missing: "kind"))
		}
	}
}


/**
Dynamic aspects of the definition.

Customizations that should be applied to the statically defined resource. For example, if the dosage of a medication
must be computed based on the patient's weight, a customization would be used to specify an expression that calculated
the weight, and the path on the resource that would contain the result.
*/
open class PlanDefinitionActionDynamicValue: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionDynamicValue" }
	}
	
	/// An expression that provides the dynamic value for the customization.
	public var expression: Expression?
	
	/// The path to the element to be set dynamically.
	public var path: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		expression = createInstance(type: Expression.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
	}
}


/**
Who should participate in the action.

Indicates who should participate in performing the action described.
*/
open class PlanDefinitionActionParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionParticipant" }
	}
	
	/// E.g. Nurse, Surgeon, Parent.
	public var role: CodeableConcept?
	
	/// The type of participant in the action.
	public var type: ActionParticipantType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: ActionParticipantType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		type = createEnum(type: ActionParticipantType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Relationship to another action.

A relationship to another action such as "before" or "30-60 minutes after start of".
*/
open class PlanDefinitionActionRelatedAction: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionRelatedAction" }
	}
	
	/// What action is this related to.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actionId = createInstance(type: FHIRString.self, for: "actionId", in: json, context: &instCtx, owner: self) ?? actionId
		if nil == actionId && !instCtx.containsKey("actionId") {
			instCtx.addError(FHIRValidationError(missing: "actionId"))
		}
		offsetDuration = createInstance(type: Duration.self, for: "offsetDuration", in: json, context: &instCtx, owner: self) ?? offsetDuration
		offsetRange = createInstance(type: Range.self, for: "offsetRange", in: json, context: &instCtx, owner: self) ?? offsetRange
		relationship = createEnum(type: ActionRelationshipType.self, for: "relationship", in: json, context: &instCtx) ?? relationship
		if nil == relationship && !instCtx.containsKey("relationship") {
			instCtx.addError(FHIRValidationError(missing: "relationship"))
		}
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
What the plan is trying to accomplish.

Goals that describe what the activities within the plan are intended to achieve. For example, weight loss, restoring an
activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
*/
open class PlanDefinitionGoal: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionGoal" }
	}
	
	/// What does the goal address.
	public var addresses: [CodeableConcept]?
	
	/// E.g. Treatment, dietary, behavioral.
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
	public var target: [PlanDefinitionGoalTarget]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: CodeableConcept) {
		self.init()
		self.description_fhir = description_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		addresses = createInstances(of: CodeableConcept.self, for: "addresses", in: json, context: &instCtx, owner: self) ?? addresses
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		description_fhir = createInstance(type: CodeableConcept.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		if nil == description_fhir && !instCtx.containsKey("description") {
			instCtx.addError(FHIRValidationError(missing: "description"))
		}
		documentation = createInstances(of: RelatedArtifact.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		priority = createInstance(type: CodeableConcept.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		start = createInstance(type: CodeableConcept.self, for: "start", in: json, context: &instCtx, owner: self) ?? start
		target = createInstances(of: PlanDefinitionGoalTarget.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
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
open class PlanDefinitionGoalTarget: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionGoalTarget" }
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		detailCodeableConcept = createInstance(type: CodeableConcept.self, for: "detailCodeableConcept", in: json, context: &instCtx, owner: self) ?? detailCodeableConcept
		detailQuantity = createInstance(type: Quantity.self, for: "detailQuantity", in: json, context: &instCtx, owner: self) ?? detailQuantity
		detailRange = createInstance(type: Range.self, for: "detailRange", in: json, context: &instCtx, owner: self) ?? detailRange
		due = createInstance(type: Duration.self, for: "due", in: json, context: &instCtx, owner: self) ?? due
		measure = createInstance(type: CodeableConcept.self, for: "measure", in: json, context: &instCtx, owner: self) ?? measure
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

