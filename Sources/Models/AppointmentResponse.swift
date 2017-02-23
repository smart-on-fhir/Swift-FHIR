//
//  AppointmentResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/AppointmentResponse) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
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
	public var comment: FHIRString?
	
	/// Time from appointment, or requested new end time.
	public var end: Instant?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// Participation status of the participant. When the status is declined or tentative if the start/end times are
	/// different to the appointment, then these times should be interpreted as a requested time change. When the status
	/// is accepted, the times can either be the time of the appointment (as a confirmation of the time) or can be
	/// empty.
	public var participantStatus: ParticipationStatus?
	
	/// Role of participant in the appointment.
	public var participantType: [CodeableConcept]?
	
	/// Time from appointment, or requested new start time.
	public var start: Instant?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(appointment: Reference, participantStatus: ParticipationStatus) {
		self.init()
		self.appointment = appointment
		self.participantStatus = participantStatus
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actor = try createInstance(type: Reference.self, for: "actor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actor
		appointment = try createInstance(type: Reference.self, for: "appointment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? appointment
		if nil == appointment && !presentKeys.contains("appointment") {
			errors.append(FHIRValidationError(missing: "appointment"))
		}
		comment = try createInstance(type: FHIRString.self, for: "comment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comment
		end = try createInstance(type: Instant.self, for: "end", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? end
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		participantStatus = createEnum(type: ParticipationStatus.self, for: "participantStatus", in: json, presentKeys: &presentKeys, errors: &errors) ?? participantStatus
		if nil == participantStatus && !presentKeys.contains("participantStatus") {
			errors.append(FHIRValidationError(missing: "participantStatus"))
		}
		participantType = try createInstances(of: CodeableConcept.self, for: "participantType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? participantType
		start = try createInstance(type: Instant.self, for: "start", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? start
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		self.appointment?.decorate(json: &json, withKey: "appointment", errors: &errors)
		if nil == self.appointment {
			errors.append(FHIRValidationError(missing: "appointment"))
		}
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.end?.decorate(json: &json, withKey: "end", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.participantStatus?.decorate(json: &json, withKey: "participantStatus", errors: &errors)
		if nil == self.participantStatus {
			errors.append(FHIRValidationError(missing: "participantStatus"))
		}
		arrayDecorate(json: &json, withKey: "participantType", using: self.participantType, errors: &errors)
		self.start?.decorate(json: &json, withKey: "start", errors: &errors)
	}
}

