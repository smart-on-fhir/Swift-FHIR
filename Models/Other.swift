//
//  Other.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (other.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Resource for non-supported content.
 *
 *  Scope and Usage Other is a special type of resource. Unlike all other resources, it doesn't correspond to a specific
 *  identifiable real-world concept. Instead, it's a placeholder for any resource-like concept that isn't already
 *  defined in the HL7 specification.
 *  
 *  The Other resource is intended for use in two circumstances:
 *  
 *  * When an implementer needs a resource concept that is likely to be defined by HL7 in the future but they have not
 *  yet done so (due to bandwidth issues, lack of sufficient requirements, lower prioritization, etc.)
 *  * When the resource concept falls "outside the 99%" - i.e. less than 1% of the systems that use FHIR are likely to
 *  ever make use of the resource. To keep the specification manageable, it cannot incorporate every esoteric
 *  requirement that might be needed in some implementation somewhere. This set of resources likely won't ever be
 *  officially defined in HL7.
 *  There's also a third circumstance: An implementer wishes to convey information that could/should be conveyed using a
 *  standard resource, however they want to represent the information in a custom format that isn't aligned with the
 *  official resource's elements. While this resource would be the preferred way of meeting that use-case because it
 *  will at least be wire-format compatible, such a use would not be conformant because making use of the Other resource
 *  would prevent the healthcare-related information from being safely processed, queried and analyzed by other
 *  conformant systems.
 *  
 *  Implementers don't really need to be concerned with one of the two categories their desired resource fits within. If
 *  they need a resource and it doesn't yet exist, they should use Other.
 */
public class Other: FHIRResource
{
	override public class var resourceName: String {
		get { return "Other" }
	}
	
	/// Who created
	public var author: FHIRReference<Practitioner>?
	
	/// Kind of Resource
	public var code: CodeableConcept?
	
	/// When created
	public var created: NSDate?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Identifies the
	public var subject: FHIRReference<FHIRResource>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? NSDictionary {
				self.author = FHIRReference(json: val, owner: self)
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val, owner: self)
			}
		}
	}
}

