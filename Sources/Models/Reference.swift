//
//  Reference.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Reference) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A reference from one resource to another.
*/
open class Reference: Element {
	override open class var resourceType: String {
		get { return "Reference" }
	}
	
	/// Text alternative for the resource.
	public var display: String?
	
	/// Logical reference, when literal reference is not known.
	public var identifier: Identifier?
	
	/// Literal reference, Relative, internal or absolute URL.
	public var reference: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["display"] {
			presentKeys.insert("display")
			if let val = exist as? String {
				self.display = val
			}
			else {
				errors.append(FHIRValidationError(key: "display", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reference"] {
			presentKeys.insert("reference")
			if let val = exist as? String {
				self.reference = val
			}
			else {
				errors.append(FHIRValidationError(key: "reference", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		
		return json
	}
}

