//
//  Attachment.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/Attachment) on 2015-03-19.
//  2015, SMART Platforms.
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
	public var size: Int?
	
	/// Label to display in place of the data
	public var title: String?
	
	/// Uri where the data can be found
	public var url: NSURL?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentType"] as? String {
				self.contentType = val
			}
			if let val = js["creation"] as? String {
				self.creation = DateTime(string: val)
			}
			if let val = js["data"] as? String {
				self.data = Base64Binary(string: val)
			}
			if let val = js["hash"] as? String {
				self.hash = Base64Binary(string: val)
			}
			if let val = js["language"] as? String {
				self.language = val
			}
			if let val = js["size"] as? Int {
				self.size = val
			}
			if let val = js["title"] as? String {
				self.title = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

