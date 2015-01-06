//
//  EnrollmentRequest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (enrollmentrequest.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Enrollment request.
 *
 *  This resource provides the insurance Enrollment details to the insurer regarding a specified coverage.
 */
public class EnrollmentRequest: FHIRResource
{
	override public class var resourceName: String {
		get { return "EnrollmentRequest" }
	}
	
	/// Insurance information
	public var coverage: Reference?
	
	/// Creation date
	public var created: NSDate?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Patient relationship to subscriber
	public var relationship: Coding?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// The subject of the Products and Services
	public var subject: Reference?
	
	/// Insurer
	public var target: Reference?
	
	public convenience init(coverage: Reference?, relationship: Coding?, subject: Reference?) {
		self.init(json: nil)
		if nil != coverage {
			self.coverage = coverage
		}
		if nil != relationship {
			self.relationship = relationship
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["coverage"] as? JSONDictionary {
				self.coverage = Reference(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? JSONDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["provider"] as? JSONDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["relationship"] as? JSONDictionary {
				self.relationship = Coding(json: val, owner: self)
			}
			if let val = js["ruleset"] as? JSONDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
}

