//
//  ResearchElementDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ResearchElementDefinition) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A population, intervention, or exposure definition.

The ResearchElementDefinition resource describes a "PICO" element that knowledge (evidence, assertion, recommendation)
is about.
*/
open class ResearchElementDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "ResearchElementDefinition" }
	}
	
	/// When the research element definition was approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Who authored the content.
	public var author: [ContactDetail]?
	
	/// What defines the members of the research element.
	public var characteristic: [ResearchElementDefinitionCharacteristic]?
	
	/// Used for footnotes or explanatory notes.
	public var comment: [FHIRString]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Natural language description of the research element definition.
	public var description_fhir: FHIRString?
	
	/// Who edited the content.
	public var editor: [ContactDetail]?
	
	/// When the research element definition is expected to be used.
	public var effectivePeriod: Period?
	
	/// Who endorsed the content.
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Additional identifier for the research element definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for research element definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// When the research element definition was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the ResearchElementDefinition.
	public var library: [FHIRURL]?
	
	/// Name for this research element definition (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this research element definition is defined.
	public var purpose: FHIRString?
	
	/// Additional documentation, citations, etc..
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content.
	public var reviewer: [ContactDetail]?
	
	/// Title for use in informal contexts.
	public var shortTitle: FHIRString?
	
	/// The status of this research element definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device.
	public var subjectCodeableConcept: CodeableConcept?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device.
	public var subjectReference: Reference?
	
	/// Subordinate title of the ResearchElementDefinition.
	public var subtitle: FHIRString?
	
	/// Name for this research element definition (human friendly).
	public var title: FHIRString?
	
	/// The category of the ResearchElementDefinition, such as Education, Treatment, Assessment, etc..
	public var topic: [CodeableConcept]?
	
	/// The type of research element, a population, an exposure, or an outcome.
	public var type: ResearchElementType?
	
	/// Canonical identifier for this research element definition, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the ResearchElementDefinition.
	public var usage: FHIRString?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// The type of the outcome (e.g. Dichotomous, Continuous, or Descriptive).
	public var variableType: EvidenceVariableType?
	
	/// Business version of the research element definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(characteristic: [ResearchElementDefinitionCharacteristic], status: PublicationStatus, type: ResearchElementType) {
		self.init()
		self.characteristic = characteristic
		self.status = status
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		approvalDate = createInstance(type: FHIRDate.self, for: "approvalDate", in: json, context: &instCtx, owner: self) ?? approvalDate
		author = createInstances(of: ContactDetail.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		characteristic = createInstances(of: ResearchElementDefinitionCharacteristic.self, for: "characteristic", in: json, context: &instCtx, owner: self) ?? characteristic
		if (nil == characteristic || characteristic!.isEmpty) && !instCtx.containsKey("characteristic") {
			instCtx.addError(FHIRValidationError(missing: "characteristic"))
		}
		comment = createInstances(of: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		editor = createInstances(of: ContactDetail.self, for: "editor", in: json, context: &instCtx, owner: self) ?? editor
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		endorser = createInstances(of: ContactDetail.self, for: "endorser", in: json, context: &instCtx, owner: self) ?? endorser
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		library = createInstances(of: FHIRURL.self, for: "library", in: json, context: &instCtx, owner: self) ?? library
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		relatedArtifact = createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, context: &instCtx, owner: self) ?? relatedArtifact
		reviewer = createInstances(of: ContactDetail.self, for: "reviewer", in: json, context: &instCtx, owner: self) ?? reviewer
		shortTitle = createInstance(type: FHIRString.self, for: "shortTitle", in: json, context: &instCtx, owner: self) ?? shortTitle
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subjectCodeableConcept = createInstance(type: CodeableConcept.self, for: "subjectCodeableConcept", in: json, context: &instCtx, owner: self) ?? subjectCodeableConcept
		subjectReference = createInstance(type: Reference.self, for: "subjectReference", in: json, context: &instCtx, owner: self) ?? subjectReference
		subtitle = createInstance(type: FHIRString.self, for: "subtitle", in: json, context: &instCtx, owner: self) ?? subtitle
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		topic = createInstances(of: CodeableConcept.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		type = createEnum(type: ResearchElementType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		usage = createInstance(type: FHIRString.self, for: "usage", in: json, context: &instCtx, owner: self) ?? usage
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		variableType = createEnum(type: EvidenceVariableType.self, for: "variableType", in: json, context: &instCtx) ?? variableType
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
		arrayDecorate(json: &json, withKey: "comment", using: self.comment, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "editor", using: self.editor, errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "endorser", using: self.endorser, errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "library", using: self.library, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		arrayDecorate(json: &json, withKey: "reviewer", using: self.reviewer, errors: &errors)
		self.shortTitle?.decorate(json: &json, withKey: "shortTitle", errors: &errors)
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
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.usage?.decorate(json: &json, withKey: "usage", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.variableType?.decorate(json: &json, withKey: "variableType", errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
What defines the members of the research element.

A characteristic that defines the members of the research element. Multiple characteristics are applied with "and"
semantics.
*/
open class ResearchElementDefinitionCharacteristic: BackboneElement {
	override open class var resourceType: String {
		get { return "ResearchElementDefinitionCharacteristic" }
	}
	
	/// What code or expression defines members?.
	public var definitionCanonical: FHIRURL?
	
	/// What code or expression defines members?.
	public var definitionCodeableConcept: CodeableConcept?
	
	/// What code or expression defines members?.
	public var definitionDataRequirement: DataRequirement?
	
	/// What code or expression defines members?.
	public var definitionExpression: Expression?
	
	/// Whether the characteristic includes or excludes members.
	public var exclude: FHIRBool?
	
	/// What time period do participants cover.
	public var participantEffectiveDateTime: DateTime?
	
	/// What time period do participants cover.
	public var participantEffectiveDescription: FHIRString?
	
	/// What time period do participants cover.
	public var participantEffectiveDuration: Duration?
	
	/// Indicates how elements are aggregated within the study effective period.
	public var participantEffectiveGroupMeasure: GroupMeasure?
	
	/// What time period do participants cover.
	public var participantEffectivePeriod: Period?
	
	/// Observation time from study start.
	public var participantEffectiveTimeFromStart: Duration?
	
	/// What time period do participants cover.
	public var participantEffectiveTiming: Timing?
	
	/// What time period does the study cover.
	public var studyEffectiveDateTime: DateTime?
	
	/// What time period does the study cover.
	public var studyEffectiveDescription: FHIRString?
	
	/// What time period does the study cover.
	public var studyEffectiveDuration: Duration?
	
	/// Indicates how elements are aggregated within the study effective period.
	public var studyEffectiveGroupMeasure: GroupMeasure?
	
	/// What time period does the study cover.
	public var studyEffectivePeriod: Period?
	
	/// Observation time from study start.
	public var studyEffectiveTimeFromStart: Duration?
	
	/// What time period does the study cover.
	public var studyEffectiveTiming: Timing?
	
	/// What unit is the outcome described in?.
	public var unitOfMeasure: CodeableConcept?
	
	/// What code/value pairs define members?.
	public var usageContext: [UsageContext]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(definition: Any) {
		self.init()
		if let value = definition as? CodeableConcept {
			self.definitionCodeableConcept = value
		}
		else if let value = definition as? FHIRURL {
			self.definitionCanonical = value
		}
		else if let value = definition as? Expression {
			self.definitionExpression = value
		}
		else if let value = definition as? DataRequirement {
			self.definitionDataRequirement = value
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
		exclude = createInstance(type: FHIRBool.self, for: "exclude", in: json, context: &instCtx, owner: self) ?? exclude
		participantEffectiveDateTime = createInstance(type: DateTime.self, for: "participantEffectiveDateTime", in: json, context: &instCtx, owner: self) ?? participantEffectiveDateTime
		participantEffectiveDescription = createInstance(type: FHIRString.self, for: "participantEffectiveDescription", in: json, context: &instCtx, owner: self) ?? participantEffectiveDescription
		participantEffectiveDuration = createInstance(type: Duration.self, for: "participantEffectiveDuration", in: json, context: &instCtx, owner: self) ?? participantEffectiveDuration
		participantEffectiveGroupMeasure = createEnum(type: GroupMeasure.self, for: "participantEffectiveGroupMeasure", in: json, context: &instCtx) ?? participantEffectiveGroupMeasure
		participantEffectivePeriod = createInstance(type: Period.self, for: "participantEffectivePeriod", in: json, context: &instCtx, owner: self) ?? participantEffectivePeriod
		participantEffectiveTimeFromStart = createInstance(type: Duration.self, for: "participantEffectiveTimeFromStart", in: json, context: &instCtx, owner: self) ?? participantEffectiveTimeFromStart
		participantEffectiveTiming = createInstance(type: Timing.self, for: "participantEffectiveTiming", in: json, context: &instCtx, owner: self) ?? participantEffectiveTiming
		studyEffectiveDateTime = createInstance(type: DateTime.self, for: "studyEffectiveDateTime", in: json, context: &instCtx, owner: self) ?? studyEffectiveDateTime
		studyEffectiveDescription = createInstance(type: FHIRString.self, for: "studyEffectiveDescription", in: json, context: &instCtx, owner: self) ?? studyEffectiveDescription
		studyEffectiveDuration = createInstance(type: Duration.self, for: "studyEffectiveDuration", in: json, context: &instCtx, owner: self) ?? studyEffectiveDuration
		studyEffectiveGroupMeasure = createEnum(type: GroupMeasure.self, for: "studyEffectiveGroupMeasure", in: json, context: &instCtx) ?? studyEffectiveGroupMeasure
		studyEffectivePeriod = createInstance(type: Period.self, for: "studyEffectivePeriod", in: json, context: &instCtx, owner: self) ?? studyEffectivePeriod
		studyEffectiveTimeFromStart = createInstance(type: Duration.self, for: "studyEffectiveTimeFromStart", in: json, context: &instCtx, owner: self) ?? studyEffectiveTimeFromStart
		studyEffectiveTiming = createInstance(type: Timing.self, for: "studyEffectiveTiming", in: json, context: &instCtx, owner: self) ?? studyEffectiveTiming
		unitOfMeasure = createInstance(type: CodeableConcept.self, for: "unitOfMeasure", in: json, context: &instCtx, owner: self) ?? unitOfMeasure
		usageContext = createInstances(of: UsageContext.self, for: "usageContext", in: json, context: &instCtx, owner: self) ?? usageContext
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.definitionCodeableConcept && nil == self.definitionCanonical && nil == self.definitionExpression && nil == self.definitionDataRequirement {
			instCtx.addError(FHIRValidationError(missing: "definition[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.definitionCanonical?.decorate(json: &json, withKey: "definitionCanonical", errors: &errors)
		self.definitionCodeableConcept?.decorate(json: &json, withKey: "definitionCodeableConcept", errors: &errors)
		self.definitionDataRequirement?.decorate(json: &json, withKey: "definitionDataRequirement", errors: &errors)
		self.definitionExpression?.decorate(json: &json, withKey: "definitionExpression", errors: &errors)
		self.exclude?.decorate(json: &json, withKey: "exclude", errors: &errors)
		self.participantEffectiveDateTime?.decorate(json: &json, withKey: "participantEffectiveDateTime", errors: &errors)
		self.participantEffectiveDescription?.decorate(json: &json, withKey: "participantEffectiveDescription", errors: &errors)
		self.participantEffectiveDuration?.decorate(json: &json, withKey: "participantEffectiveDuration", errors: &errors)
		self.participantEffectiveGroupMeasure?.decorate(json: &json, withKey: "participantEffectiveGroupMeasure", errors: &errors)
		self.participantEffectivePeriod?.decorate(json: &json, withKey: "participantEffectivePeriod", errors: &errors)
		self.participantEffectiveTimeFromStart?.decorate(json: &json, withKey: "participantEffectiveTimeFromStart", errors: &errors)
		self.participantEffectiveTiming?.decorate(json: &json, withKey: "participantEffectiveTiming", errors: &errors)
		self.studyEffectiveDateTime?.decorate(json: &json, withKey: "studyEffectiveDateTime", errors: &errors)
		self.studyEffectiveDescription?.decorate(json: &json, withKey: "studyEffectiveDescription", errors: &errors)
		self.studyEffectiveDuration?.decorate(json: &json, withKey: "studyEffectiveDuration", errors: &errors)
		self.studyEffectiveGroupMeasure?.decorate(json: &json, withKey: "studyEffectiveGroupMeasure", errors: &errors)
		self.studyEffectivePeriod?.decorate(json: &json, withKey: "studyEffectivePeriod", errors: &errors)
		self.studyEffectiveTimeFromStart?.decorate(json: &json, withKey: "studyEffectiveTimeFromStart", errors: &errors)
		self.studyEffectiveTiming?.decorate(json: &json, withKey: "studyEffectiveTiming", errors: &errors)
		self.unitOfMeasure?.decorate(json: &json, withKey: "unitOfMeasure", errors: &errors)
		arrayDecorate(json: &json, withKey: "usageContext", using: self.usageContext, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.definitionCodeableConcept && nil == self.definitionCanonical && nil == self.definitionExpression && nil == self.definitionDataRequirement {
			errors.append(FHIRValidationError(missing: "definition[x]"))
		}
	}
}

