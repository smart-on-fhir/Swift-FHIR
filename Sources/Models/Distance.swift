//
//  Distance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Distance) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A length - a value with a unit that is a physical distance.
 */
public class Distance: Quantity {
	override public class var resourceName: String {
		get { return "Distance" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

