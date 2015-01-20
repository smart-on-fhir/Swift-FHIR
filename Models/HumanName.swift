//
//  HumanName.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (HumanName.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Name of a human - parts and usage.
 *
 *  A human's name with the ability to identify parts and usage.
 */
public class HumanName: FHIRElement
{
	override public class var resourceName: String {
		get { return "HumanName" }
	}
	
	/// Family name (often called 'Surname')
	public var family: [String]?
	
	/// Given names (not always 'first'). Includes middle names
	public var given: [String]?
	
	/// Time period when name was/is in use
	public var period: Period?
	
	/// Parts that come before the name
	public var prefix: [String]?
	
	/// Parts that come after the name
	public var suffix: [String]?
	
	/// Text representation of the full name
	public var text: String?
	
	/// usual | official | temp | nickname | anonymous | old | maiden
	public var use: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["family"] as? [String] {
				self.family = val
			}
			if let val = js["given"] as? [String] {
				self.given = val
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["prefix"] as? [String] {
				self.prefix = val
			}
			if let val = js["suffix"] as? [String] {
				self.suffix = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["use"] as? String {
				self.use = val
			}
		}
	}
}

