//
//  AppointmentResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/AppointmentResponse) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
 */
public class AppointmentResponse: DomainResource {
	override public class var resourceName: String {
		get { return "AppointmentResponse" }
	}
	
	/// Person, Location/HealthcareService or Device.
	public var actor: Reference?
	
	/// Appointment this response relates to.
	public var appointment: Reference?
	
	/// Additional comments.
	public var comment: String?
	
	/// Time from appointment, or requested new end time.
	public var end: Instant?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// accepted | declined | tentative | in-process | completed | needs-action | entered-in-error.
	public var participantStatus: String?
	
	/// Role of participant in the appointment.
	public var participantType: [CodeableConcept]?
	
	/// Time from appointment, or requested new start time.
	public var start: Instant?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(appointment: Reference, participantStatus: String) {
		self.init(json: nil)
		self.appointment = appointment
		self.participantStatus = participantStatus
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["appointment"] {
				presentKeys.insert("appointment")
				if let val = exist as? FHIRJSON {
					self.appointment = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "appointment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "appointment"))
			}
			if let exist: AnyObject = js["comment"] {
				presentKeys.insert("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(FHIRJSONError(key: "comment", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["participantStatus"] {
				presentKeys.insert("participantStatus")
				if let val = exist as? String {
					self.participantStatus = val
				}
				else {
					errors.append(FHIRJSONError(key: "participantStatus", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "participantStatus"))
			}
			if let exist: AnyObject = js["participantType"] {
				presentKeys.insert("participantType")
				if let val = exist as? [FHIRJSON] {
					self.participantType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "participantType", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

