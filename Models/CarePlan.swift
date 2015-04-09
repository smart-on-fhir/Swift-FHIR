//
//  CarePlan.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/CarePlan) on 2015-04-03.
//  2015, SMART Health IT.
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
	
	/// Who is responsible for plan
	public var author: [Reference]?
	
	/// Type of plan
	public var category: [CodeableConcept]?
	
	/// Health issues this plan addresses
	public var concern: [Reference]?
	
	/// Desired outcome of plan
	public var goal: [Reference]?
	
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
	
	/// Information considered as part of plan
	public var support: [Reference]?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["activity"] as? [FHIRJSON] {
				self.activity = CarePlanActivity.from(val, owner: self) as? [CarePlanActivity]
			}
			if let val = js["author"] as? [FHIRJSON] {
				self.author = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["category"] as? [FHIRJSON] {
				self.category = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["concern"] as? [FHIRJSON] {
				self.concern = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["goal"] as? [FHIRJSON] {
				self.goal = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["modified"] as? String {
				self.modified = DateTime(string: val)
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["participant"] as? [FHIRJSON] {
				self.participant = CarePlanParticipant.from(val, owner: self) as? [CarePlanParticipant]
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["support"] as? [FHIRJSON] {
				self.support = Reference.from(val, owner: self) as? [Reference]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let activity = self.activity {
			json["activity"] = CarePlanActivity.asJSONArray(activity)
		}
		if let author = self.author {
			json["author"] = Reference.asJSONArray(author)
		}
		if let category = self.category {
			json["category"] = CodeableConcept.asJSONArray(category)
		}
		if let concern = self.concern {
			json["concern"] = Reference.asJSONArray(concern)
		}
		if let goal = self.goal {
			json["goal"] = Reference.asJSONArray(goal)
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
		if let support = self.support {
			json["support"] = Reference.asJSONArray(support)
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
	
	/// In-line definition of activity
	public var detail: CarePlanActivityDetail?
	
	/// Comments about the activity
	public var notes: String?
	
	/// Activity details defined in specific resource
	public var reference: Reference?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actionResulting"] as? [FHIRJSON] {
				self.actionResulting = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["detail"] as? FHIRJSON {
				self.detail = CarePlanActivityDetail(json: val, owner: self)
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["reference"] as? FHIRJSON {
				self.reference = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actionResulting = self.actionResulting {
			json["actionResulting"] = Reference.asJSONArray(actionResulting)
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		
		return json
	}
}


/**
 *  In-line definition of activity.
 *
 *  A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know
 *  about specific resources such as procedure etc.
 */
public class CarePlanActivityDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "CarePlanActivityDetail" }
	}
	
	/// diet | drug | encounter | observation | procedure | supply | other
	public var category: String?
	
	/// Detail type of activity
	public var code: CodeableConcept?
	
	/// How to consume/day?
	public var dailyAmount: Quantity?
	
	/// Goals this activity relates to
	public var goal: [Reference]?
	
	/// Where it should happen
	public var location: Reference?
	
	/// Extra info on activity occurrence
	public var note: String?
	
	/// Who will be responsible?
	public var performer: [Reference]?
	
	/// What is to be administered/supplied
	public var product: Reference?
	
	/// Do NOT do
	public var prohibited: Bool?
	
	/// How much to administer/supply/consume
	public var quantity: Quantity?
	
	/// Why activity should be done
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Why activity should be done
	public var reasonReference: Reference?
	
	/// When activity is to occur
	public var scheduledPeriod: Period?
	
	/// When activity is to occur
	public var scheduledString: String?
	
	/// When activity is to occur
	public var scheduledTiming: Timing?
	
	/// not-started | scheduled | in-progress | on-hold | completed | cancelled
	public var status: String?
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	public convenience init(category: String?, prohibited: Bool?) {
		self.init(json: nil)
		if nil != category {
			self.category = category
		}
		if nil != prohibited {
			self.prohibited = prohibited
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["category"] as? String {
				self.category = val
			}
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["dailyAmount"] as? FHIRJSON {
				self.dailyAmount = Quantity(json: val, owner: self)
			}
			if let val = js["goal"] as? [FHIRJSON] {
				self.goal = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["location"] as? FHIRJSON {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["performer"] as? [FHIRJSON] {
				self.performer = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["product"] as? FHIRJSON {
				self.product = Reference(json: val, owner: self)
			}
			if let val = js["prohibited"] as? Bool {
				self.prohibited = val
			}
			if let val = js["quantity"] as? FHIRJSON {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["reasonCodeableConcept"] as? FHIRJSON {
				self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reasonReference"] as? FHIRJSON {
				self.reasonReference = Reference(json: val, owner: self)
			}
			if let val = js["scheduledPeriod"] as? FHIRJSON {
				self.scheduledPeriod = Period(json: val, owner: self)
			}
			if let val = js["scheduledString"] as? String {
				self.scheduledString = val
			}
			if let val = js["scheduledTiming"] as? FHIRJSON {
				self.scheduledTiming = Timing(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["statusReason"] as? FHIRJSON {
				self.statusReason = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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
		if let goal = self.goal {
			json["goal"] = Reference.asJSONArray(goal)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = Reference.asJSONArray(performer)
		}
		if let product = self.product {
			json["product"] = product.asJSON()
		}
		if let prohibited = self.prohibited {
			json["prohibited"] = prohibited.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON()
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON()
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
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let statusReason = self.statusReason {
			json["statusReason"] = statusReason.asJSON()
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["member"] as? FHIRJSON {
				self.member = Reference(json: val, owner: self)
			}
			if let val = js["role"] as? FHIRJSON {
				self.role = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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

