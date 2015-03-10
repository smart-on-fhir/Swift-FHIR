//
//  Distance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Distance) on 2015-03-10.
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

