//
//  DataRequirement.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/DataRequirement) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Describes a required data item.

Describes a required data item for evaluation in terms of the type of data, and optional code or date-based filters of
the data.
*/
open class DataRequirement: Element {
	override open class var resourceType: String {
		get { return "DataRequirement" }
	}
	
	/// What codes are expected.
	public var codeFilter: [DataRequirementCodeFilter]?
	
	/// What dates/date ranges are expected.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		codeFilter = createInstances(of: DataRequirementCodeFilter.self, for: "codeFilter", in: json, context: &instCtx, owner: self) ?? codeFilter
		dateFilter = createInstances(of: DataRequirementDateFilter.self, for: "dateFilter", in: json, context: &instCtx, owner: self) ?? dateFilter
		mustSupport = createInstances(of: FHIRString.self, for: "mustSupport", in: json, context: &instCtx, owner: self) ?? mustSupport
		profile = createInstances(of: FHIRURL.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
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
What codes are expected.

Code filters specify additional constraints on the data, specifying the value set of interest for a particular element
of the data.
*/
open class DataRequirementCodeFilter: Element {
	override open class var resourceType: String {
		get { return "DataRequirementCodeFilter" }
	}
	
	/// The code-valued attribute of the filter.
	public var path: FHIRString?
	
	/// What code is expected.
	public var valueCode: [FHIRString]?
	
	/// What CodeableConcept is expected.
	public var valueCodeableConcept: [CodeableConcept]?
	
	/// What Coding is expected.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
		if nil == path && !instCtx.containsKey("path") {
			instCtx.addError(FHIRValidationError(missing: "path"))
		}
		valueCode = createInstances(of: FHIRString.self, for: "valueCode", in: json, context: &instCtx, owner: self) ?? valueCode
		valueCodeableConcept = createInstances(of: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueCoding = createInstances(of: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueSetReference = createInstance(type: Reference.self, for: "valueSetReference", in: json, context: &instCtx, owner: self) ?? valueSetReference
		valueSetString = createInstance(type: FHIRString.self, for: "valueSetString", in: json, context: &instCtx, owner: self) ?? valueSetString
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
What dates/date ranges are expected.

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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
		if nil == path && !instCtx.containsKey("path") {
			instCtx.addError(FHIRValidationError(missing: "path"))
		}
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueDuration = createInstance(type: Duration.self, for: "valueDuration", in: json, context: &instCtx, owner: self) ?? valueDuration
		valuePeriod = createInstance(type: Period.self, for: "valuePeriod", in: json, context: &instCtx, owner: self) ?? valuePeriod
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

