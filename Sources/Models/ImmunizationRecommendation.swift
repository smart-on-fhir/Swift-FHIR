//
//  ImmunizationRecommendation.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Guidance or advice relating to an immunization.

A patient's point-in-time immunization and recommendation (i.e. forecasting a patient's immunization eligibility
according to a published schedule) with optional supporting justification.
*/
open class ImmunizationRecommendation: DomainResource {
	override open class var resourceType: String {
		get { return "ImmunizationRecommendation" }
	}
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Who this profile is for.
	public var patient: Reference?
	
	/// Vaccine administration recommendations.
	public var recommendation: [ImmunizationRecommendationRecommendation]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, recommendation: [ImmunizationRecommendationRecommendation]) {
		self.init()
		self.patient = patient
		self.recommendation = recommendation
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		recommendation = try createInstances(of: ImmunizationRecommendationRecommendation.self, for: "recommendation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recommendation
		if (nil == recommendation || recommendation!.isEmpty) && !presentKeys.contains("recommendation") {
			errors.append(FHIRValidationError(missing: "recommendation"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
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
	
	/// Date recommendation created.
	public var date: DateTime?
	
	/// Dates governing proposed immunization.
	public var dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]?
	
	/// Recommended dose number.
	public var doseNumber: FHIRInteger?
	
	/// Vaccine administration status.
	public var forecastStatus: CodeableConcept?
	
	/// Protocol used by recommendation.
	public var protocol_fhir: ImmunizationRecommendationRecommendationProtocol?
	
	/// Past immunizations supporting recommendation.
	public var supportingImmunization: [Reference]?
	
	/// Patient observations supporting recommendation.
	public var supportingPatientInformation: [Reference]?
	
	/// Disease to be immunized against.
	public var targetDisease: CodeableConcept?
	
	/// Vaccine recommendation applies to.
	public var vaccineCode: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime, forecastStatus: CodeableConcept) {
		self.init()
		self.date = date
		self.forecastStatus = forecastStatus
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		if nil == date && !presentKeys.contains("date") {
			errors.append(FHIRValidationError(missing: "date"))
		}
		dateCriterion = try createInstances(of: ImmunizationRecommendationRecommendationDateCriterion.self, for: "dateCriterion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dateCriterion
		doseNumber = try createInstance(type: FHIRInteger.self, for: "doseNumber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? doseNumber
		forecastStatus = try createInstance(type: CodeableConcept.self, for: "forecastStatus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? forecastStatus
		if nil == forecastStatus && !presentKeys.contains("forecastStatus") {
			errors.append(FHIRValidationError(missing: "forecastStatus"))
		}
		protocol_fhir = try createInstance(type: ImmunizationRecommendationRecommendationProtocol.self, for: "protocol", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? protocol_fhir
		supportingImmunization = try createInstances(of: Reference.self, for: "supportingImmunization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingImmunization
		supportingPatientInformation = try createInstances(of: Reference.self, for: "supportingPatientInformation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingPatientInformation
		targetDisease = try createInstance(type: CodeableConcept.self, for: "targetDisease", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? targetDisease
		vaccineCode = try createInstance(type: CodeableConcept.self, for: "vaccineCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? vaccineCode
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		if nil == self.date {
			errors.append(FHIRValidationError(missing: "date"))
		}
		arrayDecorate(json: &json, withKey: "dateCriterion", using: self.dateCriterion, errors: &errors)
		self.doseNumber?.decorate(json: &json, withKey: "doseNumber", errors: &errors)
		self.forecastStatus?.decorate(json: &json, withKey: "forecastStatus", errors: &errors)
		if nil == self.forecastStatus {
			errors.append(FHIRValidationError(missing: "forecastStatus"))
		}
		self.protocol_fhir?.decorate(json: &json, withKey: "protocol", errors: &errors)
		arrayDecorate(json: &json, withKey: "supportingImmunization", using: self.supportingImmunization, errors: &errors)
		arrayDecorate(json: &json, withKey: "supportingPatientInformation", using: self.supportingPatientInformation, errors: &errors)
		self.targetDisease?.decorate(json: &json, withKey: "targetDisease", errors: &errors)
		self.vaccineCode?.decorate(json: &json, withKey: "vaccineCode", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		value = try createInstance(type: DateTime.self, for: "value", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? value
		if nil == value && !presentKeys.contains("value") {
			errors.append(FHIRValidationError(missing: "value"))
		}
		
		return errors.isEmpty ? nil : errors
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


/**
Protocol used by recommendation.

Contains information about the protocol under which the vaccine was administered.
*/
open class ImmunizationRecommendationRecommendationProtocol: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationRecommendationRecommendationProtocol" }
	}
	
	/// Who is responsible for protocol.
	public var authority: Reference?
	
	/// Protocol details.
	public var description_fhir: FHIRString?
	
	/// Dose number within sequence.
	public var doseSequence: FHIRInteger?
	
	/// Name of vaccination series.
	public var series: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authority = try createInstance(type: Reference.self, for: "authority", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authority
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		doseSequence = try createInstance(type: FHIRInteger.self, for: "doseSequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? doseSequence
		series = try createInstance(type: FHIRString.self, for: "series", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? series
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authority?.decorate(json: &json, withKey: "authority", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.doseSequence?.decorate(json: &json, withKey: "doseSequence", errors: &errors)
		self.series?.decorate(json: &json, withKey: "series", errors: &errors)
	}
}

