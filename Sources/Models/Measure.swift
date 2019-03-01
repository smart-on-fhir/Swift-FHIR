//
//  Measure.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Measure) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A quality measure definition.

The Measure resource provides the definition of a quality measure.
*/
open class Measure: DomainResource {
	override open class var resourceType: String {
		get { return "Measure" }
	}
	
	/// When the measure was approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Who authored the content.
	public var author: [ContactDetail]?
	
	/// Summary of clinical guidelines.
	public var clinicalRecommendationStatement: FHIRString?
	
	/// opportunity | all-or-nothing | linear | weighted.
	public var compositeScoring: CodeableConcept?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Defined terms used in the measure documentation.
	public var definition: [FHIRString]?
	
	/// Natural language description of the measure.
	public var description_fhir: FHIRString?
	
	/// Disclaimer for use of the measure or its referenced content.
	public var disclaimer: FHIRString?
	
	/// Who edited the content.
	public var editor: [ContactDetail]?
	
	/// When the measure is expected to be used.
	public var effectivePeriod: Period?
	
	/// Who endorsed the content.
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Population criteria group.
	public var group: [MeasureGroup]?
	
	/// Additional guidance for implementers.
	public var guidance: FHIRString?
	
	/// Additional identifier for the measure.
	public var identifier: [Identifier]?
	
	/// increase | decrease.
	public var improvementNotation: CodeableConcept?
	
	/// Intended jurisdiction for measure (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// When the measure was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the measure.
	public var library: [FHIRURL]?
	
	/// Name for this measure (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this measure is defined.
	public var purpose: FHIRString?
	
	/// How is rate aggregation performed for this measure.
	public var rateAggregation: FHIRString?
	
	/// Detailed description of why the measure exists.
	public var rationale: FHIRString?
	
	/// Additional documentation, citations, etc..
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content.
	public var reviewer: [ContactDetail]?
	
	/// How risk adjustment is applied for this measure.
	public var riskAdjustment: FHIRString?
	
	/// proportion | ratio | continuous-variable | cohort.
	public var scoring: CodeableConcept?
	
	/// The status of this measure. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device.
	public var subjectCodeableConcept: CodeableConcept?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device.
	public var subjectReference: Reference?
	
	/// Subordinate title of the measure.
	public var subtitle: FHIRString?
	
	/// What other data should be reported with the measure.
	public var supplementalData: [MeasureSupplementalData]?
	
	/// Name for this measure (human friendly).
	public var title: FHIRString?
	
	/// The category of the measure, such as Education, Treatment, Assessment, etc..
	public var topic: [CodeableConcept]?
	
	/// process | outcome | structure | patient-reported-outcome | composite.
	public var type: [CodeableConcept]?
	
