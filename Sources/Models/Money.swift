//
//  Money.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Money) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  An amount of economic utility in some recognised currency.
 */
open class Money: Quantity {
	override open class var resourceType: String {
		get { return "Money" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

