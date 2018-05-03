//
//  MeasureReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/MeasureReport) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Results of a measure evaluation.

The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the
resources involved in that calculation.
*/
open class MeasureReport: DomainResource {
	override open class var resourceType: String {
		get { return "MeasureReport" }
	}
	
	/// When the report was generated.
	public var date: DateTime?
	
	/// What data was used to calculate the measure score.
	public var evaluatedResources: Reference?
	
	/// Measure results for each group.
	public var group: [MeasureReportGroup]?
	
	/// Additional identifier for the MeasureReport.
	public var identifier: [Identifier]?
	
	/// What measure was calculated.
	public var measure: FHIRURL?
	
	/// What period the report covers.
	public var period: Period?
	
	/// Who is reporting the data.
	public var reporter: Reference?
	
	/// The MeasureReport status. No data will be available until the MeasureReport status is complete.
	public var status: MeasureReportStatus?
	
	/// What individual(s) the report is for.
	public var subject: Reference?
	
	/// The type of measure report. This may be an individual report, which provides the score for the measure for an
	/// individual member of the population; a subject-listing, which returns the list of members that meet the various
	/// criteria in the measure; or a summary report, which returns a population count for each of the criteria in the
	/// measure.
	public var type: MeasureReportType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(measure: FHIRURL, period: Period, status: MeasureReportStatus, type: MeasureReportType) {
		self.init()
		self.measure = measure
		self.period = period
		self.status = status
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		evaluatedResources = createInstance(type: Reference.self, for: "evaluatedResources", in: json, context: &instCtx, owner: self) ?? evaluatedResources
		group = createInstances(of: MeasureReportGroup.self, for: "group", in: json, context: &instCtx, owner: self) ?? group
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		measure = createInstance(type: FHIRURL.self, for: "measure", in: json, context: &instCtx, owner: self) ?? measure
		if nil == measure && !instCtx.containsKey("measure") {
			instCtx.addError(FHIRValidationError(missing: "measure"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		if nil == period && !instCtx.containsKey("period") {
			instCtx.addError(FHIRValidationError(missing: "period"))
		}
		reporter = createInstance(type: Reference.self, for: "reporter", in: json, context: &instCtx, owner: self) ?? reporter
		status = createEnum(type: MeasureReportStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		type = createEnum(type: MeasureReportType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.evaluatedResources?.decorate(json: &json, withKey: "evaluatedResources", errors: &errors)
		arrayDecorate(json: &json, withKey: "group", using: self.group, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.measure?.decorate(json: &json, withKey: "measure", errors: &errors)
		if nil == self.measure {
			errors.append(FHIRValidationError(missing: "measure"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		if nil == self.period {
			errors.append(FHIRValidationError(missing: "period"))
		}
		self.reporter?.decorate(json: &json, withKey: "reporter", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Measure results for each group.

The results of the calculation, one for each population group in the measure.
*/
open class MeasureReportGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroup" }
	}
	
	/// Meaning of the group.
	public var code: CodeableConcept?
	
	/// What score this group achieved.
	public var measureScore: Quantity?
	
	/// The populations in the group.
	public var population: [MeasureReportGroupPopulation]?
	
	/// Stratification results.
	public var stratifier: [MeasureReportGroupStratifier]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		measureScore = createInstance(type: Quantity.self, for: "measureScore", in: json, context: &instCtx, owner: self) ?? measureScore
		population = createInstances(of: MeasureReportGroupPopulation.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		stratifier = createInstances(of: MeasureReportGroupStratifier.self, for: "stratifier", in: json, context: &instCtx, owner: self) ?? stratifier
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.measureScore?.decorate(json: &json, withKey: "measureScore", errors: &errors)
		arrayDecorate(json: &json, withKey: "population", using: self.population, errors: &errors)
		arrayDecorate(json: &json, withKey: "stratifier", using: self.stratifier, errors: &errors)
	}
}


/**
The populations in the group.

The populations that make up the population group, one for each type of population appropriate for the measure.
*/
open class MeasureReportGroupPopulation: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupPopulation" }
	}
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation.
	public var code: CodeableConcept?
	
	/// Size of the population.
	public var count: FHIRInteger?
	
	/// For subject-list reports, the subjects in this population.
	public var subjects: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		count = createInstance(type: FHIRInteger.self, for: "count", in: json, context: &instCtx, owner: self) ?? count
		subjects = createInstance(type: Reference.self, for: "subjects", in: json, context: &instCtx, owner: self) ?? subjects
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.count?.decorate(json: &json, withKey: "count", errors: &errors)
		self.subjects?.decorate(json: &json, withKey: "subjects", errors: &errors)
	}
}


/**
Stratification results.

When a measure includes multiple stratifiers, there will be a stratifier group for each stratifier defined by the
measure.
*/
open class MeasureReportGroupStratifier: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupStratifier" }
	}
	
	/// What stratifier of the group.
	public var code: CodeableConcept?
	
	/// Stratum results, one for each unique value in the stratifier.
	public var stratum: [MeasureReportGroupStratifierStratum]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		stratum = createInstances(of: MeasureReportGroupStratifierStratum.self, for: "stratum", in: json, context: &instCtx, owner: self) ?? stratum
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "stratum", using: self.stratum, errors: &errors)
	}
}


/**
Stratum results, one for each unique value in the stratifier.

This element contains the results for a single stratum within the stratifier. For example, when stratifying on
administrative gender, there will be four strata, one for each possible gender value.
*/
open class MeasureReportGroupStratifierStratum: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupStratifierStratum" }
	}
	
	/// What score this stratum achieved.
	public var measureScore: Quantity?
	
	/// Population results in this stratum.
	public var population: [MeasureReportGroupStratifierStratumPopulation]?
	
	/// The stratum value, e.g. male.
	public var value: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: CodeableConcept) {
		self.init()
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		measureScore = createInstance(type: Quantity.self, for: "measureScore", in: json, context: &instCtx, owner: self) ?? measureScore
		population = createInstances(of: MeasureReportGroupStratifierStratumPopulation.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		value = createInstance(type: CodeableConcept.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.measureScore?.decorate(json: &json, withKey: "measureScore", errors: &errors)
		arrayDecorate(json: &json, withKey: "population", using: self.population, errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
	}
}


/**
Population results in this stratum.

The populations that make up the stratum, one for each type of population appropriate to the measure.
*/
open class MeasureReportGroupStratifierStratumPopulation: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupStratifierStratumPopulation" }
	}
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-
	/// exception | measure-population | measure-population-exclusion | measure-observation.
	public var code: CodeableConcept?
	
	/// Size of the population.
	public var count: FHIRInteger?
	
	/// For subject-list reports, the subjects in this population.
	public var subjects: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		count = createInstance(type: FHIRInteger.self, for: "count", in: json, context: &instCtx, owner: self) ?? count
		subjects = createInstance(type: Reference.self, for: "subjects", in: json, context: &instCtx, owner: self) ?? subjects
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.count?.decorate(json: &json, withKey: "count", errors: &errors)
		self.subjects?.decorate(json: &json, withKey: "subjects", errors: &errors)
	}
}

