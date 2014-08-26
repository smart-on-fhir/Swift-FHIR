//
//  ResourceReference.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (type-ResourceReference.profile.json) on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A reference from one resource to another.
 */
public class ResourceReference: FHIRElement
{
	override public class var resourceName: String {
		get { return "ResourceReference" }
	}
	
	/** Relative, internal or absolute URL reference */
	public var reference: String?
	
	/** Text alternative for the resource */
	public var display: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["reference"] as? String {
				self.reference = val
			}
			if let val = js["display"] as? String {
				self.display = val
			}
		}
	}
}

