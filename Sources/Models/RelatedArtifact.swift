//
//  RelatedArtifact.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/RelatedArtifact) on 2017-02-01.
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
	
	/// The related document.
	public var document: Attachment?
	
	/// The related resource.
	public var resource: Reference?
	
	/// The type of relationship to the related artifact.
	public var type: RelatedArtifactType?
	
	/// Url for the related artifact.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: RelatedArtifactType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		citation = try createInstance(type: FHIRString.self, for: "citation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? citation
		display = try createInstance(type: FHIRString.self, for: "display", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? display
		document = try createInstance(type: Attachment.self, for: "document", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? document
		resource = try createInstance(type: Reference.self, for: "resource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resource
		type = createEnum(type: RelatedArtifactType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		
		return errors.isEmpty ? nil : errors
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

