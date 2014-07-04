//
//  Coding.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A reference to a code defined by a terminology system.
 */
class Coding: FHIRElement
{
	override var resourceName: String {
		get { return "Coding" }
	}
	
	/*! Identity of the terminology system */
	var system: NSURL?
	
	/*! Version of the system - if relevant */
	var version: String?
	
	/*! Symbol in syntax defined by the system */
	var code: String?
	
	/*! Representation defined by the system */
	var display: String?
	
	/*! If this code was chosen directly by the user */
	var primary: Bool?
	
	/*! Set this coding was chosen from */
	var valueSet: ResourceReference?
	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}
