//
//  ObservationDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ObservationDefinition) on 2019-03-01.
//  2019, SMART Health IT.
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
	
	/// Value set of abnormal coded values for the observations conforming to this ObservationDefinition.
	public var abnormalCodedValueSet: Reference?
	
	/// Category of observation.
	public var category: [CodeableConcept]?
	
	/// Type of observation (code / type).
	public var code: CodeableConcept?
	
	/// Value set of critical coded values for the observations conforming to this ObservationDefinition.
	public var criticalCodedValueSet: Reference?
	
	/// Business identifier for this ObservationDefinition instance.
	public var identifier: [Identifier]?
	
	/// Method used to produce the observation.
	public var method: CodeableConcept?
	
	/// Multiple results allowed.
	public var multipleResultsAllowed: FHIRBool?
	
	/// Value set of normal coded values for the observations conforming to this ObservationDefinition.
	public var normalCodedValueSet: Reference?
	
	/// The data types allowed for the value element of the instance observations conforming to this
	/// ObservationDefinition.
	public var permittedDataType: [ObservationDataType]?
	
	/// Preferred report name.
	public var preferredReportName: FHIRString?
	
	/// Qualified range for continuous and ordinal observation results.
	public var qualifiedInterval: [ObservationDefinitionQualifiedInterval]?
	
	/// Characteristics of quantitative results.
	public var quantitativeDetails: ObservationDefinitionQuantitativeDetails?
	
	/// Value set of valid coded values for the observations conforming to this ObservationDefinition.
	public var validCodedValueSet: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		abnormalCodedValueSet = createInstance(type: Reference.self, for: "abnormalCodedValueSet", in: json, context: &instCtx, owner: self) ?? abnormalCodedValueSet
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		criticalCodedValueSet = createInstance(type: Reference.self, for: "criticalCodedValueSet", in: json, context: &instCtx, owner: self) ?? criticalCodedValueSet
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		multipleResultsAllowed = createInstance(type: FHIRBool.self, for: "multipleResultsAllowed", in: json, context: &instCtx, owner: self) ?? multipleResultsAllowed
		normalCodedValueSet = createInstance(type: Reference.self, for: "normalCodedValueSet", in: json, context: &instCtx, owner: self) ?? normalCodedValueSet
		permittedDataType = createEnums(of: ObservationDataType.self, for: "permittedDataType", in: json, context: &instCtx) ?? permittedDataType
		preferredReportName = createInstance(type: FHIRString.self, for: "preferredReportName", in: json, context: &instCtx, owner: self) ?? preferredReportName
		qualifiedInterval = createInstances(of: ObservationDefinitionQualifiedInterval.self, for: "qualifiedInterval", in: json, context: &instCtx, owner: self) ?? qualifiedInterval
		quantitativeDetails = createInstance(type: ObservationDefinitionQuantitativeDetails.self, for: "quantitativeDetails", in: json, context: &instCtx, owner: self) ?? quantitativeDetails
		validCodedValueSet = createInstance(type: Reference.self, for: "validCodedValueSet", in: json, context: &instCtx, owner: self) ?? validCodedValueSet
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.abnormalCodedValueSet?.decorate(json: &json, withKey: "abnormalCodedValueSet", errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.criticalCodedValueSet?.decorate(json: &json, withKey: "criticalCodedValueSet", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
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
Qualified range for continuous and ordinal observation results.

Multiple  ranges of results qualified by different contexts for ordinal or continuous observations conforming to this
ObservationDefinition.
*/
open class ObservationDefinitionQualifiedInterval: BackboneElement {
	override open class var resourceType: String {
		get { return "ObservationDefinitionQualifiedInterval" }
	}
	
	/// Applicable age range, if relevant.
	public var age: Range?
	
	/// Targetted population of the range.
	public var appliesTo: [CodeableConcept]?
	
	/// The category of interval of values for continuous or ordinal observations conforming to this
	/// ObservationDefinition.
	public var category: ObservationRangeCategory?
	
	/// Condition associated with the reference range.
	public var condition: FHIRString?
	
	/// Range context qualifier.
	public var context: CodeableConcept?
	
	/// Sex of the population the range applies to.
	public var gender: AdministrativeGender?
	
	/// Applicable gestational age range, if relevant.
	public var gestationalAge: Range?
	
	/// The interval itself, for continuous or ordinal observations.
	public var range: Range?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		age = createInstance(type: Range.self, for: "age", in: json, context: &instCtx, owner: self) ?? age
		appliesTo = createInstances(of: CodeableConcept.self, for: "appliesTo", in: json, context: &instCtx, owner: self) ?? appliesTo
		category = createEnum(type: ObservationRangeCategory.self, for: "category", in: json, context: &instCtx) ?? category
		condition = createInstance(type: FHIRString.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		context = createInstance(type: CodeableConcept.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, context: &instCtx) ?? gender
		gestationalAge = createInstance(type: Range.self, for: "gestationalAge", in: json, context: &instCtx, owner: self) ?? gestationalAge
		range = createInstance(type: Range.self, for: "range", in: json, context: &instCtx, owner: self) ?? range
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.age?.decorate(json: &json, withKey: "age", errors: &errors)
		arrayDecorate(json: &json, withKey: "appliesTo", using: self.appliesTo, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.condition?.decorate(json: &json, withKey: "condition", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.gender?.decorate(json: &json, withKey: "gender", errors: &errors)
		self.gestationalAge?.decorate(json: &json, withKey: "gestationalAge", errors: &errors)
		self.range?.decorate(json: &json, withKey: "range", errors: &errors)
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
	public var customaryUnit: CodeableConcept?
	
	/// Decimal precision of observation quantitative results.
	public var decimalPrecision: FHIRInteger?
	
	/// SI unit for quantitative results.
	public var unit: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		conversionFactor = createInstance(type: FHIRDecimal.self, for: "conversionFactor", in: json, context: &instCtx, owner: self) ?? conversionFactor
		customaryUnit = createInstance(type: CodeableConcept.self, for: "customaryUnit", in: json, context: &instCtx, owner: self) ?? customaryUnit
		decimalPrecision = createInstance(type: FHIRInteger.self, for: "decimalPrecision", in: json, context: &instCtx, owner: self) ?? decimalPrecision
		unit = createInstance(type: CodeableConcept.self, for: "unit", in: json, context: &instCtx, owner: self) ?? unit
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.conversionFactor?.decorate(json: &json, withKey: "conversionFactor", errors: &errors)
		self.customaryUnit?.decorate(json: &json, withKey: "customaryUnit", errors: &errors)
		self.decimalPrecision?.decorate(json: &json, withKey: "decimalPrecision", errors: &errors)
		self.unit?.decorate(json: &json, withKey: "unit", errors: &errors)
	}
}

