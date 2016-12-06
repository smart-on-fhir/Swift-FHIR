//
//  ImmunizationRecommendation.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation) on 2016-12-06.
//  2016, SMART Health IT.
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
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let exist = json["recommendation"] {
			presentKeys.insert("recommendation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.recommendation = try ImmunizationRecommendationRecommendation.instantiate(fromArray: val, owner: self) as? [ImmunizationRecommendationRecommendation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "recommendation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "recommendation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "recommendation"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let recommendation = self.recommendation {
			json["recommendation"] = recommendation.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "recommendation"))
		}
		
		return json
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
	public var doseNumber: UInt?
	
	/// Vaccine administration status.
	public var forecastStatus: CodeableConcept?
	
	/// Protocol used by recommendation.
	public var protocol_fhir: ImmunizationRecommendationRecommendationProtocol?
	
	/// Past immunizations supporting recommendation.
	public var supportingImmunization: [Reference]?
	
	/// Patient observations supporting recommendation.
	public var supportingPatientInformation: [Reference]?
	
	/// Vaccine recommendation applies to.
	public var vaccineCode: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime, forecastStatus: CodeableConcept, vaccineCode: CodeableConcept) {
		self.init()
		self.date = date
		self.forecastStatus = forecastStatus
		self.vaccineCode = vaccineCode
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "date"))
		}
		if let exist = json["dateCriterion"] {
			presentKeys.insert("dateCriterion")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dateCriterion = try ImmunizationRecommendationRecommendationDateCriterion.instantiate(fromArray: val, owner: self) as? [ImmunizationRecommendationRecommendationDateCriterion]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dateCriterion"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dateCriterion", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["doseNumber"] {
			presentKeys.insert("doseNumber")
			if let val = exist as? UInt {
				self.doseNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "doseNumber", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["forecastStatus"] {
			presentKeys.insert("forecastStatus")
			if let val = exist as? FHIRJSON {
				do {
					self.forecastStatus = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "forecastStatus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "forecastStatus", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "forecastStatus"))
		}
		if let exist = json["protocol"] {
			presentKeys.insert("protocol")
			if let val = exist as? FHIRJSON {
				do {
					self.protocol_fhir = try ImmunizationRecommendationRecommendationProtocol(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "protocol"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "protocol", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["supportingImmunization"] {
			presentKeys.insert("supportingImmunization")
			if let val = exist as? [FHIRJSON] {
				do {
					self.supportingImmunization = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "supportingImmunization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "supportingImmunization", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["supportingPatientInformation"] {
			presentKeys.insert("supportingPatientInformation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.supportingPatientInformation = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "supportingPatientInformation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "supportingPatientInformation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["vaccineCode"] {
			presentKeys.insert("vaccineCode")
			if let val = exist as? FHIRJSON {
				do {
					self.vaccineCode = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "vaccineCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "vaccineCode", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "vaccineCode"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "date"))
		}
		if let dateCriterion = self.dateCriterion {
			json["dateCriterion"] = dateCriterion.map() { $0.asJSON(errors: &errors) }
		}
		if let doseNumber = self.doseNumber {
			json["doseNumber"] = doseNumber.asJSON()
		}
		if let forecastStatus = self.forecastStatus {
			json["forecastStatus"] = forecastStatus.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "forecastStatus"))
		}
		if let protocol_fhir = self.protocol_fhir {
			json["protocol"] = protocol_fhir.asJSON(errors: &errors)
		}
		if let supportingImmunization = self.supportingImmunization {
			json["supportingImmunization"] = supportingImmunization.map() { $0.asJSON(errors: &errors) }
		}
		if let supportingPatientInformation = self.supportingPatientInformation {
			json["supportingPatientInformation"] = supportingPatientInformation.map() { $0.asJSON(errors: &errors) }
		}
		if let vaccineCode = self.vaccineCode {
			json["vaccineCode"] = vaccineCode.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "vaccineCode"))
		}
		
		return json
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
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? String {
				self.value = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "value"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "value"))
		}
		
		return json
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
	public var doseSequence: UInt?
	
	/// Name of vaccination series.
	public var series: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["authority"] {
			presentKeys.insert("authority")
			if let val = exist as? FHIRJSON {
				do {
					self.authority = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "authority"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "authority", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["doseSequence"] {
			presentKeys.insert("doseSequence")
			if let val = exist as? UInt {
				self.doseSequence = val
			}
			else {
				errors.append(FHIRValidationError(key: "doseSequence", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["series"] {
			presentKeys.insert("series")
			if let val = exist as? String {
				self.series = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "series", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let authority = self.authority {
			json["authority"] = authority.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let doseSequence = self.doseSequence {
			json["doseSequence"] = doseSequence.asJSON()
		}
		if let series = self.series {
			json["series"] = series.asJSON()
		}
		
		return json
	}
}

