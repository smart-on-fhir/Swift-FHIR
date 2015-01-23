//
//  ProcedureRequest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (procedurerequest.profile.json) on 2015-01-23.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Procedure Request.
 *
 *  A request for a procedure to be performed. May be a proposal or an order.
 */
public class ProcedureRequest: FHIRResource
{
	override public class var resourceName: String {
		get { return "ProcedureRequest" }
	}
	
	/// PRN
	public var asNeededBoolean: Bool?
	
	/// PRN
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Target Body Site
	public var bodySite: [CodeableConcept]?
	
	/// Encounter
	public var encounter: Reference?
	
	/// Identifier
	public var identifier: [Identifier]?
	
	/// Indication
	public var indication: [CodeableConcept]?
	
	/// Notes
	public var notes: [String]?
	
	/// When Requested
	public var orderedOn: DateTime?
	
	/// Ordering Party
	public var orderer: Reference?
	
	/// Performer
	public var performer: Reference?
	
	/// routine | urgent | stat | asap
	public var priority: String?
	
	/// proposed | planned | requested | received | accepted | in progress | completed | suspended | rejected | aborted
	public var status: String?
	
	/// Subject
	public var subject: Reference?
	
	/// Timing
	public var timingDateTime: DateTime?
	
	/// Timing
	public var timingPeriod: Period?
	
	/// Timing
	public var timingTiming: Timing?
	
	/// Procedure Type
	public var type: CodeableConcept?
	
	public convenience init(subject: Reference?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != subject {
			self.subject = subject
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["asNeededBoolean"] as? Bool {
				self.asNeededBoolean = val
			}
			if let val = js["asNeededCodeableConcept"] as? JSONDictionary {
				self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["bodySite"] as? [JSONDictionary] {
				self.bodySite = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["indication"] as? [JSONDictionary] {
				self.indication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["notes"] as? [String] {
				self.notes = val
			}
			if let val = js["orderedOn"] as? String {
				self.orderedOn = DateTime(string: val)
			}
			if let val = js["orderer"] as? JSONDictionary {
				self.orderer = Reference(json: val, owner: self)
			}
			if let val = js["performer"] as? JSONDictionary {
				self.performer = Reference(json: val, owner: self)
			}
			if let val = js["priority"] as? String {
				self.priority = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["timingDateTime"] as? String {
				self.timingDateTime = DateTime(string: val)
			}
			if let val = js["timingPeriod"] as? JSONDictionary {
				self.timingPeriod = Period(json: val, owner: self)
			}
			if let val = js["timingTiming"] as? JSONDictionary {
				self.timingTiming = Timing(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let asNeededBoolean = self.asNeededBoolean {
			json["asNeededBoolean"] = asNeededBoolean.asJSON()
		}
		if let asNeededCodeableConcept = self.asNeededCodeableConcept {
			json["asNeededCodeableConcept"] = asNeededCodeableConcept.asJSON()
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = CodeableConcept.asJSONArray(bodySite)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let indication = self.indication {
			json["indication"] = CodeableConcept.asJSONArray(indication)
		}
		if let notes = self.notes {
			var arr = [AnyObject]()
			for val in notes {
				arr.append(val.asJSON())
			}
			json["notes"] = arr
		}
		if let orderedOn = self.orderedOn {
			json["orderedOn"] = orderedOn.asJSON()
		}
		if let orderer = self.orderer {
			json["orderer"] = orderer.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let timingDateTime = self.timingDateTime {
			json["timingDateTime"] = timingDateTime.asJSON()
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON()
		}
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

