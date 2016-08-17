//
//  Age.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Age) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A duration of time during which an organism (or a process) has existed.
 */
open class Age: Quantity {
	override open class var resourceType: String {
		get { return "Age" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

