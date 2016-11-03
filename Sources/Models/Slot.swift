//
//  Slot.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Slot) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A slot of time on a schedule that may be available for booking appointments.
 */
open class Slot: DomainResource {
	override open class var resourceType: String {
		get { return "Slot" }
	}
	
	/// The style of appointment or patient that has been booked in the slot (not service type).
	public var appointmentType: CodeableConcept?
	
	/// Comments on the slot to describe any extended information. Such as custom constraints on the slot.
	public var comment: String?
	
	/// Date/Time that the slot is to conclude.
	public var end: Instant?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// This slot has already been overbooked, appointments are unlikely to be accepted for this time.
	public var overbooked: Bool?
	
	/// The schedule resource that this slot defines an interval of status information.
	public var schedule: Reference?
	
	/// A broad categorisation of the service that is to be performed during this appointment.
	public var serviceCategory: CodeableConcept?
	
	/// The type of appointments that can be booked into this slot (ideally this would be an identifiable service - which is at a location, rather than the location itself). If provided then this overrides the value provided on the availability resource.
	public var serviceType: [CodeableConcept]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment.
	public var specialty: [CodeableConcept]?
	
	/// Date/Time that the slot is to begin.
	public var start: Instant?
	
	/// busy | free | busy-unavailable | busy-tentative | entered-in-error.
	public var status: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(end: Instant, schedule: Reference, start: Instant, status: String) {
		self.init()
		self.end = end
		self.schedule = schedule
		self.start = start
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
		if let exist = json["end"] {
			presentKeys.insert("end")
			if let val = exist as? String {
				self.end = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "end", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "end"))
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
		if let exist = json["overbooked"] {
			presentKeys.insert("overbooked")
			if let val = exist as? Bool {
				self.overbooked = val
			}
			else {
				errors.append(FHIRValidationError(key: "overbooked", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["schedule"] {
			presentKeys.insert("schedule")
			if let val = exist as? FHIRJSON {
				do {
					self.schedule = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "schedule"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "schedule", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "schedule"))
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
		else {
			errors.append(FHIRValidationError(missing: "start"))
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
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let overbooked = self.overbooked {
			json["overbooked"] = overbooked.asJSON()
		}
		if let schedule = self.schedule {
			json["schedule"] = schedule.asJSON(errors: &errors)
		}
		if let serviceCategory = self.serviceCategory {
			json["serviceCategory"] = serviceCategory.asJSON(errors: &errors)
		}
		if let serviceType = self.serviceType {
			json["serviceType"] = serviceType.map() { $0.asJSON(errors: &errors) }
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

