//
//  Goal.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Goal) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Describes the intended objective(s) of patient care.
 *
 *  Describes the intended objective(s) of patient care, for example, weight loss, restoring an activity of daily
 *  living, etc.
 */
public class Goal: DomainResource
{
	override public class var resourceName: String {
		get { return "Goal" }
	}
	
	/// Who's responsible for creating Goal?
	public var author: Reference?
	
	/// Health issues this goal addresses
	public var concern: [Reference]?
	
	/// What's the desired outcome?
	public var description_fhir: String?
	
	/// External Ids for this goal
	public var identifier: [Identifier]?
	
	/// Comments about the goal
	public var notes: String?
	
	/// What was end result of goal?
	public var outcome: [GoalOutcome]?
	
	/// The patient for whom this goal is intended for
	public var patient: Reference?
	
	/// high | medium |low
	public var priority: CodeableConcept?
	
	/// proposed | planned | in-progress | achieved | sustaining | cancelled | accepted | rejected
	public var status: String?
	
	/// When goal status took effect
	public var statusDate: Date?
	
	/// Reach goal on or before
	public var targetDate: Date?
	
	public convenience init(description_fhir: String?, status: String?) {
		self.init(json: nil)
		if nil != description_fhir {
			self.description_fhir = description_fhir
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? FHIRJSON {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["concern"] as? [FHIRJSON] {
				self.concern = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["outcome"] as? [FHIRJSON] {
				self.outcome = GoalOutcome.from(val, owner: self) as? [GoalOutcome]
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["priority"] as? FHIRJSON {
				self.priority = CodeableConcept(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["statusDate"] as? String {
				self.statusDate = Date(string: val)
			}
			if let val = js["targetDate"] as? String {
				self.targetDate = Date(string: val)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let concern = self.concern {
			json["concern"] = Reference.asJSONArray(concern)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = GoalOutcome.asJSONArray(outcome)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let statusDate = self.statusDate {
			json["statusDate"] = statusDate.asJSON()
		}
		if let targetDate = self.targetDate {
			json["targetDate"] = targetDate.asJSON()
		}
		
		return json
	}
}


/**
 *  What was end result of goal?.
 *
 *  Identifies the change (or lack of change) at the point where the goal was deepmed to be cancelled or achieved.
 */
public class GoalOutcome: FHIRElement
{
	override public class var resourceName: String {
		get { return "GoalOutcome" }
	}
	
	/// Code or observation that resulted from gual
	public var resultCodeableConcept: CodeableConcept?
	
	/// Code or observation that resulted from gual
	public var resultReference: Reference?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["resultCodeableConcept"] as? FHIRJSON {
				self.resultCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["resultReference"] as? FHIRJSON {
				self.resultReference = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let resultCodeableConcept = self.resultCodeableConcept {
			json["resultCodeableConcept"] = resultCodeableConcept.asJSON()
		}
		if let resultReference = self.resultReference {
			json["resultReference"] = resultReference.asJSON()
		}
		
		return json
	}
}

