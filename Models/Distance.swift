//
//  Distance.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Distance) on 2015-07-28.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}

}

