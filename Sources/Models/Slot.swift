//
//  Slot.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Slot) on 2017-03-22.
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
	
	/// The style of appointment or patient that may be booked in the slot (not service type).
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		appointmentType = createInstance(type: CodeableConcept.self, for: "appointmentType", in: json, context: &instCtx, owner: self) ?? appointmentType
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		end = createInstance(type: Instant.self, for: "end", in: json, context: &instCtx, owner: self) ?? end
		if nil == end && !instCtx.containsKey("end") {
			instCtx.addError(FHIRValidationError(missing: "end"))
		}
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		overbooked = createInstance(type: FHIRBool.self, for: "overbooked", in: json, context: &instCtx, owner: self) ?? overbooked
		schedule = createInstance(type: Reference.self, for: "schedule", in: json, context: &instCtx, owner: self) ?? schedule
		if nil == schedule && !instCtx.containsKey("schedule") {
			instCtx.addError(FHIRValidationError(missing: "schedule"))
		}
		serviceCategory = createInstance(type: CodeableConcept.self, for: "serviceCategory", in: json, context: &instCtx, owner: self) ?? serviceCategory
		serviceType = createInstances(of: CodeableConcept.self, for: "serviceType", in: json, context: &instCtx, owner: self) ?? serviceType
		specialty = createInstances(of: CodeableConcept.self, for: "specialty", in: json, context: &instCtx, owner: self) ?? specialty
		start = createInstance(type: Instant.self, for: "start", in: json, context: &instCtx, owner: self) ?? start
		if nil == start && !instCtx.containsKey("start") {
			instCtx.addError(FHIRValidationError(missing: "start"))
		}
		status = createEnum(type: SlotStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
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

