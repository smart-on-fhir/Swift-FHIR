//
//  EvidenceVariable.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/EvidenceVariable) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A population, intervention, or exposure definition.

The EvidenceVariable resource describes a "PICO" element that knowledge (evidence, assertion, recommendation) is about.
*/
open class EvidenceVariable: DomainResource {
	override open class var resourceType: String {
		get { return "EvidenceVariable" }
	}
	
	/// When the evidence variable was approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Who authored the content.
	public var author: [ContactDetail]?
	
	/// What defines the members of the evidence element.
	public var characteristic: [EvidenceVariableCharacteristic]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Natural language description of the evidence variable.
	public var description_fhir: FHIRString?
	
	/// Who edited the content.
	public var editor: [ContactDetail]?
	
	/// When the evidence variable is expected to be used.
	public var effectivePeriod: Period?
	
	/// Who endorsed the content.
	public var endorser: [ContactDetail]?
	
	/// Additional identifier for the evidence variable.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for evidence variable (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// When the evidence variable was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Name for this evidence variable (computer friendly).
	public var name: FHIRString?
	
	/// Used for footnotes or explanatory notes.
	public var note: [Annotation]?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Additional documentation, citations, etc..
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content.
	public var reviewer: [ContactDetail]?
	
	/// Title for use in informal contexts.
	public var shortTitle: FHIRString?
	
	/// The status of this evidence variable. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Subordinate title of the EvidenceVariable.
	public var subtitle: FHIRString?
	
	/// Name for this evidence variable (human friendly).
	public var title: FHIRString?
	
	/// The category of the EvidenceVariable, such as Education, Treatment, Assessment, etc..
	public var topic: [CodeableConcept]?
	
	/// The type of evidence element, a population, an exposure, or an outcome.
	public var type: EvidenceVariableType?
	
