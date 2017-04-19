//
//  Appointment.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Appointment) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// The ReferralRequest provided as information to allocate to the Encounter.
	public var incomingReferral: [Reference]?
	
	/// Reason the appointment is to takes place (resource).
	public var indication: [Reference]?
	
	/// Can be less than start/end (e.g. estimate).
	public var minutesDuration: FHIRInteger?
	
	/// Participants involved in appointment.
	public var participant: [AppointmentParticipant]?
	
	/// Used to make informed decisions if needing to re-prioritize.
	public var priority: FHIRInteger?
	
	/// Reason this appointment is scheduled.
	public var reason: [CodeableConcept]?
	
	/// Potential date/time interval(s) requested to allocate the appointment within.
	public var requestedPeriod: [Period]?
	
	/// A broad categorisation of the service that is to be performed during this appointment.
	public var serviceCategory: CodeableConcept?
	
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
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		end = createInstance(type: Instant.self, for: "end", in: json, context: &instCtx, owner: self) ?? end
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		incomingReferral = createInstances(of: Reference.self, for: "incomingReferral", in: json, context: &instCtx, owner: self) ?? incomingReferral
		indication = createInstances(of: Reference.self, for: "indication", in: json, context: &instCtx, owner: self) ?? indication
		minutesDuration = createInstance(type: FHIRInteger.self, for: "minutesDuration", in: json, context: &instCtx, owner: self) ?? minutesDuration
		participant = createInstances(of: AppointmentParticipant.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		if (nil == participant || participant!.isEmpty) && !instCtx.containsKey("participant") {
			instCtx.addError(FHIRValidationError(missing: "participant"))
		}
		priority = createInstance(type: FHIRInteger.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		reason = createInstances(of: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		requestedPeriod = createInstances(of: Period.self, for: "requestedPeriod", in: json, context: &instCtx, owner: self) ?? requestedPeriod
		serviceCategory = createInstance(type: CodeableConcept.self, for: "serviceCategory", in: json, context: &instCtx, owner: self) ?? serviceCategory
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
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.end?.decorate(json: &json, withKey: "end", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "incomingReferral", using: self.incomingReferral, errors: &errors)
		arrayDecorate(json: &json, withKey: "indication", using: self.indication, errors: &errors)
		self.minutesDuration?.decorate(json: &json, withKey: "minutesDuration", errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		if nil == participant || self.participant!.isEmpty {
			errors.append(FHIRValidationError(missing: "participant"))
		}
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		arrayDecorate(json: &json, withKey: "requestedPeriod", using: self.requestedPeriod, errors: &errors)
		self.serviceCategory?.decorate(json: &json, withKey: "serviceCategory", errors: &errors)
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
	
	/// Is this participant required to be present at the meeting. This covers a use-case where 2 doctors need to meet
	/// to discuss the results for a specific patient, and the patient is not required to be present.
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
		self.required?.decorate(json: &json, withKey: "required", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}

