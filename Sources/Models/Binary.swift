//
//  Binary.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Binary) on 2016-11-04.
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
	public var contentType: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Base64Binary, contentType: String) {
		self.init()
		self.content = content
		self.contentType = contentType
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["content"] {
			presentKeys.insert("content")
			if let val = exist as? String {
				self.content = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "content", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "content"))
		}
		if let exist = json["contentType"] {
			presentKeys.insert("contentType")
			if let val = exist as? String {
				self.contentType = val
			}
			else {
				errors.append(FHIRValidationError(key: "contentType", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "contentType"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let content = self.content {
			json["content"] = content.asJSON()
		}
		if let contentType = self.contentType {
			json["contentType"] = contentType.asJSON()
		}
		
		return json
	}
}

