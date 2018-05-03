//
//  DataRequirement.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/DataRequirement) on 2018-05-03.
//  2018, SMART Health IT.
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
	
	/// Number of results.
	public var limit: FHIRInteger?
	
	/// Indicates that specific structure elements are referenced by the knowledge module.
	public var mustSupport: [FHIRString]?
	
	/// The profile of the required data.
	public var profile: [FHIRURL]?
	
	/// Order of the results.
	public var sort: [DataRequirementSort]?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device.
	public var subjectCodeableConcept: CodeableConcept?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device.
	public var subjectReference: Reference?
	
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
		limit = createInstance(type: FHIRInteger.self, for: "limit", in: json, context: &instCtx, owner: self) ?? limit
		mustSupport = createInstances(of: FHIRString.self, for: "mustSupport", in: json, context: &instCtx, owner: self) ?? mustSupport
		profile = createInstances(of: FHIRURL.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		sort = createInstances(of: DataRequirementSort.self, for: "sort", in: json, context: &instCtx, owner: self) ?? sort
		subjectCodeableConcept = createInstance(type: CodeableConcept.self, for: "subjectCodeableConcept", in: json, context: &instCtx, owner: self) ?? subjectCodeableConcept
		subjectReference = createInstance(type: Reference.self, for: "subjectReference", in: json, context: &instCtx, owner: self) ?? subjectReference
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "codeFilter", using: self.codeFilter, errors: &errors)
		arrayDecorate(json: &json, withKey: "dateFilter", using: self.dateFilter, errors: &errors)
		self.limit?.decorate(json: &json, withKey: "limit", errors: &errors)
		arrayDecorate(json: &json, withKey: "mustSupport", using: self.mustSupport, errors: &errors)
		arrayDecorate(json: &json, withKey: "profile", using: self.profile, errors: &errors)
		arrayDecorate(json: &json, withKey: "sort", using: self.sort, errors: &errors)
		self.subjectCodeableConcept?.decorate(json: &json, withKey: "subjectCodeableConcept", errors: &errors)
		self.subjectReference?.decorate(json: &json, withKey: "subjectReference", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
What codes are expected.

Code filters specify additional constraints on the data, specifying the value set of interest for a particular element
of the data. Each code filter defines an additional constraint on the data, i.e. code filters are AND'ed, not OR'ed.
*/
open class DataRequirementCodeFilter: Element {
	override open class var resourceType: String {
		get { return "DataRequirementCodeFilter" }
	}
	
	/// What code is expected.
	public var code: [Coding]?
	
	/// The code-valued attribute of the filter.
	public var path: FHIRString?
	
	/// Valueset for the filter.
	public var valueSetCanonical: FHIRURL?
	
	/// Valueset for the filter.
	public var valueSetUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: FHIRString) {
		self.init()
		self.path = path
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstances(of: Coding.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
		if nil == path && !instCtx.containsKey("path") {
			instCtx.addError(FHIRValidationError(missing: "path"))
		}
		valueSetCanonical = createInstance(type: FHIRURL.self, for: "valueSetCanonical", in: json, context: &instCtx, owner: self) ?? valueSetCanonical
		valueSetUri = createInstance(type: FHIRURL.self, for: "valueSetUri", in: json, context: &instCtx, owner: self) ?? valueSetUri
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		if nil == self.path {
			errors.append(FHIRValidationError(missing: "path"))
		}
		self.valueSetCanonical?.decorate(json: &json, withKey: "valueSetCanonical", errors: &errors)
		self.valueSetUri?.decorate(json: &json, withKey: "valueSetUri", errors: &errors)
	}
}


/**
What dates/date ranges are expected.

Date filters specify additional constraints on the data in terms of the applicable date range for specific elements.
Each date filter specifies an additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
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


/**
Order of the results.

Specifies the order of the results to be returned.
*/
open class DataRequirementSort: Element {
	override open class var resourceType: String {
		get { return "DataRequirementSort" }
	}
	
	/// The direction of the sort, ascending or descending.
	public var direction: SortDirection?
	
	/// The name of the attribute to perform the sort.
	public var path: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(direction: SortDirection, path: FHIRString) {
		self.init()
		self.direction = direction
		self.path = path
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		direction = createEnum(type: SortDirection.self, for: "direction", in: json, context: &instCtx) ?? direction
		if nil == direction && !instCtx.containsKey("direction") {
			instCtx.addError(FHIRValidationError(missing: "direction"))
		}
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
		if nil == path && !instCtx.containsKey("path") {
			instCtx.addError(FHIRValidationError(missing: "path"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.direction?.decorate(json: &json, withKey: "direction", errors: &errors)
		if nil == self.direction {
			errors.append(FHIRValidationError(missing: "direction"))
		}
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		if nil == self.path {
			errors.append(FHIRValidationError(missing: "path"))
		}
	}
}

