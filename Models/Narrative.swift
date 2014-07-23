//
//  Narrative.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A human-readable formatted text, including images.
 */
public class Narrative: FHIRElement
{
	override public class var resourceName: String {
		get { return "Narrative" }
	}
	
	/** generated | extensions | additional */
	public var status: String?
	
	/** Limited xhtml content */
	public var div: String?
	
	public convenience init(status: String?, div: String?) {
		self.init(json: nil)
		if status {
			self.status = status
		}
		if div {
			self.div = div
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["div"] as? String {
				self.div = val
			}
		}
	}
}

