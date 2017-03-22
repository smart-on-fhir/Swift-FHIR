//
//  Binary.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Binary) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Pure binary content defined by a format other than FHIR.

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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		content = createInstance(type: Base64Binary.self, for: "content", in: json, context: &instCtx, owner: self) ?? content
		if nil == content && !instCtx.containsKey("content") {
			instCtx.addError(FHIRValidationError(missing: "content"))
		}
		contentType = createInstance(type: FHIRString.self, for: "contentType", in: json, context: &instCtx, owner: self) ?? contentType
		if nil == contentType && !instCtx.containsKey("contentType") {
			instCtx.addError(FHIRValidationError(missing: "contentType"))
		}
		securityContext = createInstance(type: Reference.self, for: "securityContext", in: json, context: &instCtx, owner: self) ?? securityContext
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

