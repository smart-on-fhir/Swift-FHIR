//
//  DomainResource.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/DomainResource) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contained = createInstances(of: Resource.self, for: "contained", in: json, context: &instCtx, owner: self) ?? contained
		extension_fhir = createInstances(of: Extension.self, for: "extension", in: json, context: &instCtx, owner: self) ?? extension_fhir
		modifierExtension = createInstances(of: Extension.self, for: "modifierExtension", in: json, context: &instCtx, owner: self) ?? modifierExtension
		text = createInstance(type: Narrative.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contained", using: self.contained, errors: &errors)
		arrayDecorate(json: &json, withKey: "extension", using: self.extension_fhir, errors: &errors)
		arrayDecorate(json: &json, withKey: "modifierExtension", using: self.modifierExtension, errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
	}
}

