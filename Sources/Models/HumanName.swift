//
//  HumanName.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/HumanName) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Name of a human - parts and usage.

A human's name with the ability to identify parts and usage.
*/
open class HumanName: Element {
	override open class var resourceType: String {
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
	
	/// Identifies the purpose for this name.
	public var use: NameUse?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["family"] {
			presentKeys.insert("family")
			if let val = exist as? [String] {
				self.family = val
			}
			else {
				errors.append(FHIRValidationError(key: "family", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["given"] {
			presentKeys.insert("given")
			if let val = exist as? [String] {
				self.given = val
			}
			else {
				errors.append(FHIRValidationError(key: "given", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["prefix"] {
			presentKeys.insert("prefix")
			if let val = exist as? [String] {
				self.prefix = val
			}
			else {
				errors.append(FHIRValidationError(key: "prefix", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["suffix"] {
			presentKeys.insert("suffix")
			if let val = exist as? [String] {
				self.suffix = val
			}
			else {
				errors.append(FHIRValidationError(key: "suffix", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? String {
				self.text = val
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["use"] {
			presentKeys.insert("use")
			if let val = exist as? String {
				if let enumval = NameUse(rawValue: val) {
					self.use = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "use", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "use", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let family = self.family {
			json["family"] = family.map() { $0.asJSON() }
		}
		if let given = self.given {
			json["given"] = given.map() { $0.asJSON() }
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let prefix = self.prefix {
			json["prefix"] = prefix.map() { $0.asJSON() }
		}
		if let suffix = self.suffix {
			json["suffix"] = suffix.map() { $0.asJSON() }
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let use = self.use {
			json["use"] = use.rawValue
		}
		
		return json
	}
}

