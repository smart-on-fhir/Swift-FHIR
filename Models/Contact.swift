//
//  Contact.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Technology mediated contact details (phone, fax, email, etc).
 */
class Contact: FHIRElement
{
	override var resourceName: String {
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

}