	/// Canonical identifier for this measure, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the measure.
	public var usage: FHIRString?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the measure.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		approvalDate = createInstance(type: FHIRDate.self, for: "approvalDate", in: json, context: &instCtx, owner: self) ?? approvalDate
		author = createInstances(of: ContactDetail.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		clinicalRecommendationStatement = createInstance(type: FHIRString.self, for: "clinicalRecommendationStatement", in: json, context: &instCtx, owner: self) ?? clinicalRecommendationStatement
		compositeScoring = createInstance(type: CodeableConcept.self, for: "compositeScoring", in: json, context: &instCtx, owner: self) ?? compositeScoring
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		definition = createInstances(of: FHIRString.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		disclaimer = createInstance(type: FHIRString.self, for: "disclaimer", in: json, context: &instCtx, owner: self) ?? disclaimer
		editor = createInstances(of: ContactDetail.self, for: "editor", in: json, context: &instCtx, owner: self) ?? editor
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		endorser = createInstances(of: ContactDetail.self, for: "endorser", in: json, context: &instCtx, owner: self) ?? endorser
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		group = createInstances(of: MeasureGroup.self, for: "group", in: json, context: &instCtx, owner: self) ?? group
		guidance = createInstance(type: FHIRString.self, for: "guidance", in: json, context: &instCtx, owner: self) ?? guidance
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		improvementNotation = createInstance(type: CodeableConcept.self, for: "improvementNotation", in: json, context: &instCtx, owner: self) ?? improvementNotation
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		library = createInstances(of: FHIRURL.self, for: "library", in: json, context: &instCtx, owner: self) ?? library
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		rateAggregation = createInstance(type: FHIRString.self, for: "rateAggregation", in: json, context: &instCtx, owner: self) ?? rateAggregation
		rationale = createInstance(type: FHIRString.self, for: "rationale", in: json, context: &instCtx, owner: self) ?? rationale
		relatedArtifact = createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, context: &instCtx, owner: self) ?? relatedArtifact
		reviewer = createInstances(of: ContactDetail.self, for: "reviewer", in: json, context: &instCtx, owner: self) ?? reviewer
		riskAdjustment = createInstance(type: FHIRString.self, for: "riskAdjustment", in: json, context: &instCtx, owner: self) ?? riskAdjustment
		scoring = createInstance(type: CodeableConcept.self, for: "scoring", in: json, context: &instCtx, owner: self) ?? scoring
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subjectCodeableConcept = createInstance(type: CodeableConcept.self, for: "subjectCodeableConcept", in: json, context: &instCtx, owner: self) ?? subjectCodeableConcept
		subjectReference = createInstance(type: Reference.self, for: "subjectReference", in: json, context: &instCtx, owner: self) ?? subjectReference
		subtitle = createInstance(type: FHIRString.self, for: "subtitle", in: json, context: &instCtx, owner: self) ?? subtitle
		supplementalData = createInstances(of: MeasureSupplementalData.self, for: "supplementalData", in: json, context: &instCtx, owner: self) ?? supplementalData
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		topic = createInstances(of: CodeableConcept.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		usage = createInstance(type: FHIRString.self, for: "usage", in: json, context: &instCtx, owner: self) ?? usage
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		self.clinicalRecommendationStatement?.decorate(json: &json, withKey: "clinicalRecommendationStatement", errors: &errors)
		self.compositeScoring?.decorate(json: &json, withKey: "compositeScoring", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.disclaimer?.decorate(json: &json, withKey: "disclaimer", errors: &errors)
		arrayDecorate(json: &json, withKey: "editor", using: self.editor, errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "endorser", using: self.endorser, errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "group", using: self.group, errors: &errors)
		self.guidance?.decorate(json: &json, withKey: "guidance", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.improvementNotation?.decorate(json: &json, withKey: "improvementNotation", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "library", using: self.library, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.rateAggregation?.decorate(json: &json, withKey: "rateAggregation", errors: &errors)
		self.rationale?.decorate(json: &json, withKey: "rationale", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		arrayDecorate(json: &json, withKey: "reviewer", using: self.reviewer, errors: &errors)
		self.riskAdjustment?.decorate(json: &json, withKey: "riskAdjustment", errors: &errors)
		self.scoring?.decorate(json: &json, withKey: "scoring", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subjectCodeableConcept?.decorate(json: &json, withKey: "subjectCodeableConcept", errors: &errors)
		self.subjectReference?.decorate(json: &json, withKey: "subjectReference", errors: &errors)
		self.subtitle?.decorate(json: &json, withKey: "subtitle", errors: &errors)
		arrayDecorate(json: &json, withKey: "supplementalData", using: self.supplementalData, errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.usage?.decorate(json: &json, withKey: "usage", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Population criteria group.

A group of population criteria for the measure.
*/
open class MeasureGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroup" }
	}
	
	/// Meaning of the group.
	public var code: CodeableConcept?
	
	/// Summary description.
	public var description_fhir: FHIRString?
	
	/// Population criteria.
	public var population: [MeasureGroupPopulation]?
	
	/// Stratifier criteria for the measure.
	public var stratifier: [MeasureGroupStratifier]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		population = createInstances(of: MeasureGroupPopulation.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		stratifier = createInstances(of: MeasureGroupStratifier.self, for: "stratifier", in: json, context: &instCtx, owner: self) ?? stratifier
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "population", using: self.population, errors: &errors)
		arrayDecorate(json: &json, withKey: "stratifier", using: self.stratifier, errors: &errors)
	}
}


/**
Population criteria.

A population criteria for the measure.
*/
open class MeasureGroupPopulation: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroupPopulation" }
	}
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation.
	public var code: CodeableConcept?
	
	/// The criteria that defines this population.
	public var criteria: Expression?
	
	/// The human readable description of this population criteria.
	public var description_fhir: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(criteria: Expression) {
		self.init()
		self.criteria = criteria
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		criteria = createInstance(type: Expression.self, for: "criteria", in: json, context: &instCtx, owner: self) ?? criteria
		if nil == criteria && !instCtx.containsKey("criteria") {
			instCtx.addError(FHIRValidationError(missing: "criteria"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		if nil == self.criteria {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
	}
}


/**
Stratifier criteria for the measure.

The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a
referenced library or a valid FHIR Resource Path.
*/
open class MeasureGroupStratifier: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroupStratifier" }
	}
	
	/// Meaning of the stratifier.
	public var code: CodeableConcept?
	
	/// Stratifier criteria component for the measure.
	public var component: [MeasureGroupStratifierComponent]?
	
	/// How the measure should be stratified.
	public var criteria: Expression?
	
	/// The human readable description of this stratifier.
	public var description_fhir: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		component = createInstances(of: MeasureGroupStratifierComponent.self, for: "component", in: json, context: &instCtx, owner: self) ?? component
		criteria = createInstance(type: Expression.self, for: "criteria", in: json, context: &instCtx, owner: self) ?? criteria
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "component", using: self.component, errors: &errors)
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
	}
}


/**
Stratifier criteria component for the measure.

A component of the stratifier criteria for the measure report, specified as either the name of a valid CQL expression
defined within a referenced library or a valid FHIR Resource Path.
*/
open class MeasureGroupStratifierComponent: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroupStratifierComponent" }
	}
	
	/// Meaning of the stratifier component.
	public var code: CodeableConcept?
	
	/// Component of how the measure should be stratified.
	public var criteria: Expression?
	
	/// The human readable description of this stratifier component.
	public var description_fhir: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(criteria: Expression) {
		self.init()
		self.criteria = criteria
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		criteria = createInstance(type: Expression.self, for: "criteria", in: json, context: &instCtx, owner: self) ?? criteria
		if nil == criteria && !instCtx.containsKey("criteria") {
			instCtx.addError(FHIRValidationError(missing: "criteria"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		if nil == self.criteria {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
	}
}


/**
What other data should be reported with the measure.

The supplemental data criteria for the measure report, specified as either the name of a valid CQL expression within a
referenced library, or a valid FHIR Resource Path.
*/
open class MeasureSupplementalData: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureSupplementalData" }
	}
	
	/// Meaning of the supplemental data.
	public var code: CodeableConcept?
	
	/// Expression describing additional data to be reported.
	public var criteria: Expression?
	
	/// The human readable description of this supplemental data.
	public var description_fhir: FHIRString?
	
	/// supplemental-data | risk-adjustment-factor.
	public var usage: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(criteria: Expression) {
		self.init()
		self.criteria = criteria
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		criteria = createInstance(type: Expression.self, for: "criteria", in: json, context: &instCtx, owner: self) ?? criteria
		if nil == criteria && !instCtx.containsKey("criteria") {
			instCtx.addError(FHIRValidationError(missing: "criteria"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		usage = createInstances(of: CodeableConcept.self, for: "usage", in: json, context: &instCtx, owner: self) ?? usage
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		if nil == self.criteria {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "usage", using: self.usage, errors: &errors)
	}
}

