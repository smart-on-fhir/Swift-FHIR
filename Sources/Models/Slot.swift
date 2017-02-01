//
//  Slot.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Slot) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A slot of time on a schedule that may be available for booking appointments.
*/
open class Slot: DomainResource {
	override open class var resourceType: String {
		get { return "Slot" }
	}
	
	/// The style of appointment or patient that has been booked in the slot (not service type).
	public var appointmentType: CodeableConcept?
	
	/// Comments on the slot to describe any extended information. Such as custom constraints on the slot.
	public var comment: FHIRString?
	
	/// Date/Time that the slot is to conclude.
	public var end: Instant?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// This slot has already been overbooked, appointments are unlikely to be accepted for this time.
	public var overbooked: FHIRBool?
	
	/// The schedule resource that this slot defines an interval of status information.
	public var schedule: Reference?
	
	/// A broad categorisation of the service that is to be performed during this appointment.
	public var serviceCategory: CodeableConcept?
	
	/// The type of appointments that can be booked into this slot (ideally this would be an identifiable service -
	/// which is at a location, rather than the location itself). If provided then this overrides the value provided on
	/// the availability resource.
	public var serviceType: [CodeableConcept]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment.
	public var specialty: [CodeableConcept]?
	
	/// Date/Time that the slot is to begin.
	public var start: Instant?
	
	/// None
	public var status: SlotStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(end: Instant, schedule: Reference, start: Instant, status: SlotStatus) {
		self.init()
		self.end = end
		self.schedule = schedule
		self.start = start
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		appointmentType = try createInstance(type: CodeableConcept.self, for: "appointmentType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? appointmentType
		comment = try createInstance(type: FHIRString.self, for: "comment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comment
		end = try createInstance(type: Instant.self, for: "end", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? end
		if nil == end && !presentKeys.contains("end") {
			errors.append(FHIRValidationError(missing: "end"))
		}
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		overbooked = try createInstance(type: FHIRBool.self, for: "overbooked", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? overbooked
		schedule = try createInstance(type: Reference.self, for: "schedule", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? schedule
		if nil == schedule && !presentKeys.contains("schedule") {
			errors.append(FHIRValidationError(missing: "schedule"))
		}
		serviceCategory = try createInstance(type: CodeableConcept.self, for: "serviceCategory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceCategory
		serviceType = try createInstances(of: CodeableConcept.self, for: "serviceType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceType
		specialty = try createInstances(of: CodeableConcept.self, for: "specialty", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specialty
		start = try createInstance(type: Instant.self, for: "start", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? start
		if nil == start && !presentKeys.contains("start") {
			errors.append(FHIRValidationError(missing: "start"))
		}
		status = createEnum(type: SlotStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.appointmentType?.decorate(json: &json, withKey: "appointmentType", errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.end?.decorate(json: &json, withKey: "end", errors: &errors)
		if nil == self.end {
			errors.append(FHIRValidationError(missing: "end"))
		}
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.overbooked?.decorate(json: &json, withKey: "overbooked", errors: &errors)
		self.schedule?.decorate(json: &json, withKey: "schedule", errors: &errors)
		if nil == self.schedule {
			errors.append(FHIRValidationError(missing: "schedule"))
		}
		self.serviceCategory?.decorate(json: &json, withKey: "serviceCategory", errors: &errors)
		arrayDecorate(json: &json, withKey: "serviceType", using: self.serviceType, errors: &errors)
		arrayDecorate(json: &json, withKey: "specialty", using: self.specialty, errors: &errors)
		self.start?.decorate(json: &json, withKey: "start", errors: &errors)
		if nil == self.start {
			errors.append(FHIRValidationError(missing: "start"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}

