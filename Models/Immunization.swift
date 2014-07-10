//
//  Immunization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-10.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Immunization event information.
 *
 *  Scope and Usage The immunization resource is intended to cover the administration of vaccines to patients
 *  across all healthcare disciplines in all care settings and all regions. This includes immunization of both
 *  humans and animals but does not include the administration of non-vaccine agents, even those that may have or
 *  claim immunological effects.
 *  
 *  Additionally, the immunization resource is expected to cover key concepts related to the creation, revision
 *  and querying of a patient's immunization history. This resource - through consultation with the PHER work
 *  group - is believed to meet key use cases and information requirements as defined in the existing HL7 v2.x
 *  immunization implementation guide, HL7 v3 POIZ domain and Immunization Domain Analysis Model.
 */
class Immunization: FHIRResource
{
	override class var resourceName: String {
		get { return "Immunization" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: [FHIRResource]?
	
	/*! Business identifier */
	var identifier: [Identifier]?
	
	/*! Vaccination administration date */
	var date: NSDate?
	
	/*! Vaccine product administered */
	var vaccineType: CodeableConcept?
	
	/*! Who was immunized? */
	var subject: ResourceReference?
	
	/*! Was immunization refused? */
	var refusedIndicator: Bool?
	
	/*! Is this a self-reported record? */
	var reported: Bool?
	
	/*! Who administered vaccine? */
	var performer: ResourceReference?
	
	/*! Who ordered vaccination? */
	var requester: ResourceReference?
	
	/*! Vaccine manufacturer */
	var manufacturer: ResourceReference?
	
	/*! Where did vaccination occur? */
	var location: ResourceReference?
	
	/*! Vaccine lot number */
	var lotNumber: String?
	
	/*! Vaccine expiration date */
	var expirationDate: NSDate?
	
	/*! Body site vaccine  was administered */
	var site: CodeableConcept?
	
	/*! How vaccine entered body */
	var route: CodeableConcept?
	
	/*! Amount of vaccine administered */
	var doseQuantity: Quantity?
	
	/*! Administration / refusal reasons */
	var explanation: ImmunizationExplanation?
	
	/*! Details of a reaction that follows immunization */
	var reaction: [ImmunizationReaction]?
	
	/*! What protocol was followed */
	var vaccinationProtocol: [ImmunizationVaccinationProtocol]?
	
	convenience init(date: NSDate?, vaccineType: CodeableConcept?, subject: ResourceReference?, refusedIndicator: Bool?, reported: Bool?) {
		self.init(json: nil)
		if date {
			self.date = date
		}
		if vaccineType {
			self.vaccineType = vaccineType
		}
		if subject {
			self.subject = subject
		}
		if refusedIndicator {
			self.refusedIndicator = refusedIndicator
		}
		if reported {
			self.reported = reported
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? [NSDictionary] {
				self.contained = FHIRResource.from(val) as? [FHIRResource]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["vaccineType"] as? NSDictionary {
				self.vaccineType = CodeableConcept(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["refusedIndicator"] as? Int {
				self.refusedIndicator = (1 == val)
			}
			if let val = js["reported"] as? Int {
				self.reported = (1 == val)
			}
			if let val = js["performer"] as? NSDictionary {
				self.performer = ResourceReference(json: val)
			}
			if let val = js["requester"] as? NSDictionary {
				self.requester = ResourceReference(json: val)
			}
			if let val = js["manufacturer"] as? NSDictionary {
				self.manufacturer = ResourceReference(json: val)
			}
			if let val = js["location"] as? NSDictionary {
				self.location = ResourceReference(json: val)
			}
			if let val = js["lotNumber"] as? String {
				self.lotNumber = val
			}
			if let val = js["expirationDate"] as? String {
				self.expirationDate = NSDate(json: val)
			}
			if let val = js["site"] as? NSDictionary {
				self.site = CodeableConcept(json: val)
			}
			if let val = js["route"] as? NSDictionary {
				self.route = CodeableConcept(json: val)
			}
			if let val = js["doseQuantity"] as? NSDictionary {
				self.doseQuantity = Quantity(json: val)
			}
			if let val = js["explanation"] as? NSDictionary {
				self.explanation = ImmunizationExplanation(json: val)
			}
			if let val = js["reaction"] as? [NSDictionary] {
				self.reaction = ImmunizationReaction.from(val) as? [ImmunizationReaction]
			}
			if let val = js["vaccinationProtocol"] as? [NSDictionary] {
				self.vaccinationProtocol = ImmunizationVaccinationProtocol.from(val) as? [ImmunizationVaccinationProtocol]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Administration / refusal reasons.
 *
 *  Reasons why a vaccine was administered or refused.
 */
class ImmunizationExplanation: FHIRElement
{	
	/*! Why immunization occurred */
	var reason: [CodeableConcept]?
	
	/*! Why immunization did not occur */
	var refusalReason: [CodeableConcept]?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["reason"] as? [NSDictionary] {
				self.reason = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["refusalReason"] as? [NSDictionary] {
				self.refusalReason = CodeableConcept.from(val) as? [CodeableConcept]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Details of a reaction that follows immunization.
 *
 *  Categorical data indicating that an adverse event is associated in time to an immunization.
 */
class ImmunizationReaction: FHIRElement
{	
	/*! When did reaction start? */
	var date: NSDate?
	
	/*! Additional information on reaction */
	var detail: ResourceReference?
	
	/*! Was reaction self-reported? */
	var reported: Bool?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["detail"] as? NSDictionary {
				self.detail = ResourceReference(json: val)
			}
			if let val = js["reported"] as? Int {
				self.reported = (1 == val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  What protocol was followed.
 *
 *  Contains information about the protocol(s) under which the vaccine was administered.
 */
class ImmunizationVaccinationProtocol: FHIRElement
{	
	/*! What dose number within series? */
	var doseSequence: Int?
	
	/*! Details of vaccine protocol */
	var description: String?
	
	/*! Who is responsible for protocol */
	var authority: ResourceReference?
	
	/*! Name of vaccine series */
	var series: String?
	
	/*! Recommended number of doses for immunity */
	var seriesDoses: Int?
	
	/*! Disease immunized against */
	var doseTarget: CodeableConcept?
	
	/*! Does dose count towards immunity? */
	var doseStatus: CodeableConcept?
	
	/*! Why does does count/not count? */
	var doseStatusReason: CodeableConcept?
	
	convenience init(doseSequence: Int?, doseTarget: CodeableConcept?, doseStatus: CodeableConcept?) {
		self.init(json: nil)
		if doseSequence {
			self.doseSequence = doseSequence
		}
		if doseTarget {
			self.doseTarget = doseTarget
		}
		if doseStatus {
			self.doseStatus = doseStatus
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["doseSequence"] as? Int {
				self.doseSequence = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["authority"] as? NSDictionary {
				self.authority = ResourceReference(json: val)
			}
			if let val = js["series"] as? String {
				self.series = val
			}
			if let val = js["seriesDoses"] as? Int {
				self.seriesDoses = val
			}
			if let val = js["doseTarget"] as? NSDictionary {
				self.doseTarget = CodeableConcept(json: val)
			}
			if let val = js["doseStatus"] as? NSDictionary {
				self.doseStatus = CodeableConcept(json: val)
			}
			if let val = js["doseStatusReason"] as? NSDictionary {
				self.doseStatusReason = CodeableConcept(json: val)
			}
		}
		super.init(json: json)
	}
}
