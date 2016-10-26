//
//  MeasureReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/MeasureReport) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Results of a measure evaluation.
 *
 *  The MeasureReport resource contains the results of evaluating a measure.
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
	
	/// complete | pending | error.
	public var status: String?
	
	/// individual | patient-list | summary.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(measure: Reference, period: Period, status: String, type: String) {
		self.init(json: nil)
		self.measure = measure
		self.period = period
		self.status = status
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["evaluatedResources"] {
				presentKeys.insert("evaluatedResources")
				if let val = exist as? FHIRJSON {
					self.evaluatedResources = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "evaluatedResources", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = MeasureReportGroup.instantiate(fromArray: val, owner: self) as? [MeasureReportGroup]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["measure"] {
				presentKeys.insert("measure")
				if let val = exist as? FHIRJSON {
					self.measure = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "measure", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "measure"))
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "period"))
			}
			if let exist = js["reportingOrganization"] {
				presentKeys.insert("reportingOrganization")
				if let val = exist as? FHIRJSON {
					self.reportingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reportingOrganization", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let evaluatedResources = self.evaluatedResources {
			json["evaluatedResources"] = evaluatedResources.asJSON()
		}
		if let group = self.group {
			json["group"] = group.map() { $0.asJSON() }
		}
		if let measure = self.measure {
			json["measure"] = measure.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let reportingOrganization = self.reportingOrganization {
			json["reportingOrganization"] = reportingOrganization.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Measure results for each group.
 *
 *  The results of the calculation, one for each population group in the measure.
 */
open class MeasureReportGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroup" }
	}
	
	/// Identifier of the population group being reported.
	public var identifier: Identifier?
	
	/// The measure score.
	public var measureScore: NSDecimalNumber?
	
	/// The populations in the group.
	public var population: [MeasureReportGroupPopulation]?
	
	/// Stratification results.
	public var stratifier: [MeasureReportGroupStratifier]?
	
	/// Supplemental data elements for the measure.
	public var supplementalData: [MeasureReportGroupSupplementalData]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist = js["measureScore"] {
				presentKeys.insert("measureScore")
				if let val = exist as? NSNumber {
					self.measureScore = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "measureScore", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["population"] {
				presentKeys.insert("population")
				if let val = exist as? [FHIRJSON] {
					self.population = MeasureReportGroupPopulation.instantiate(fromArray: val, owner: self) as? [MeasureReportGroupPopulation]
				}
				else {
					errors.append(FHIRJSONError(key: "population", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["stratifier"] {
				presentKeys.insert("stratifier")
				if let val = exist as? [FHIRJSON] {
					self.stratifier = MeasureReportGroupStratifier.instantiate(fromArray: val, owner: self) as? [MeasureReportGroupStratifier]
				}
				else {
					errors.append(FHIRJSONError(key: "stratifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["supplementalData"] {
				presentKeys.insert("supplementalData")
				if let val = exist as? [FHIRJSON] {
					self.supplementalData = MeasureReportGroupSupplementalData.instantiate(fromArray: val, owner: self) as? [MeasureReportGroupSupplementalData]
				}
				else {
					errors.append(FHIRJSONError(key: "supplementalData", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let measureScore = self.measureScore {
			json["measureScore"] = measureScore.asJSON()
		}
		if let population = self.population {
			json["population"] = population.map() { $0.asJSON() }
		}
		if let stratifier = self.stratifier {
			json["stratifier"] = stratifier.map() { $0.asJSON() }
		}
		if let supplementalData = self.supplementalData {
			json["supplementalData"] = supplementalData.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  The populations in the group.
 *
 *  The populations that make up the population group, one for each type of population appropriate for the measure.
 */
open class MeasureReportGroupPopulation: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupPopulation" }
	}
	
	/// Size of the population.
	public var count: Int?
	
	/// For patient-list reports, the patients in this population.
	public var patients: Reference?
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-score.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init(json: nil)
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["count"] {
				presentKeys.insert("count")
				if let val = exist as? Int {
					self.count = val
				}
				else {
					errors.append(FHIRJSONError(key: "count", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["patients"] {
				presentKeys.insert("patients")
				if let val = exist as? FHIRJSON {
					self.patients = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patients", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let count = self.count {
			json["count"] = count.asJSON()
		}
		if let patients = self.patients {
			json["patients"] = patients.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Stratification results.
 *
 *  When a measure includes multiple stratifiers, there will be a stratifier group for each stratifier defined by the
 *  measure.
 */
open class MeasureReportGroupStratifier: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupStratifier" }
	}
	
	/// Stratum results, one for each unique value in the stratifier.
	public var group: [MeasureReportGroupStratifierGroup]?
	
	/// Identifier of the stratifier.
	public var identifier: Identifier?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = MeasureReportGroupStratifierGroup.instantiate(fromArray: val, owner: self) as? [MeasureReportGroupStratifierGroup]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let group = self.group {
			json["group"] = group.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		
		return json
	}
}


/**
 *  Stratum results, one for each unique value in the stratifier.
 *
 *  This element contains the results for a single stratum within the stratifier. For example, when stratifying on
 *  administrative gender, there will be four strata, one for each possible gender value.
 */
open class MeasureReportGroupStratifierGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupStratifierGroup" }
	}
	
	/// The measure score.
	public var measureScore: NSDecimalNumber?
	
	/// Population results in this stratum.
	public var population: [MeasureReportGroupStratifierGroupPopulation]?
	
	/// The stratum value, e.g. male.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: String) {
		self.init(json: nil)
		self.value = value
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["measureScore"] {
				presentKeys.insert("measureScore")
				if let val = exist as? NSNumber {
					self.measureScore = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "measureScore", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["population"] {
				presentKeys.insert("population")
				if let val = exist as? [FHIRJSON] {
					self.population = MeasureReportGroupStratifierGroupPopulation.instantiate(fromArray: val, owner: self) as? [MeasureReportGroupStratifierGroupPopulation]
				}
				else {
					errors.append(FHIRJSONError(key: "population", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let measureScore = self.measureScore {
			json["measureScore"] = measureScore.asJSON()
		}
		if let population = self.population {
			json["population"] = population.map() { $0.asJSON() }
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Population results in this stratum.
 *
 *  The populations that make up the stratum, one for each type of population appropriate to the measure.
 */
open class MeasureReportGroupStratifierGroupPopulation: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupStratifierGroupPopulation" }
	}
	
	/// Size of the population.
	public var count: Int?
	
	/// For patient-list reports, the patients in this population.
	public var patients: Reference?
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-score.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init(json: nil)
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["count"] {
				presentKeys.insert("count")
				if let val = exist as? Int {
					self.count = val
				}
				else {
					errors.append(FHIRJSONError(key: "count", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["patients"] {
				presentKeys.insert("patients")
				if let val = exist as? FHIRJSON {
					self.patients = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patients", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let count = self.count {
			json["count"] = count.asJSON()
		}
		if let patients = self.patients {
			json["patients"] = patients.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Supplemental data elements for the measure.
 *
 *  Supplemental data elements for the measure provide additional information requested by the measure for each patient
 *  involved in the populations.
 */
open class MeasureReportGroupSupplementalData: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupSupplementalData" }
	}
	
	/// Supplemental data results, one for each unique supplemental data value.
	public var group: [MeasureReportGroupSupplementalDataGroup]?
	
	/// Identifier of the supplemental data element.
	public var identifier: Identifier?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = MeasureReportGroupSupplementalDataGroup.instantiate(fromArray: val, owner: self) as? [MeasureReportGroupSupplementalDataGroup]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let group = self.group {
			json["group"] = group.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		
		return json
	}
}


/**
 *  Supplemental data results, one for each unique supplemental data value.
 *
 *  This element contains the results for a single value within the supplemental data. For example, when reporting
 *  supplemental data for administrative gender, there will be four groups, one for each possible gender value.
 */
open class MeasureReportGroupSupplementalDataGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureReportGroupSupplementalDataGroup" }
	}
	
	/// Number of members in the group.
	public var count: Int?
	
	/// For patient-list reports, the patients in this population.
	public var patients: Reference?
	
	/// The data value, e.g. male.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: String) {
		self.init(json: nil)
		self.value = value
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["count"] {
				presentKeys.insert("count")
				if let val = exist as? Int {
					self.count = val
				}
				else {
					errors.append(FHIRJSONError(key: "count", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["patients"] {
				presentKeys.insert("patients")
				if let val = exist as? FHIRJSON {
					self.patients = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patients", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let count = self.count {
			json["count"] = count.asJSON()
		}
		if let patients = self.patients {
			json["patients"] = patients.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}

