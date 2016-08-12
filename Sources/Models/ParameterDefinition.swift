//
//  ParameterDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ParameterDefinition) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Definition of a parameter to a module.
 *
 *  The parameters to the module. This collection specifies both the input and output parameters. Input parameters are
 *  provided by the caller as part of the $evaluate operation. Output parameters are included in the GuidanceResponse.
 */
public class ParameterDefinition: Element {
	override public class var resourceName: String {
		get { return "ParameterDefinition" }
	}
	
	/// A brief description of the parameter.
	public var documentation: String?
	
	/// Maximum cardinality (a number of *).
	public var max: String?
	
	/// Minimum cardinality.
	public var min: Int?
	
	/// Parameter name.
	public var name: String?
	
	/// The profile of the parameter, any.
	public var profile: Reference?
	
	/// None.
	public var type: String?
	
	/// None.
	public var use: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String, use: String) {
		self.init(json: nil)
		self.type = type
		self.use = use
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["max"] {
				presentKeys.insert("max")
				if let val = exist as? String {
					self.max = val
				}
				else {
					errors.append(FHIRJSONError(key: "max", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["min"] {
				presentKeys.insert("min")
				if let val = exist as? Int {
					self.min = val
				}
				else {
					errors.append(FHIRJSONError(key: "min", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
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
			else {
				errors.append(FHIRJSONError(key: "use"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let max = self.max {
			json["max"] = max.asJSON()
		}
		if let min = self.min {
			json["min"] = min.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		
		return json
	}
}

