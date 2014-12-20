//
//  Order.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (order.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A request to perform an action.
 */
public class Order: FHIRResource
{
	override public class var resourceName: String {
		get { return "Order" }
	}
	
	/// If required by policy
	public var authority: Reference?
	
	/// When the order was made
	public var date: NSDate?
	
	/// What action is being ordered
	public var detail: [Reference]?
	
	/// Identifiers assigned to this order by the orderer or by the receiver
	public var identifier: [Identifier]?
	
	/// Text - why the order was made
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Text - why the order was made
	public var reasonReference: Reference?
	
	/// Who initiated the order
	public var source: Reference?
	
	/// Patient this order is about
	public var subject: Reference?
	
	/// Who is intended to fulfill the order
	public var target: Reference?
	
	/// When order should be fulfilled
	public var when: OrderWhen?
	
	public convenience init(detail: [Reference]?) {
		self.init(json: nil)
		if nil != detail {
			self.detail = detail
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authority"] as? NSDictionary {
				self.authority = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["detail"] as? [NSDictionary] {
				self.detail = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["reasonCodeableConcept"] as? NSDictionary {
				self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reasonReference"] as? NSDictionary {
				self.reasonReference = Reference(json: val, owner: self)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = Reference(json: val, owner: self)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["target"] as? NSDictionary {
				self.target = Reference(json: val, owner: self)
			}
			if let val = js["when"] as? NSDictionary {
				self.when = OrderWhen(json: val, owner: self)
			}
		}
	}
}


/**
 *  When order should be fulfilled.
 */
public class OrderWhen: FHIRElement
{
	override public class var resourceName: String {
		get { return "OrderWhen" }
	}
	
	/// Code specifies when request should be done. The code may simply be a priority code
	public var code: CodeableConcept?
	
	/// A formal schedule
	public var schedule: Timing?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["schedule"] as? NSDictionary {
				self.schedule = Timing(json: val, owner: self)
			}
		}
	}
}

