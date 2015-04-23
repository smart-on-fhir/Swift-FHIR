//
//  Identifier.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Identifier) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  An identifier intended for computation.
 *
 *  A technical identifier - identifies some entity uniquely and unambiguously.
 */
public class Identifier: FHIRElement
{
	override public class var resourceName: String {
		get { return "Identifier" }
	}
	
	/// Organization that issued id (may be just text)
	public var assigner: Reference?
	
	/// Time period when id is/was valid for use
	public var period: Period?
	
	/// The namespace for the identifier
	public var system: NSURL?
	
	/// Description of identifier
	public var type: CodeableConcept?
	
	/// usual | official | temp | secondary (If known)
	public var use: String?
	
	/// The value that is unique
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["assigner"] {
				presentKeys.addObject("assigner")
				if let val = exist as? FHIRJSON {
					self.assigner = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"assigner\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["system"] {
				presentKeys.addObject("system")
				if let val = exist as? String {
					self.system = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"system\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `String`, but is \(exist.dynamicType)"))
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

