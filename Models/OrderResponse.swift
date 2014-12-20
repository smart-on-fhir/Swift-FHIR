//
//  OrderResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (orderresponse.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A response to an order.
 */
public class OrderResponse: FHIRResource
{
	override public class var resourceName: String {
		get { return "OrderResponse" }
	}
	
	/// If required by policy
	public var authorityCodeableConcept: CodeableConcept?
	
	/// If required by policy
	public var authorityReference: Reference?
	
	/// pending | review | rejected | error | accepted | cancelled | replaced | aborted | complete
	public var code: String?
	
	/// When the response was made
	public var date: NSDate?
	
	/// Additional description of the response
	public var description: String?
	
	/// Details of the outcome of performing the order
	public var fulfillment: [Reference]?
	
	/// Identifiers assigned to this order by the orderer or by the receiver
	public var identifier: [Identifier]?
	
	/// The order that this is a response to
	public var request: Reference?
	
	/// Who made the response
	public var who: Reference?
	
	public convenience init(code: String?, request: Reference?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != request {
			self.request = request
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authorityCodeableConcept"] as? NSDictionary {
				self.authorityCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["authorityReference"] as? NSDictionary {
				self.authorityReference = Reference(json: val, owner: self)
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["fulfillment"] as? [NSDictionary] {
				self.fulfillment = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["request"] as? NSDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["who"] as? NSDictionary {
				self.who = Reference(json: val, owner: self)
			}
		}
	}
}

