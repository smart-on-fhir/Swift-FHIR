//
//  Attachment.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Attachment) on 2017-02-01.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		contentType = try createInstance(type: FHIRString.self, for: "contentType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contentType
		creation = try createInstance(type: DateTime.self, for: "creation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? creation
		data = try createInstance(type: Base64Binary.self, for: "data", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? data
		hash = try createInstance(type: Base64Binary.self, for: "hash", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? hash
		language = try createInstance(type: FHIRString.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		size = try createInstance(type: FHIRInteger.self, for: "size", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? size
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		
		return errors.isEmpty ? nil : errors
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

