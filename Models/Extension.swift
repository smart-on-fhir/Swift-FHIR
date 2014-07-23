//
//  Extension.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Optional Extensions Element - found in all resources..
 */
public class Extension: FHIRElement
{
	override public class var resourceName: String {
		get { return "Extension" }
	}
	
	/** identifies the meaning of the extension */
	public var url: NSURL?
	
	/** Value of extension */
	public var value: FHIRElement?
	
	public convenience init(url: NSURL?) {
		self.init(json: nil)
		if url {
			self.url = url
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
			if let val = js["value"] as? NSDictionary {
				self.value = FHIRElement(json: val)
			}
		}
	}
}

