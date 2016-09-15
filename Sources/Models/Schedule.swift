//
//  Schedule.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Schedule) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A container for slot(s) of time that may be available for booking appointments.
 */
public class Schedule: DomainResource {
	override public class var resourceType: String {
		get { return "Schedule" }
	}
	
	/// The resource this Schedule resource is providing availability information for. These are expected to usually be one of HealthcareService, Location, Practitioner, Device, Patient or RelatedPerson.
	public var actor: Reference?
	
	/// Comments on the availability to describe any extended information. Such as custom constraints on the slot(s) that may be associated.
	public var comment: String?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// The period of time that the slots that are attached to this Schedule resource cover (even if none exist). These  cover the amount of time that an organization's planning horizon; the interval for which they are currently accepting appointments. This does not define a "template" for planning outside these dates.
	public var planningHorizon: Period?
	
	/// The schedule type can be used for the categorization of healthcare services or other appointment types.
	public var type: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init(json: nil)
		self.actor = actor
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
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
			else {
				errors.append(FHIRJSONError(key: "actor"))
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
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["planningHorizon"] {
				presentKeys.insert("planningHorizon")
				if let val = exist as? FHIRJSON {
					self.planningHorizon = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "planningHorizon", wants: FHIRJSON.self, has: type(of: exist)))
				}
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
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON()
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let planningHorizon = self.planningHorizon {
			json["planningHorizon"] = planningHorizon.asJSON()
		}
		if let type = self.type {
			json["type"] = CodeableConcept.asJSONArray(type)
		}
		
		return json
	}
}

