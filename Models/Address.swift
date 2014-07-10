//
//  Address.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-10.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A postal address.
 */
class Address: FHIRElement
{
	override class var resourceName: String {
		get { return "Address" }
	}
	
	/*! home | work | temp | old - purpose of this address */
	var use: String?
	
	/*! Text representation of the address */
	var text: String?
	
	/*! Street name, number, direction & P.O. Box etc */
	var line: [String]?
	
	/*! Name of city, town etc. */
	var city: String?
	
	/*! Sub-unit of country (abreviations ok) */
	var state: String?
	
	/*! Postal code for area */
	var zip: String?
	
	/*! Country (can be ISO 3166 3 letter code) */
	var country: String?
	
	/*! Time period when address was/is in use */
	var period: Period?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["use"] as? String {
				self.use = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["line"] as? [String] {
				self.line = val
			}
			if let val = js["city"] as? String {
				self.city = val
			}
			if let val = js["state"] as? String {
				self.state = val
			}
			if let val = js["zip"] as? String {
				self.zip = val
			}
			if let val = js["country"] as? String {
				self.country = val
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
		}
		super.init(json: json)
	}
}
