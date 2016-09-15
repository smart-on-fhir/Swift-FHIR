//
//  Quantity.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Quantity) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A measured or measurable amount.
 *
 *  A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that
 *  are not precisely quantified, including amounts involving arbitrary units and floating currencies.
 */
public class Quantity: Element {
	override public class var resourceType: String {
		get { return "Quantity" }
	}
	
	/// Coded form of the unit.
	public var code: String?
	
	/// < | <= | >= | > - how to understand the value.
	public var comparator: String?
	
	/// System that defines coded unit form.
	public var system: URL?
	
	/// Unit representation.
	public var unit: String?
	
	/// Numerical value (with implicit precision).
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["comparator"] {
				presentKeys.insert("comparator")
				if let val = exist as? String {
					self.comparator = val
				}
				else {
					errors.append(FHIRJSONError(key: "comparator", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? String {
					self.system = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["unit"] {
				presentKeys.insert("unit")
				if let val = exist as? String {
					self.unit = val
				}
				else {
					errors.append(FHIRJSONError(key: "unit", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let comparator = self.comparator {
			json["comparator"] = comparator.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let unit = self.unit {
			json["unit"] = unit.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}

