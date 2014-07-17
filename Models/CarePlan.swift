//
//  CarePlan.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Healthcare plan for patient.
 *
 *  Scope and Usage Care Plans are used in many of areas of healthcare with a variety of scopes. They can be as
 *  simple as a general practitioner keeping track of when their patient is next due for a tetanus immunization
 *  through to a detailed plan for an oncology patient covering diet, chemotherapy, radiation, lab work and
 *  counseling with detailed timing relationships, pre-conditions and goals.
 *  
 *  This resource takes an intermediate approach. It captures basic details about who is involved and what actions
 *  are intended without dealing in discrete data about dependencies and timing relationships. These can be
 *  supported where necessary using the extension mechanisms.
 *  
 *  Comments are welcome about the appropriateness of the proposed level of granularity, whether it's too much
 *  detail for what most systems need, or not sufficient for common essential use cases.
 */
class CarePlan: FHIRResource
{
	override class var resourceName: String {
		get { return "CarePlan" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! External Ids for this plan */
	var identifier: [Identifier]?
	
	/*! Who care plan is for */
	var patient: ResourceReference?
	
	/*! planned | active | completed */
	var status: String?
	
	/*! Time period plan covers */
	var period: Period?
	
	/*! When last updated */
	var modified: NSDate?
	
	/*! Health issues this plan addresses */
	var concern: [ResourceReference]?
	
	/*! Who's involved in plan? */
	var participant: [CarePlanParticipant]?
	
	/*! Desired outcome of plan */
	var goal: [CarePlanGoal]?
	
	/*! Action to occur as part of plan */
	var activity: [CarePlanActivity]?
	
	/*! Comments about the plan */
	var notes: String?
	
	convenience init(status: String?) {
		self.init(json: nil)
		if status {
			self.status = status
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = ResourceReference(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
			if let val = js["modified"] as? String {
				self.modified = NSDate(json: val)
			}
			if let val = js["concern"] as? [NSDictionary] {
				self.concern = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["participant"] as? [NSDictionary] {
				self.participant = CarePlanParticipant.from(val) as? [CarePlanParticipant]
			}
			if let val = js["goal"] as? [NSDictionary] {
				self.goal = CarePlanGoal.from(val) as? [CarePlanGoal]
			}
			if let val = js["activity"] as? [NSDictionary] {
				self.activity = CarePlanActivity.from(val) as? [CarePlanActivity]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Who's involved in plan?.
 *
 *  Identifies all people and organizations who are expected to be involved in the care envisioned by this plan.
 */
class CarePlanParticipant: FHIRElement
{	
	/*! Type of involvement */
	var role: CodeableConcept?
	
	/*! Who is involved */
	var member: ResourceReference?
	
	convenience init(member: ResourceReference?) {
		self.init(json: nil)
		if member {
			self.member = member
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["role"] as? NSDictionary {
				self.role = CodeableConcept(json: val)
			}
			if let val = js["member"] as? NSDictionary {
				self.member = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Desired outcome of plan.
 *
 *  Describes the intended objective(s) of carrying out the Care Plan.
 */
class CarePlanGoal: FHIRElement
{	
	/*! What's the desired outcome? */
	var description: String?
	
	/*! in progress | achieved | sustaining | cancelled */
	var status: String?
	
	/*! Comments about the goal */
	var notes: String?
	
	/*! Health issues this goal addresses */
	var concern: [ResourceReference]?
	
	convenience init(description: String?) {
		self.init(json: nil)
		if description {
			self.description = description
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["concern"] as? [NSDictionary] {
				self.concern = ResourceReference.from(val) as? [ResourceReference]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Action to occur as part of plan.
 *
 *  Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to
 *  perform, self-monitoring, education, etc.
 */
class CarePlanActivity: FHIRElement
{	
	/*! Goals this activity relates to */
	var goal: [String]?
	
	/*! not started | scheduled | in progress | on hold | completed | cancelled */
	var status: String?
	
	/*! Do NOT do */
	var prohibited: Bool?
	
	/*! Appointments, orders, etc. */
	var actionResulting: [ResourceReference]?
	
	/*! Comments about the activity */
	var notes: String?
	
	/*! Activity details defined in specific resource */
	var detail: ResourceReference?
	
	/*! Activity details summarised here */
	var simple: CarePlanActivitySimple?
	
	convenience init(prohibited: Bool?) {
		self.init(json: nil)
		if prohibited {
			self.prohibited = prohibited
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["goal"] as? [String] {
				self.goal = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["prohibited"] as? Int {
				self.prohibited = (1 == val)
			}
			if let val = js["actionResulting"] as? [NSDictionary] {
				self.actionResulting = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["detail"] as? NSDictionary {
				self.detail = ResourceReference(json: val)
			}
			if let val = js["simple"] as? NSDictionary {
				self.simple = CarePlanActivitySimple(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Activity details summarised here.
 *
 *  A simple summary of details suitable for a general care plan system (e.g. form driven) that doesn't know about
 *  specific resources such as procedure etc.
 */
class CarePlanActivitySimple: FHIRElement
{	
	/*! diet | drug | encounter | observation | procedure | supply | other */
	var category: String?
	
	/*! Detail type of activity */
	var code: CodeableConcept?
	
	/*! When activity is to occur */
	var timingSchedule: Schedule?
	
	/*! When activity is to occur */
	var timingPeriod: Period?
	
	/*! When activity is to occur */
	var timingString: String?
	
	/*! Where it should happen */
	var location: ResourceReference?
	
	/*! Who's responsible? */
	var performer: [ResourceReference]?
	
	/*! What's administered/supplied */
	var product: ResourceReference?
	
	/*! How much consumed/day? */
	var dailyAmount: Quantity?
	
	/*! How much is administered/supplied/consumed */
	var quantity: Quantity?
	
	/*! Extra info on activity occurrence */
	var details: String?
	
	convenience init(category: String?) {
		self.init(json: nil)
		if category {
			self.category = category
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["category"] as? String {
				self.category = val
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["timingSchedule"] as? NSDictionary {
				self.timingSchedule = Schedule(json: val)
			}
			if let val = js["timingPeriod"] as? NSDictionary {
				self.timingPeriod = Period(json: val)
			}
			if let val = js["timingString"] as? String {
				self.timingString = val
			}
			if let val = js["location"] as? NSDictionary {
				self.location = ResourceReference(json: val)
			}
			if let val = js["performer"] as? [NSDictionary] {
				self.performer = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["product"] as? NSDictionary {
				self.product = ResourceReference(json: val)
			}
			if let val = js["dailyAmount"] as? NSDictionary {
				self.dailyAmount = Quantity(json: val)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
			}
			if let val = js["details"] as? String {
				self.details = val
			}
		}
		super.init(json: json)
	}
}
