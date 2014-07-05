//
//  Identifier.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  An identifier intended for computation.
 */
class Identifier: FHIRElement
{
	override class var resourceName: String {
		get { return "Identifier" }
	}
	
	/*! usual | official | temp | secondary (If known) */
	var use: String?
	
	/*! Description of identifier */
	var label: String?
	
	/*! The namespace for the identifier */
	var system: NSURL?
	
	/*! The value that is unique */
	var value: String?
	
	/*! Time period when id is/was valid for use */
	var period: Period?
	
	/*! Organization that issued id (may be just text) */
	var assigner: ResourceReference?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["use"] as? String {
				self.use = val
			}
			if let val = js["label"] as? String {
				self.label = val
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["value"] as? String {
				self.value = val
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
			if let val = js["assigner"] as? NSDictionary {
				self.assigner = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}
