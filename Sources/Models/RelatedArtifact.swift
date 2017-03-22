//
//  RelatedArtifact.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/RelatedArtifact) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Related artifacts for a knowledge resource.

Related artifacts such as additional documentation, justification, or bibliographic references.
*/
open class RelatedArtifact: Element {
	override open class var resourceType: String {
		get { return "RelatedArtifact" }
	}
	
	/// Bibliographic citation for the artifact.
	public var citation: FHIRString?
	
	/// Brief description of the related artifact.
	public var display: FHIRString?
	
	/// What document is being referenced.
	public var document: Attachment?
	
	/// What resource is being referenced.
	public var resource: Reference?
	
	/// The type of relationship to the related artifact.
	public var type: RelatedArtifactType?
	
	/// Where the artifact can be accessed.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: RelatedArtifactType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		citation = createInstance(type: FHIRString.self, for: "citation", in: json, context: &instCtx, owner: self) ?? citation
		display = createInstance(type: FHIRString.self, for: "display", in: json, context: &instCtx, owner: self) ?? display
		document = createInstance(type: Attachment.self, for: "document", in: json, context: &instCtx, owner: self) ?? document
		resource = createInstance(type: Reference.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		type = createEnum(type: RelatedArtifactType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.citation?.decorate(json: &json, withKey: "citation", errors: &errors)
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		self.document?.decorate(json: &json, withKey: "document", errors: &errors)
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
	}
}

