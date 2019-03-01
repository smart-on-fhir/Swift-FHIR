//
//  Schedule.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Schedule) on 2019-03-01.
//  2019, SMART Health IT.
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
	
	/// Resource(s) that availability information is being provided for.
	public var actor: [Reference]?
	
	/// Comments on availability.
	public var comment: FHIRString?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// Period of time covered by schedule.
	public var planningHorizon: Period?
	
	/// High-level category.
	public var serviceCategory: [CodeableConcept]?
	
	/// Specific service.
	public var serviceType: [CodeableConcept]?
	
	/// Type of specialty needed.
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
		serviceCategory = createInstances(of: CodeableConcept.self, for: "serviceCategory", in: json, context: &instCtx, owner: self) ?? serviceCategory
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
		arrayDecorate(json: &json, withKey: "serviceCategory", using: self.serviceCategory, errors: &errors)
		arrayDecorate(json: &json, withKey: "serviceType", using: self.serviceType, errors: &errors)
		arrayDecorate(json: &json, withKey: "specialty", using: self.specialty, errors: &errors)
	}
}

