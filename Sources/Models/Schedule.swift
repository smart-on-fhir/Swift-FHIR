//
//  Schedule.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Schedule) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A container for slot(s) of time that may be available for booking appointments.
*/
open class Schedule: DomainResource {
	override open class var resourceType: String {
		get { return "Schedule" }
	}
	
	/// Whether this schedule is in active use.
	public var active: Bool?
	
	/// The resource this Schedule resource is providing availability information for. These are expected to usually be
	/// one of HealthcareService, Location, Practitioner, Device, Patient or RelatedPerson.
	public var actor: Reference?
	
	/// Comments on the availability to describe any extended information. Such as custom constraints on the slot(s)
	/// that may be associated.
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
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["active"] {
			presentKeys.insert("active")
			if let val = exist as? Bool {
				self.active = val
			}
			else {
				errors.append(FHIRValidationError(key: "active", wants: Bool.self, has: type(of: exist)))
			}
		}
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
		else {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		if let exist = json["comment"] {
			presentKeys.insert("comment")
			if let val = exist as? String {
				self.comment = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "comment", wants: String.self, has: type(of: exist)))
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
		if let exist = json["planningHorizon"] {
			presentKeys.insert("planningHorizon")
			if let val = exist as? FHIRJSON {
				do {
					self.planningHorizon = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "planningHorizon"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "planningHorizon", wants: FHIRJSON.self, has: type(of: exist)))
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let actor = self.actor {
			json["actor"] = actor.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let planningHorizon = self.planningHorizon {
			json["planningHorizon"] = planningHorizon.asJSON(errors: &errors)
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
		
		return json
	}
}

