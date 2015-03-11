//
//  CarePlan2.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/CarePlan2) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Healthcare plan for patient.
 *
 *  Describes the intention of how one or more practitioners intend to deliver care for a particular patient for a
 *  period of time, possibly limited to care for a specific condition or set of conditions.
 */
public class CarePlan2: DomainResource
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
	public var modified: DateTime?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["activity"] as? [JSONDictionary] {
				self.activity = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["concern"] as? [JSONDictionary] {
				self.concern = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["goal"] as? [JSONDictionary] {
				self.goal = Reference.from(val, owner: self) as? [Reference]
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
				self.participant = CarePlan2Participant.from(val, owner: self) as? [CarePlan2Participant]
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
			json["activity"] = Reference.asJSONArray(activity)
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
			json["participant"] = CarePlan2Participant.asJSONArray(participant)
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

