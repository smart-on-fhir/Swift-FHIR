//
//  PaymentNotice.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/PaymentNotice) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  PaymentNotice request.
 *
 *  This resource provides the status of the payment for goods and services rendered, and the request and response
 *  resource references.
 */
public class PaymentNotice: DomainResource
{
	override public class var resourceName: String {
		get { return "PaymentNotice" }
	}
	
	/// Creation date
	public var created: DateTime?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
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
			if let val = js["paymentStatus"] as? JSONDictionary {
				self.paymentStatus = Coding(json: val, owner: self)
			}
			if let val = js["provider"] as? JSONDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["request"] as? JSONDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? JSONDictionary {
				self.response = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? JSONDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let paymentStatus = self.paymentStatus {
			json["paymentStatus"] = paymentStatus.asJSON()
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let response = self.response {
			json["response"] = response.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}

