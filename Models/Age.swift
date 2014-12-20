//
//  Age.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (Age.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A duration (length of time) with a UCUM code.
 *
 *  There SHALL be a code if there is a value and it SHALL be an expression of time.  If system is present, it SHALL be
 *  UCUM.  If value is present, it SHALL be positive.
 */
public class Age: Quantity
{
	override public class var resourceName: String {
		get { return "Age" }
	}
	

}

