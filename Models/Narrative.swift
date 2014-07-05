//
//  Narrative.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A human-readable formatted text, including images.
 */
class Narrative: FHIRElement
{
	override class var resourceName: String {
		get { return "Narrative" }
	}
	
	/*! generated | extensions | additional */
	var status: String?
	
	/*! Limited xhtml content */
	var div: String?
	
	convenience init(status: String?, div: String?) {
		self.init(json: nil)
		if status {
			self.status = status
		}
		if div {
			self.div = div
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["div"] as? String {
				self.div = val
			}
		}
		super.init(json: json)
	}
}
