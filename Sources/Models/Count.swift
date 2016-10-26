//
//  Count.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Count) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A measured or measurable amount.
 *
 *  A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that
 *  are not precisely quantified, including amounts involving arbitrary units and floating currencies.
 */
open class Count: Quantity {
	override open class var resourceType: String {
		get { return "Count" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

