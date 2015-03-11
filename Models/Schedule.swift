//
//  Schedule.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/Schedule) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A container for slot(s) of time that may be available for booking appointments.
 */
public class Schedule: DomainResource
{
	override public class var resourceName: String {
		get { return "Schedule" }
	}
	
	/// The resource this Schedule resource is providing availability information for. These are expected to usually be one of HealthcareService, Location, Practitioner, Device, Patient or RelatedPerson
	public var actor: Reference?
	
	/// Comments on the availability to describe any extended information. Such as custom constraints on the slot(s) that may be associated
	public var comment: String?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// When this Schedule was created, or last revised
	public var lastModified: DateTime?
	
	/// The period of time that the slots that are attached to this Schedule resource cover (even if none exist). These  cover the amount of time that an organization's planning horizon; the interval for which they are currently accepting appointments. This does not define a "template" for planning outside these dates
	public var planningHorizon: Period?
	
	/// The schedule type can be used for the categorization of healthcare services or other appointment types
	public var type: [CodeableConcept]?
	
	public convenience init(actor: Reference?) {
		self.init(json: nil)
		if nil != actor {
			self.actor = actor
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actor"] as? JSONDictionary {
				self.actor = Reference(json: val, owner: self)
			}
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["lastModified"] as? String {
				self.lastModified = DateTime(string: val)
			}
			if let val = js["planningHorizon"] as? JSONDictionary {
				self.planningHorizon = Period(json: val, owner: self)
			}
			if let val = js["type"] as? [JSONDictionary] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
		if let lastModified = self.lastModified {
			json["lastModified"] = lastModified.asJSON()
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

