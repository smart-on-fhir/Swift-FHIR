//
//  ImmunizationRecommendation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (immunizationrecommendation.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Immunization profile.
 *
 *  Scope and Usage The ImmunizationRecommendation resource is intended to cover communication of a specified patient's
 *  immunization recommendation and status across all healthcare disciplines in all care settings and all regions.
 *  
 *  Additionally, the ImmunizationRecommendation resource is expected to cover key concepts related to the querying of a
 *  patient's immunization recommendation and status. This resource - through consultation with the PHER work group - is
 *  believed to meet key use cases and information requirements as defined in the existing HL7 v3 POIZ domain and
 *  Immunization Domain Analysis Model.
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
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(recommendation: [ImmunizationRecommendationRecommendation]?, subject: FHIRReference<Patient>?) {
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
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["recommendation"] as? [NSDictionary] {
				self.recommendation = ImmunizationRecommendationRecommendation.from(val) as? [ImmunizationRecommendationRecommendation]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
		}
	}
}


/**
 *  Vaccine administration recommendations.
 */
public class ImmunizationRecommendationRecommendation: FHIRElement
{	
	/// Date recommendation created
	public var date: NSDate?
	
	/// Dates governing proposed immunization
	public var dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]?
	
	/// Recommended dose number
	public var doseNumber: Int?
	
	/// Vaccine administration status
	public var forecastStatus: CodeableConcept?
	
	/// Protocol used by recommendation
	public var proto: ImmunizationRecommendationRecommendationProtocol?
	
	/// Past immunizations supporting recommendation
	public var supportingImmunization: [FHIRReference<Immunization>]?
	
	/// Patient observations supporting recommendation
	public var supportingPatientInformation: [FHIRReference<Observation>]?
	
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
				self.dateCriterion = ImmunizationRecommendationRecommendationDateCriterion.from(val) as? [ImmunizationRecommendationRecommendationDateCriterion]
			}
			if let val = js["doseNumber"] as? Int {
				self.doseNumber = val
			}
			if let val = js["forecastStatus"] as? NSDictionary {
				self.forecastStatus = CodeableConcept(json: val)
			}
			if let val = js["proto"] as? NSDictionary {
				self.proto = ImmunizationRecommendationRecommendationProtocol(json: val)
			}
			if let val = js["supportingImmunization"] as? [NSDictionary] {
				self.supportingImmunization = FHIRReference.from(val, owner: self)
			}
			if let val = js["supportingPatientInformation"] as? [NSDictionary] {
				self.supportingPatientInformation = FHIRReference.from(val, owner: self)
			}
			if let val = js["vaccineType"] as? NSDictionary {
				self.vaccineType = CodeableConcept(json: val)
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
				self.code = CodeableConcept(json: val)
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
	/// Who is responsible for protocol
	public var authority: FHIRReference<Organization>?
	
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
				self.authority = FHIRReference(json: val, owner: self)
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

