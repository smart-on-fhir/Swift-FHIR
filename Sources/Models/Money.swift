//
//  Money.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Money) on 2016-10-26.
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

