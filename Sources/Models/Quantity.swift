//
//  Quantity.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Quantity) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A measured or measurable amount.

A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are
not precisely quantified, including amounts involving arbitrary units and floating currencies.
*/
open class Quantity: Element {
	override open class var resourceType: String {
		get { return "Quantity" }
	}
	
	/// Coded form of the unit.
	public var code: String?
	
	/// How the value should be understood and represented - whether the actual value is greater or less than the stated
	/// value due to measurement issues; e.g. if the comparator is "<" , then the real value is < stated value.
	public var comparator: QuantityComparator?
	
	/// System that defines coded unit form.
	public var system: URL?
	
	/// Unit representation.
	public var unit: String?
	
	/// Numerical value (with implicit precision).
	public var value: NSDecimalNumber?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = val
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["comparator"] {
			presentKeys.insert("comparator")
			if let val = exist as? String {
				if let enumval = QuantityComparator(rawValue: val) {
					self.comparator = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "comparator", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "comparator", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["system"] {
			presentKeys.insert("system")
			if let val = exist as? String {
				self.system = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "system", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["unit"] {
			presentKeys.insert("unit")
			if let val = exist as? String {
				self.unit = val
			}
			else {
				errors.append(FHIRValidationError(key: "unit", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? NSNumber {
				self.value = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let comparator = self.comparator {
			json["comparator"] = comparator.rawValue
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

