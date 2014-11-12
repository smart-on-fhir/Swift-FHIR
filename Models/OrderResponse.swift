//
//  OrderResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (orderresponse.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A response to an order.
 *
 *  Scope and Usage The response to an order indicates the outcome of processing the order itself - whether it was
 *  accepted or rejected, or is still in process. The order response resource does not itself convey or represent
 *  information that arises as a result of performing the actual order, but it may have references to other resources
 *  that do have this information, in order to link between the original order and its outcome.
 */
public class OrderResponse: FHIRResource
{
	override public class var resourceName: String {
		get { return "OrderResponse" }
	}
	
	/// If required by policy
	public var authorityCodeableConcept: CodeableConcept?
	
	/// If required by policy
	public var authorityResource: FHIRReference<FHIRResource>?
	
	/// pending | review | rejected | error | accepted | cancelled | replaced | aborted | complete
	public var code: String?
	
	/// When the response was made
	public var date: NSDate?
	
	/// Additional description of the response
	public var description: String?
	
	/// Details of the outcome of performing the order
	public var fulfillment: [FHIRReference<FHIRResource>]?
	
	/// Identifiers assigned to this order by the orderer or by the receiver
	public var identifier: [Identifier]?
	
	/// The order that this is a response to
	public var request: FHIRReference<Order>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Who made the response
	public var who: FHIRReference<Practitioner>?
	
	public convenience init(code: String?, request: FHIRReference<Order>?) {
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
			if let val = js["authorityResource"] as? NSDictionary {
				self.authorityResource = FHIRReference(json: val, owner: self)
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
				self.fulfillment = FHIRReference.from(val, owner: self)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["request"] as? NSDictionary {
				self.request = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val, owner: self)
			}
			if let val = js["who"] as? NSDictionary {
				self.who = FHIRReference(json: val, owner: self)
			}
		}
	}
}

