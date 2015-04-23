//
//  HumanName.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/HumanName) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["family"] {
				presentKeys.addObject("family")
				if let val = exist as? [String] {
					self.family = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"family\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["given"] {
				presentKeys.addObject("given")
				if let val = exist as? [String] {
					self.given = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"given\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["prefix"] {
				presentKeys.addObject("prefix")
				if let val = exist as? [String] {
					self.prefix = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"prefix\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["suffix"] {
				presentKeys.addObject("suffix")
				if let val = exist as? [String] {
					self.suffix = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"suffix\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["use"] {
				presentKeys.addObject("use")
				if let val = exist as? String {
					self.use = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"use\" to be `String`, but is \(exist.dynamicType)"))
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

