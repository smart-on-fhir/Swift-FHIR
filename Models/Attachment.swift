//
//  Attachment.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Content in a format defined elsewhere.
 */
class Attachment: FHIRElement
{
	override class var resourceName: String {
		get { return "Attachment" }
	}
	
	/*! Mime type of the content, with charset etc. */
	var contentType: String?
	
	/*! Human language of the content (BCP-47) */
	var language: String?
	
	/*! Data inline, base64ed */
	var data: String?
	
	/*! Uri where the data can be found */
	var url: NSURL?
	
	/*! Number of bytes of content (if url provided) */
	var size: Int?
	
	/*! Hash of the data (sha-1, base64ed ) */
	var hash: String?
	
	/*! Label to display in place of the data */
	var title: String?
	
	convenience init(contentType: String?) {
		self.init(json: nil)
		if contentType {
			self.contentType = contentType
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["contentType"] as? String {
				self.contentType = val
			}
			if let val = js["language"] as? String {
				self.language = val
			}
			if let val = js["data"] as? String {
				self.data = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
			if let val = js["size"] as? Int {
				self.size = val
			}
			if let val = js["hash"] as? String {
				self.hash = val
			}
			if let val = js["title"] as? String {
				self.title = val
			}
		}
		super.init(json: json)
	}
}
