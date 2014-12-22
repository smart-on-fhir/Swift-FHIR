//
//  Count.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (Count.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A count of a discrete element (no unit).
 *
 *  There SHALL be a code with a value of "1" if there is a value and it SHALL be an expression of length.  If system is
 *  present, it SHALL be UCUM.  If present, the value SHALL a whole number.
 */
public class Count: Quantity
{
	override public class var resourceName: String {
		get { return "Count" }
	}

}

