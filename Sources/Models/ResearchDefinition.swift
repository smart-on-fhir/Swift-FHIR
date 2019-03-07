//
//  ResearchDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ResearchDefinition) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A research context or question.

The ResearchDefinition resource describes the conditional state (population and any exposures being compared within the
population) and outcome (if specified) that the knowledge (evidence, assertion, recommendation) is about.
*/
open class ResearchDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "ResearchDefinition" }
	}
	
	/// When the research definition was approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Who authored the content.
	public var author: [ContactDetail]?
	
	/// Used for footnotes or explanatory notes.
	public var comment: [FHIRString]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Natural language description of the research definition.
	public var description_fhir: FHIRString?
	
	/// Who edited the content.
	public var editor: [ContactDetail]?
	
	/// When the research definition is expected to be used.
	public var effectivePeriod: Period?
	
	/// Who endorsed the content.
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// What exposure?.
	public var exposure: Reference?
	
	/// What alternative exposure state?.
	public var exposureAlternative: Reference?
	
	/// Additional identifier for the research definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for research definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// When the research definition was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the ResearchDefinition.
	public var library: [FHIRURL]?
	
	/// Name for this research definition (computer friendly).
	public var name: FHIRString?
	
	/// What outcome?.
	public var outcome: Reference?
	
	/// What population?.
	public var population: Reference?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this research definition is defined.
	public var purpose: FHIRString?
	
	/// Additional documentation, citations, etc..
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content.
	public var reviewer: [ContactDetail]?
	
	/// Title for use in informal contexts.
	public var shortTitle: FHIRString?
	
	/// The status of this research definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device.
	public var subjectCodeableConcept: CodeableConcept?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device.
	public var subjectReference: Reference?
	
	/// Subordinate title of the ResearchDefinition.
	public var subtitle: FHIRString?
	
	/// Name for this research definition (human friendly).
	public var title: FHIRString?
	
	/// The category of the ResearchDefinition, such as Education, Treatment, Assessment, etc..
	public var topic: [CodeableConcept]?
	
	/// Canonical identifier for this research definition, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the ResearchDefinition.
	public var usage: FHIRString?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the research definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(population: Reference, status: PublicationStatus) {
		self.init()
		self.population = population
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		approvalDate = createInstance(type: FHIRDate.self, for: "approvalDate", in: json, context: &instCtx, owner: self) ?? approvalDate
		author = createInstances(of: ContactDetail.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		comment = createInstances(of: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		editor = createInstances(of: ContactDetail.self, for: "editor", in: json, context: &instCtx, owner: self) ?? editor
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		endorser = createInstances(of: ContactDetail.self, for: "endorser", in: json, context: &instCtx, owner: self) ?? endorser
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		exposure = createInstance(type: Reference.self, for: "exposure", in: json, context: &instCtx, owner: self) ?? exposure
		exposureAlternative = createInstance(type: Reference.self, for: "exposureAlternative", in: json, context: &instCtx, owner: self) ?? exposureAlternative
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		library = createInstances(of: FHIRURL.self, for: "library", in: json, context: &instCtx, owner: self) ?? library
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		outcome = createInstance(type: Reference.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		population = createInstance(type: Reference.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		if nil == population && !instCtx.containsKey("population") {
			instCtx.addError(FHIRValidationError(missing: "population"))
		}
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
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		usage = createInstance(type: FHIRString.self, for: "usage", in: json, context: &instCtx, owner: self) ?? usage
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "comment", using: self.comment, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "editor", using: self.editor, errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "endorser", using: self.endorser, errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		self.exposure?.decorate(json: &json, withKey: "exposure", errors: &errors)
		self.exposureAlternative?.decorate(json: &json, withKey: "exposureAlternative", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "library", using: self.library, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.population?.decorate(json: &json, withKey: "population", errors: &errors)
		if nil == self.population {
			errors.append(FHIRValidationError(missing: "population"))
		}
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
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.usage?.decorate(json: &json, withKey: "usage", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}

