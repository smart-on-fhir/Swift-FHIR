//
//  DomainResource.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/DomainResource) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A resource with narrative, extensions, and contained resources.

A resource that includes narrative, extensions, and contained resources.
*/
open class DomainResource: Resource {
	override open class var resourceType: String {
		get { return "DomainResource" }
	}
	
	/// Contained, inline Resources.
	public var contained: [Resource]?
	
	/// Additional Content defined by implementations.
	public var extension_fhir: [Extension]?
	
	/// Extensions that cannot be ignored.
	public var modifierExtension: [Extension]?
	
	/// Text summary of the resource, for human interpretation.
	public var text: Narrative?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contained"] {
			presentKeys.insert("contained")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contained = try Resource.instantiate(fromArray: val, owner: self) as? [Resource]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contained"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contained", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["modifierExtension"] {
			presentKeys.insert("modifierExtension")
			if let val = exist as? [FHIRJSON] {
				do {
					self.modifierExtension = try Extension.instantiate(fromArray: val, owner: self) as? [Extension]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifierExtension"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifierExtension", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? FHIRJSON {
				do {
					self.text = try Narrative(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "text"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contained = self.contained {
			json["contained"] = contained.map() { $0.asJSON(errors: &errors) }
		}
		if let extension_fhir = self.extension_fhir {
			json["extension"] = extension_fhir.map() { $0.asJSON(errors: &errors) }
		}
		if let modifierExtension = self.modifierExtension {
			json["modifierExtension"] = modifierExtension.map() { $0.asJSON(errors: &errors) }
		}
		if let text = self.text {
			json["text"] = text.asJSON(errors: &errors)
		}
		
		return json
	}
}

