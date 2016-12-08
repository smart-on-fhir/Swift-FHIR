//
//  Binary.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Binary) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
Pure binary content defined by some other format than FHIR.

A binary resource can contain any content, whether text, image, pdf, zip archive, etc.
*/
open class Binary: Resource {
	override open class var resourceType: String {
		get { return "Binary" }
	}
	
	/// The actual content.
	public var content: Base64Binary?
	
	/// MimeType of the binary content.
	public var contentType: FHIRString?
	
	/// Access Control Management.
	public var securityContext: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Base64Binary, contentType: FHIRString) {
		self.init()
		self.content = content
		self.contentType = contentType
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		content = try createInstance(type: Base64Binary.self, for: "content", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? content
		if nil == content && !presentKeys.contains("content") {
			errors.append(FHIRValidationError(missing: "content"))
		}
		contentType = try createInstance(type: FHIRString.self, for: "contentType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contentType
		if nil == contentType && !presentKeys.contains("contentType") {
			errors.append(FHIRValidationError(missing: "contentType"))
		}
		securityContext = try createInstance(type: Reference.self, for: "securityContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? securityContext
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.content?.decorate(json: &json, withKey: "content", errors: &errors)
		if nil == self.content {
			errors.append(FHIRValidationError(missing: "content"))
		}
		self.contentType?.decorate(json: &json, withKey: "contentType", errors: &errors)
		if nil == self.contentType {
			errors.append(FHIRValidationError(missing: "contentType"))
		}
		self.securityContext?.decorate(json: &json, withKey: "securityContext", errors: &errors)
	}
}

