//
//  Address.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/Address) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A postal address.
 *
 *  There is a variety of postal address formats defined around the world. This format defines a superset that is the
 *  basis for all addresses around the world.
 */
public class Address: FHIRElement
{
	override public class var resourceName: String {
		get { return "Address" }
	}
	
	/// Name of city, town etc.
	public var city: String?
	
	/// Country (can be ISO 3166 3 letter code)
	public var country: String?
	
	/// Street name, number, direction & P.O. Box etc
	public var line: [String]?
	
	/// Time period when address was/is in use
	public var period: Period?
	
	/// Postal code for area
	public var postalCode: String?
	
	/// Sub-unit of country (abreviations ok)
	public var state: String?
	
	/// Text representation of the address
	public var text: String?
	
	/// home | work | temp | old - purpose of this address
	public var use: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["city"] as? String {
				self.city = val
			}
			if let val = js["country"] as? String {
				self.country = val
			}
			if let val = js["line"] as? [String] {
				self.line = val
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["postalCode"] as? String {
				self.postalCode = val
			}
			if let val = js["state"] as? String {
				self.state = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["use"] as? String {
				self.use = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let city = self.city {
			json["city"] = city.asJSON()
		}
		if let country = self.country {
			json["country"] = country.asJSON()
		}
		if let line = self.line {
			var arr = [AnyObject]()
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
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		
		return json
	}
}

