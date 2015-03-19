//
//  AppointmentResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/AppointmentResponse) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
 */
public class AppointmentResponse: DomainResource
{
	override public class var resourceName: String {
		get { return "AppointmentResponse" }
	}
	
	/// A Person, Location/HealthcareService or Device that is participating in the appointment
	public var actor: Reference?
	
	/// Parent appointment that this response is replying to
	public var appointment: Reference?
	
	/// Additional comments about the appointment
	public var comment: String?
	
	/// Date/Time that the appointment is to conclude, or requested new end time
	public var end: Instant?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// accepted | declined | tentative | in-process | completed | needs-action
	public var participantStatus: String?
	
	/// Role of participant in the appointment
	public var participantType: [CodeableConcept]?
	
	/// Date/Time that the appointment is to take place, or requested new start time
	public var start: Instant?
	
	public convenience init(appointment: Reference?, participantStatus: String?) {
		self.init(json: nil)
		if nil != appointment {
			self.appointment = appointment
		}
		if nil != participantStatus {
			self.participantStatus = participantStatus
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actor"] as? JSONDictionary {
				self.actor = Reference(json: val, owner: self)
			}
			if let val = js["appointment"] as? JSONDictionary {
				self.appointment = Reference(json: val, owner: self)
			}
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["end"] as? String {
				self.end = Instant(string: val)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["participantStatus"] as? String {
				self.participantStatus = val
			}
			if let val = js["participantType"] as? [JSONDictionary] {
				self.participantType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["start"] as? String {
				self.start = Instant(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON()
		}
		if let appointment = self.appointment {
			json["appointment"] = appointment.asJSON()
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let participantStatus = self.participantStatus {
			json["participantStatus"] = participantStatus.asJSON()
		}
		if let participantType = self.participantType {
			json["participantType"] = CodeableConcept.asJSONArray(participantType)
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		
		return json
	}
}

