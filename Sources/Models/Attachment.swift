//
//  Attachment.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Attachment) on 2016-12-06.
//  2016, SMART Health IT.
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
	public var contentType: String?
	
	/// Date attachment was first created.
	public var creation: DateTime?
	
	/// Data inline, base64ed.
	public var data: Base64Binary?
	
	/// Hash of the data (sha-1, base64ed).
	public var hash: Base64Binary?
	
	/// Human language of the content (BCP-47).
	public var language: String?
	
	/// Number of bytes of content (if url provided).
	public var size: UInt?
	
	/// Label to display in place of the data.
	public var title: String?
	
	/// Uri where the data can be found.
	public var url: URL?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contentType"] {
			presentKeys.insert("contentType")
			if let val = exist as? String {
				self.contentType = val
			}
			else {
				errors.append(FHIRValidationError(key: "contentType", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["creation"] {
			presentKeys.insert("creation")
			if let val = exist as? String {
				self.creation = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "creation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["data"] {
			presentKeys.insert("data")
			if let val = exist as? String {
				self.data = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "data", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["hash"] {
			presentKeys.insert("hash")
			if let val = exist as? String {
				self.hash = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "hash", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? String {
				self.language = val
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["size"] {
			presentKeys.insert("size")
			if let val = exist as? UInt {
				self.size = val
			}
			else {
				errors.append(FHIRValidationError(key: "size", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = val
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contentType = self.contentType {
			json["contentType"] = contentType.asJSON()
		}
		if let creation = self.creation {
			json["creation"] = creation.asJSON()
		}
		if let data = self.data {
			json["data"] = data.asJSON()
		}
		if let hash = self.hash {
			json["hash"] = hash.asJSON()
		}
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let size = self.size {
			json["size"] = size.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}

