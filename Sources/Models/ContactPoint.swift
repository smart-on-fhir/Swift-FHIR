//
//  ContactPoint.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/ContactPoint) on 2016-11-03.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["rank"] {
			presentKeys.insert("rank")
			if let val = exist as? UInt {
				self.rank = val
			}
			else {
				errors.append(FHIRValidationError(key: "rank", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["system"] {
			presentKeys.insert("system")
			if let val = exist as? String {
				self.system = val
			}
			else {
				errors.append(FHIRValidationError(key: "system", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["use"] {
			presentKeys.insert("use")
			if let val = exist as? String {
				self.use = val
			}
			else {
				errors.append(FHIRValidationError(key: "use", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? String {
				self.value = val
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
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

