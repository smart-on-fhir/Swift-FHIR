//
//  BackboneElement.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/BackboneElement) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		modifierExtension = createInstances(of: Extension.self, for: "modifierExtension", in: json, context: &instCtx, owner: self) ?? modifierExtension
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "modifierExtension", using: self.modifierExtension, errors: &errors)
	}
}

