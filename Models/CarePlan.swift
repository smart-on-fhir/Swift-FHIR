//
//  CarePlan.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (careplan.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Healthcare plan for patient.
 *
 *  Scope and Usage Care Plans are used in many of areas of healthcare with a variety of scopes. They can be as simple
 *  as a general practitioner keeping track of when their patient is next due for a tetanus immunization through to a
 *  detailed plan for an oncology patient covering diet, chemotherapy, radiation, lab work and counseling with detailed
 *  timing relationships, pre-conditions and goals.
 *  
 *  This resource takes an intermediate approach. It captures basic details about who is involved and what actions are
 *  intended without dealing in discrete data about dependencies and timing relationships. These can be supported where
 *  necessary using the extension mechanisms.
 *  
 *  Comments are welcome about the appropriateness of the proposed level of granularity, whether it's too much detail
 *  for what most systems need, or not sufficient for common essential use cases.
 */
public class CarePlan: FHIRResource
{
	override public class var resourceName: String {
		get { return "CarePlan" }
	}
	
	/// Action to occur as part of plan
	public var activity: [CarePlanActivity]?
	
	/// Health issues this plan addresses
	public var concern: [FHIRReference<Condition>]?
	
	/// Desired outcome of plan
	public var goal: [CarePlanGoal]?
	
	/// External Ids for this plan
	public var identifier: [Identifier]?
	
	/// When last updated
	public var modified: NSDate?
	
	/// Comments about the plan
	public var notes: String?
	
	/// Who's involved in plan?
	public var participant: [CarePlanParticipant]?
	
	/// Who care plan is for
	public var patient: FHIRReference<Patient>?
	
	/// Time period plan covers
	public var period: Period?
	
	/// planned | active | completed
	public var status: String?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["activity"] as? [NSDictionary] {
				self.activity = CarePlanActivity.from(val) as? [CarePlanActivity]
			}
			if let val = js["concern"] as? [NSDictionary] {
				self.concern = FHIRReference.from(val, owner: self)
			}
			if let val = js["goal"] as? [NSDictionary] {
				self.goal = CarePlanGoal.from(val) as? [CarePlanGoal]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["modified"] as? String {
				self.modified = NSDate(json: val)
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["participant"] as? [NSDictionary] {
				self.participant = CarePlanParticipant.from(val) as? [CarePlanParticipant]
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = FHIRReference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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
	/// Who is involved
	public var member: FHIRReference<Practitioner>?
	
	/// Type of involvement
	public var role: CodeableConcept?
	
	public convenience init(member: FHIRReference<Practitioner>?) {
		self.init(json: nil)
		if nil != member {
			self.member = member
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["member"] as? NSDictionary {
				self.member = FHIRReference(json: val, owner: self)
			}
			if let val = js["role"] as? NSDictionary {
				self.role = CodeableConcept(json: val)
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
	/// Health issues this goal addresses
	public var concern: [FHIRReference<Condition>]?
	
	/// What's the desired outcome?
	public var description: String?
	
	/// Comments about the goal
	public var notes: String?
	
	/// in progress | achieved | sustaining | cancelled
	public var status: String?
	
	public convenience init(description: String?) {
		self.init(json: nil)
		if nil != description {
			self.description = description
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["concern"] as? [NSDictionary] {
				self.concern = FHIRReference.from(val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["status"] as? String {
				self.status = val
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
	/// Appointments, orders, etc.
	public var actionResulting: [FHIRReference<FHIRResource>]?
	
	/// Activity details defined in specific resource
	public var detail: FHIRReference<Procedure>?
	
	/// Goals this activity relates to
	public var goal: [String]?
	
	/// Comments about the activity
	public var notes: String?
	
	/// Do NOT do
	public var prohibited: Bool?
	
	/// Activity details summarised here
	public var simple: CarePlanActivitySimple?
	
	/// not started | scheduled | in progress | on hold | completed | cancelled
	public var status: String?
	
	public convenience init(prohibited: Bool?) {
		self.init(json: nil)
		if nil != prohibited {
			self.prohibited = prohibited
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actionResulting"] as? [NSDictionary] {
				self.actionResulting = FHIRReference.from(val, owner: self)
			}
			if let val = js["detail"] as? NSDictionary {
				self.detail = FHIRReference(json: val, owner: self)
			}
			if let val = js["goal"] as? [String] {
				self.goal = val
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["prohibited"] as? Int {
				self.prohibited = (1 == val)
			}
			if let val = js["simple"] as? NSDictionary {
				self.simple = CarePlanActivitySimple(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
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
	/// diet | drug | encounter | observation | procedure | supply | other
	public var category: String?
	
	/// Detail type of activity
	public var code: CodeableConcept?
	
	/// How much consumed/day?
	public var dailyAmount: Quantity?
	
	/// Extra info on activity occurrence
	public var details: String?
	
	/// Where it should happen
	public var location: FHIRReference<Location>?
	
	/// Who's responsible?
	public var performer: [FHIRReference<Practitioner>]?
	
	/// What's administered/supplied
	public var product: FHIRReference<Medication>?
	
	/// How much is administered/supplied/consumed
	public var quantity: Quantity?
	
	/// When activity is to occur
	public var timingPeriod: Period?
	
	/// When activity is to occur
	public var timingSchedule: Schedule?
	
	/// When activity is to occur
	public var timingString: String?
	
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
			if let val = js["dailyAmount"] as? NSDictionary {
				self.dailyAmount = Quantity(json: val)
			}
			if let val = js["details"] as? String {
				self.details = val
			}
			if let val = js["location"] as? NSDictionary {
				self.location = FHIRReference(json: val, owner: self)
			}
			if let val = js["performer"] as? [NSDictionary] {
				self.performer = FHIRReference.from(val, owner: self)
			}
			if let val = js["product"] as? NSDictionary {
				self.product = FHIRReference(json: val, owner: self)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
			}
			if let val = js["timingPeriod"] as? NSDictionary {
				self.timingPeriod = Period(json: val)
			}
			if let val = js["timingSchedule"] as? NSDictionary {
				self.timingSchedule = Schedule(json: val)
			}
			if let val = js["timingString"] as? String {
				self.timingString = val
			}
		}
	}
}