	/// Canonical identifier for this evidence variable, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the evidence variable.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(characteristic: [EvidenceVariableCharacteristic], status: PublicationStatus) {
		self.init()
		self.characteristic = characteristic
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		approvalDate = createInstance(type: FHIRDate.self, for: "approvalDate", in: json, context: &instCtx, owner: self) ?? approvalDate
		author = createInstances(of: ContactDetail.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		characteristic = createInstances(of: EvidenceVariableCharacteristic.self, for: "characteristic", in: json, context: &instCtx, owner: self) ?? characteristic
		if (nil == characteristic || characteristic!.isEmpty) && !instCtx.containsKey("characteristic") {
			instCtx.addError(FHIRValidationError(missing: "characteristic"))
		}
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		editor = createInstances(of: ContactDetail.self, for: "editor", in: json, context: &instCtx, owner: self) ?? editor
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		endorser = createInstances(of: ContactDetail.self, for: "endorser", in: json, context: &instCtx, owner: self) ?? endorser
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		relatedArtifact = createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, context: &instCtx, owner: self) ?? relatedArtifact
		reviewer = createInstances(of: ContactDetail.self, for: "reviewer", in: json, context: &instCtx, owner: self) ?? reviewer
		shortTitle = createInstance(type: FHIRString.self, for: "shortTitle", in: json, context: &instCtx, owner: self) ?? shortTitle
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subtitle = createInstance(type: FHIRString.self, for: "subtitle", in: json, context: &instCtx, owner: self) ?? subtitle
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		topic = createInstances(of: CodeableConcept.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		type = createEnum(type: EvidenceVariableType.self, for: "type", in: json, context: &instCtx) ?? type
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "characteristic", using: self.characteristic, errors: &errors)
		if nil == characteristic || self.characteristic!.isEmpty {
			errors.append(FHIRValidationError(missing: "characteristic"))
		}
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "editor", using: self.editor, errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "endorser", using: self.endorser, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		arrayDecorate(json: &json, withKey: "reviewer", using: self.reviewer, errors: &errors)
		self.shortTitle?.decorate(json: &json, withKey: "shortTitle", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subtitle?.decorate(json: &json, withKey: "subtitle", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
What defines the members of the evidence element.

A characteristic that defines the members of the evidence element. Multiple characteristics are applied with "and"
semantics.
*/
open class EvidenceVariableCharacteristic: BackboneElement {
	override open class var resourceType: String {
		get { return "EvidenceVariableCharacteristic" }
	}
	
	/// What code or expression defines members?.
	public var definitionCanonical: FHIRURL?
	
	/// What code or expression defines members?.
	public var definitionCodeableConcept: CodeableConcept?
	
	/// What code or expression defines members?.
	public var definitionDataRequirement: DataRequirement?
	
	/// What code or expression defines members?.
	public var definitionExpression: Expression?
	
	/// What code or expression defines members?.
	public var definitionReference: Reference?
	
	/// What code or expression defines members?.
	public var definitionTriggerDefinition: TriggerDefinition?
	
	/// Natural language description of the characteristic.
	public var description_fhir: FHIRString?
	
	/// Whether the characteristic includes or excludes members.
	public var exclude: FHIRBool?
	
	/// Indicates how elements are aggregated within the study effective period.
	public var groupMeasure: GroupMeasure?
	
	/// What time period do participants cover.
	public var participantEffectiveDateTime: DateTime?
	
	/// What time period do participants cover.
	public var participantEffectiveDuration: Duration?
	
	/// What time period do participants cover.
	public var participantEffectivePeriod: Period?
	
	/// What time period do participants cover.
	public var participantEffectiveTiming: Timing?
	
	/// Observation time from study start.
	public var timeFromStart: Duration?
	
	/// What code/value pairs define members?.
	public var usageContext: [UsageContext]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(definition: Any) {
		self.init()
		if let value = definition as? Reference {
			self.definitionReference = value
		}
		else if let value = definition as? FHIRURL {
			self.definitionCanonical = value
		}
		else if let value = definition as? CodeableConcept {
			self.definitionCodeableConcept = value
		}
		else if let value = definition as? Expression {
			self.definitionExpression = value
		}
		else if let value = definition as? DataRequirement {
			self.definitionDataRequirement = value
		}
		else if let value = definition as? TriggerDefinition {
			self.definitionTriggerDefinition = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: definition))” for property “\(definition)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		definitionCanonical = createInstance(type: FHIRURL.self, for: "definitionCanonical", in: json, context: &instCtx, owner: self) ?? definitionCanonical
		definitionCodeableConcept = createInstance(type: CodeableConcept.self, for: "definitionCodeableConcept", in: json, context: &instCtx, owner: self) ?? definitionCodeableConcept
		definitionDataRequirement = createInstance(type: DataRequirement.self, for: "definitionDataRequirement", in: json, context: &instCtx, owner: self) ?? definitionDataRequirement
		definitionExpression = createInstance(type: Expression.self, for: "definitionExpression", in: json, context: &instCtx, owner: self) ?? definitionExpression
		definitionReference = createInstance(type: Reference.self, for: "definitionReference", in: json, context: &instCtx, owner: self) ?? definitionReference
		definitionTriggerDefinition = createInstance(type: TriggerDefinition.self, for: "definitionTriggerDefinition", in: json, context: &instCtx, owner: self) ?? definitionTriggerDefinition
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		exclude = createInstance(type: FHIRBool.self, for: "exclude", in: json, context: &instCtx, owner: self) ?? exclude
		groupMeasure = createEnum(type: GroupMeasure.self, for: "groupMeasure", in: json, context: &instCtx) ?? groupMeasure
		participantEffectiveDateTime = createInstance(type: DateTime.self, for: "participantEffectiveDateTime", in: json, context: &instCtx, owner: self) ?? participantEffectiveDateTime
		participantEffectiveDuration = createInstance(type: Duration.self, for: "participantEffectiveDuration", in: json, context: &instCtx, owner: self) ?? participantEffectiveDuration
		participantEffectivePeriod = createInstance(type: Period.self, for: "participantEffectivePeriod", in: json, context: &instCtx, owner: self) ?? participantEffectivePeriod
		participantEffectiveTiming = createInstance(type: Timing.self, for: "participantEffectiveTiming", in: json, context: &instCtx, owner: self) ?? participantEffectiveTiming
		timeFromStart = createInstance(type: Duration.self, for: "timeFromStart", in: json, context: &instCtx, owner: self) ?? timeFromStart
		usageContext = createInstances(of: UsageContext.self, for: "usageContext", in: json, context: &instCtx, owner: self) ?? usageContext
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.definitionReference && nil == self.definitionCanonical && nil == self.definitionCodeableConcept && nil == self.definitionExpression && nil == self.definitionDataRequirement && nil == self.definitionTriggerDefinition {
			instCtx.addError(FHIRValidationError(missing: "definition[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.definitionCanonical?.decorate(json: &json, withKey: "definitionCanonical", errors: &errors)
		self.definitionCodeableConcept?.decorate(json: &json, withKey: "definitionCodeableConcept", errors: &errors)
		self.definitionDataRequirement?.decorate(json: &json, withKey: "definitionDataRequirement", errors: &errors)
		self.definitionExpression?.decorate(json: &json, withKey: "definitionExpression", errors: &errors)
		self.definitionReference?.decorate(json: &json, withKey: "definitionReference", errors: &errors)
		self.definitionTriggerDefinition?.decorate(json: &json, withKey: "definitionTriggerDefinition", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.exclude?.decorate(json: &json, withKey: "exclude", errors: &errors)
		self.groupMeasure?.decorate(json: &json, withKey: "groupMeasure", errors: &errors)
		self.participantEffectiveDateTime?.decorate(json: &json, withKey: "participantEffectiveDateTime", errors: &errors)
		self.participantEffectiveDuration?.decorate(json: &json, withKey: "participantEffectiveDuration", errors: &errors)
		self.participantEffectivePeriod?.decorate(json: &json, withKey: "participantEffectivePeriod", errors: &errors)
		self.participantEffectiveTiming?.decorate(json: &json, withKey: "participantEffectiveTiming", errors: &errors)
		self.timeFromStart?.decorate(json: &json, withKey: "timeFromStart", errors: &errors)
		arrayDecorate(json: &json, withKey: "usageContext", using: self.usageContext, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.definitionReference && nil == self.definitionCanonical && nil == self.definitionCodeableConcept && nil == self.definitionExpression && nil == self.definitionDataRequirement && nil == self.definitionTriggerDefinition {
			errors.append(FHIRValidationError(missing: "definition[x]"))
		}
	}
}

