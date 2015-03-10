//
//  ImmunizationRecommendation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Immunization profile.
 *
 *  A patient's point-of-time immunization status and recommendation with optional supporting justification.
 */
public class ImmunizationRecommendation: DomainResource
{
	override public class var resourceName: String {
		get { return "ImmunizationRecommendation" }
	}
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Who this profile is for
	public var patient: Reference?
	
	/// Vaccine administration recommendations
	public var recommendation: [ImmunizationRecommendationRecommendation]?
	
	public convenience init(patient: Reference?, recommendation: [ImmunizationRecommendationRecommendation]?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != recommendation {
			self.recommendation = recommendation
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["recommendation"] as? [JSONDictionary] {
				self.recommendation = ImmunizationRecommendationRecommendation.from(val, owner: self) as? [ImmunizationRecommendationRecommendation]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let recommendation = self.recommendation {
			json["recommendation"] = ImmunizationRecommendationRecommendation.asJSONArray(recommendation)
		}
		
		return json
	}
}


/**
 *  Vaccine administration recommendations.
 */
public class ImmunizationRecommendationRecommendation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationRecommendationRecommendation" }
	}
	
	/// Date recommendation created
	public var date: DateTime?
	
	/// Dates governing proposed immunization
	public var dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]?
	
	/// Recommended dose number
	public var doseNumber: Int?
	
	/// Vaccine administration status
	public var forecastStatus: CodeableConcept?
	
	/// Protocol used by recommendation
	public var protocol_fhir: ImmunizationRecommendationRecommendationProtocol?
	
	/// Past immunizations supporting recommendation
	public var supportingImmunization: [Reference]?
	
	/// Patient observations supporting recommendation
	public var supportingPatientInformation: [Reference]?
	
	/// Vaccine recommendation applies to
	public var vaccineType: CodeableConcept?
	
	public convenience init(date: DateTime?, forecastStatus: CodeableConcept?, vaccineType: CodeableConcept?) {
		self.init(json: nil)
		if nil != date {
			self.date = date
		}
		if nil != forecastStatus {
			self.forecastStatus = forecastStatus
		}
		if nil != vaccineType {
			self.vaccineType = vaccineType
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["dateCriterion"] as? [JSONDictionary] {
				self.dateCriterion = ImmunizationRecommendationRecommendationDateCriterion.from(val, owner: self) as? [ImmunizationRecommendationRecommendationDateCriterion]
			}
			if let val = js["doseNumber"] as? Int {
				self.doseNumber = val
			}
			if let val = js["forecastStatus"] as? JSONDictionary {
				self.forecastStatus = CodeableConcept(json: val, owner: self)
			}
			if let val = js["protocol"] as? JSONDictionary {
				self.protocol_fhir = ImmunizationRecommendationRecommendationProtocol(json: val, owner: self)
			}
			if let val = js["supportingImmunization"] as? [JSONDictionary] {
				self.supportingImmunization = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["supportingPatientInformation"] as? [JSONDictionary] {
				self.supportingPatientInformation = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["vaccineType"] as? JSONDictionary {
				self.vaccineType = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let dateCriterion = self.dateCriterion {
			json["dateCriterion"] = ImmunizationRecommendationRecommendationDateCriterion.asJSONArray(dateCriterion)
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
			json["supportingImmunization"] = Reference.asJSONArray(supportingImmunization)
		}
		if let supportingPatientInformation = self.supportingPatientInformation {
			json["supportingPatientInformation"] = Reference.asJSONArray(supportingPatientInformation)
		}
		if let vaccineType = self.vaccineType {
			json["vaccineType"] = vaccineType.asJSON()
		}
		
		return json
	}
}


/**
 *  Dates governing proposed immunization.
 *
 *  Vaccine date recommendations - e.g. earliest date to administer, latest date to administer, etc.
 */
public class ImmunizationRecommendationRecommendationDateCriterion: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationRecommendationRecommendationDateCriterion" }
	}
	
	/// Type of date
	public var code: CodeableConcept?
	
	/// Recommended date
	public var value: DateTime?
	
	public convenience init(code: CodeableConcept?, value: DateTime?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != value {
			self.value = value
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["value"] as? String {
				self.value = DateTime(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
public class ImmunizationRecommendationRecommendationProtocol: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationRecommendationRecommendationProtocol" }
	}
	
	/// Who is responsible for protocol
	public var authority: Reference?
	
	/// Protocol details
	public var description_fhir: String?
	
	/// Number of dose within sequence
	public var doseSequence: Int?
	
	/// Name of vaccination series
	public var series: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authority"] as? JSONDictionary {
				self.authority = Reference(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["doseSequence"] as? Int {
				self.doseSequence = val
			}
			if let val = js["series"] as? String {
				self.series = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

