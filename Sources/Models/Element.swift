//
//  Element.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Element) on 2017-02-01.
//  2017, SMART Health IT.
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
	public var id: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		extension_fhir = try createInstances(of: Extension.self, for: "extension", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? extension_fhir
		id = try createInstance(type: FHIRString.self, for: "id", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? id
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "extension", using: self.extension_fhir, errors: &errors)
		self.id?.decorate(json: &json, withKey: "id", errors: &errors)
	}
}

