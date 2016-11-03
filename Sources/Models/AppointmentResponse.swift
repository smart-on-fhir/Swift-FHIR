//
//  AppointmentResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/AppointmentResponse) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
 */
open class AppointmentResponse: DomainResource {
	override open class var resourceType: String {
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(appointment: Reference, participantStatus: String) {
		self.init()
		self.appointment = appointment
		self.participantStatus = participantStatus
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["actor"] {
			presentKeys.insert("actor")
			if let val = exist as? FHIRJSON {
				do {
					self.actor = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actor", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["appointment"] {
			presentKeys.insert("appointment")
			if let val = exist as? FHIRJSON {
				do {
					self.appointment = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "appointment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "appointment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "appointment"))
		}
		if let exist = json["comment"] {
			presentKeys.insert("comment")
			if let val = exist as? String {
				self.comment = val
			}
			else {
				errors.append(FHIRValidationError(key: "comment", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["end"] {
			presentKeys.insert("end")
			if let val = exist as? String {
				self.end = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "end", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["participantStatus"] {
			presentKeys.insert("participantStatus")
			if let val = exist as? String {
				self.participantStatus = val
			}
			else {
				errors.append(FHIRValidationError(key: "participantStatus", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "participantStatus"))
		}
		if let exist = json["participantType"] {
			presentKeys.insert("participantType")
			if let val = exist as? [FHIRJSON] {
				do {
					self.participantType = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "participantType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "participantType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["start"] {
			presentKeys.insert("start")
			if let val = exist as? String {
				self.start = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "start", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON(errors: &errors)
		}
		if let appointment = self.appointment {
			json["appointment"] = appointment.asJSON(errors: &errors)
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let participantStatus = self.participantStatus {
			json["participantStatus"] = participantStatus.asJSON()
		}
		if let participantType = self.participantType {
			json["participantType"] = participantType.map() { $0.asJSON(errors: &errors) }
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		
		return json
	}
}

