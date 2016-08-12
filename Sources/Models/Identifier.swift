//
//  Identifier.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Identifier) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  An identifier intended for computation.
 *
 *  A technical identifier - identifies some entity uniquely and unambiguously.
 */
public class Identifier: Element {
	override public class var resourceName: String {
		get { return "Identifier" }
	}
	
	/// Organization that issued id (may be just text).
	public var assigner: Reference?
	
	/// Time period when id is/was valid for use.
	public var period: Period?
	
	/// The namespace for the identifier.
	public var system: NSURL?
	
	/// Description of identifier.
	public var type: CodeableConcept?
	
	/// usual | official | temp | secondary (If known).
	public var use: String?
	
	/// The value that is unique.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["assigner"] {
				presentKeys.insert("assigner")
				if let val = exist as? FHIRJSON {
					self.assigner = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "assigner", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? String {
					self.system = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let assigner = self.assigner {
			json["assigner"] = assigner.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}

