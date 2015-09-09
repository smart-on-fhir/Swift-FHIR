//
//  Binary.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Binary) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Pure binary content defined by sime other format than FHIR.
 *
 *  A binary resource can contain any content, whether text, image, pdf, zip archive, etc.
 */
public class Binary: Resource
{
	override public class var resourceName: String {
		get { return "Binary" }
	}
	
	/// The actual content
	public var content: Base64Binary?
	
	/// MimeType of the binary content
	public var contentType: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Base64Binary?, contentType: String?) {
		self.init(json: nil)
		if nil != content {
			self.content = content
		}
		if nil != contentType {
			self.contentType = contentType
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["content"] {
				presentKeys.insert("content")
				if let val = exist as? String {
					self.content = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "content", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "content"))
			}
			if let exist: AnyObject = js["contentType"] {
				presentKeys.insert("contentType")
				if let val = exist as? String {
					self.contentType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentType", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "contentType"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let content = self.content {
			json["content"] = content.asJSON()
		}
		if let contentType = self.contentType {
			json["contentType"] = contentType.asJSON()
		}
		
		return json
	}
}

