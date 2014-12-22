//
//  Reversal.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (reversal.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Reversal request.
 *
 *  This resource provides the request and response details for the request for which all actions are to be reversed or
 *  terminated.
 */
public class Reversal: FHIRResource
{
	override public class var resourceName: String {
		get { return "Reversal" }
	}
	
	/// Insurance or medical plan
	public var coverage: ReversalCoverage?
	
	/// Creation date
	public var created: NSDate?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Nullify
	public var nullify: Bool?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Payee
	public var payee: ReversalPayee?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Request reference
	public var request: Reference?
	
	/// Response reference
	public var response: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Insurer
	public var target: Reference?
	
	public convenience init(coverage: ReversalCoverage?, nullify: Bool?) {
		self.init(json: nil)
		if nil != coverage {
			self.coverage = coverage
		}
		if nil != nullify {
			self.nullify = nullify
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["coverage"] as? NSDictionary {
				self.coverage = ReversalCoverage(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["nullify"] as? Bool {
				self.nullify = val
			}
			if let val = js["organization"] as? NSDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? NSDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["payee"] as? NSDictionary {
				self.payee = ReversalPayee(json: val, owner: self)
			}
			if let val = js["provider"] as? NSDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["request"] as? NSDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? NSDictionary {
				self.response = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? NSDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["target"] as? NSDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument by which payment information for health care.
 */
public class ReversalCoverage: FHIRElement
{
	override public class var resourceName: String {
		get { return "ReversalCoverage" }
	}
	
	/// Business agreement
	public var businessArrangement: String?
	
	/// Insurance information
	public var coverage: Reference?
	
	/// Is the focal Coverage
	public var focal: Bool?
	
	/// Patient relationship to subscriber
	public var relationship: Coding?
	
	/// Service instance
	public var sequence: Int?
	
	public convenience init(coverage: Reference?, focal: Bool?, relationship: Coding?, sequence: Int?) {
		self.init(json: nil)
		if nil != coverage {
			self.coverage = coverage
		}
		if nil != focal {
			self.focal = focal
		}
		if nil != relationship {
			self.relationship = relationship
		}
		if nil != sequence {
			self.sequence = sequence
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["businessArrangement"] as? String {
				self.businessArrangement = val
			}
			if let val = js["coverage"] as? NSDictionary {
				self.coverage = Reference(json: val, owner: self)
			}
			if let val = js["focal"] as? Bool {
				self.focal = val
			}
			if let val = js["relationship"] as? NSDictionary {
				self.relationship = Coding(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
		}
	}
}


/**
 *  Payee.
 *
 *  Payee information supplied for matching purposes.
 */
public class ReversalPayee: FHIRElement
{
	override public class var resourceName: String {
		get { return "ReversalPayee" }
	}
	
	/// Organization who is the payee
	public var organization: Reference?
	
	/// Other person who is the payee
	public var person: Reference?
	
	/// Provider who is the payee
	public var provider: Reference?
	
	/// Payee Type
	public var type: Coding?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["organization"] as? NSDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["person"] as? NSDictionary {
				self.person = Reference(json: val, owner: self)
			}
			if let val = js["provider"] as? NSDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
}

