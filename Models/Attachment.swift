//
//  Attachment.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (Attachment.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
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
	
	/// Data inline, base64ed
	public var data: Base64Binary?
	
	/// Hash of the data (sha-1, base64ed )
	public var hash: Base64Binary?
	
	/// Number of bytes of content (if url provided)
	public var size: Int?
	
	/// Label to display in place of the data
	public var title: String?
	
	/// Uri where the data can be found
	public var url: NSURL?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentType"] as? String {
				self.contentType = val
			}
			if let val = js["data"] as? String {
				self.data = Base64Binary(json: val)
			}
			if let val = js["hash"] as? String {
				self.hash = Base64Binary(json: val)
			}
			if let val = js["size"] as? Int {
				self.size = val
			}
			if let val = js["title"] as? String {
				self.title = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
		}
	}
}

