//
//  Duration.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (Duration.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A length of time.
 *
 *  There SHALL be a code if there is a value and it SHALL be an expression of time.  If system is present, it SHALL be
 *  UCUM.
 */
public class Duration: Quantity
{
	override public class var resourceName: String {
		get { return "Duration" }
	}
	

}

