//
//  Range.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Set of values bounded by low and high.
 */
class Range: FHIRElement
{
	override var resourceName: String {
		get { return "Range" }
	}

	/*! Low limit */
	var low: Quantity?

	/*! High limit */
	var high: Quantity?

}
