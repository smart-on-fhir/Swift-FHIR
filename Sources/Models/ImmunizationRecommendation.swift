//
//  ImmunizationRecommendation.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Guidance or advice relating to an immunization.
 *
 *  A patient's point-in-time immunization and recommendation (i.e. forecasting a patient's immunization eligibility
 *  according to a published schedule) with optional supporting justification.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, recommendation: [ImmunizationRecommendationRecommendation]) {
		self.init(json: nil)
		self.patient = patient
		self.recommendation = recommendation
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
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
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist = js["recommendation"] {
				presentKeys.insert("recommendation")
				if let val = exist as? [FHIRJSON] {
					self.recommendation = ImmunizationRecommendationRecommendation.instantiate(fromArray: val, owner: self) as? [ImmunizationRecommendationRecommendation]
				}
				else {
					errors.append(FHIRJSONError(key: "recommendation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "recommendation"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let recommendation = self.recommendation {
			json["recommendation"] = recommendation.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Vaccine administration recommendations.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime, forecastStatus: CodeableConcept, vaccineCode: CodeableConcept) {
		self.init(json: nil)
		self.date = date
		self.forecastStatus = forecastStatus
		self.vaccineCode = vaccineCode
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
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
			else {
				errors.append(FHIRJSONError(key: "date"))
			}
			if let exist = js["dateCriterion"] {
				presentKeys.insert("dateCriterion")
				if let val = exist as? [FHIRJSON] {
					self.dateCriterion = ImmunizationRecommendationRecommendationDateCriterion.instantiate(fromArray: val, owner: self) as? [ImmunizationRecommendationRecommendationDateCriterion]
				}
				else {
					errors.append(FHIRJSONError(key: "dateCriterion", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["doseNumber"] {
				presentKeys.insert("doseNumber")
				if let val = exist as? UInt {
					self.doseNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "doseNumber", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["forecastStatus"] {
				presentKeys.insert("forecastStatus")
				if let val = exist as? FHIRJSON {
					self.forecastStatus = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "forecastStatus", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "forecastStatus"))
			}
			if let exist = js["protocol"] {
				presentKeys.insert("protocol")
				if let val = exist as? FHIRJSON {
					self.protocol_fhir = ImmunizationRecommendationRecommendationProtocol(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "protocol", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["supportingImmunization"] {
				presentKeys.insert("supportingImmunization")
				if let val = exist as? [FHIRJSON] {
					self.supportingImmunization = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingImmunization", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["supportingPatientInformation"] {
				presentKeys.insert("supportingPatientInformation")
				if let val = exist as? [FHIRJSON] {
					self.supportingPatientInformation = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingPatientInformation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["vaccineCode"] {
				presentKeys.insert("vaccineCode")
				if let val = exist as? FHIRJSON {
					self.vaccineCode = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "vaccineCode", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "vaccineCode"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let dateCriterion = self.dateCriterion {
			json["dateCriterion"] = dateCriterion.map() { $0.asJSON() }
		}
		if let doseNumber = self.doseNumber {
			json["doseNumber"] = doseNumber.asJSON()
		}
		if let forecastStatus = self.forecastStatus {
			json["forecastStatus"] = forecastStatus.asJSON()
		}
		if let protocol_fhir = self.protocol_fhir {
			json["protocol"] = protocol_fhir.asJSON()
		}
		if let supportingImmunization = self.supportingImmunization {
			json["supportingImmunization"] = supportingImmunization.map() { $0.asJSON() }
		}
		if let supportingPatientInformation = self.supportingPatientInformation {
			json["supportingPatientInformation"] = supportingPatientInformation.map() { $0.asJSON() }
		}
		if let vaccineCode = self.vaccineCode {
			json["vaccineCode"] = vaccineCode.asJSON()
		}
		
		return json
	}
}


/**
 *  Dates governing proposed immunization.
 *
 *  Vaccine date recommendations.  For example, earliest date to administer, latest date to administer, etc.
 */
open class ImmunizationRecommendationRecommendationDateCriterion: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationRecommendationRecommendationDateCriterion" }
	}
	
	/// Type of date.
	public var code: CodeableConcept?
	
	/// Recommended date.
	public var value: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, value: DateTime) {
		self.init(json: nil)
		self.code = code
		self.value = value
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = DateTime(string: val)
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
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Protocol used by recommendation.
 *
 *  Contains information about the protocol under which the vaccine was administered.
 */
open class ImmunizationRecommendationRecommendationProtocol: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationRecommendationRecommendationProtocol" }
	}
	
	/// Who is responsible for protocol.
	public var authority: Reference?
	
	/// Protocol details.
	public var description_fhir: String?
	
	/// Dose number within sequence.
	public var doseSequence: UInt?
	
	/// Name of vaccination series.
	public var series: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["authority"] {
				presentKeys.insert("authority")
				if let val = exist as? FHIRJSON {
					self.authority = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "authority", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["doseSequence"] {
				presentKeys.insert("doseSequence")
				if let val = exist as? UInt {
					self.doseSequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "doseSequence", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["series"] {
				presentKeys.insert("series")
				if let val = exist as? String {
					self.series = val
				}
				else {
					errors.append(FHIRJSONError(key: "series", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authority = self.authority {
			json["authority"] = authority.asJSON()
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

