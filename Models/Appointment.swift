//
//  Appointment.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Appointment) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific
 *  date/time. This may result in one or more Encounter(s).
 */
public class Appointment: DomainResource
{
	override public class var resourceName: String {
		get { return "Appointment" }
	}
	
	/// Additional comments about the appointment
	public var comment: String?
	
	/// The brief description of the appointment as would be shown on a subject line in a meeting request, or appointment list. Detailed or expanded information should be put in the comment field
	public var description_fhir: String?
	
	/// Date/Time that the appointment is to conclude
	public var end: Instant?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// An Order that lead to the creation of this appointment
	public var order: Reference?
	
	/// List of participants involved in the appointment
	public var participant: [AppointmentParticipant]?
	
	/// The priority of the appointment. Can be used to make informed decisions if needing to re-prioritize appointments. (The iCal Standard specifies 0 as undefined, 1 as highest, 9 as lowest priority)
	public var priority: UInt?
	
	/// The reason that this appointment is being scheduled, this is more clinical than administrative
	public var reason: CodeableConcept?
	
	/// The slot that this appointment is filling. If provided then the schedule will not be provided as slots are not recursive, and the start/end values MUST be the same as from the slot
	public var slot: [Reference]?
	
	/// Date/Time that the appointment is to take place
	public var start: Instant?
	
	/// pending | booked | arrived | fulfilled | cancelled | noshow
	public var status: String?
	
	/// The type of appointment that is being booked
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(end: Instant?, participant: [AppointmentParticipant]?, start: Instant?, status: String?) {
		self.init(json: nil)
		if nil != end {
			self.end = end
		}
		if nil != participant {
			self.participant = participant
		}
		if nil != start {
			self.start = start
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["comment"] {
				presentKeys.insert("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(FHIRJSONError(key: "comment", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? String {
					self.end = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "end"))
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["order"] {
				presentKeys.insert("order")
				if let val = exist as? FHIRJSON {
					self.order = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "order", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["participant"] {
				presentKeys.insert("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = AppointmentParticipant.from(val, owner: self) as? [AppointmentParticipant]
				}
				else {
					errors.append(FHIRJSONError(key: "participant", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "participant"))
			}
			if let exist: AnyObject = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? UInt {
					self.priority = val
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["slot"] {
				presentKeys.insert("slot")
				if let val = exist as? [FHIRJSON] {
					self.slot = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "slot", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? String {
					self.start = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "start"))
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let order = self.order {
			json["order"] = order.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = AppointmentParticipant.asJSONArray(participant)
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let slot = self.slot {
			json["slot"] = Reference.asJSONArray(slot)
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  List of participants involved in the appointment.
 */
public class AppointmentParticipant: FHIRElement
{
	override public class var resourceName: String {
		get { return "AppointmentParticipant" }
	}
	
	/// A Person, Location/HealthcareService or Device that is participating in the appointment
	public var actor: Reference?
	
	/// required | optional | information-only
	public var required: String?
	
	/// accepted | declined | tentative | needs-action
	public var status: String?
	
	/// Role of participant in the appointment
	public var type: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? FHIRJSON {
					self.actor = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["required"] {
				presentKeys.insert("required")
				if let val = exist as? String {
					self.required = val
				}
				else {
					errors.append(FHIRJSONError(key: "required", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON()
		}
		if let required = self.required {
			json["required"] = required.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = CodeableConcept.asJSONArray(type)
		}
		
		return json
	}
}

