//
//  CarePlan2.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (careplan2.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Healthcare plan for patient.
 *
 *  Describes the intention of how one or more practitioners intend to deliver care for a particular patient for a
 *  period of time, possibly limited to care for a specific condition or set of conditions.
 */
public class CarePlan2: FHIRResource
{
	override public class var resourceName: String {
		get { return "CarePlan2" }
	}
	
	/// CarePlan Activity
	public var activity: [Reference]?
	
	/// Health issues this plan addresses
	public var concern: [Reference]?
	
	/// CarePlan Goal
	public var goal: [Reference]?
	
	/// External Ids for this plan
	public var identifier: [Identifier]?
	
	/// When last updated
	public var modified: NSDate?
	
	/// Comments about the plan
	public var notes: String?
	
	/// Who's involved in plan?
	public var participant: [CarePlan2Participant]?
	
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["activity"] as? [NSDictionary] {
				self.activity = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["concern"] as? [NSDictionary] {
				self.concern = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["goal"] as? [NSDictionary] {
				self.goal = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["modified"] as? String {
				self.modified = NSDate(json: val)
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["participant"] as? [NSDictionary] {
				self.participant = CarePlan2Participant.from(val, owner: self) as? [CarePlan2Participant]
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
}


/**
 *  Who's involved in plan?.
 *
 *  Identifies all people and organizations who are expected to be involved in the care envisioned by this plan.
 */
public class CarePlan2Participant: FHIRElement
{
	override public class var resourceName: String {
		get { return "CarePlan2Participant" }
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["member"] as? NSDictionary {
				self.member = Reference(json: val, owner: self)
			}
			if let val = js["role"] as? NSDictionary {
				self.role = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

