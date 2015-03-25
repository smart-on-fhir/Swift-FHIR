//
//  HumanName.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/HumanName) on 2015-03-25.
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["family"] as? [String] {
				self.family = val
			}
			if let val = js["given"] as? [String] {
				self.given = val
			}
			if let val = js["period"] as? FHIRJSON {
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
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let family = self.family {
			var arr = [AnyObject]()
			for val in family {
				arr.append(val.asJSON())
			}
			json["family"] = arr
		}
		if let given = self.given {
			var arr = [AnyObject]()
			for val in given {
				arr.append(val.asJSON())
			}
			json["given"] = arr
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let prefix = self.prefix {
			var arr = [AnyObject]()
			for val in prefix {
				arr.append(val.asJSON())
			}
			json["prefix"] = arr
		}
		if let suffix = self.suffix {
			var arr = [AnyObject]()
			for val in suffix {
				arr.append(val.asJSON())
			}
			json["suffix"] = arr
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		
		return json
	}
}

