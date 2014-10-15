//
//  Attachment.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-Attachment.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Content in a format defined elsewhere.
 */
public class Attachment: FHIRElement
{
	override public class var resourceName: String {
		get { return "Attachment" }
	}
	
	/// Mime type of the content, with charset etc.
	public var contentType: String?
	
	/// Data inline, base64ed
	public var data: String?
	
	/// Hash of the data (sha-1, base64ed )
	public var hash: String?
	
	/// Number of bytes of content (if url provided)
	public var size: Int?
	
	/// Label to display in place of the data
	public var title: String?
	
	/// Uri where the data can be found
	public var url: NSURL?
	
	public convenience init(contentType: String?) {
		self.init(json: nil)
		if nil != contentType {
			self.contentType = contentType
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentType"] as? String {
				self.contentType = val
			}
			if let val = js["data"] as? String {
				self.data = val
			}
			if let val = js["hash"] as? String {
				self.hash = val
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

