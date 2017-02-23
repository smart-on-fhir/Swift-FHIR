//
//  DataRequirement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/DataRequirement) on 2017-02-23.
//  2017, SMART Health IT.
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
	public var mustSupport: [FHIRString]?
	
	/// The profile of the required data.
	public var profile: [FHIRURL]?
	
	/// The type of the required data.
	public var type: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: FHIRString) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		codeFilter = try createInstances(of: DataRequirementCodeFilter.self, for: "codeFilter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? codeFilter
		dateFilter = try createInstances(of: DataRequirementDateFilter.self, for: "dateFilter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dateFilter
		mustSupport = try createInstances(of: FHIRString.self, for: "mustSupport", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? mustSupport
		profile = try createInstances(of: FHIRURL.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "codeFilter", using: self.codeFilter, errors: &errors)
		arrayDecorate(json: &json, withKey: "dateFilter", using: self.dateFilter, errors: &errors)
		arrayDecorate(json: &json, withKey: "mustSupport", using: self.mustSupport, errors: &errors)
		arrayDecorate(json: &json, withKey: "profile", using: self.profile, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
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
	public var path: FHIRString?
	
	/// Code value of the filter.
	public var valueCode: [FHIRString]?
	
	/// CodeableConcept value of the filter.
	public var valueCodeableConcept: [CodeableConcept]?
	
	/// Coding value of the filter.
	public var valueCoding: [Coding]?
	
	/// Valueset for the filter.
	public var valueSetReference: Reference?
	
	/// Valueset for the filter.
	public var valueSetString: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: FHIRString) {
		self.init()
		self.path = path
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		path = try createInstance(type: FHIRString.self, for: "path", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? path
		if nil == path && !presentKeys.contains("path") {
			errors.append(FHIRValidationError(missing: "path"))
		}
		valueCode = try createInstances(of: FHIRString.self, for: "valueCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCode
		valueCodeableConcept = try createInstances(of: CodeableConcept.self, for: "valueCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCodeableConcept
		valueCoding = try createInstances(of: Coding.self, for: "valueCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCoding
		valueSetReference = try createInstance(type: Reference.self, for: "valueSetReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSetReference
		valueSetString = try createInstance(type: FHIRString.self, for: "valueSetString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSetString
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		if nil == self.path {
			errors.append(FHIRValidationError(missing: "path"))
		}
		arrayDecorate(json: &json, withKey: "valueCode", using: self.valueCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "valueCodeableConcept", using: self.valueCodeableConcept, errors: &errors)
		arrayDecorate(json: &json, withKey: "valueCoding", using: self.valueCoding, errors: &errors)
		self.valueSetReference?.decorate(json: &json, withKey: "valueSetReference", errors: &errors)
		self.valueSetString?.decorate(json: &json, withKey: "valueSetString", errors: &errors)
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
	public var path: FHIRString?
	
	/// The value of the filter, as a Period, DateTime, or Duration value.
	public var valueDateTime: DateTime?
	
	/// The value of the filter, as a Period, DateTime, or Duration value.
	public var valueDuration: Duration?
	
	/// The value of the filter, as a Period, DateTime, or Duration value.
	public var valuePeriod: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: FHIRString) {
		self.init()
		self.path = path
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		path = try createInstance(type: FHIRString.self, for: "path", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? path
		if nil == path && !presentKeys.contains("path") {
			errors.append(FHIRValidationError(missing: "path"))
		}
		valueDateTime = try createInstance(type: DateTime.self, for: "valueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDateTime
		valueDuration = try createInstance(type: Duration.self, for: "valueDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDuration
		valuePeriod = try createInstance(type: Period.self, for: "valuePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePeriod
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		if nil == self.path {
			errors.append(FHIRValidationError(missing: "path"))
		}
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueDuration?.decorate(json: &json, withKey: "valueDuration", errors: &errors)
		self.valuePeriod?.decorate(json: &json, withKey: "valuePeriod", errors: &errors)
	}
}

