//
//  ContactPoint.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/ContactPoint) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Details of a Technology mediated contact point (phone, fax, email, etc).
 *
 *  Details for All kinds of technology mediated contact points for a person or organization, including telephone,
 *  email, etc.
 */
public class ContactPoint: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContactPoint" }
	}
	
	/// Time period when the contact point was/is in use
	public var period: Period?
	
	/// phone | fax | email | url
	public var system: String?
	
	/// home | work | temp | old | mobile - purpose of this contact point
	public var use: String?
	
	/// The actual contact point details
	public var value: String?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["system"] as? String {
				self.system = val
			}
			if let val = js["use"] as? String {
				self.use = val
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}

