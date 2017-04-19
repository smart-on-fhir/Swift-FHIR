//
//  Measure.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Measure) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// Summary of clinical guidelines.
	public var clinicalRecommendationStatement: FHIRString?
	
	/// opportunity | all-or-nothing | linear | weighted.
	public var compositeScoring: CodeableConcept?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Defined terms used in the measure documentation.
	public var definition: [FHIRString]?
	
	/// Natural language description of the measure.
	public var description_fhir: FHIRString?
	
	/// Disclaimer for use of the measure or its referenced content.
	public var disclaimer: FHIRString?
	
	/// When the measure is expected to be used.
	public var effectivePeriod: Period?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Population criteria group.
	public var group: [MeasureGroup]?
	
	/// Additional guidance for implementers.
	public var guidance: FHIRString?
	
	/// Additional identifier for the measure.
	public var identifier: [Identifier]?
	
	/// Improvement notation for the measure, e.g. higher score indicates better quality.
	public var improvementNotation: FHIRString?
	
	/// Intended jurisdiction for measure (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// When the measure was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the measure.
	public var library: [Reference]?
	
	/// Name for this measure (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this measure is defined.
	public var purpose: FHIRString?
	
	/// How is rate aggregation performed for this measure.
	public var rateAggregation: FHIRString?
	
	/// Why does this measure exist.
	public var rationale: FHIRString?
	
	/// Additional documentation, citations, etc.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// How is risk adjustment applied for this measure.
	public var riskAdjustment: FHIRString?
	
	/// proportion | ratio | continuous-variable | cohort.
	public var scoring: CodeableConcept?
	
	/// The measure set, e.g. Preventive Care and Screening.
	public var set: FHIRString?
	
	/// The status of this measure. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// What other data should be reported with the measure.
	public var supplementalData: [MeasureSupplementalData]?
	
	/// Name for this measure (human friendly).
	public var title: FHIRString?
	
	/// E.g. Education, Treatment, Assessment, etc.
	public var topic: [CodeableConcept]?
	
	/// process | outcome | structure | patient-reported-outcome | composite.
	public var type: [CodeableConcept]?
	
	/// Logical URI to reference this measure (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the measure.
	public var usage: FHIRString?
	
	/// Context the content is intended to support.
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
		clinicalRecommendationStatement = createInstance(type: FHIRString.self, for: "clinicalRecommendationStatement", in: json, context: &instCtx, owner: self) ?? clinicalRecommendationStatement
		compositeScoring = createInstance(type: CodeableConcept.self, for: "compositeScoring", in: json, context: &instCtx, owner: self) ?? compositeScoring
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		contributor = createInstances(of: Contributor.self, for: "contributor", in: json, context: &instCtx, owner: self) ?? contributor
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		definition = createInstances(of: FHIRString.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		disclaimer = createInstance(type: FHIRString.self, for: "disclaimer", in: json, context: &instCtx, owner: self) ?? disclaimer
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		group = createInstances(of: MeasureGroup.self, for: "group", in: json, context: &instCtx, owner: self) ?? group
		guidance = createInstance(type: FHIRString.self, for: "guidance", in: json, context: &instCtx, owner: self) ?? guidance
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		improvementNotation = createInstance(type: FHIRString.self, for: "improvementNotation", in: json, context: &instCtx, owner: self) ?? improvementNotation
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		library = createInstances(of: Reference.self, for: "library", in: json, context: &instCtx, owner: self) ?? library
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		rateAggregation = createInstance(type: FHIRString.self, for: "rateAggregation", in: json, context: &instCtx, owner: self) ?? rateAggregation
		rationale = createInstance(type: FHIRString.self, for: "rationale", in: json, context: &instCtx, owner: self) ?? rationale
		relatedArtifact = createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, context: &instCtx, owner: self) ?? relatedArtifact
		riskAdjustment = createInstance(type: FHIRString.self, for: "riskAdjustment", in: json, context: &instCtx, owner: self) ?? riskAdjustment
		scoring = createInstance(type: CodeableConcept.self, for: "scoring", in: json, context: &instCtx, owner: self) ?? scoring
		set = createInstance(type: FHIRString.self, for: "set", in: json, context: &instCtx, owner: self) ?? set
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
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
		self.clinicalRecommendationStatement?.decorate(json: &json, withKey: "clinicalRecommendationStatement", errors: &errors)
		self.compositeScoring?.decorate(json: &json, withKey: "compositeScoring", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "contributor", using: self.contributor, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.disclaimer?.decorate(json: &json, withKey: "disclaimer", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
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
		self.riskAdjustment?.decorate(json: &json, withKey: "riskAdjustment", errors: &errors)
		self.scoring?.decorate(json: &json, withKey: "scoring", errors: &errors)
		self.set?.decorate(json: &json, withKey: "set", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
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
	
	/// Summary description.
	public var description_fhir: FHIRString?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// Short name.
	public var name: FHIRString?
	
	/// Population criteria.
	public var population: [MeasureGroupPopulation]?
	
	/// Stratifier criteria for the measure.
	public var stratifier: [MeasureGroupStratifier]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		if nil == identifier && !instCtx.containsKey("identifier") {
			instCtx.addError(FHIRValidationError(missing: "identifier"))
		}
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		population = createInstances(of: MeasureGroupPopulation.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		stratifier = createInstances(of: MeasureGroupStratifier.self, for: "stratifier", in: json, context: &instCtx, owner: self) ?? stratifier
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
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
	
	/// The name of a valid referenced CQL expression (may be namespaced) that defines this population criteria.
	public var criteria: FHIRString?
	
	/// The human readable description of this population criteria.
	public var description_fhir: FHIRString?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// Short name.
	public var name: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(criteria: FHIRString) {
		self.init()
		self.criteria = criteria
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		criteria = createInstance(type: FHIRString.self, for: "criteria", in: json, context: &instCtx, owner: self) ?? criteria
		if nil == criteria && !instCtx.containsKey("criteria") {
			instCtx.addError(FHIRValidationError(missing: "criteria"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		if nil == self.criteria {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
	}
}


/**
Stratifier criteria for the measure.

The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a
referenced library, or a valid FHIR Resource Path.
*/
open class MeasureGroupStratifier: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroupStratifier" }
	}
	
	/// How the measure should be stratified.
	public var criteria: FHIRString?
	
	/// The identifier for the stratifier used to coordinate the reported data back to this stratifier.
	public var identifier: Identifier?
	
	/// Path to the stratifier.
	public var path: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		criteria = createInstance(type: FHIRString.self, for: "criteria", in: json, context: &instCtx, owner: self) ?? criteria
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
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
	
	/// Expression describing additional data to be reported.
	public var criteria: FHIRString?
	
	/// Identifier, unique within the measure.
	public var identifier: Identifier?
	
	/// Path to the supplemental data element.
	public var path: FHIRString?
	
	/// supplemental-data | risk-adjustment-factor.
	public var usage: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		criteria = createInstance(type: FHIRString.self, for: "criteria", in: json, context: &instCtx, owner: self) ?? criteria
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
		usage = createInstances(of: CodeableConcept.self, for: "usage", in: json, context: &instCtx, owner: self) ?? usage
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		arrayDecorate(json: &json, withKey: "usage", using: self.usage, errors: &errors)
	}
}

