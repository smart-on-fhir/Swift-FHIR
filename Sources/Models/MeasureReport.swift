//
//  MeasureReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/MeasureReport) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
Results of a measure evaluation.

The MeasureReport resource contains the results of evaluating a measure.
*/
open class MeasureReport: DomainResource {
	override open class var resourceType: String {
		get { return "MeasureReport" }
	}
	
	/// Date the report was generated.
	public var date: DateTime?
	
	/// Evaluated Resources.
	public var evaluatedResources: Reference?
	
	/// Measure results for each group.
	public var group: [MeasureReportGroup]?
	
	/// Measure that was evaluated.
	public var measure: Reference?
	
	/// Optional Patient.
	public var patient: Reference?
	
	/// Reporting period.
	public var period: Period?
	
	/// Reporting Organization.
	public var reportingOrganization: Reference?
	
	/// The report status. No data will be available until the report status is complete.
	public var status: MeasureReportStatus?
	
	/// The type of measure report. This may be an individual report, which provides a single patient's score for the
	/// measure, a patient listing, which returns the list of patients that meet the various criteria in the measure, or
	/// a summary report, which returns a population count for each criteria in the measure.
	public var type: MeasureReportType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(measure: Reference, period: Period, status: MeasureReportStatus, type: MeasureReportType) {
		self.init()
		self.measure = measure
		self.period = period
		self.status = status
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		evaluatedResources = try createInstance(type: Reference.self, for: "evaluatedResources", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? evaluatedResources
		group = try createInstances(of: MeasureReportGroup.self, for: "group", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? group
		measure = try createInstance(type: Reference.self, for: "measure", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? measure
		if nil == measure && !presentKeys.contains("measure") {
			errors.append(FHIRValidationError(missing: "measure"))
		}
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		if nil == period && !presentKeys.contains("period") {
			errors.append(FHIRValidationError(missing: "period"))
		}
		reportingOrganization = try createInstance(type: Reference.self, for: "reportingOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reportingOrganization
		status = createEnum(type: MeasureReportStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		type = createEnum(type: MeasureReportType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.evaluatedResources?.decorate(json: &json, withKey: "evaluatedResources", errors: &errors)
		arrayDecorate(json: &json, withKey: "group", using: self.group, errors: &errors)
		self.measure?.decorate(json: &json, withKey: "measure", errors: &errors)
		if nil == self.measure {
			errors.append(FHIRValidationError(missing: "measure"))
		}
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		if nil == self.period {
			errors.append(FHIRValidationError(missing: "period"))
		}
		self.reportingOrganization?.decorate(json: &json, withKey: "reportingOrganization", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
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
	
	/// Identifier of the population group being reported.
	public var identifier: Identifier?
	
	/// The measure score.
	public var measureScore: FHIRDecimal?
	
	/// The populations in the group.
	public var population: [MeasureReportGroupPopulation]?
	
	/// Stratification results.
	public var stratifier: [MeasureReportGroupStratifier]?
	
	/// Supplemental data elements for the measure.
	public var supplementalData: [MeasureReportGroupSupplementalData]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		measureScore = try createInstance(type: FHIRDecimal.self, for: "measureScore", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? measureScore
		population = try createInstances(of: MeasureReportGroupPopulation.self, for: "population", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? population
		stratifier = try createInstances(of: MeasureReportGroupStratifier.self, for: "stratifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? stratifier
		supplementalData = try createInstances(of: MeasureReportGroupSupplementalData.self, for: "supplementalData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supplementalData
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		self.measureScore?.decorate(json: &json, withKey: "measureScore", errors: &errors)
		arrayDecorate(json: &json, withKey: "population", using: self.population, errors: &errors)
		arrayDecorate(json: &json, withKey: "stratifier", using: self.stratifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "supplementalData", using: self.supplementalData, errors: &errors)
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
	
	/// Size of the population.
	public var count: FHIRInteger?
	
	/// For patient-list reports, the patients in this population.
	public var patients: Reference?
	
	/// The type of the population.
	public var type: MeasurePopulationType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: MeasurePopulationType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		count = try createInstance(type: FHIRInteger.self, for: "count", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? count
		patients = try createInstance(type: Reference.self, for: "patients", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patients
		type = createEnum(type: MeasurePopulationType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.count?.decorate(json: &json, withKey: "count", errors: &errors)
		self.patients?.decorate(json: &json, withKey: "patients", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
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
	
	/// Stratum results, one for each unique value in the stratifier.
	public var group: [MeasureReportGroupStratifierGroup]?
	
	/// Identifier of the stratifier.
	public var identifier: Identifier?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		group = try createInstances(of: MeasureReportGroupStratifierGroup.self, for: "group", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? group
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "group", using: self.group, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
	}
}


/**
Stratum results, one for each unique value in the stratifier.

This element contains the results for a single stratum within the stratifier. For example, when stratifying on
administrative gender, there will be four strata, one for each possible gender value.
*/
open class MeasureReportGroupStratifierGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupStratifierGroup" }
	}
	
	/// The measure score.
	public var measureScore: FHIRDecimal?
	
	/// Population results in this stratum.
	public var population: [MeasureReportGroupStratifierGroupPopulation]?
	
	/// The stratum value, e.g. male.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: FHIRString) {
		self.init()
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		measureScore = try createInstance(type: FHIRDecimal.self, for: "measureScore", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? measureScore
		population = try createInstances(of: MeasureReportGroupStratifierGroupPopulation.self, for: "population", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? population
		value = try createInstance(type: FHIRString.self, for: "value", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? value
		if nil == value && !presentKeys.contains("value") {
			errors.append(FHIRValidationError(missing: "value"))
		}
		
		return errors.isEmpty ? nil : errors
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
open class MeasureReportGroupStratifierGroupPopulation: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupStratifierGroupPopulation" }
	}
	
	/// Size of the population.
	public var count: FHIRInteger?
	
	/// For patient-list reports, the patients in this population.
	public var patients: Reference?
	
	/// The type of the population.
	public var type: MeasurePopulationType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: MeasurePopulationType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		count = try createInstance(type: FHIRInteger.self, for: "count", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? count
		patients = try createInstance(type: Reference.self, for: "patients", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patients
		type = createEnum(type: MeasurePopulationType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.count?.decorate(json: &json, withKey: "count", errors: &errors)
		self.patients?.decorate(json: &json, withKey: "patients", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Supplemental data elements for the measure.

Supplemental data elements for the measure provide additional information requested by the measure for each patient
involved in the populations.
*/
open class MeasureReportGroupSupplementalData: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupSupplementalData" }
	}
	
	/// Supplemental data results, one for each unique supplemental data value.
	public var group: [MeasureReportGroupSupplementalDataGroup]?
	
	/// Identifier of the supplemental data element.
	public var identifier: Identifier?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		group = try createInstances(of: MeasureReportGroupSupplementalDataGroup.self, for: "group", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? group
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "group", using: self.group, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
	}
}


/**
Supplemental data results, one for each unique supplemental data value.

This element contains the results for a single value within the supplemental data. For example, when reporting
supplemental data for administrative gender, there will be four groups, one for each possible gender value.
*/
open class MeasureReportGroupSupplementalDataGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupSupplementalDataGroup" }
	}
	
	/// Number of members in the group.
	public var count: FHIRInteger?
	
	/// For patient-list reports, the patients in this population.
	public var patients: Reference?
	
	/// The data value, e.g. male.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: FHIRString) {
		self.init()
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		count = try createInstance(type: FHIRInteger.self, for: "count", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? count
		patients = try createInstance(type: Reference.self, for: "patients", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patients
		value = try createInstance(type: FHIRString.self, for: "value", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? value
		if nil == value && !presentKeys.contains("value") {
			errors.append(FHIRValidationError(missing: "value"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.count?.decorate(json: &json, withKey: "count", errors: &errors)
		self.patients?.decorate(json: &json, withKey: "patients", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
	}
}

