//
//  Schedule.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Schedule) on 2017-03-22.
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
	/// one of HealthcareService, Location, Practitioner, PractitionerRole, Device, Patient or RelatedPerson.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		actor = createInstances(of: Reference.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		if (nil == actor || actor!.isEmpty) && !instCtx.containsKey("actor") {
			instCtx.addError(FHIRValidationError(missing: "actor"))
		}
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		planningHorizon = createInstance(type: Period.self, for: "planningHorizon", in: json, context: &instCtx, owner: self) ?? planningHorizon
		serviceCategory = createInstance(type: CodeableConcept.self, for: "serviceCategory", in: json, context: &instCtx, owner: self) ?? serviceCategory
		serviceType = createInstances(of: CodeableConcept.self, for: "serviceType", in: json, context: &instCtx, owner: self) ?? serviceType
		specialty = createInstances(of: CodeableConcept.self, for: "specialty", in: json, context: &instCtx, owner: self) ?? specialty
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

