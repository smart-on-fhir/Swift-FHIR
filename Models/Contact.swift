//
//  Contact.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Technology mediated contact details (phone, fax, email, etc).
 */
class Contact: FHIRElement
{
	override class var resourceName: String {
		get { return "Contact" }
	}
	
	/*! phone | fax | email | url */
	var system: String?
	
	/*! The actual contact details */
	var value: String?
	
	/*! home | work | temp | old | mobile - purpose of this address */
	var use: String?
	
	/*! Time period when the contact was/is in use */
	var period: Period?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["system"] as? String {
				self.system = val
			}
			if let val = js["value"] as? String {
				self.value = val
			}
			if let val = js["use"] as? String {
				self.use = val
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
		}
		super.init(json: json)
	}
}
