//
//  EnrollmentRequest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (enrollmentrequest.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
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
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["coverage"] as? NSDictionary {
				self.coverage = Reference(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["organization"] as? NSDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? NSDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["provider"] as? NSDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["relationship"] as? NSDictionary {
				self.relationship = Coding(json: val, owner: self)
			}
			if let val = js["ruleset"] as? NSDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["target"] as? NSDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
}

