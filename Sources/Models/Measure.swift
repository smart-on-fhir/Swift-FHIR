//
//  Measure.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Measure) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A quality measure definition.
 *
 *  The Measure resource provides the definition of a quality measure.
 */
public class Measure: DomainResource {
	override public class var resourceName: String {
		get { return "Measure" }
	}
	
	/// Clinical recommendation.
	public var clinicalRecommendationStatement: String?
	
	/// Contact details of the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Describes the context of use for this measure.
	public var coverage: [UsageContext]?
	
	/// A natural language definition of the measure.
	public var definition: String?
	
	/// Natural language description of the measure.
	public var description_fhir: String?
	
	/// Disclaimer for the measure.
	public var disclaimer: String?
	
	/// The effective date range for the measure.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Population criteria group.
	public var group: [MeasureGroup]?
	
	/// The guidance for the measure.
	public var guidance: String?
	
	/// Logical identifier(s) for the measure.
	public var identifier: [Identifier]?
	
	/// Improvement notation for the measure, e.g. higher score indicates better quality.
	public var improvementNotation: String?
	
	/// Last review date for the measure.
	public var lastReviewDate: Date?
	
	/// Logic used by the measure.
	public var library: [Reference]?
	
	/// A machine-friendly name for the measure.
	public var name: String?
	
	/// Publication date for this version of the measure.
	public var publicationDate: Date?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Describes the purpose of the measure.
	public var purpose: String?
	
	/// How is rate aggregation performed for this measure.
	public var rateAggregation: String?
	
	/// Why does this measure exist.
	public var rationale: String?
	
	/// Related resources for the measure.
	public var relatedResource: [RelatedResource]?
	
	/// How is risk adjustment applied for this measure.
	public var riskAdjustment: String?
	
	/// proportion | ratio | continuous-variable | cohort.
	public var scoring: String?
	
	/// The measure set, e.g. Preventive Care and Screening.
	public var set: String?
	
	/// draft | active | inactive.
	public var status: String?
	
	/// Supplemental data.
	public var supplementalData: [MeasureSupplementalData]?
	
	/// A user-friendly title for the measure.
	public var title: String?
	
	/// Descriptional topics for the measure.
	public var topic: [CodeableConcept]?
	
	/// process | outcome.
	public var type: [String]?
	
	/// Logical URL to reference this measure.
	public var url: NSURL?
	
	/// Describes the clinical usage of the measure.
	public var usage: String?
	
