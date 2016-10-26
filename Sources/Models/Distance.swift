//
//  Distance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Distance) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A length - a value with a unit that is a physical distance.
 */
open class Distance: Quantity {
	override open class var resourceType: String {
		get { return "Distance" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

