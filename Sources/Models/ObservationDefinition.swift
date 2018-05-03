//
//  ObservationDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/ObservationDefinition) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Definition of an observation.

Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health
care service.
*/
open class ObservationDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "ObservationDefinition" }
	}
	
	/// Value set of abnormal coded values for the observation.
	public var abnormalCodedValueSet: FHIRURL?
	
	/// Category of observation.
	public var category: Coding?
	
	/// Type of observation (code / type).
	public var code: Coding?
	
	/// Value set of critical coded values for the observation.
	public var criticalCodedValueSet: FHIRURL?
	
	/// The method or technique used to perform the observation.
	public var method: CodeableConcept?
	
	/// Multiple results allowed.
	public var multipleResultsAllowed: FHIRBool?
	
	/// Value set of normal coded values for the observation.
	public var normalCodedValueSet: FHIRURL?
	
	/// Permitted data type for observation value.
	public var permittedDataType: [Coding]?
	
	/// Preferred report name.
	public var preferredReportName: FHIRString?
	
	/// Reference range for observation result.
	public var qualifiedInterval: [ObservationDefinitionQualifiedInterval]?
	
	/// Characteristics of quantitative results.
	public var quantitativeDetails: ObservationDefinitionQuantitativeDetails?
	
	/// Value set of valid coded values for the observation.
	public var validCodedValueSet: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: Coding) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		abnormalCodedValueSet = createInstance(type: FHIRURL.self, for: "abnormalCodedValueSet", in: json, context: &instCtx, owner: self) ?? abnormalCodedValueSet
		category = createInstance(type: Coding.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		code = createInstance(type: Coding.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		criticalCodedValueSet = createInstance(type: FHIRURL.self, for: "criticalCodedValueSet", in: json, context: &instCtx, owner: self) ?? criticalCodedValueSet
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		multipleResultsAllowed = createInstance(type: FHIRBool.self, for: "multipleResultsAllowed", in: json, context: &instCtx, owner: self) ?? multipleResultsAllowed
		normalCodedValueSet = createInstance(type: FHIRURL.self, for: "normalCodedValueSet", in: json, context: &instCtx, owner: self) ?? normalCodedValueSet
		permittedDataType = createInstances(of: Coding.self, for: "permittedDataType", in: json, context: &instCtx, owner: self) ?? permittedDataType
		preferredReportName = createInstance(type: FHIRString.self, for: "preferredReportName", in: json, context: &instCtx, owner: self) ?? preferredReportName
		qualifiedInterval = createInstances(of: ObservationDefinitionQualifiedInterval.self, for: "qualifiedInterval", in: json, context: &instCtx, owner: self) ?? qualifiedInterval
		quantitativeDetails = createInstance(type: ObservationDefinitionQuantitativeDetails.self, for: "quantitativeDetails", in: json, context: &instCtx, owner: self) ?? quantitativeDetails
		validCodedValueSet = createInstance(type: FHIRURL.self, for: "validCodedValueSet", in: json, context: &instCtx, owner: self) ?? validCodedValueSet
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.abnormalCodedValueSet?.decorate(json: &json, withKey: "abnormalCodedValueSet", errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.criticalCodedValueSet?.decorate(json: &json, withKey: "criticalCodedValueSet", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		self.multipleResultsAllowed?.decorate(json: &json, withKey: "multipleResultsAllowed", errors: &errors)
		self.normalCodedValueSet?.decorate(json: &json, withKey: "normalCodedValueSet", errors: &errors)
		arrayDecorate(json: &json, withKey: "permittedDataType", using: self.permittedDataType, errors: &errors)
		self.preferredReportName?.decorate(json: &json, withKey: "preferredReportName", errors: &errors)
		arrayDecorate(json: &json, withKey: "qualifiedInterval", using: self.qualifiedInterval, errors: &errors)
		self.quantitativeDetails?.decorate(json: &json, withKey: "quantitativeDetails", errors: &errors)
		self.validCodedValueSet?.decorate(json: &json, withKey: "validCodedValueSet", errors: &errors)
	}
}


/**
Reference range for observation result.

Reference range for ordinal and continuous observations.
*/
open class ObservationDefinitionQualifiedInterval: BackboneElement {
	override open class var resourceType: String {
		get { return "ObservationDefinitionQualifiedInterval" }
	}
	
	/// Applicable age range, if relevant.
	public var age: Range?
	
	/// Reference range population.
	public var appliesTo: [CodeableConcept]?
	
	/// The category or type of interval.
	public var category: CodeableConcept?
	
	/// Condition associated with the reference range.
	public var condition: FHIRString?
	
	/// Applicable gestational age range, if relevant.
	public var gestationalAge: Range?
	
	/// Low bound of reference range, if relevant.
	public var range: Range?
	
	/// Reference range qualifier.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		age = createInstance(type: Range.self, for: "age", in: json, context: &instCtx, owner: self) ?? age
		appliesTo = createInstances(of: CodeableConcept.self, for: "appliesTo", in: json, context: &instCtx, owner: self) ?? appliesTo
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		condition = createInstance(type: FHIRString.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		gestationalAge = createInstance(type: Range.self, for: "gestationalAge", in: json, context: &instCtx, owner: self) ?? gestationalAge
		range = createInstance(type: Range.self, for: "range", in: json, context: &instCtx, owner: self) ?? range
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.age?.decorate(json: &json, withKey: "age", errors: &errors)
		arrayDecorate(json: &json, withKey: "appliesTo", using: self.appliesTo, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.condition?.decorate(json: &json, withKey: "condition", errors: &errors)
		self.gestationalAge?.decorate(json: &json, withKey: "gestationalAge", errors: &errors)
		self.range?.decorate(json: &json, withKey: "range", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Characteristics of quantitative results.

Characteristics for quantitative results of this observation.
*/
open class ObservationDefinitionQuantitativeDetails: BackboneElement {
	override open class var resourceType: String {
		get { return "ObservationDefinitionQuantitativeDetails" }
	}
	
	/// SI to Customary unit conversion factor.
	public var conversionFactor: FHIRDecimal?
	
	/// Customary unit for quantitative results.
	public var customaryUnit: Coding?
	
	/// Decimal precision of observation quantitative results.
	public var decimalPrecision: FHIRInteger?
	
	/// SI unit for quantitative results.
	public var unit: Coding?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		conversionFactor = createInstance(type: FHIRDecimal.self, for: "conversionFactor", in: json, context: &instCtx, owner: self) ?? conversionFactor
		customaryUnit = createInstance(type: Coding.self, for: "customaryUnit", in: json, context: &instCtx, owner: self) ?? customaryUnit
		decimalPrecision = createInstance(type: FHIRInteger.self, for: "decimalPrecision", in: json, context: &instCtx, owner: self) ?? decimalPrecision
		unit = createInstance(type: Coding.self, for: "unit", in: json, context: &instCtx, owner: self) ?? unit
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.conversionFactor?.decorate(json: &json, withKey: "conversionFactor", errors: &errors)
		self.customaryUnit?.decorate(json: &json, withKey: "customaryUnit", errors: &errors)
		self.decimalPrecision?.decorate(json: &json, withKey: "decimalPrecision", errors: &errors)
		self.unit?.decorate(json: &json, withKey: "unit", errors: &errors)
	}
}

