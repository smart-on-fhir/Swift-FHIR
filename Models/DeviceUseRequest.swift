//
//  DeviceUseRequest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/DeviceUseRequest) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Request for device use.
 *
 *  Represents a request for the use of a device.
 */
public class DeviceUseRequest: DomainResource
{
	override public class var resourceName: String {
		get { return "DeviceUseRequest" }
	}
	
	/// Target body site
	public var bodySiteCodeableConcept: CodeableConcept?
	
	/// Target body site
	public var bodySiteReference: Reference?
	
	/// Device requested
	public var device: Reference?
	
	/// Encounter motivating request
	public var encounter: Reference?
	
	/// Request identifier
	public var identifier: [Identifier]?
	
	/// Reason for request
	public var indication: [CodeableConcept]?
	
	/// Notes or comments
	public var notes: [String]?
	
	/// When ordered
	public var orderedOn: DateTime?
	
	/// routine | urgent | stat | asap
	public var priority: String?
	
	/// PRN
	public var prnReason: [CodeableConcept]?
	
	/// When recorded
	public var recordedOn: DateTime?
	
	/// proposed | planned | requested | received | accepted | in-progress | completed | suspended | rejected | aborted
	public var status: String?
	
	/// Focus of request
	public var subject: Reference?
	
	/// Schedule for use
	public var timingDateTime: DateTime?
	
	/// Schedule for use
	public var timingPeriod: Period?
	
	/// Schedule for use
	public var timingTiming: Timing?
	
	public convenience init(device: Reference?, subject: Reference?) {
		self.init(json: nil)
		if nil != device {
			self.device = device
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bodySiteCodeableConcept"] as? JSONDictionary {
				self.bodySiteCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["bodySiteReference"] as? JSONDictionary {
				self.bodySiteReference = Reference(json: val, owner: self)
			}
			if let val = js["device"] as? JSONDictionary {
				self.device = Reference(json: val, owner: self)
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
			if let val = js["priority"] as? String {
				self.priority = val
			}
			if let val = js["prnReason"] as? [JSONDictionary] {
				self.prnReason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["recordedOn"] as? String {
				self.recordedOn = DateTime(string: val)
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
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let bodySiteCodeableConcept = self.bodySiteCodeableConcept {
			json["bodySiteCodeableConcept"] = bodySiteCodeableConcept.asJSON()
		}
		if let bodySiteReference = self.bodySiteReference {
			json["bodySiteReference"] = bodySiteReference.asJSON()
		}
		if let device = self.device {
			json["device"] = device.asJSON()
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
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let prnReason = self.prnReason {
			json["prnReason"] = CodeableConcept.asJSONArray(prnReason)
		}
		if let recordedOn = self.recordedOn {
			json["recordedOn"] = recordedOn.asJSON()
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
		
		return json
	}
}

