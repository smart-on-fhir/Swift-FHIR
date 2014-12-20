//
//  PaymentNotice.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (paymentnotice.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  PaymentNotice request.
 *
 *  This resource provides the status of the payment for goods and services rendered, and the request and response
 *  resource references.
 */
public class PaymentNotice: FHIRResource
{
	override public class var resourceName: String {
		get { return "PaymentNotice" }
	}
	
	/// Creation date
	public var created: NSDate?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Status of the payment
	public var paymentStatus: Coding?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Request reference
	public var request: Reference?
	
	/// Response reference
	public var response: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Insurer or Regulatory body
	public var target: Reference?
	
	public convenience init(paymentStatus: Coding?) {
		self.init(json: nil)
		if nil != paymentStatus {
			self.paymentStatus = paymentStatus
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
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
			if let val = js["paymentStatus"] as? NSDictionary {
				self.paymentStatus = Coding(json: val, owner: self)
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

