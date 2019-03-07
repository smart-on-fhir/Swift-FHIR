//
//  Binary.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Binary) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Pure binary content defined by a format other than FHIR.

A resource that represents the data of a single raw artifact as digital content accessible in its native format.  A
Binary resource can contain any content, whether text, image, pdf, zip archive, etc.
*/
open class Binary: Resource {
	override open class var resourceType: String {
		get { return "Binary" }
	}
	
	/// MimeType of the binary content.
	public var contentType: FHIRString?
	
	/// The actual content.
	public var data: Base64Binary?
	
	/// Identifies another resource to use as proxy when enforcing access control.
	public var securityContext: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(contentType: FHIRString) {
		self.init()
		self.contentType = contentType
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contentType = createInstance(type: FHIRString.self, for: "contentType", in: json, context: &instCtx, owner: self) ?? contentType
		if nil == contentType && !instCtx.containsKey("contentType") {
			instCtx.addError(FHIRValidationError(missing: "contentType"))
		}
		data = createInstance(type: Base64Binary.self, for: "data", in: json, context: &instCtx, owner: self) ?? data
		securityContext = createInstance(type: Reference.self, for: "securityContext", in: json, context: &instCtx, owner: self) ?? securityContext
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.contentType?.decorate(json: &json, withKey: "contentType", errors: &errors)
		if nil == self.contentType {
			errors.append(FHIRValidationError(missing: "contentType"))
		}
		self.data?.decorate(json: &json, withKey: "data", errors: &errors)
		self.securityContext?.decorate(json: &json, withKey: "securityContext", errors: &errors)
	}
}

