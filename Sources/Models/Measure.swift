//
//  Measure.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Measure) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// When measure approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Clinical recommendation.
	public var clinicalRecommendationStatement: FHIRString?
	
	/// If this is a composite measure, the scoring method used to combine the component measures to determine the
	/// composite score.
	public var compositeScoring: CompositeMeasureScoring?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// A natural language definition of the measure.
	public var definition: FHIRString?
	
	/// Natural language description of the measure.
	public var description_fhir: FHIRString?
	
	/// Disclaimer for the measure.
	public var disclaimer: FHIRString?
	
	/// The effective date range for the measure.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Population criteria group.
	public var group: [MeasureGroup]?
	
	/// The guidance for the measure.
	public var guidance: FHIRString?
	
	/// Additional identifier for the measure.
	public var identifier: [Identifier]?
	
	/// Improvement notation for the measure, e.g. higher score indicates better quality.
	public var improvementNotation: FHIRString?
	
	/// Intended jurisdiction for measure (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Last review date for the measure.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the measure.
	public var library: [Reference]?
	
	/// Name for this measure (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this measure is defined.
	public var purpose: FHIRString?
	
	/// How is rate aggregation performed for this measure.
	public var rateAggregation: FHIRString?
	
	/// Why does this measure exist.
	public var rationale: FHIRString?
	
	/// Related artifacts for the measure.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// How is risk adjustment applied for this measure.
	public var riskAdjustment: FHIRString?
	
	/// The measure scoring type, e.g. proportion, CV.
	public var scoring: MeasureScoring?
	
	/// The measure set, e.g. Preventive Care and Screening.
	public var set: FHIRString?
	
	/// The status of this measure. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Supplemental data.
	public var supplementalData: [MeasureSupplementalData]?
	
	/// Name for this measure (Human friendly).
	public var title: FHIRString?
	
	/// Descriptional topics for the measure.
	public var topic: [CodeableConcept]?
	
	/// The measure type, e.g. process, outcome.
	public var type: [MeasureType]?
	
	/// Logical uri to reference this measure (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the measure.
	public var usage: FHIRString?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the measure.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		approvalDate = try createInstance(type: FHIRDate.self, for: "approvalDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? approvalDate
		clinicalRecommendationStatement = try createInstance(type: FHIRString.self, for: "clinicalRecommendationStatement", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? clinicalRecommendationStatement
		compositeScoring = createEnum(type: CompositeMeasureScoring.self, for: "compositeScoring", in: json, presentKeys: &presentKeys, errors: &errors) ?? compositeScoring
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		contributor = try createInstances(of: Contributor.self, for: "contributor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contributor
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		definition = try createInstance(type: FHIRString.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		disclaimer = try createInstance(type: FHIRString.self, for: "disclaimer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? disclaimer
		effectivePeriod = try createInstance(type: Period.self, for: "effectivePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectivePeriod
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		group = try createInstances(of: MeasureGroup.self, for: "group", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? group
		guidance = try createInstance(type: FHIRString.self, for: "guidance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? guidance
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		improvementNotation = try createInstance(type: FHIRString.self, for: "improvementNotation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? improvementNotation
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		lastReviewDate = try createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lastReviewDate
		library = try createInstances(of: Reference.self, for: "library", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? library
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		rateAggregation = try createInstance(type: FHIRString.self, for: "rateAggregation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rateAggregation
		rationale = try createInstance(type: FHIRString.self, for: "rationale", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rationale
		relatedArtifact = try createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatedArtifact
		riskAdjustment = try createInstance(type: FHIRString.self, for: "riskAdjustment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? riskAdjustment
		scoring = createEnum(type: MeasureScoring.self, for: "scoring", in: json, presentKeys: &presentKeys, errors: &errors) ?? scoring
		set = try createInstance(type: FHIRString.self, for: "set", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? set
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		supplementalData = try createInstances(of: MeasureSupplementalData.self, for: "supplementalData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supplementalData
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		topic = try createInstances(of: CodeableConcept.self, for: "topic", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? topic
		type = createEnums(of: MeasureType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		usage = try createInstance(type: FHIRString.self, for: "usage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? usage
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
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
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		population = try createInstances(of: MeasureGroupPopulation.self, for: "population", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? population
		stratifier = try createInstances(of: MeasureGroupStratifier.self, for: "stratifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? stratifier
		
		return errors.isEmpty ? nil : errors
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
	
	/// The name of a valid referenced CQL expression (may be namespaced) that defines this population criteria.
	public var criteria: FHIRString?
	
	/// The human readable description of this population criteria.
	public var description_fhir: FHIRString?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// Short name.
	public var name: FHIRString?
	
	/// The type of population criteria.
	public var type: MeasurePopulationType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(criteria: FHIRString, identifier: Identifier, type: MeasurePopulationType) {
		self.init()
		self.criteria = criteria
		self.identifier = identifier
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		criteria = try createInstance(type: FHIRString.self, for: "criteria", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? criteria
		if nil == criteria && !presentKeys.contains("criteria") {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		type = createEnum(type: MeasurePopulationType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		if nil == self.criteria {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
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
	
	/// Stratifier criteria.
	public var criteria: FHIRString?
	
	/// The identifier for the stratifier used to coordinate the reported data back to this stratifier.
	public var identifier: Identifier?
	
	/// Path to the stratifier.
	public var path: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		criteria = try createInstance(type: FHIRString.self, for: "criteria", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? criteria
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		path = try createInstance(type: FHIRString.self, for: "path", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? path
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
	}
}


/**
Supplemental data.

The supplemental data criteria for the measure report, specified as either the name of a valid CQL expression within a
referenced library, or a valid FHIR Resource Path.
*/
open class MeasureSupplementalData: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureSupplementalData" }
	}
	
	/// Supplemental data criteria.
	public var criteria: FHIRString?
	
	/// Identifier, unique within the measure.
	public var identifier: Identifier?
	
	/// Path to the supplemental data element.
	public var path: FHIRString?
	
	/// An indicator of the intended usage for the supplemental data element. Supplemental data indicates the data is
	/// additional information requested to augment the measure information. Risk adjustment factor indicates the data
	/// is additional information used to calculate risk adjustment factors when applying a risk model to the measure
	/// calculation.
	public var usage: [MeasureDataUsage]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		criteria = try createInstance(type: FHIRString.self, for: "criteria", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? criteria
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		path = try createInstance(type: FHIRString.self, for: "path", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? path
		usage = createEnums(of: MeasureDataUsage.self, for: "usage", in: json, presentKeys: &presentKeys, errors: &errors) ?? usage
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		arrayDecorate(json: &json, withKey: "usage", using: self.usage, errors: &errors)
	}
}

