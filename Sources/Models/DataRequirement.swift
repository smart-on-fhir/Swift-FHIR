//
//  DataRequirement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/DataRequirement) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Describes a required data item.

Describes a required data item for evaluation in terms of the type of data, and optional code- or date-based filters of
the data.
*/
open class DataRequirement: Element {
	override open class var resourceType: String {
		get { return "DataRequirement" }
	}
	
	/// Code filters for the data.
	public var codeFilter: [DataRequirementCodeFilter]?
	
	/// Date filters for the data.
	public var dateFilter: [DataRequirementDateFilter]?
	
	/// Indicates that specific structure elements are referenced by the knowledge module.
	public var mustSupport: [String]?
	
	/// The profile of the required data.
	public var profile: [URL]?
	
	/// The type of the required data.
	public var type: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["codeFilter"] {
			presentKeys.insert("codeFilter")
			if let val = exist as? [FHIRJSON] {
				do {
					self.codeFilter = try DataRequirementCodeFilter.instantiate(fromArray: val, owner: self) as? [DataRequirementCodeFilter]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "codeFilter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "codeFilter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["dateFilter"] {
			presentKeys.insert("dateFilter")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dateFilter = try DataRequirementDateFilter.instantiate(fromArray: val, owner: self) as? [DataRequirementDateFilter]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dateFilter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dateFilter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["mustSupport"] {
			presentKeys.insert("mustSupport")
			if let val = exist as? [String] {
				self.mustSupport = val
			}
			else {
				errors.append(FHIRValidationError(key: "mustSupport", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? [String] {
				self.profile = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let codeFilter = self.codeFilter {
			json["codeFilter"] = codeFilter.map() { $0.asJSON(errors: &errors) }
		}
		if let dateFilter = self.dateFilter {
			json["dateFilter"] = dateFilter.map() { $0.asJSON(errors: &errors) }
		}
		if let mustSupport = self.mustSupport {
			json["mustSupport"] = mustSupport.map() { $0.asJSON() }
		}
		if let profile = self.profile {
			json["profile"] = profile.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
Code filters for the data.

Code filters specify additional constraints on the data, specifying the value set of interest for a particular element
of the data.
*/
open class DataRequirementCodeFilter: Element {
	override open class var resourceType: String {
		get { return "DataRequirementCodeFilter" }
	}
	
	/// The code-valued attribute of the filter.
	public var path: String?
	
	/// Code value of the filter.
	public var valueCode: [String]?
	
	/// CodeableConcept value of the filter.
	public var valueCodeableConcept: [CodeableConcept]?
	
	/// Coding value of the filter.
	public var valueCoding: [Coding]?
	
	/// Valueset for the filter.
	public var valueSetReference: Reference?
	
	/// Valueset for the filter.
	public var valueSetString: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: String) {
		self.init()
		self.path = path
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["path"] {
			presentKeys.insert("path")
			if let val = exist as? String {
				self.path = val
			}
			else {
				errors.append(FHIRValidationError(key: "path", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "path"))
		}
		if let exist = json["valueCode"] {
			presentKeys.insert("valueCode")
			if let val = exist as? [String] {
				self.valueCode = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueCode", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCodeableConcept"] {
			presentKeys.insert("valueCodeableConcept")
			if let val = exist as? [FHIRJSON] {
				do {
					self.valueCodeableConcept = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCodeableConcept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCoding"] {
			presentKeys.insert("valueCoding")
			if let val = exist as? [FHIRJSON] {
				do {
					self.valueCoding = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCoding", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSetReference"] {
			presentKeys.insert("valueSetReference")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSetReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSetReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSetReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSetString"] {
			presentKeys.insert("valueSetString")
			if let val = exist as? String {
				self.valueSetString = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueSetString", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.map() { $0.asJSON() }
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.map() { $0.asJSON(errors: &errors) }
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.map() { $0.asJSON(errors: &errors) }
		}
		if let valueSetReference = self.valueSetReference {
			json["valueSetReference"] = valueSetReference.asJSON(errors: &errors)
		}
		if let valueSetString = self.valueSetString {
			json["valueSetString"] = valueSetString.asJSON()
		}
		
		return json
	}
}


/**
Date filters for the data.

Date filters specify additional constraints on the data in terms of the applicable date range for specific elements.
*/
open class DataRequirementDateFilter: Element {
	override open class var resourceType: String {
		get { return "DataRequirementDateFilter" }
	}
	
	/// The date-valued attribute of the filter.
	public var path: String?
	
	/// The value of the filter, as a Period, DateTime, or Duration value.
	public var valueDateTime: DateTime?
	
	/// The value of the filter, as a Period, DateTime, or Duration value.
	public var valueDuration: Duration?
	
	/// The value of the filter, as a Period, DateTime, or Duration value.
	public var valuePeriod: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: String) {
		self.init()
		self.path = path
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["path"] {
			presentKeys.insert("path")
			if let val = exist as? String {
				self.path = val
			}
			else {
				errors.append(FHIRValidationError(key: "path", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "path"))
		}
		if let exist = json["valueDateTime"] {
			presentKeys.insert("valueDateTime")
			if let val = exist as? String {
				self.valueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDuration"] {
			presentKeys.insert("valueDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePeriod"] {
			presentKeys.insert("valuePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.valuePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON(errors: &errors)
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON(errors: &errors)
		}
		
		return json
	}
}

