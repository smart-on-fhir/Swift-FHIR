//
//  Attachment.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Attachment) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Content in a format defined elsewhere.
 *
 *  For referring to data content defined in other formats.
 */
public class Attachment: Element {
	override public class var resourceName: String {
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
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["contentType"] {
				presentKeys.insert("contentType")
				if let val = exist as? String {
					self.contentType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentType", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["creation"] {
				presentKeys.insert("creation")
				if let val = exist as? String {
					self.creation = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "creation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["data"] {
				presentKeys.insert("data")
				if let val = exist as? String {
					self.data = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "data", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["hash"] {
				presentKeys.insert("hash")
				if let val = exist as? String {
					self.hash = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "hash", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["size"] {
				presentKeys.insert("size")
				if let val = exist as? UInt {
					self.size = val
				}
				else {
					errors.append(FHIRJSONError(key: "size", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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

