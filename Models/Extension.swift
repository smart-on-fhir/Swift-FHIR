//
//  Extension.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Optional Extensions Element - found in all resources..
 */
class Extension: FHIRElement
{
	override var resourceName: String {
		get { return "Extension" }
	}
	
	/*! identifies the meaning of the extension */
	var url: NSURL?
	
	/*! Value of extension */
	var value: FHIRElement?
	
	convenience init(url: NSURL?) {
		self.init(json: nil)
		if url {
			self.url = url
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
			if let val = js["value"] as? NSDictionary {
				self.value = FHIRElement(json: val)
			}
		}
		super.init(json: json)
	}
}
