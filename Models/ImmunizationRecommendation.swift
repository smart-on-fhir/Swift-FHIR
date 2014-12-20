//
//  ImmunizationRecommendation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (immunizationrecommendation.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Immunization profile.
 *
 *  A patient's point-of-time immunization status and recommendation with optional supporting justification.
 */
public class ImmunizationRecommendation: FHIRResource
{
	override public class var resourceName: String {
		get { return "ImmunizationRecommendation" }
	}
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Vaccine administration recommendations
	public var recommendation: [ImmunizationRecommendationRecommendation]?
	
	/// Who this profile is for
	public var subject: Reference?
	
	public convenience init(recommendation: [ImmunizationRecommendationRecommendation]?, subject: Reference?) {
		self.init(json: nil)
		if nil != recommendation {
			self.recommendation = recommendation
		}
		if nil != subject {
			self.subject = subject
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["recommendation"] as? [NSDictionary] {
				self.recommendation = ImmunizationRecommendationRecommendation.from(val, owner: self) as? [ImmunizationRecommendationRecommendation]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
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
	public var date: NSDate?
	
	/// Dates governing proposed immunization
	public var dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]?
	
	/// Recommended dose number
	public var doseNumber: Int?
	
	/// Vaccine administration status
	public var forecastStatus: CodeableConcept?
	
	/// Protocol used by recommendation
	public var protokol: ImmunizationRecommendationRecommendationProtocol?
	
	/// Past immunizations supporting recommendation
	public var supportingImmunization: [Reference]?
	
	/// Patient observations supporting recommendation
	public var supportingPatientInformation: [Reference]?
	
	/// Vaccine recommendation applies to
	public var vaccineType: CodeableConcept?
	
	public convenience init(date: NSDate?, forecastStatus: CodeableConcept?, vaccineType: CodeableConcept?) {
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["dateCriterion"] as? [NSDictionary] {
				self.dateCriterion = ImmunizationRecommendationRecommendationDateCriterion.from(val, owner: self) as? [ImmunizationRecommendationRecommendationDateCriterion]
			}
			if let val = js["doseNumber"] as? Int {
				self.doseNumber = val
			}
			if let val = js["forecastStatus"] as? NSDictionary {
				self.forecastStatus = CodeableConcept(json: val, owner: self)
			}
			if let val = js["protocol"] as? NSDictionary {
				self.protokol = ImmunizationRecommendationRecommendationProtocol(json: val, owner: self)
			}
			if let val = js["supportingImmunization"] as? [NSDictionary] {
				self.supportingImmunization = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["supportingPatientInformation"] as? [NSDictionary] {
				self.supportingPatientInformation = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["vaccineType"] as? NSDictionary {
				self.vaccineType = CodeableConcept(json: val, owner: self)
			}
		}
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
	public var value: NSDate?
	
	public convenience init(code: CodeableConcept?, value: NSDate?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != value {
			self.value = value
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["value"] as? String {
				self.value = NSDate(json: val)
			}
		}
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
	public var description: String?
	
	/// Number of dose within sequence
	public var doseSequence: Int?
	
	/// Name of vaccination series
	public var series: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authority"] as? NSDictionary {
				self.authority = Reference(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["doseSequence"] as? Int {
				self.doseSequence = val
			}
			if let val = js["series"] as? String {
				self.series = val
			}
		}
	}
}

