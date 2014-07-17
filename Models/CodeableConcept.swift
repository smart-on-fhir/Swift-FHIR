//
//  CodeableConcept.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Concept - reference to a terminology or just  text.
 */
class CodeableConcept: FHIRElement
{
	override class var resourceName: String {
		get { return "CodeableConcept" }
	}
	
	/*! Code defined by a terminology system */
	var coding: [Coding]?
	
	/*! Plain text representation of the concept */
	var text: String?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["coding"] as? [NSDictionary] {
				self.coding = Coding.from(val) as? [Coding]
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
		super.init(json: json)
	}
}
