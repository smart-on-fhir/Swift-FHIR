//
//  AppointmentResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/AppointmentResponse) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(appointment: Reference?, participantStatus: String?) {
		self.init(json: nil)
		if nil != appointment {
			self.appointment = appointment
		}
		if nil != participantStatus {
			self.participantStatus = participantStatus
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["actor"] {
				presentKeys.addObject("actor")
				if let val = exist as? FHIRJSON {
					self.actor = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"actor\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["appointment"] {
				presentKeys.addObject("appointment")
				if let val = exist as? FHIRJSON {
					self.appointment = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"appointment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"appointment\" but it is missing"))
			}
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
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["participantStatus"] {
				presentKeys.addObject("participantStatus")
				if let val = exist as? String {
					self.participantStatus = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"participantStatus\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"participantStatus\" but it is missing"))
			}
			if let exist: AnyObject = js["participantType"] {
				presentKeys.addObject("participantType")
				if let val = exist as? [FHIRJSON] {
					self.participantType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"participantType\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
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

