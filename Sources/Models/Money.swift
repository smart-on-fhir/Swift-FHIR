//
//  Money.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Money) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  An amount of money. With regard to precision, see [Decimal Precision](datatypes.html#precision).
 *
 *  There SHALL be a code if there is a value and it SHALL be an expression of currency.  If system is present, it SHALL
 *  be ISO 4217 (system = "urn:iso:std:iso:4217" - currency).
 */
public class Money: Quantity {
	override public class var resourceType: String {
		get { return "Money" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

