//
//  Other.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (other.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Resource for non-supported content.
 *
 *  Other is a conformant for handling resource concepts not yet defined for FHIR or outside HL7's scope of interest.
 */
public class Other: FHIRResource
{
	override public class var resourceName: String {
		get { return "Other" }
	}
	
	/// Who created
	public var author: Reference?
	
	/// Kind of Resource
	public var code: CodeableConcept?
	
	/// When created
	public var created: NSDate?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Identifies the
	public var subject: Reference?
	
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
				self.author = Reference(json: val, owner: self)
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
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
}

