//
//  Element.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Element) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		extension_fhir = createInstances(of: Extension.self, for: "extension", in: json, context: &instCtx, owner: self) ?? extension_fhir
		id = createInstance(type: FHIRString.self, for: "id", in: json, context: &instCtx, owner: self) ?? id
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "extension", using: self.extension_fhir, errors: &errors)
		self.id?.decorate(json: &json, withKey: "id", errors: &errors)
	}
}

