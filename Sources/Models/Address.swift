//
//  Address.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Address) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A postal address.
 *
 *  There is a variety of postal address formats defined around the world. This format defines a superset that is the
 *  basis for all addresses around the world.
 */
public class Address: Element {
	override public class var resourceType: String {
		get { return "Address" }
	}
	
	/// Name of city, town etc..
	public var city: String?
	
	/// Country (can be ISO 3166 3 letter code).
	public var country: String?
	
	/// District name (aka county).
	public var district: String?
	
	/// Street name, number, direction & P.O. Box etc..
	public var line: [String]?
	
	/// Time period when address was/is in use.
	public var period: Period?
	
	/// Postal code for area.
	public var postalCode: String?
	
	/// Sub-unit of country (abbreviations ok).
	public var state: String?
	
	/// Text representation of the address.
	public var text: String?
	
	/// postal | physical | both.
	public var type: String?
	
	/// home | work | temp | old - purpose of this address.
	public var use: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["city"] {
				presentKeys.insert("city")
				if let val = exist as? String {
					self.city = val
				}
				else {
					errors.append(FHIRJSONError(key: "city", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["country"] {
				presentKeys.insert("country")
				if let val = exist as? String {
					self.country = val
				}
				else {
					errors.append(FHIRJSONError(key: "country", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["district"] {
				presentKeys.insert("district")
				if let val = exist as? String {
					self.district = val
				}
				else {
					errors.append(FHIRJSONError(key: "district", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["line"] {
				presentKeys.insert("line")
				if let val = exist as? [String] {
					self.line = val
				}
				else {
					errors.append(FHIRJSONError(key: "line", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["postalCode"] {
				presentKeys.insert("postalCode")
				if let val = exist as? String {
					self.postalCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "postalCode", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["state"] {
				presentKeys.insert("state")
				if let val = exist as? String {
					self.state = val
				}
				else {
					errors.append(FHIRJSONError(key: "state", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
			var arr = [Any]()
			for val in line {
				arr.append(val.asJSON())
			}
			json["line"] = arr
		}
		if let period = self.period {
			json["period"] = period.asJSON()
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
			json["type"] = type.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		
		return json
	}
}

