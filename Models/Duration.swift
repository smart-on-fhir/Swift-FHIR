//
//  Duration.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/Duration) on 2015-03-11.
//  2015, SMART Platforms.
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

