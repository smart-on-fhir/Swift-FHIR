//
//  Immunization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (immunization.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Immunization event information.
 *
 *  Scope and Usage The immunization resource is intended to cover the administration of vaccines to patients across all
 *  healthcare disciplines in all care settings and all regions. This includes immunization of both humans and animals
 *  but does not include the administration of non-vaccine agents, even those that may have or claim immunological
 *  effects.
 *  
 *  Additionally, the immunization resource is expected to cover key concepts related to the creation, revision and
 *  querying of a patient's immunization history. This resource - through consultation with the PHER work group - is
 *  believed to meet key use cases and information requirements as defined in the existing HL7 v2.x immunization
 *  implementation guide, HL7 v3 POIZ domain and Immunization Domain Analysis Model.
 */
public class Immunization: FHIRResource
{
	override public class var resourceName: String {
		get { return "Immunization" }
	}
	
	/// Vaccination administration date
	public var date: NSDate?
	
	/// Amount of vaccine administered
	public var doseQuantity: Quantity?
	
	/// Vaccine expiration date
	public var expirationDate: NSDate?
	
	/// Administration / refusal reasons
	public var explanation: ImmunizationExplanation?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Where did vaccination occur?
	public var location: FHIRReference<Location>?
	
	/// Vaccine lot number
	public var lotNumber: String?
	
	/// Vaccine manufacturer
	public var manufacturer: FHIRReference<Organization>?
	
	/// Who administered vaccine?
	public var performer: FHIRReference<Practitioner>?
	
	/// Details of a reaction that follows immunization
	public var reaction: [ImmunizationReaction]?
	
	/// Was immunization refused?
	public var refusedIndicator: Bool?
	
	/// Is this a self-reported record?
	public var reported: Bool?
	
	/// Who ordered vaccination?
	public var requester: FHIRReference<Practitioner>?
	
	/// How vaccine entered body
	public var route: CodeableConcept?
	
	/// Body site vaccine  was administered
	public var site: CodeableConcept?
	
	/// Who was immunized?
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// What protocol was followed
	public var vaccinationProtocol: [ImmunizationVaccinationProtocol]?
	
	/// Vaccine product administered
	public var vaccineType: CodeableConcept?
	
	public convenience init(date: NSDate?, refusedIndicator: Bool?, reported: Bool?, subject: FHIRReference<Patient>?, vaccineType: CodeableConcept?) {
		self.init(json: nil)
		if nil != date {
			self.date = date
		}
		if nil != refusedIndicator {
			self.refusedIndicator = refusedIndicator
		}
		if nil != reported {
			self.reported = reported
		}
		if nil != subject {
			self.subject = subject
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
			if let val = js["doseQuantity"] as? NSDictionary {
				self.doseQuantity = Quantity(json: val)
			}
			if let val = js["expirationDate"] as? String {
				self.expirationDate = NSDate(json: val)
			}
			if let val = js["explanation"] as? NSDictionary {
				self.explanation = ImmunizationExplanation(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["location"] as? NSDictionary {
				self.location = FHIRReference(json: val, owner: self)
			}
			if let val = js["lotNumber"] as? String {
				self.lotNumber = val
			}
			if let val = js["manufacturer"] as? NSDictionary {
				self.manufacturer = FHIRReference(json: val, owner: self)
			}
			if let val = js["performer"] as? NSDictionary {
				self.performer = FHIRReference(json: val, owner: self)
			}
			if let val = js["reaction"] as? [NSDictionary] {
				self.reaction = ImmunizationReaction.from(val) as? [ImmunizationReaction]
			}
			if let val = js["refusedIndicator"] as? Int {
				self.refusedIndicator = (1 == val)
			}
			if let val = js["reported"] as? Int {
				self.reported = (1 == val)
			}
			if let val = js["requester"] as? NSDictionary {
				self.requester = FHIRReference(json: val, owner: self)
			}
			if let val = js["route"] as? NSDictionary {
				self.route = CodeableConcept(json: val)
			}
			if let val = js["site"] as? NSDictionary {
				self.site = CodeableConcept(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["vaccinationProtocol"] as? [NSDictionary] {
				self.vaccinationProtocol = ImmunizationVaccinationProtocol.from(val) as? [ImmunizationVaccinationProtocol]
			}
			if let val = js["vaccineType"] as? NSDictionary {
				self.vaccineType = CodeableConcept(json: val)
			}
		}
	}
}


/**
 *  Administration / refusal reasons.
 *
 *  Reasons why a vaccine was administered or refused.
 */
public class ImmunizationExplanation: FHIRElement
{	
	/// Why immunization occurred
	public var reason: [CodeableConcept]?
	
	/// Why immunization did not occur
	public var refusalReason: [CodeableConcept]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["reason"] as? [NSDictionary] {
				self.reason = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["refusalReason"] as? [NSDictionary] {
				self.refusalReason = CodeableConcept.from(val) as? [CodeableConcept]
			}
		}
	}
}


/**
 *  Details of a reaction that follows immunization.
 *
 *  Categorical data indicating that an adverse event is associated in time to an immunization.
 */
public class ImmunizationReaction: FHIRElement
{	
	/// When did reaction start?
	public var date: NSDate?
	
	/// Additional information on reaction
	public var detail: FHIRReference<AdverseReaction>?
	
	/// Was reaction self-reported?
	public var reported: Bool?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["detail"] as? NSDictionary {
				self.detail = FHIRReference(json: val, owner: self)
			}
			if let val = js["reported"] as? Int {
				self.reported = (1 == val)
			}
		}
	}
}


/**
 *  What protocol was followed.
 *
 *  Contains information about the protocol(s) under which the vaccine was administered.
 */
public class ImmunizationVaccinationProtocol: FHIRElement
{	
	/// Who is responsible for protocol
	public var authority: FHIRReference<Organization>?
	
	/// Details of vaccine protocol
	public var description: String?
	
	/// What dose number within series?
	public var doseSequence: Int?
	
	/// Does dose count towards immunity?
	public var doseStatus: CodeableConcept?
	
	/// Why does does count/not count?
	public var doseStatusReason: CodeableConcept?
	
	/// Disease immunized against
	public var doseTarget: CodeableConcept?
	
	/// Name of vaccine series
	public var series: String?
	
	/// Recommended number of doses for immunity
	public var seriesDoses: Int?
	
	public convenience init(doseSequence: Int?, doseStatus: CodeableConcept?, doseTarget: CodeableConcept?) {
		self.init(json: nil)
		if nil != doseSequence {
			self.doseSequence = doseSequence
		}
		if nil != doseStatus {
			self.doseStatus = doseStatus
		}
		if nil != doseTarget {
			self.doseTarget = doseTarget
		}
	}	

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
			if let val = js["doseStatus"] as? NSDictionary {
				self.doseStatus = CodeableConcept(json: val)
			}
			if let val = js["doseStatusReason"] as? NSDictionary {
				self.doseStatusReason = CodeableConcept(json: val)
			}
			if let val = js["doseTarget"] as? NSDictionary {
				self.doseTarget = CodeableConcept(json: val)
			}
			if let val = js["series"] as? String {
				self.series = val
			}
			if let val = js["seriesDoses"] as? Int {
				self.seriesDoses = val
			}
		}
	}
}

