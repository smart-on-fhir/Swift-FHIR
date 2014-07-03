//
//  Ratio.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A ratio of two Quantity values - a numerator and a denominator.
 */
class Ratio: FHIRElement
{
	override var resourceName: String {
		get { return "Ratio" }
	}

	/*! Numerator value */
	var numerator: Quantity?

	/*! Denominator value */
	var denominator: Quantity?

}
