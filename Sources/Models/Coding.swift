//
//  Coding.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Coding) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A reference to a code defined by a terminology system.
*/
open class Coding: Element {
	override open class var resourceType: String {
		get { return "Coding" }
	}
	
	/// Symbol in syntax defined by the system.
	public var code: String?
	
	/// Representation defined by the system.
	public var display: String?
	
	/// Identity of the terminology system.
	public var system: URL?
	
	/// If this coding was chosen directly by the user.
	public var userSelected: Bool?
	
	/// Version of the system - if relevant.
	public var version: String?
	
	
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
		if let exist = json["display"] {
			presentKeys.insert("display")
			if let val = exist as? String {
				self.display = val
			}
			else {
				errors.append(FHIRValidationError(key: "display", wants: String.self, has: type(of: exist)))
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
		if let exist = json["userSelected"] {
			presentKeys.insert("userSelected")
			if let val = exist as? Bool {
				self.userSelected = val
			}
			else {
				errors.append(FHIRValidationError(key: "userSelected", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = val
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let userSelected = self.userSelected {
			json["userSelected"] = userSelected.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