	/// The version of the measure, if any.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["clinicalRecommendationStatement"] {
				presentKeys.insert("clinicalRecommendationStatement")
				if let val = exist as? String {
					self.clinicalRecommendationStatement = val
				}
				else {
					errors.append(FHIRJSONError(key: "clinicalRecommendationStatement", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactDetail.from(val, owner: self) as? [ContactDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contributor"] {
				presentKeys.insert("contributor")
				if let val = exist as? [FHIRJSON] {
					self.contributor = Contributor.from(val, owner: self) as? [Contributor]
				}
				else {
					errors.append(FHIRJSONError(key: "contributor", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["coverage"] {
				presentKeys.insert("coverage")
				if let val = exist as? [FHIRJSON] {
					self.coverage = UsageContext.from(val, owner: self) as? [UsageContext]
				}
				else {
					errors.append(FHIRJSONError(key: "coverage", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? String {
					self.definition = val
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["disclaimer"] {
				presentKeys.insert("disclaimer")
				if let val = exist as? String {
					self.disclaimer = val
				}
				else {
					errors.append(FHIRJSONError(key: "disclaimer", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["effectivePeriod"] {
				presentKeys.insert("effectivePeriod")
				if let val = exist as? FHIRJSON {
					self.effectivePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "effectivePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = MeasureGroup.from(val, owner: self) as? [MeasureGroup]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["guidance"] {
				presentKeys.insert("guidance")
				if let val = exist as? String {
					self.guidance = val
				}
				else {
					errors.append(FHIRJSONError(key: "guidance", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["improvementNotation"] {
				presentKeys.insert("improvementNotation")
				if let val = exist as? String {
					self.improvementNotation = val
				}
				else {
					errors.append(FHIRJSONError(key: "improvementNotation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lastReviewDate"] {
				presentKeys.insert("lastReviewDate")
				if let val = exist as? String {
					self.lastReviewDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lastReviewDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["library"] {
				presentKeys.insert("library")
				if let val = exist as? [FHIRJSON] {
					self.library = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "library", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["publicationDate"] {
				presentKeys.insert("publicationDate")
				if let val = exist as? String {
					self.publicationDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "publicationDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? String {
					self.purpose = val
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rateAggregation"] {
				presentKeys.insert("rateAggregation")
				if let val = exist as? String {
					self.rateAggregation = val
				}
				else {
					errors.append(FHIRJSONError(key: "rateAggregation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rationale"] {
				presentKeys.insert("rationale")
				if let val = exist as? String {
					self.rationale = val
				}
				else {
					errors.append(FHIRJSONError(key: "rationale", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relatedResource"] {
				presentKeys.insert("relatedResource")
				if let val = exist as? [FHIRJSON] {
					self.relatedResource = RelatedResource.from(val, owner: self) as? [RelatedResource]
				}
				else {
					errors.append(FHIRJSONError(key: "relatedResource", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["riskAdjustment"] {
				presentKeys.insert("riskAdjustment")
				if let val = exist as? String {
					self.riskAdjustment = val
				}
				else {
					errors.append(FHIRJSONError(key: "riskAdjustment", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["scoring"] {
				presentKeys.insert("scoring")
				if let val = exist as? String {
					self.scoring = val
				}
				else {
					errors.append(FHIRJSONError(key: "scoring", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["set"] {
				presentKeys.insert("set")
				if let val = exist as? String {
					self.set = val
				}
				else {
					errors.append(FHIRJSONError(key: "set", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["supplementalData"] {
				presentKeys.insert("supplementalData")
				if let val = exist as? [FHIRJSON] {
					self.supplementalData = MeasureSupplementalData.from(val, owner: self) as? [MeasureSupplementalData]
				}
				else {
					errors.append(FHIRJSONError(key: "supplementalData", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["topic"] {
				presentKeys.insert("topic")
				if let val = exist as? [FHIRJSON] {
					self.topic = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "topic", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [String] {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["usage"] {
				presentKeys.insert("usage")
				if let val = exist as? String {
					self.usage = val
				}
				else {
					errors.append(FHIRJSONError(key: "usage", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let clinicalRecommendationStatement = self.clinicalRecommendationStatement {
			json["clinicalRecommendationStatement"] = clinicalRecommendationStatement.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = ContactDetail.asJSONArray(contact)
		}
		if let contributor = self.contributor {
			json["contributor"] = Contributor.asJSONArray(contributor)
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let coverage = self.coverage {
			json["coverage"] = UsageContext.asJSONArray(coverage)
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let disclaimer = self.disclaimer {
			json["disclaimer"] = disclaimer.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let group = self.group {
			json["group"] = MeasureGroup.asJSONArray(group)
		}
		if let guidance = self.guidance {
			json["guidance"] = guidance.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let improvementNotation = self.improvementNotation {
			json["improvementNotation"] = improvementNotation.asJSON()
		}
		if let lastReviewDate = self.lastReviewDate {
			json["lastReviewDate"] = lastReviewDate.asJSON()
		}
		if let library = self.library {
			json["library"] = Reference.asJSONArray(library)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publicationDate = self.publicationDate {
			json["publicationDate"] = publicationDate.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let rateAggregation = self.rateAggregation {
			json["rateAggregation"] = rateAggregation.asJSON()
		}
		if let rationale = self.rationale {
			json["rationale"] = rationale.asJSON()
		}
		if let relatedResource = self.relatedResource {
			json["relatedResource"] = RelatedResource.asJSONArray(relatedResource)
		}
		if let riskAdjustment = self.riskAdjustment {
			json["riskAdjustment"] = riskAdjustment.asJSON()
		}
		if let scoring = self.scoring {
			json["scoring"] = scoring.asJSON()
		}
		if let set = self.set {
			json["set"] = set.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let supplementalData = self.supplementalData {
			json["supplementalData"] = MeasureSupplementalData.asJSONArray(supplementalData)
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = CodeableConcept.asJSONArray(topic)
		}
		if let type = self.type {
			var arr = [AnyObject]()
			for val in type {
				arr.append(val.asJSON())
			}
			json["type"] = arr
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let usage = self.usage {
			json["usage"] = usage.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Population criteria group.
 *
 *  A group of population criteria for the measure.
 */
public class MeasureGroup: BackboneElement {
	override public class var resourceName: String {
		get { return "MeasureGroup" }
	}
	
	/// Summary description.
	public var description_fhir: String?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// Short name.
	public var name: String?
	
	/// Population criteria.
	public var population: [MeasureGroupPopulation]?
	
	/// Stratifier criteria for the measure.
	public var stratifier: [MeasureGroupStratifier]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["population"] {
				presentKeys.insert("population")
				if let val = exist as? [FHIRJSON] {
					self.population = MeasureGroupPopulation.from(val, owner: self) as? [MeasureGroupPopulation]
				}
				else {
					errors.append(FHIRJSONError(key: "population", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["stratifier"] {
				presentKeys.insert("stratifier")
				if let val = exist as? [FHIRJSON] {
					self.stratifier = MeasureGroupStratifier.from(val, owner: self) as? [MeasureGroupStratifier]
				}
				else {
					errors.append(FHIRJSONError(key: "stratifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let population = self.population {
			json["population"] = MeasureGroupPopulation.asJSONArray(population)
		}
		if let stratifier = self.stratifier {
			json["stratifier"] = MeasureGroupStratifier.asJSONArray(stratifier)
		}
		
		return json
	}
}


/**
 *  Population criteria.
 *
 *  A population criteria for the measure.
 */
public class MeasureGroupPopulation: BackboneElement {
	override public class var resourceName: String {
		get { return "MeasureGroupPopulation" }
	}
	
	/// The name of a valid referenced CQL expression (may be namespaced) that defines this population criteria.
	public var criteria: String?
	
	/// The human readable description of this population criteria.
	public var description_fhir: String?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// Short name.
	public var name: String?
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-score.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(criteria: String, identifier: Identifier, type: String) {
		self.init(json: nil)
		self.criteria = criteria
		self.identifier = identifier
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["criteria"] {
				presentKeys.insert("criteria")
				if let val = exist as? String {
					self.criteria = val
				}
				else {
					errors.append(FHIRJSONError(key: "criteria", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "criteria"))
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Stratifier criteria for the measure.
 *
 *  The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined
 *  within a referenced library, or a valid FHIR Resource Path.
 */
public class MeasureGroupStratifier: BackboneElement {
	override public class var resourceName: String {
		get { return "MeasureGroupStratifier" }
	}
	
	/// Stratifier criteria.
	public var criteria: String?
	
	/// The identifier for the stratifier used to coordinate the reported data back to this stratifier.
	public var identifier: Identifier?
	
	/// Path to the stratifier.
	public var path: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["criteria"] {
				presentKeys.insert("criteria")
				if let val = exist as? String {
					self.criteria = val
				}
				else {
					errors.append(FHIRJSONError(key: "criteria", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		
		return json
	}
}


/**
 *  Supplemental data.
 *
 *  The supplemental data criteria for the measure report, specified as either the name of a valid CQL expression within
 *  a referenced library, or a valid FHIR Resource Path.
 */
public class MeasureSupplementalData: BackboneElement {
	override public class var resourceName: String {
		get { return "MeasureSupplementalData" }
	}
	
	/// Supplemental data criteria.
	public var criteria: String?
	
	/// Identifier, unique within the measure.
	public var identifier: Identifier?
	
	/// Path to the supplemental data element.
	public var path: String?
	
	/// supplemental-data | risk-adjustment-factor.
	public var usage: [String]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["criteria"] {
				presentKeys.insert("criteria")
				if let val = exist as? String {
					self.criteria = val
				}
				else {
					errors.append(FHIRJSONError(key: "criteria", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["usage"] {
				presentKeys.insert("usage")
				if let val = exist as? [String] {
					self.usage = val
				}
				else {
					errors.append(FHIRJSONError(key: "usage", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let usage = self.usage {
			var arr = [AnyObject]()
			for val in usage {
				arr.append(val.asJSON())
			}
			json["usage"] = arr
		}
		
		return json
	}
}

