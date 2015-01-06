//
//  Immunization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (immunization.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Immunization event information.
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
	public var location: Reference?
	
	/// Vaccine lot number
	public var lotNumber: String?
	
	/// Vaccine manufacturer
	public var manufacturer: Reference?
	
	/// Who administered vaccine?
	public var performer: Reference?
	
	/// Details of a reaction that follows immunization
	public var reaction: [ImmunizationReaction]?
	
	/// Was immunization refused?
	public var refusedIndicator: Bool?
	
	/// Is this a self-reported record?
	public var reported: Bool?
	
	/// Who ordered vaccination?
	public var requester: Reference?
	
	/// How vaccine entered body
	public var route: CodeableConcept?
	
	/// Body site vaccine  was administered
	public var site: CodeableConcept?
	
	/// Who was immunized?
	public var subject: Reference?
	
	/// What protocol was followed
	public var vaccinationProtocol: [ImmunizationVaccinationProtocol]?
	
	/// Vaccine product administered
	public var vaccineType: CodeableConcept?
	
	public convenience init(date: NSDate?, refusedIndicator: Bool?, reported: Bool?, subject: Reference?, vaccineType: CodeableConcept?) {
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["doseQuantity"] as? JSONDictionary {
				self.doseQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["expirationDate"] as? String {
				self.expirationDate = NSDate(json: val)
			}
			if let val = js["explanation"] as? JSONDictionary {
				self.explanation = ImmunizationExplanation(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? JSONDictionary {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["lotNumber"] as? String {
				self.lotNumber = val
			}
			if let val = js["manufacturer"] as? JSONDictionary {
				self.manufacturer = Reference(json: val, owner: self)
			}
			if let val = js["performer"] as? JSONDictionary {
				self.performer = Reference(json: val, owner: self)
			}
			if let val = js["reaction"] as? [JSONDictionary] {
				self.reaction = ImmunizationReaction.from(val, owner: self) as? [ImmunizationReaction]
			}
			if let val = js["refusedIndicator"] as? Bool {
				self.refusedIndicator = val
			}
			if let val = js["reported"] as? Bool {
				self.reported = val
			}
			if let val = js["requester"] as? JSONDictionary {
				self.requester = Reference(json: val, owner: self)
			}
			if let val = js["route"] as? JSONDictionary {
				self.route = CodeableConcept(json: val, owner: self)
			}
			if let val = js["site"] as? JSONDictionary {
				self.site = CodeableConcept(json: val, owner: self)
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["vaccinationProtocol"] as? [JSONDictionary] {
				self.vaccinationProtocol = ImmunizationVaccinationProtocol.from(val, owner: self) as? [ImmunizationVaccinationProtocol]
			}
			if let val = js["vaccineType"] as? JSONDictionary {
				self.vaccineType = CodeableConcept(json: val, owner: self)
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
	override public class var resourceName: String {
		get { return "ImmunizationExplanation" }
	}
	
	/// Why immunization occurred
	public var reason: [CodeableConcept]?
	
	/// Why immunization did not occur
	public var refusalReason: [CodeableConcept]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["reason"] as? [JSONDictionary] {
				self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["refusalReason"] as? [JSONDictionary] {
				self.refusalReason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
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
	override public class var resourceName: String {
		get { return "ImmunizationReaction" }
	}
	
	/// When did reaction start?
	public var date: NSDate?
	
	/// Additional information on reaction
	public var detail: Reference?
	
	/// Was reaction self-reported?
	public var reported: Bool?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["detail"] as? JSONDictionary {
				self.detail = Reference(json: val, owner: self)
			}
			if let val = js["reported"] as? Bool {
				self.reported = val
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
	override public class var resourceName: String {
		get { return "ImmunizationVaccinationProtocol" }
	}
	
	/// Who is responsible for protocol
	public var authority: Reference?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authority"] as? JSONDictionary {
				self.authority = Reference(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["doseSequence"] as? Int {
				self.doseSequence = val
			}
			if let val = js["doseStatus"] as? JSONDictionary {
				self.doseStatus = CodeableConcept(json: val, owner: self)
			}
			if let val = js["doseStatusReason"] as? JSONDictionary {
				self.doseStatusReason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["doseTarget"] as? JSONDictionary {
				self.doseTarget = CodeableConcept(json: val, owner: self)
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

