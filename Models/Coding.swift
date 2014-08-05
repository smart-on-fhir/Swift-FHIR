//
//  Coding.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A reference to a code defined by a terminology system.
 */
public class Coding: FHIRElement
{
	override public class var resourceName: String {
		get { return "Coding" }
	}
	
	/** Identity of the terminology system */
	public var system: NSURL?
	
	/** Version of the system - if relevant */
	public var version: String?
	
	/** Symbol in syntax defined by the system */
	public var code: String?
	
	/** Representation defined by the system */
	public var display: String?
	
	/** If this code was chosen directly by the user */
	public var primary: Bool?
	
	/** Set this coding was chosen from */
	public var valueSet: FHIRElement? {
		get { return resolveReference("valueSet") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "valueSet")
			}
		}
	}
	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["primary"] as? Int {
				self.primary = (1 == val)
			}
			if let val = js["valueSet"] as? NSDictionary {
				self.valueSet = ResourceReference(json: val)
			}
		}
	}
}

