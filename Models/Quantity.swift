//
//  Quantity.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A measured or measurable amount.
 */
class Quantity: FHIRElement
{
	override var resourceName: String {
		get { return "Quantity" }
	}

	/*! Numerical value (with implicit precision) */
	var value:  NSDecimalNumber?

	/*! < | <= | >= | > - how to understand the value */
	var comparator: String?

	/*! Unit representation */
	var units: String?

	/*! System that defines coded unit form */
	var system: NSURL?

	/*! Coded form of the unit */
	var code: String?

}
