//
//  ExplanationOfBenefit.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (explanationofbenefit.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Remittance resource.
 *
 *  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally
 *  account balance information, for informing the subscriber of the benefits provided.
 */
public class ExplanationOfBenefit: FHIRResource
{
	override public class var resourceName: String {
		get { return "ExplanationOfBenefit" }
	}
	
	/// Creation date
	public var created: NSDate?
	
	/// Disposition Message
	public var disposition: String?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Insurer
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// complete | error
	public var outcome: String?
	
	/// Claim reference
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["disposition"] as? String {
				self.disposition = val
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
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["request"] as? NSDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["requestOrganization"] as? NSDictionary {
				self.requestOrganization = Reference(json: val, owner: self)
			}
			if let val = js["requestProvider"] as? NSDictionary {
				self.requestProvider = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? NSDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
		}
	}
}

