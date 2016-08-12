//
//  Duration.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Duration) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A length of time.
 */
public class Duration: Quantity {
	override public class var resourceName: String {
		get { return "Duration" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

