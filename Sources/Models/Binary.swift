//
//  Binary.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Binary) on 2016-12-06.
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
		if let exist = json["content"] {
			presentKeys.insert("content")
			if let val = exist as? String {
				self.content = Base64Binary(json: val)
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
				self.contentType = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "contentType", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "contentType"))
		}
		if let exist = json["securityContext"] {
			presentKeys.insert("securityContext")
			if let val = exist as? FHIRJSON {
				do {
					self.securityContext = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "securityContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "securityContext", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let content = self.content {
			json["content"] = content.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "content"))
		}
		if let contentType = self.contentType {
			json["contentType"] = contentType.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "contentType"))
		}
		if let securityContext = self.securityContext {
			json["securityContext"] = securityContext.asJSON(errors: &errors)
		}
		
		return json
	}
}

