//
//  Attachment.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Attachment) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Content in a format defined elsewhere.
 *
 *  For referring to data content defined in other formats.
 */
public class Attachment: FHIRElement
{
	override public class var resourceName: String {
		get { return "Attachment" }
	}
	
	/// Mime type of the content, with charset etc.
	public var contentType: String?
	
	/// Date attachment was first created
	public var creation: DateTime?
	
	/// Data inline, base64ed
	public var data: Base64Binary?
	
	/// Hash of the data (sha-1, base64ed )
	public var hash: Base64Binary?
	
	/// Human language of the content (BCP-47)
	public var language: String?
	
	/// Number of bytes of content (if url provided)
	public var size: UInt?
	
	/// Label to display in place of the data
	public var title: String?
	
	/// Uri where the data can be found
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["contentType"] {
				presentKeys.addObject("contentType")
				if let val = exist as? String {
					self.contentType = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contentType\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["creation"] {
				presentKeys.addObject("creation")
				if let val = exist as? String {
					self.creation = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"creation\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["data"] {
				presentKeys.addObject("data")
				if let val = exist as? String {
					self.data = Base64Binary(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"data\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["hash"] {
				presentKeys.addObject("hash")
				if let val = exist as? String {
					self.hash = Base64Binary(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"hash\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["language"] {
				presentKeys.addObject("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"language\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["size"] {
				presentKeys.addObject("size")
				if let val = exist as? UInt {
					self.size = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"size\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.addObject("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"title\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
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

