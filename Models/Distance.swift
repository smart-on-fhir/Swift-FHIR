//
//  Distance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (Distance.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A measure of distance.
 *
 *  There SHALL be a code if there is a value and it SHALL be an expression of length.  If system is present, it SHALL
 *  be UCUM.
 */
public class Distance: Quantity
{
	override public class var resourceName: String {
		get { return "Distance" }
	}

}

