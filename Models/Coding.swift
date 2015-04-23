//
//  Coding.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Coding) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A reference to a code defined by a terminology system.
 */
public class Coding: FHIRElement
{
	override public class var resourceName: String {
		get { return "Coding" }
	}
	
	/// Symbol in syntax defined by the system
	public var code: String?
	
	/// Representation defined by the system
	public var display: String?
	
	/// If this code was chosen directly by the user
	public var primary: Bool?
	
	/// Identity of the terminology system
	public var system: NSURL?
	
	/// Version of the system - if relevant
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["display"] {
				presentKeys.addObject("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"display\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["primary"] {
				presentKeys.addObject("primary")
				if let val = exist as? Bool {
					self.primary = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"primary\" to be `Bool`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
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
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let primary = self.primary {
			json["primary"] = primary.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

