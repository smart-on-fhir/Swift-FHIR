//
//  Attachment.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Attachment) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Content in a format defined elsewhere.

For referring to data content defined in other formats.
*/
open class Attachment: Element {
	override open class var resourceType: String {
		get { return "Attachment" }
	}
	
	/// Mime type of the content, with charset etc..
	public var contentType: FHIRString?
	
	/// Date attachment was first created.
	public var creation: DateTime?
	
	/// Data inline, base64ed.
	public var data: Base64Binary?
	
	/// Hash of the data (sha-1, base64ed).
	public var hash: Base64Binary?
	
	/// Human language of the content (BCP-47).
	public var language: FHIRString?
	
	/// Number of bytes of content (if url provided).
	public var size: FHIRInteger?
	
	/// Label to display in place of the data.
	public var title: FHIRString?
	
	/// Uri where the data can be found.
	public var url: FHIRURL?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contentType = createInstance(type: FHIRString.self, for: "contentType", in: json, context: &instCtx, owner: self) ?? contentType
		creation = createInstance(type: DateTime.self, for: "creation", in: json, context: &instCtx, owner: self) ?? creation
		data = createInstance(type: Base64Binary.self, for: "data", in: json, context: &instCtx, owner: self) ?? data
		hash = createInstance(type: Base64Binary.self, for: "hash", in: json, context: &instCtx, owner: self) ?? hash
		language = createInstance(type: FHIRString.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		size = createInstance(type: FHIRInteger.self, for: "size", in: json, context: &instCtx, owner: self) ?? size
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.contentType?.decorate(json: &json, withKey: "contentType", errors: &errors)
		self.creation?.decorate(json: &json, withKey: "creation", errors: &errors)
		self.data?.decorate(json: &json, withKey: "data", errors: &errors)
		self.hash?.decorate(json: &json, withKey: "hash", errors: &errors)
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.size?.decorate(json: &json, withKey: "size", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
	}
}

