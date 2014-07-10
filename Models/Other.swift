//
//  Other.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-10.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Resource for non-supported content.
 *
 *  Scope and Usage Other is a special type of resource. Unlike all other resources, it doesn't correspond to a
 *  specific identifiable real-world concept. Instead, it's a placeholder for any resource-like concept that isn't
 *  already defined in the HL7 specification.
 *  
 *  The Other resource is intended for use in two circumstances:
 *  
 *  * When an implementer needs a resource concept that is likely to be defined by HL7 in the future but they have
 *  not yet done so (due to bandwidth issues, lack of sufficient requirements, lower prioritization, etc.)
 *  * When the resource concept falls "outside the 99%" - i.e. less than 1% of the systems that use FHIR are
 *  likely to ever make use of the resource. To keep the specification manageable, it cannot incorporate every
 *  esoteric requirement that might be needed in some implementation somewhere. This set of resources likely won't
 *  ever be officially defined in HL7.
 *  There's also a third circumstance: An implementer wishes to convey information that could/should be conveyed
 *  using a standard resource, however they want to represent the information in a custom format that isn't
 *  aligned with the official resource's elements. While this resource would be the preferred way of meeting that
 *  use-case because it will at least be wire-format compatible, such a use would not be conformant because making
 *  use of the Other resource would prevent the healthcare-related information from being safely processed,
 *  queried and analyzed by other conformant systems.
 *  
 *  Implementers don't really need to be concerned with one of the two categories their desired resource fits
 *  within. If they need a resource and it doesn't yet exist, they should use Other.
 */
class Other: FHIRResource
{
	override class var resourceName: String {
		get { return "Other" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: [FHIRResource]?
	
	/*! Business identifier */
	var identifier: [Identifier]?
	
	/*! Kind of Resource */
	var code: CodeableConcept?
	
	/*! Identifies the */
	var subject: ResourceReference?
	
	/*! Who created */
	var author: ResourceReference?
	
	/*! When created */
	var created: NSDate?
	
	convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? [NSDictionary] {
				self.contained = FHIRResource.from(val) as? [FHIRResource]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["author"] as? NSDictionary {
				self.author = ResourceReference(json: val)
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
		}
		super.init(json: json)
	}
}
