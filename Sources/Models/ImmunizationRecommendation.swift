//
//  ImmunizationRecommendation.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Guidance or advice relating to an immunization.

A patient's point-in-time set of recommendations (i.e. forecasting) according to a published schedule with optional
supporting justification.
*/
open class ImmunizationRecommendation: DomainResource {
	override open class var resourceType: String {
		get { return "ImmunizationRecommendation" }
	}
	
	/// Who is responsible for protocol.
	public var authority: Reference?
	
	/// Date recommendation(s) created.
	public var date: DateTime?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Who this profile is for.
	public var patient: Reference?
	
	/// Vaccine administration recommendations.
	public var recommendation: [ImmunizationRecommendationRecommendation]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime, patient: Reference, recommendation: [ImmunizationRecommendationRecommendation]) {
		self.init()
		self.date = date
		self.patient = patient
		self.recommendation = recommendation
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authority = createInstance(type: Reference.self, for: "authority", in: json, context: &instCtx, owner: self) ?? authority
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		if nil == date && !instCtx.containsKey("date") {
			instCtx.addError(FHIRValidationError(missing: "date"))
		}
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		recommendation = createInstances(of: ImmunizationRecommendationRecommendation.self, for: "recommendation", in: json, context: &instCtx, owner: self) ?? recommendation
		if (nil == recommendation || recommendation!.isEmpty) && !instCtx.containsKey("recommendation") {
			instCtx.addError(FHIRValidationError(missing: "recommendation"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authority?.decorate(json: &json, withKey: "authority", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		if nil == self.date {
			errors.append(FHIRValidationError(missing: "date"))
		}
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "recommendation", using: self.recommendation, errors: &errors)
		if nil == recommendation || self.recommendation!.isEmpty {
			errors.append(FHIRValidationError(missing: "recommendation"))
		}
	}
}


/**
Vaccine administration recommendations.
*/
open class ImmunizationRecommendationRecommendation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationRecommendationRecommendation" }
	}
	
	/// Vaccine which is contraindicated to fulfill the recommendation.
	public var contraindicatedVaccineCode: [CodeableConcept]?
	
	/// Dates governing proposed immunization.
	public var dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]?
	
	/// Protocol details.
	public var description_fhir: FHIRString?
	
	/// Recommended dose number within series.
	public var doseNumberPositiveInt: FHIRInteger?
	
	/// Recommended dose number within series.
	public var doseNumberString: FHIRString?
	
	/// Vaccine administration status reason.
	public var forecastReason: [CodeableConcept]?
	
	/// Vaccine recommendation status.
	public var forecastStatus: CodeableConcept?
	
	/// Name of vaccination series.
	public var series: FHIRString?
	
	/// Recommended number of doses for immunity.
	public var seriesDosesPositiveInt: FHIRInteger?
	
	/// Recommended number of doses for immunity.
	public var seriesDosesString: FHIRString?
	
	/// Past immunizations supporting recommendation.
	public var supportingImmunization: [Reference]?
	
	/// Patient observations supporting recommendation.
	public var supportingPatientInformation: [Reference]?
	
	/// Disease to be immunized against.
	public var targetDisease: CodeableConcept?
	
	/// Vaccine  or vaccine group recommendation applies to.
	public var vaccineCode: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(forecastStatus: CodeableConcept) {
		self.init()
		self.forecastStatus = forecastStatus
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contraindicatedVaccineCode = createInstances(of: CodeableConcept.self, for: "contraindicatedVaccineCode", in: json, context: &instCtx, owner: self) ?? contraindicatedVaccineCode
		dateCriterion = createInstances(of: ImmunizationRecommendationRecommendationDateCriterion.self, for: "dateCriterion", in: json, context: &instCtx, owner: self) ?? dateCriterion
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		doseNumberPositiveInt = createInstance(type: FHIRInteger.self, for: "doseNumberPositiveInt", in: json, context: &instCtx, owner: self) ?? doseNumberPositiveInt
		doseNumberString = createInstance(type: FHIRString.self, for: "doseNumberString", in: json, context: &instCtx, owner: self) ?? doseNumberString
		forecastReason = createInstances(of: CodeableConcept.self, for: "forecastReason", in: json, context: &instCtx, owner: self) ?? forecastReason
		forecastStatus = createInstance(type: CodeableConcept.self, for: "forecastStatus", in: json, context: &instCtx, owner: self) ?? forecastStatus
		if nil == forecastStatus && !instCtx.containsKey("forecastStatus") {
			instCtx.addError(FHIRValidationError(missing: "forecastStatus"))
		}
		series = createInstance(type: FHIRString.self, for: "series", in: json, context: &instCtx, owner: self) ?? series
		seriesDosesPositiveInt = createInstance(type: FHIRInteger.self, for: "seriesDosesPositiveInt", in: json, context: &instCtx, owner: self) ?? seriesDosesPositiveInt
		seriesDosesString = createInstance(type: FHIRString.self, for: "seriesDosesString", in: json, context: &instCtx, owner: self) ?? seriesDosesString
		supportingImmunization = createInstances(of: Reference.self, for: "supportingImmunization", in: json, context: &instCtx, owner: self) ?? supportingImmunization
		supportingPatientInformation = createInstances(of: Reference.self, for: "supportingPatientInformation", in: json, context: &instCtx, owner: self) ?? supportingPatientInformation
		targetDisease = createInstance(type: CodeableConcept.self, for: "targetDisease", in: json, context: &instCtx, owner: self) ?? targetDisease
		vaccineCode = createInstances(of: CodeableConcept.self, for: "vaccineCode", in: json, context: &instCtx, owner: self) ?? vaccineCode
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contraindicatedVaccineCode", using: self.contraindicatedVaccineCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "dateCriterion", using: self.dateCriterion, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.doseNumberPositiveInt?.decorate(json: &json, withKey: "doseNumberPositiveInt", errors: &errors)
		self.doseNumberString?.decorate(json: &json, withKey: "doseNumberString", errors: &errors)
		arrayDecorate(json: &json, withKey: "forecastReason", using: self.forecastReason, errors: &errors)
		self.forecastStatus?.decorate(json: &json, withKey: "forecastStatus", errors: &errors)
		if nil == self.forecastStatus {
			errors.append(FHIRValidationError(missing: "forecastStatus"))
		}
		self.series?.decorate(json: &json, withKey: "series", errors: &errors)
		self.seriesDosesPositiveInt?.decorate(json: &json, withKey: "seriesDosesPositiveInt", errors: &errors)
		self.seriesDosesString?.decorate(json: &json, withKey: "seriesDosesString", errors: &errors)
		arrayDecorate(json: &json, withKey: "supportingImmunization", using: self.supportingImmunization, errors: &errors)
		arrayDecorate(json: &json, withKey: "supportingPatientInformation", using: self.supportingPatientInformation, errors: &errors)
		self.targetDisease?.decorate(json: &json, withKey: "targetDisease", errors: &errors)
		arrayDecorate(json: &json, withKey: "vaccineCode", using: self.vaccineCode, errors: &errors)
	}
}


/**
Dates governing proposed immunization.

Vaccine date recommendations.  For example, earliest date to administer, latest date to administer, etc.
*/
open class ImmunizationRecommendationRecommendationDateCriterion: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationRecommendationRecommendationDateCriterion" }
	}
	
	/// Type of date.
	public var code: CodeableConcept?
	
	/// Recommended date.
	public var value: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, value: DateTime) {
		self.init()
		self.code = code
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		value = createInstance(type: DateTime.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
	}
}

