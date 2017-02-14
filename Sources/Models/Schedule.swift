//
//  Schedule.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Schedule) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
A container for slots of time that may be available for booking appointments.
*/
open class Schedule: DomainResource {
	override open class var resourceType: String {
		get { return "Schedule" }
	}
	
	/// Whether this schedule is in active use.
	public var active: FHIRBool?
	
	/// The resource this Schedule resource is providing availability information for. These are expected to usually be
	/// one of HealthcareService, Location, Practitioner, Device, Patient or RelatedPerson.
	public var actor: [Reference]?
	
	/// Comments on the availability to describe any extended information. Such as custom constraints on the slots that
	/// may be associated.
	public var comment: FHIRString?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// The period of time that the slots that are attached to this Schedule resource cover (even if none exist). These
	/// cover the amount of time that an organization's planning horizon; the interval for which they are currently
	/// accepting appointments. This does not define a "template" for planning outside these dates.
	public var planningHorizon: Period?
	
	/// A broad categorisation of the service that is to be performed during this appointment.
	public var serviceCategory: CodeableConcept?
	
	/// The specific service that is to be performed during this appointment.
	public var serviceType: [CodeableConcept]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment.
	public var specialty: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: [Reference]) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		active = try createInstance(type: FHIRBool.self, for: "active", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? active
		actor = try createInstances(of: Reference.self, for: "actor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actor
		if (nil == actor || actor!.isEmpty) && !presentKeys.contains("actor") {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		comment = try createInstance(type: FHIRString.self, for: "comment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comment
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		planningHorizon = try createInstance(type: Period.self, for: "planningHorizon", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? planningHorizon
		serviceCategory = try createInstance(type: CodeableConcept.self, for: "serviceCategory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceCategory
		serviceType = try createInstances(of: CodeableConcept.self, for: "serviceType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceType
		specialty = try createInstances(of: CodeableConcept.self, for: "specialty", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specialty
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		arrayDecorate(json: &json, withKey: "actor", using: self.actor, errors: &errors)
		if nil == actor || self.actor!.isEmpty {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.planningHorizon?.decorate(json: &json, withKey: "planningHorizon", errors: &errors)
		self.serviceCategory?.decorate(json: &json, withKey: "serviceCategory", errors: &errors)
		arrayDecorate(json: &json, withKey: "serviceType", using: self.serviceType, errors: &errors)
		arrayDecorate(json: &json, withKey: "specialty", using: self.specialty, errors: &errors)
	}
}

