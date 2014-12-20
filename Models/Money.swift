//
//  Money.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (Money.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  An amount of money. With regard to precision, see [[X]].
 *
 *  There SHALL be a code if there is a value and it SHALL be an expression of currency.  If system is present, it SHALL
 *  be ISO 4217 (system = "urn:std:iso:4217" - currency).
 */
public class Money: Quantity
{
	override public class var resourceName: String {
		get { return "Money" }
	}
	

}

