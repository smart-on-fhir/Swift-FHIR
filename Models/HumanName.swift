//
//  HumanName.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Name of a human - parts and usage.
 */
class HumanName: FHIRElement
{
	override var resourceName: String {
		get { return "HumanName" }
	}

	/*! usual | official | temp | nickname | anonymous | old | maiden */
	var use: String?

	/*! Text representation of the full name */
	var text: String?

	/*! Family name (often called 'Surname') */
	var family: String[]?

	/*! Given names (not always 'first'). Includes middle names */
	var given: String[]?

	/*! Parts that come before the name */
	var prefix: String[]?

	/*! Parts that come after the name */
	var suffix: String[]?

	/*! Time period when name was/is in use */
	var period: Period?

}
