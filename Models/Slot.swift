//
//  Slot.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/Slot) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A slot of time on a schedule that may be available for booking appointments.
 */
public class Slot: DomainResource
{
	override public class var resourceName: String {
		get { return "Slot" }
	}
	
	/// Comments on the slot to describe any extended information. Such as custom constraints on the slot
	public var comment: String?
	
	/// Date/Time that the slot is to conclude
	public var end: Instant?
	
	/// BUSY | FREE | BUSY-UNAVAILABLE | BUSY-TENTATIVE
	public var freeBusyType: String?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// This slot has already been overbooked, appointments are unlikely to be accepted for this time
	public var overbooked: Bool?
	
	/// The schedule resource that this slot defines an interval of status information
	public var schedule: Reference?
	
	/// Date/Time that the slot is to begin
	public var start: Instant?
	
	/// The type of appointments that can be booked into this slot (ideally this would be an identifiable service - which is at a location, rather than the location itself). If provided then this overrides the value provided on the availability resource
	public var type: CodeableConcept?
	
	public convenience init(end: Instant?, freeBusyType: String?, schedule: Reference?, start: Instant?) {
		self.init(json: nil)
		if nil != end {
			self.end = end
		}
		if nil != freeBusyType {
			self.freeBusyType = freeBusyType
		}
		if nil != schedule {
			self.schedule = schedule
		}
		if nil != start {
			self.start = start
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["end"] as? String {
				self.end = Instant(string: val)
			}
			if let val = js["freeBusyType"] as? String {
				self.freeBusyType = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["overbooked"] as? Bool {
				self.overbooked = val
			}
			if let val = js["schedule"] as? JSONDictionary {
				self.schedule = Reference(json: val, owner: self)
			}
			if let val = js["start"] as? String {
				self.start = Instant(string: val)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let freeBusyType = self.freeBusyType {
			json["freeBusyType"] = freeBusyType.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let overbooked = self.overbooked {
			json["overbooked"] = overbooked.asJSON()
		}
		if let schedule = self.schedule {
			json["schedule"] = schedule.asJSON()
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

