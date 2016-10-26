//
//  Appointment.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Appointment) on 2016-10-26.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(participant: [AppointmentParticipant], status: String) {
		self.init(json: nil)
		self.participant = participant
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["appointmentType"] {
				presentKeys.insert("appointmentType")
				if let val = exist as? FHIRJSON {
					self.appointmentType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "appointmentType", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["comment"] {
				presentKeys.insert("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(FHIRJSONError(key: "comment", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? String {
					self.end = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["minutesDuration"] {
				presentKeys.insert("minutesDuration")
				if let val = exist as? UInt {
					self.minutesDuration = val
				}
				else {
					errors.append(FHIRJSONError(key: "minutesDuration", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["participant"] {
				presentKeys.insert("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = AppointmentParticipant.instantiate(fromArray: val, owner: self) as? [AppointmentParticipant]
				}
				else {
					errors.append(FHIRJSONError(key: "participant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "participant"))
			}
			if let exist = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? UInt {
					self.priority = val
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestedPeriod"] {
				presentKeys.insert("requestedPeriod")
				if let val = exist as? [FHIRJSON] {
					self.requestedPeriod = Period.instantiate(fromArray: val, owner: self) as? [Period]
				}
				else {
					errors.append(FHIRJSONError(key: "requestedPeriod", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["serviceCategory"] {
				presentKeys.insert("serviceCategory")
				if let val = exist as? FHIRJSON {
					self.serviceCategory = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "serviceCategory", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["serviceType"] {
				presentKeys.insert("serviceType")
				if let val = exist as? [FHIRJSON] {
					self.serviceType = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "serviceType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["slot"] {
				presentKeys.insert("slot")
				if let val = exist as? [FHIRJSON] {
					self.slot = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "slot", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["specialty"] {
				presentKeys.insert("specialty")
				if let val = exist as? [FHIRJSON] {
					self.specialty = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "specialty", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? String {
					self.start = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let appointmentType = self.appointmentType {
			json["appointmentType"] = appointmentType.asJSON()
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
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let minutesDuration = self.minutesDuration {
			json["minutesDuration"] = minutesDuration.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = participant.map() { $0.asJSON() }
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let requestedPeriod = self.requestedPeriod {
			json["requestedPeriod"] = requestedPeriod.map() { $0.asJSON() }
		}
		if let serviceCategory = self.serviceCategory {
			json["serviceCategory"] = serviceCategory.asJSON()
		}
		if let serviceType = self.serviceType {
			json["serviceType"] = serviceType.map() { $0.asJSON() }
		}
		if let slot = self.slot {
			json["slot"] = slot.map() { $0.asJSON() }
		}
		if let specialty = self.specialty {
			json["specialty"] = specialty.map() { $0.asJSON() }
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? FHIRJSON {
					self.actor = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["required"] {
				presentKeys.insert("required")
				if let val = exist as? String {
					self.required = val
				}
				else {
					errors.append(FHIRJSONError(key: "required", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
			json["type"] = type.map() { $0.asJSON() }
		}
		
		return json
	}
}

