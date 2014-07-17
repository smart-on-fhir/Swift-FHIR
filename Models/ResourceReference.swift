//
//  ResourceReference.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A reference from one resource to another.
 */
class ResourceReference: FHIRElement
{
	override class var resourceName: String {
		get { return "ResourceReference" }
	}
	
	/*! Relative, internal or absolute URL reference */
	var reference: String?
	
	/*! Text alternative for the resource */
	var display: String?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["reference"] as? String {
				self.reference = val
			}
			if let val = js["display"] as? String {
				self.display = val
			}
		}
		super.init(json: json)
	}
}
