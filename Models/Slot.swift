//
//  Slot.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Slot) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["comment"] {
				presentKeys.addObject("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comment\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["end"] {
				presentKeys.addObject("end")
				if let val = exist as? String {
					self.end = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"end\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"end\" but it is missing"))
			}
			if let exist: AnyObject = js["freeBusyType"] {
				presentKeys.addObject("freeBusyType")
				if let val = exist as? String {
					self.freeBusyType = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"freeBusyType\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"freeBusyType\" but it is missing"))
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["overbooked"] {
				presentKeys.addObject("overbooked")
				if let val = exist as? Bool {
					self.overbooked = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"overbooked\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["schedule"] {
				presentKeys.addObject("schedule")
				if let val = exist as? FHIRJSON {
					self.schedule = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"schedule\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"schedule\" but it is missing"))
			}
			if let exist: AnyObject = js["start"] {
				presentKeys.addObject("start")
				if let val = exist as? String {
					self.start = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"start\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"start\" but it is missing"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

