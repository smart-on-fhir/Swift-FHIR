//
//  CodeableConcept.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Concept - reference to a terminology or just  text.
 */
public class CodeableConcept: FHIRElement
{
	override public class var resourceName: String {
		get { return "CodeableConcept" }
	}
	
	/** Code defined by a terminology system */
	public var coding: [Coding]?
	
	/** Plain text representation of the concept */
	public var text: String?
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["coding"] as? [NSDictionary] {
				self.coding = Coding.from(val) as? [Coding]
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
	}
}

