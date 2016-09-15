//
//  ContactPoint.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ContactPoint) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Details of a Technology mediated contact point (phone, fax, email, etc.).
 *
 *  Details for all kinds of technology mediated contact points for a person or organization, including telephone,
 *  email, etc.
 */
open class ContactPoint: Element {
	override open class var resourceType: String {
		get { return "ContactPoint" }
	}
	
	/// Time period when the contact point was/is in use.
	public var period: Period?
	
	/// Specify preferred order of use (1 = highest).
	public var rank: UInt?
	
	/// phone | fax | email | pager | other.
	public var system: String?
	
	/// home | work | temp | old | mobile - purpose of this contact point.
	public var use: String?
	
	/// The actual contact point details.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["rank"] {
				presentKeys.insert("rank")
				if let val = exist as? UInt {
					self.rank = val
				}
				else {
					errors.append(FHIRJSONError(key: "rank", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? String {
					self.system = val
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? String {
					self.use = val
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let rank = self.rank {
			json["rank"] = rank.asJSON()
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

