//
//  Binary.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Binary) on 2015-04-03.
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
	
	public convenience init(content: Base64Binary?, contentType: String?) {
		self.init(json: nil)
		if nil != content {
			self.content = content
		}
		if nil != contentType {
			self.contentType = contentType
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["content"] as? String {
				self.content = Base64Binary(string: val)
			}
			if let val = js["contentType"] as? String {
				self.contentType = val
			}
		}
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

