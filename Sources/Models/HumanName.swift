//
//  HumanName.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/HumanName) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Name of a human - parts and usage.
 *
 *  A human's name with the ability to identify parts and usage.
 */
public class HumanName: Element {
	override public class var resourceName: String {
		get { return "HumanName" }
	}
	
	/// Family name (often called 'Surname').
	public var family: [String]?
	
	/// Given names (not always 'first'). Includes middle names.
	public var given: [String]?
	
	/// Time period when name was/is in use.
	public var period: Period?
	
	/// Parts that come before the name.
	public var prefix: [String]?
	
	/// Parts that come after the name.
	public var suffix: [String]?
	
	/// Text representation of the full name.
	public var text: String?
	
	/// usual | official | temp | nickname | anonymous | old | maiden.
	public var use: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["family"] {
				presentKeys.insert("family")
				if let val = exist as? [String] {
					self.family = val
				}
				else {
					errors.append(FHIRJSONError(key: "family", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["given"] {
				presentKeys.insert("given")
				if let val = exist as? [String] {
					self.given = val
				}
				else {
					errors.append(FHIRJSONError(key: "given", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prefix"] {
				presentKeys.insert("prefix")
				if let val = exist as? [String] {
					self.prefix = val
				}
				else {
					errors.append(FHIRJSONError(key: "prefix", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["suffix"] {
				presentKeys.insert("suffix")
				if let val = exist as? [String] {
					self.suffix = val
				}
				else {
					errors.append(FHIRJSONError(key: "suffix", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? String {
					self.use = val
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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

