//
//  Appointment.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Appointment) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific
 *  date/time. This may result in one or more Encounter(s).
 */
open class Appointment: DomainResource {
	override open class var resourceType: String {
		get { return "Appointment" }
	}
	
	/// The style of appointment or patient that has been booked in the slot (not service type).
	public var appointmentType: CodeableConcept?
	
	/// Additional comments.
	public var comment: String?
	
	/// The date that this appointment was initially created.
	public var created: DateTime?
	
	/// Shown on a subject line in a meeting request, or appointment list.
	public var description_fhir: String?
	
	/// When appointment is to conclude.
	public var end: Instant?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// Can be less than start/end (e.g. estimate).
	public var minutesDuration: UInt?
	
	/// Participants involved in appointment.
	public var participant: [AppointmentParticipant]?
	
	/// Used to make informed decisions if needing to re-prioritize.
	public var priority: UInt?
	
	/// Reason this appointment is scheduled.
	public var reason: CodeableConcept?
	
	/// Potential date/time interval(s) requested to allocate the appointment during.
	public var requestedPeriod: [Period]?
	
	/// A broad categorisation of the service that is to be performed during this appointment.
	public var serviceCategory: CodeableConcept?
	
	/// The specific service that is to be performed during this appointment.
	public var serviceType: [CodeableConcept]?
	
	/// If provided, then no schedule and start/end values MUST match slot.
	public var slot: [Reference]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment.
	public var specialty: [CodeableConcept]?
	
	/// When appointment is to take place.
	public var start: Instant?
	
	/// proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error.
	public var status: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(participant: [AppointmentParticipant], status: String) {
		self.init()
		self.participant = participant
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["appointmentType"] {
			presentKeys.insert("appointmentType")
			if let val = exist as? FHIRJSON {
				do {
					self.appointmentType = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "appointmentType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "appointmentType", wants: FHIRJSON.self, has: type(of: exist)))
			}
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
		if let exist = json["created"] {
			presentKeys.insert("created")
			if let val = exist as? String {
				self.created = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "created", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
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
		if let exist = json["minutesDuration"] {
			presentKeys.insert("minutesDuration")
			if let val = exist as? UInt {
				self.minutesDuration = val
			}
			else {
				errors.append(FHIRValidationError(key: "minutesDuration", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["participant"] {
			presentKeys.insert("participant")
			if let val = exist as? [FHIRJSON] {
				do {
					self.participant = try AppointmentParticipant.instantiate(fromArray: val, owner: self) as? [AppointmentParticipant]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "participant"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "participant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "participant"))
		}
		if let exist = json["priority"] {
			presentKeys.insert("priority")
			if let val = exist as? UInt {
				self.priority = val
			}
			else {
				errors.append(FHIRValidationError(key: "priority", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? FHIRJSON {
				do {
					self.reason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestedPeriod"] {
			presentKeys.insert("requestedPeriod")
			if let val = exist as? [FHIRJSON] {
				do {
					self.requestedPeriod = try Period.instantiate(fromArray: val, owner: self) as? [Period]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestedPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestedPeriod", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["serviceCategory"] {
			presentKeys.insert("serviceCategory")
			if let val = exist as? FHIRJSON {
				do {
					self.serviceCategory = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "serviceCategory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "serviceCategory", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["serviceType"] {
			presentKeys.insert("serviceType")
			if let val = exist as? [FHIRJSON] {
				do {
					self.serviceType = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "serviceType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "serviceType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["slot"] {
			presentKeys.insert("slot")
			if let val = exist as? [FHIRJSON] {
				do {
					self.slot = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "slot"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "slot", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["specialty"] {
			presentKeys.insert("specialty")
			if let val = exist as? [FHIRJSON] {
				do {
					self.specialty = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "specialty"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "specialty", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let appointmentType = self.appointmentType {
			json["appointmentType"] = appointmentType.asJSON(errors: &errors)
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let minutesDuration = self.minutesDuration {
			json["minutesDuration"] = minutesDuration.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = participant.map() { $0.asJSON(errors: &errors) }
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON(errors: &errors)
		}
		if let requestedPeriod = self.requestedPeriod {
			json["requestedPeriod"] = requestedPeriod.map() { $0.asJSON(errors: &errors) }
		}
		if let serviceCategory = self.serviceCategory {
			json["serviceCategory"] = serviceCategory.asJSON(errors: &errors)
		}
		if let serviceType = self.serviceType {
			json["serviceType"] = serviceType.map() { $0.asJSON(errors: &errors) }
		}
		if let slot = self.slot {
			json["slot"] = slot.map() { $0.asJSON(errors: &errors) }
		}
		if let specialty = self.specialty {
			json["specialty"] = specialty.map() { $0.asJSON(errors: &errors) }
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
 *  Participants involved in appointment.
 *
 *  List of participants involved in the appointment.
 */
open class AppointmentParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "AppointmentParticipant" }
	}
	
	/// Person, Location/HealthcareService or Device.
	public var actor: Reference?
	
	/// required | optional | information-only.
	public var required: String?
	
	/// accepted | declined | tentative | needs-action.
	public var status: String?
	
	/// Role of participant in the appointment.
	public var type: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init()
		self.status = status
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
		if let exist = json["required"] {
			presentKeys.insert("required")
			if let val = exist as? String {
				self.required = val
			}
			else {
				errors.append(FHIRValidationError(key: "required", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? [FHIRJSON] {
				do {
					self.type = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON(errors: &errors)
		}
		if let required = self.required {
			json["required"] = required.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}

