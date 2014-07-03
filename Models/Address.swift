//
//  Address.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A postal address.
 */
class Address: FHIRElement
{
	override var resourceName: String {
		get { return "Address" }
	}

	/*! home | work | temp | old - purpose of this address */
	var use: String?

	/*! Text representation of the address */
	var text: String?

	/*! Street name, number, direction & P.O. Box etc */
	var line: String[]?

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

}
