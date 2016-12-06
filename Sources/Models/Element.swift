//
//  Element.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Element) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Base for all elements.

Base definition for all elements in a resource.
*/
open class Element: FHIRAbstractBase {
	override open class var resourceType: String {
		get { return "Element" }
	}
	
	/// Additional Content defined by implementations.
	public var extension_fhir: [Extension]?
	
	/// xml:id (or equivalent in JSON).
	public var id: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["extension"] {
			presentKeys.insert("extension")
			if let val = exist as? [FHIRJSON] {
				do {
					self.extension_fhir = try Extension.instantiate(fromArray: val, owner: self) as? [Extension]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "extension"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "extension", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["id"] {
			presentKeys.insert("id")
			if let val = exist as? String {
				self.id = val
			}
			else {
				errors.append(FHIRValidationError(key: "id", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let extension_fhir = self.extension_fhir {
			json["extension"] = extension_fhir.map() { $0.asJSON(errors: &errors) }
		}
		if let id = self.id {
			json["id"] = id.asJSON()
		}
		
		return json
	}
}

