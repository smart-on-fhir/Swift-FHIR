//
//  CarePlan.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
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
public class CarePlan: FHIRResource
{
	override public class var resourceName: String {
		get { return "CarePlan" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** External Ids for this plan */
	public var identifier: [Identifier]?
	
	/** Who care plan is for */
	public var patient: FHIRElement? {
		get { return resolveReference("patient") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "patient")
			}
		}
	}
	
	/** planned | active | completed */
	public var status: String?
	
	/** Time period plan covers */
	public var period: Period?
	
	/** When last updated */
	public var modified: NSDate?
	
	/** Health issues this plan addresses */
	public var concern: [FHIRElement]? {
		get { return resolveReferences("concern") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "concern")
			}
		}
	}
	
	/** Who's involved in plan? */
	public var participant: [CarePlanParticipant]?
	
	/** Desired outcome of plan */
	public var goal: [CarePlanGoal]?
	
	/** Action to occur as part of plan */
	public var activity: [CarePlanActivity]?
	
	/** Comments about the plan */
	public var notes: String?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Who's involved in plan?.
 *
 *  Identifies all people and organizations who are expected to be involved in the care envisioned by this plan.
 */
public class CarePlanParticipant: FHIRElement
{	
	/** Type of involvement */
	public var role: CodeableConcept?
	
	/** Who is involved */
	public var member: FHIRElement? {
		get { return resolveReference("member") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "member")
			}
		}
	}
	
	public convenience init(member: ResourceReference?) {
		self.init(json: nil)
		if nil != member {
			self.member = member
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["role"] as? NSDictionary {
				self.role = CodeableConcept(json: val)
			}
			if let val = js["member"] as? NSDictionary {
				self.member = ResourceReference(json: val)
			}
		}
	}
}


/**
 *  Desired outcome of plan.
 *
 *  Describes the intended objective(s) of carrying out the Care Plan.
 */
public class CarePlanGoal: FHIRElement
{	
	/** What's the desired outcome? */
	public var description: String?
	
	/** in progress | achieved | sustaining | cancelled */
	public var status: String?
	
	/** Comments about the goal */
	public var notes: String?
	
	/** Health issues this goal addresses */
	public var concern: [FHIRElement]? {
		get { return resolveReferences("concern") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "concern")
			}
		}
	}
	
	public convenience init(description: String?) {
		self.init(json: nil)
		if nil != description {
			self.description = description
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Action to occur as part of plan.
 *
 *  Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to
 *  perform, self-monitoring, education, etc.
 */
public class CarePlanActivity: FHIRElement
{	
	/** Goals this activity relates to */
	public var goal: [String]?
	
	/** not started | scheduled | in progress | on hold | completed | cancelled */
	public var status: String?
	
	/** Do NOT do */
	public var prohibited: Bool?
	
	/** Appointments, orders, etc. */
	public var actionResulting: [FHIRElement]? {
		get { return resolveReferences("actionResulting") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "actionResulting")
			}
		}
	}
	
	/** Comments about the activity */
	public var notes: String?
	
	/** Activity details defined in specific resource */
	public var detail: FHIRElement? {
		get { return resolveReference("detail") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "detail")
			}
		}
	}
	
	/** Activity details summarised here */
	public var simple: CarePlanActivitySimple?
	
	public convenience init(prohibited: Bool?) {
		self.init(json: nil)
		if nil != prohibited {
			self.prohibited = prohibited
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Activity details summarised here.
 *
 *  A simple summary of details suitable for a general care plan system (e.g. form driven) that doesn't know about
 *  specific resources such as procedure etc.
 */
public class CarePlanActivitySimple: FHIRElement
{	
	/** diet | drug | encounter | observation | procedure | supply | other */
	public var category: String?
	
	/** Detail type of activity */
	public var code: CodeableConcept?
	
	/** When activity is to occur */
	public var timingSchedule: Schedule?
	
	/** When activity is to occur */
	public var timingPeriod: Period?
	
	/** When activity is to occur */
	public var timingString: String?
	
	/** Where it should happen */
	public var location: FHIRElement? {
		get { return resolveReference("location") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "location")
			}
		}
	}
	
	/** Who's responsible? */
	public var performer: [FHIRElement]? {
		get { return resolveReferences("performer") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "performer")
			}
		}
	}
	
	/** What's administered/supplied */
	public var product: FHIRElement? {
		get { return resolveReference("product") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "product")
			}
		}
	}
	
	/** How much consumed/day? */
	public var dailyAmount: Quantity?
	
	/** How much is administered/supplied/consumed */
	public var quantity: Quantity?
	
	/** Extra info on activity occurrence */
	public var details: String?
	
	public convenience init(category: String?) {
		self.init(json: nil)
		if nil != category {
			self.category = category
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}

