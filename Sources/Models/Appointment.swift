//
//  Appointment.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Appointment) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific
 *  date/time. This may result in one or more Encounter(s).
 */
public class Appointment: DomainResource {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["appointmentType"] {
				presentKeys.insert("appointmentType")
				if let val = exist as? FHIRJSON {
					self.appointmentType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "appointmentType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["minutesDuration"] {
				presentKeys.insert("minutesDuration")
				if let val = exist as? UInt {
					self.minutesDuration = val
				}
				else {
					errors.append(FHIRJSONError(key: "minutesDuration", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["participant"] {
				presentKeys.insert("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = AppointmentParticipant.from(val, owner: self) as? [AppointmentParticipant]
				}
				else {
					errors.append(FHIRJSONError(key: "participant", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "participant"))
			}
			if let exist: AnyObject = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? UInt {
					self.priority = val
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["serviceCategory"] {
				presentKeys.insert("serviceCategory")
				if let val = exist as? FHIRJSON {
					self.serviceCategory = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "serviceCategory", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["serviceType"] {
				presentKeys.insert("serviceType")
				if let val = exist as? [FHIRJSON] {
					self.serviceType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "serviceType", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["slot"] {
				presentKeys.insert("slot")
				if let val = exist as? [FHIRJSON] {
					self.slot = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "slot", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["specialty"] {
				presentKeys.insert("specialty")
				if let val = exist as? [FHIRJSON] {
					self.specialty = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "specialty", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let minutesDuration = self.minutesDuration {
			json["minutesDuration"] = minutesDuration.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = AppointmentParticipant.asJSONArray(participant)
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let serviceCategory = self.serviceCategory {
			json["serviceCategory"] = serviceCategory.asJSON()
		}
		if let serviceType = self.serviceType {
			json["serviceType"] = CodeableConcept.asJSONArray(serviceType)
		}
		if let slot = self.slot {
			json["slot"] = Reference.asJSONArray(slot)
		}
		if let specialty = self.specialty {
			json["specialty"] = CodeableConcept.asJSONArray(specialty)
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
public class AppointmentParticipant: BackboneElement {
	override public class var resourceName: String {
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
			if let exist: AnyObject = js["required"] {
				presentKeys.insert("required")
				if let val = exist as? String {
					self.required = val
				}
				else {
					errors.append(FHIRJSONError(key: "required", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		if let required = self.required {
			json["required"] = required.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = CodeableConcept.asJSONArray(type)
		}
		
		return json
	}
}

