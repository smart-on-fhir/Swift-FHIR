//
//  CarePlan.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/CarePlan) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Healthcare plan for patient.
 *
 *  Describes the intention of how one or more practitioners intend to deliver care for a particular patient for a
 *  period of time, possibly limited to care for a specific condition or set of conditions.
 */
public class CarePlan: DomainResource
{
	override public class var resourceName: String {
		get { return "CarePlan" }
	}
	
	/// Action to occur as part of plan
	public var activity: [CarePlanActivity]?
	
	/// Health issues this plan addresses
	public var concern: [Reference]?
	
	/// Desired outcome of plan
	public var goal: [CarePlanGoal]?
	
	/// External Ids for this plan
	public var identifier: [Identifier]?
	
	/// When last updated
	public var modified: DateTime?
	
	/// Comments about the plan
	public var notes: String?
	
	/// Who's involved in plan?
	public var participant: [CarePlanParticipant]?
	
	/// Who care plan is for
	public var patient: Reference?
	
	/// Time period plan covers
	public var period: Period?
	
	/// planned | active | completed
	public var status: String?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["activity"] as? [JSONDictionary] {
				self.activity = CarePlanActivity.from(val, owner: self) as? [CarePlanActivity]
			}
			if let val = js["concern"] as? [JSONDictionary] {
				self.concern = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["goal"] as? [JSONDictionary] {
				self.goal = CarePlanGoal.from(val, owner: self) as? [CarePlanGoal]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["modified"] as? String {
				self.modified = DateTime(string: val)
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["participant"] as? [JSONDictionary] {
				self.participant = CarePlanParticipant.from(val, owner: self) as? [CarePlanParticipant]
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let activity = self.activity {
			json["activity"] = CarePlanActivity.asJSONArray(activity)
		}
		if let concern = self.concern {
			json["concern"] = Reference.asJSONArray(concern)
		}
		if let goal = self.goal {
			json["goal"] = CarePlanGoal.asJSONArray(goal)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let modified = self.modified {
			json["modified"] = modified.asJSON()
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = CarePlanParticipant.asJSONArray(participant)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
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
	override public class var resourceName: String {
		get { return "CarePlanActivity" }
	}
	
	/// Appointments, orders, etc.
	public var actionResulting: [Reference]?
	
	/// Activity details defined in specific resource
	public var detail: Reference?
	
	/// Goals this activity relates to
	public var goal: [NSURL]?
	
	/// Comments about the activity
	public var notes: String?
	
	/// Do NOT do
	public var prohibited: Bool?
	
	/// Activity details summarised here
	public var simple: CarePlanActivitySimple?
	
	/// not-started | scheduled | in-progress | on-hold | completed | cancelled
	public var status: String?
	
	public convenience init(prohibited: Bool?) {
		self.init(json: nil)
		if nil != prohibited {
			self.prohibited = prohibited
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actionResulting"] as? [JSONDictionary] {
				self.actionResulting = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["detail"] as? JSONDictionary {
				self.detail = Reference(json: val, owner: self)
			}
			if let val = js["goal"] as? [String] {
				self.goal = NSURL.from(val)
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["prohibited"] as? Bool {
				self.prohibited = val
			}
			if let val = js["simple"] as? JSONDictionary {
				self.simple = CarePlanActivitySimple(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let actionResulting = self.actionResulting {
			json["actionResulting"] = Reference.asJSONArray(actionResulting)
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let goal = self.goal {
			var arr = [AnyObject]()
			for val in goal {
				arr.append(val.asJSON())
			}
			json["goal"] = arr
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let prohibited = self.prohibited {
			json["prohibited"] = prohibited.asJSON()
		}
		if let simple = self.simple {
			json["simple"] = simple.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
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
	override public class var resourceName: String {
		get { return "CarePlanActivitySimple" }
	}
	
	/// diet | drug | encounter | observation | procedure | supply | other
	public var category: String?
	
	/// Detail type of activity
	public var code: CodeableConcept?
	
	/// How much consumed/day?
	public var dailyAmount: Quantity?
	
	/// Extra info on activity occurrence
	public var details: String?
	
	/// Where it should happen
	public var location: Reference?
	
	/// Who's responsible?
	public var performer: [Reference]?
	
	/// What's administered/supplied
	public var product: Reference?
	
	/// How much is administered/supplied/consumed
	public var quantity: Quantity?
	
	/// When activity is to occur
	public var scheduledPeriod: Period?
	
	/// When activity is to occur
	public var scheduledString: String?
	
	/// When activity is to occur
	public var scheduledTiming: Timing?
	
	public convenience init(category: String?) {
		self.init(json: nil)
		if nil != category {
			self.category = category
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["category"] as? String {
				self.category = val
			}
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["dailyAmount"] as? JSONDictionary {
				self.dailyAmount = Quantity(json: val, owner: self)
			}
			if let val = js["details"] as? String {
				self.details = val
			}
			if let val = js["location"] as? JSONDictionary {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["performer"] as? [JSONDictionary] {
				self.performer = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["product"] as? JSONDictionary {
				self.product = Reference(json: val, owner: self)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["scheduledPeriod"] as? JSONDictionary {
				self.scheduledPeriod = Period(json: val, owner: self)
			}
			if let val = js["scheduledString"] as? String {
				self.scheduledString = val
			}
			if let val = js["scheduledTiming"] as? JSONDictionary {
				self.scheduledTiming = Timing(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let dailyAmount = self.dailyAmount {
			json["dailyAmount"] = dailyAmount.asJSON()
		}
		if let details = self.details {
			json["details"] = details.asJSON()
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = Reference.asJSONArray(performer)
		}
		if let product = self.product {
			json["product"] = product.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let scheduledPeriod = self.scheduledPeriod {
			json["scheduledPeriod"] = scheduledPeriod.asJSON()
		}
		if let scheduledString = self.scheduledString {
			json["scheduledString"] = scheduledString.asJSON()
		}
		if let scheduledTiming = self.scheduledTiming {
			json["scheduledTiming"] = scheduledTiming.asJSON()
		}
		
		return json
	}
}


/**
 *  Desired outcome of plan.
 *
 *  Describes the intended objective(s) of carrying out the Care Plan.
 */
public class CarePlanGoal: FHIRElement
{
	override public class var resourceName: String {
		get { return "CarePlanGoal" }
	}
	
	/// Health issues this goal addresses
	public var concern: [Reference]?
	
	/// What's the desired outcome?
	public var description_fhir: String?
	
	/// Comments about the goal
	public var notes: String?
	
	/// in-progress | achieved | sustaining | cancelled
	public var status: String?
	
	public convenience init(description_fhir: String?) {
		self.init(json: nil)
		if nil != description_fhir {
			self.description_fhir = description_fhir
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["concern"] as? [JSONDictionary] {
				self.concern = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let concern = self.concern {
			json["concern"] = Reference.asJSONArray(concern)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
 *  Who's involved in plan?.
 *
 *  Identifies all people and organizations who are expected to be involved in the care envisioned by this plan.
 */
public class CarePlanParticipant: FHIRElement
{
	override public class var resourceName: String {
		get { return "CarePlanParticipant" }
	}
	
	/// Who is involved
	public var member: Reference?
	
	/// Type of involvement
	public var role: CodeableConcept?
	
	public convenience init(member: Reference?) {
		self.init(json: nil)
		if nil != member {
			self.member = member
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["member"] as? JSONDictionary {
				self.member = Reference(json: val, owner: self)
			}
			if let val = js["role"] as? JSONDictionary {
				self.role = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let member = self.member {
			json["member"] = member.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		
		return json
	}
}

