//
//  Appointment.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Appointment) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific
date/time. This may result in one or more Encounter(s).
*/
open class Appointment: DomainResource {
	override open class var resourceType: String {
		get { return "Appointment" }
	}
	
	/// The style of appointment or patient that has been booked in the slot (not service type).
	public var appointmentType: CodeableConcept?
	
	/// The service request this appointment is allocated to assess.
	public var basedOn: [Reference]?
	
	/// The coded reason for the appointment being cancelled.
	public var cancelationReason: CodeableConcept?
	
	/// Additional comments.
	public var comment: FHIRString?
	
	/// The date that this appointment was initially created.
	public var created: DateTime?
	
	/// Shown on a subject line in a meeting request, or appointment list.
	public var description_fhir: FHIRString?
	
	/// When appointment is to conclude.
	public var end: Instant?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// Can be less than start/end (e.g. estimate).
	public var minutesDuration: FHIRInteger?
	
	/// Participants involved in appointment.
	public var participant: [AppointmentParticipant]?
	
	/// Detailed information and instructions for the patient.
	public var patientInstruction: FHIRString?
	
	/// Used to make informed decisions if needing to re-prioritize.
	public var priority: FHIRInteger?
	
	/// Coded reason this appointment is scheduled.
	public var reasonCode: [CodeableConcept]?
	
	/// Reason the appointment is to take place (resource).
	public var reasonReference: [Reference]?
	
	/// Potential date/time interval(s) requested to allocate the appointment within.
	public var requestedPeriod: [Period]?
	
	/// A broad categorization of the service that is to be performed during this appointment.
	public var serviceCategory: [CodeableConcept]?
	
	/// The specific service that is to be performed during this appointment.
	public var serviceType: [CodeableConcept]?
	
	/// The slots that this appointment is filling.
	public var slot: [Reference]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment.
	public var specialty: [CodeableConcept]?
	
	/// When appointment is to take place.
	public var start: Instant?
	
	/// The overall status of the Appointment. Each of the participants has their own participation status which
	/// indicates their involvement in the process, however this status indicates the shared status.
	public var status: AppointmentStatus?
	
	/// Additional information to support the appointment.
	public var supportingInformation: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(participant: [AppointmentParticipant], status: AppointmentStatus) {
		self.init()
		self.participant = participant
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		appointmentType = createInstance(type: CodeableConcept.self, for: "appointmentType", in: json, context: &instCtx, owner: self) ?? appointmentType
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		cancelationReason = createInstance(type: CodeableConcept.self, for: "cancelationReason", in: json, context: &instCtx, owner: self) ?? cancelationReason
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		end = createInstance(type: Instant.self, for: "end", in: json, context: &instCtx, owner: self) ?? end
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		minutesDuration = createInstance(type: FHIRInteger.self, for: "minutesDuration", in: json, context: &instCtx, owner: self) ?? minutesDuration
		participant = createInstances(of: AppointmentParticipant.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		if (nil == participant || participant!.isEmpty) && !instCtx.containsKey("participant") {
			instCtx.addError(FHIRValidationError(missing: "participant"))
		}
		patientInstruction = createInstance(type: FHIRString.self, for: "patientInstruction", in: json, context: &instCtx, owner: self) ?? patientInstruction
		priority = createInstance(type: FHIRInteger.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		requestedPeriod = createInstances(of: Period.self, for: "requestedPeriod", in: json, context: &instCtx, owner: self) ?? requestedPeriod
		serviceCategory = createInstances(of: CodeableConcept.self, for: "serviceCategory", in: json, context: &instCtx, owner: self) ?? serviceCategory
		serviceType = createInstances(of: CodeableConcept.self, for: "serviceType", in: json, context: &instCtx, owner: self) ?? serviceType
		slot = createInstances(of: Reference.self, for: "slot", in: json, context: &instCtx, owner: self) ?? slot
		specialty = createInstances(of: CodeableConcept.self, for: "specialty", in: json, context: &instCtx, owner: self) ?? specialty
		start = createInstance(type: Instant.self, for: "start", in: json, context: &instCtx, owner: self) ?? start
		status = createEnum(type: AppointmentStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		supportingInformation = createInstances(of: Reference.self, for: "supportingInformation", in: json, context: &instCtx, owner: self) ?? supportingInformation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.appointmentType?.decorate(json: &json, withKey: "appointmentType", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.cancelationReason?.decorate(json: &json, withKey: "cancelationReason", errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.end?.decorate(json: &json, withKey: "end", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.minutesDuration?.decorate(json: &json, withKey: "minutesDuration", errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		if nil == participant || self.participant!.isEmpty {
			errors.append(FHIRValidationError(missing: "participant"))
		}
		self.patientInstruction?.decorate(json: &json, withKey: "patientInstruction", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "requestedPeriod", using: self.requestedPeriod, errors: &errors)
		arrayDecorate(json: &json, withKey: "serviceCategory", using: self.serviceCategory, errors: &errors)
		arrayDecorate(json: &json, withKey: "serviceType", using: self.serviceType, errors: &errors)
		arrayDecorate(json: &json, withKey: "slot", using: self.slot, errors: &errors)
		arrayDecorate(json: &json, withKey: "specialty", using: self.specialty, errors: &errors)
		self.start?.decorate(json: &json, withKey: "start", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "supportingInformation", using: self.supportingInformation, errors: &errors)
	}
}


/**
Participants involved in appointment.

List of participants involved in the appointment.
*/
open class AppointmentParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "AppointmentParticipant" }
	}
	
	/// Person, Location/HealthcareService or Device.
	public var actor: Reference?
	
	/// Participation period of the actor.
	public var period: Period?
	
	/// Whether this participant is required to be present at the meeting. This covers a use-case where two doctors need
	/// to meet to discuss the results for a specific patient, and the patient is not required to be present.
	public var required: ParticipantRequired?
	
	/// Participation status of the actor.
	public var status: ParticipationStatus?
	
	/// Role of participant in the appointment.
	public var type: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: ParticipationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actor = createInstance(type: Reference.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		required = createEnum(type: ParticipantRequired.self, for: "required", in: json, context: &instCtx) ?? required
		status = createEnum(type: ParticipationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.required?.decorate(json: &json, withKey: "required", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}

