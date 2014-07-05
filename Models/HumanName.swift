//
//  HumanName.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Name of a human - parts and usage.
 */
class HumanName: FHIRElement
{
	override class var resourceName: String {
		get { return "HumanName" }
	}
	
	/*! usual | official | temp | nickname | anonymous | old | maiden */
	var use: String?
	
	/*! Text representation of the full name */
	var text: String?
	
	/*! Family name (often called 'Surname') */
	var family: String[]?
	
	/*! Given names (not always 'first'). Includes middle names */
	var given: String[]?
	
	/*! Parts that come before the name */
	var prefix: String[]?
	
	/*! Parts that come after the name */
	var suffix: String[]?
	
	/*! Time period when name was/is in use */
	var period: Period?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["use"] as? String {
				self.use = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["family"] as? Array<String> {
				self.family = val
			}
			if let val = js["given"] as? Array<String> {
				self.given = val
			}
			if let val = js["prefix"] as? Array<String> {
				self.prefix = val
			}
			if let val = js["suffix"] as? Array<String> {
				self.suffix = val
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
		}
		super.init(json: json)
	}
}
