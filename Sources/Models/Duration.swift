//
//  Duration.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Duration) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A length of time.
 *
 *  There SHALL be a code if there is a value and it SHALL be an expression of time.  If system is present, it SHALL be
 *  UCUM.
 */
public class Duration: Quantity {
	override public class var resourceType: String {
		get { return "Duration" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

