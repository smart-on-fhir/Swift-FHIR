//
//  BackboneElement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/BackboneElement) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
Base for elements defined inside a resource.

Base definition for all elements that are defined inside a resource - but not those in a data type.
*/
open class BackboneElement: Element {
	override open class var resourceType: String {
		get { return "BackboneElement" }
	}
	
	/// Extensions that cannot be ignored.
	public var modifierExtension: [Extension]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		modifierExtension = try createInstances(of: Extension.self, for: "modifierExtension", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modifierExtension
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "modifierExtension", using: self.modifierExtension, errors: &errors)
	}
}

