//
//  HumanName.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (type-HumanName.profile.json) on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Name of a human - parts and usage.
 */
public class HumanName: FHIRElement
{
	override public class var resourceName: String {
		get { return "HumanName" }
	}
	
	/** usual | official | temp | nickname | anonymous | old | maiden */
	public var use: String?
	
	/** Text representation of the full name */
	public var text: String?
	
	/** Family name (often called 'Surname') */
	public var family: [String]?
	
	/** Given names (not always 'first'). Includes middle names */
	public var given: [String]?
	
	/** Parts that come before the name */
	public var prefix: [String]?
	
	/** Parts that come after the name */
	public var suffix: [String]?
	
	/** Time period when name was/is in use */
	public var period: Period?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["use"] as? String {
				self.use = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["family"] as? [String] {
				self.family = val
			}
			if let val = js["given"] as? [String] {
				self.given = val
			}
			if let val = js["prefix"] as? [String] {
				self.prefix = val
			}
			if let val = js["suffix"] as? [String] {
				self.suffix = val
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
		}
	}
}

