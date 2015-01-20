//
//  Appointment.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (appointment.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A scheduled healthcare event for a patient and/or practitioner(s) where a service may take place at a specific
 *  date/time.
 */
public class Appointment: FHIRResource
{
	override public class var resourceName: String {
		get { return "Appointment" }
	}
	
	/// Additional comments about the appointment
	public var comment: String?
	
	/// The brief description of the appointment as would be shown on a subject line in a meeting request, or appointment list. Detailed or expanded information should be put in the comment field
	public var description: String?
	
	/// Date/Time that the appointment is to conclude
	public var end: Instant?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// Date when the appointment was recorded
	public var lastModified: DateTime?
	
	/// Who recorded the appointment
	public var lastModifiedBy: Reference?
	
	/// The primary location that this appointment is to take place
	public var location: Reference?
	
	/// An Order that lead to the creation of this appointment
	public var order: Reference?
	
	/// List of participants involved in the appointment
	public var participant: [AppointmentParticipant]?
	
	/// The priority of the appointment. Can be used to make informed decisions if needing to re-prioritize appointments. (The iCal Standard specifies 0 as undefined, 1 as highest, 9 as lowest priority) (Need to change back to CodeableConcept)
	public var priority: Int?
	
	/// The reason that this appointment is being scheduled, this is more clinical than administrative
	public var reason: CodeableConcept?
	
	/// The slot that this appointment is filling. If provided then the schedule will not be provided as slots are not recursive, and the start/end values MUST be the same as from the slot
	public var slot: [Reference]?
	
	/// Date/Time that the appointment is to take place
	public var start: Instant?
	
	/// pending | booked | arrived | fulfilled | cancelled | noshow
	public var status: String?
	
	/// The type of appointments that is being booked (ideally this would be an identifiable service - which is at a location, rather than the location itself)
	public var type: CodeableConcept?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["end"] as? String {
				self.end = Instant(string: val)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["lastModified"] as? String {
				self.lastModified = DateTime(string: val)
			}
			if let val = js["lastModifiedBy"] as? JSONDictionary {
				self.lastModifiedBy = Reference(json: val, owner: self)
			}
			if let val = js["location"] as? JSONDictionary {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["order"] as? JSONDictionary {
				self.order = Reference(json: val, owner: self)
			}
			if let val = js["participant"] as? [JSONDictionary] {
				self.participant = AppointmentParticipant.from(val, owner: self) as? [AppointmentParticipant]
			}
			if let val = js["priority"] as? Int {
				self.priority = val
			}
			if let val = js["reason"] as? JSONDictionary {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["slot"] as? [JSONDictionary] {
				self.slot = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["start"] as? String {
				self.start = Instant(string: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
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
	
	/// A Person of device that is participating in the appointment, usually Practitioner, Patient, RelatedPerson or Device
	public var actor: Reference?
	
	/// required | optional | information-only
	public var required: String?
	
	/// accepted | declined | tentative | in-process | completed | needs-action
	public var status: String?
	
	/// Role of participant in the appointment
	public var type: [CodeableConcept]?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actor"] as? JSONDictionary {
				self.actor = Reference(json: val, owner: self)
			}
			if let val = js["required"] as? String {
				self.required = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["type"] as? [JSONDictionary] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
}

