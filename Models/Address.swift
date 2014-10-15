//
//  Address.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-Address.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A postal address.
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
	
	/// Sub-unit of country (abreviations ok)
	public var state: String?
	
	/// Text representation of the address
	public var text: String?
	
	/// home | work | temp | old - purpose of this address
	public var use: String?
	
	/// Postal code for area
	public var zip: String?
	

	public required init(json: NSDictionary?) {
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
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
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
			if let val = js["zip"] as? String {
				self.zip = val
			}
		}
	}
}

