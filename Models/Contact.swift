//
//  Contact.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Technology mediated contact details (phone, fax, email, etc).
 */
public class Contact: FHIRElement
{
	override public class var resourceName: String {
		get { return "Contact" }
	}
	
	/** phone | fax | email | url */
	public var system: String?
	
	/** The actual contact details */
	public var value: String?
	
	/** home | work | temp | old | mobile - purpose of this address */
	public var use: String?
	
	/** Time period when the contact was/is in use */
	public var period: Period?
	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}

