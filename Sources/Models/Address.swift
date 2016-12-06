//
//  Address.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Address) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
An address expressed using postal conventions (as opposed to GPS or other location definition formats).

An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This data type
may be used to convey addresses for use in delivering mail as well as for visiting locations and which might not be
valid for mail delivery.  There are a variety of postal address formats defined around the world.
*/
open class Address: Element {
	override open class var resourceType: String {
		get { return "Address" }
	}
	
	/// Name of city, town etc..
	public var city: FHIRString?
	
	/// Country (e.g. can be ISO 3166 2 or 3 letter code).
	public var country: FHIRString?
	
	/// District name (aka county).
	public var district: FHIRString?
	
	/// Street name, number, direction & P.O. Box etc..
	public var line: [FHIRString]?
	
	/// Time period when address was/is in use.
	public var period: Period?
	
	/// Postal code for area.
	public var postalCode: FHIRString?
	
	/// Sub-unit of country (abbreviations ok).
	public var state: FHIRString?
	
	/// Text representation of the address.
	public var text: FHIRString?
	
	/// Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of
	/// addresses). Most addresses are both.
	public var type: AddressType?
	
	/// The purpose of this address.
	public var use: AddressUse?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["city"] {
			presentKeys.insert("city")
			if let val = exist as? String {
				self.city = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "city", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["country"] {
			presentKeys.insert("country")
			if let val = exist as? String {
				self.country = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "country", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["district"] {
			presentKeys.insert("district")
			if let val = exist as? String {
				self.district = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "district", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["line"] {
			presentKeys.insert("line")
			if let val = exist as? [String] {
				self.line = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "line", wants: Array<String>.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["postalCode"] {
			presentKeys.insert("postalCode")
			if let val = exist as? String {
				self.postalCode = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "postalCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["state"] {
			presentKeys.insert("state")
			if let val = exist as? String {
				self.state = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "state", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? String {
				self.text = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = AddressType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["use"] {
			presentKeys.insert("use")
			if let val = exist as? String {
				if let enumval = AddressUse(rawValue: val) {
					self.use = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "use", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "use", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let city = self.city {
			json["city"] = city.asJSON()
		}
		if let country = self.country {
			json["country"] = country.asJSON()
		}
		if let district = self.district {
			json["district"] = district.asJSON()
		}
		if let line = self.line {
			json["line"] = line.map() { $0.asJSON() }
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let postalCode = self.postalCode {
			json["postalCode"] = postalCode.asJSON()
		}
		if let state = self.state {
			json["state"] = state.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		if let use = self.use {
			json["use"] = use.rawValue
		}
		
		return json
	}
}

