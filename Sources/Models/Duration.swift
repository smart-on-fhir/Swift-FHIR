//
//  Duration.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Duration) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A length of time.
 */
open class Duration: Quantity {
	override open class var resourceType: String {
		get { return "Duration" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

