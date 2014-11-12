//
//  ResourceReference.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-ResourceReference.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
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
	
	/// Text alternative for the resource
	public var display: String?
	
	/// Relative, internal or absolute URL reference
	public var reference: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["reference"] as? String {
				self.reference = val
			}
		}
	}
}

