//
//  SampledData.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A series of measurements taken by a device.
 */
class SampledData: FHIRElement
{
	override var resourceName: String {
		get { return "SampledData" }
	}

	/*! Zero value and units */
	var origin: Quantity

	/*! Number of milliseconds between samples */
	var period:  NSDecimalNumber

	/*! Multiply data by this before adding to origin */
	var factor:  NSDecimalNumber?

	/*! Lower limit of detection */
	var lowerLimit:  NSDecimalNumber?

	/*! Upper limit of detection */
	var upperLimit:  NSDecimalNumber?

	/*! Number of sample points at each time point */
	var dimensions: Int

	/*! Decimal values with spaces, or "E" | "U" | "L" */
	var data: String

	init(origin: Quantity, period:  NSDecimalNumber, dimensions: Int, data: String) {
		self.origin = origin
		self.period = period
		self.dimensions = dimensions
		self.data = data
	}
}
