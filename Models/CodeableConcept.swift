//
//  CodeableConcept.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-CodeableConcept.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
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
	
	/// Code defined by a terminology system
	public var coding: [Coding]?
	
	/// Plain text representation of the concept
	public var text: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["coding"] as? [NSDictionary] {
				self.coding = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
	}
}

