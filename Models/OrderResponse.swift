//
//  OrderResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (orderresponse.profile.json) on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A response to an order.
 *
 *  Scope and Usage The response to an order indicates the outcome of processing the order itself - whether it was
 *  accepted or rejected, or is still in process. The order response resource does not itself convey or represent
 *  information that arises as a result of performing the actual order, but it may have references to other
 *  resources that do have this information, in order to link between the original order and its outcome.
 */
public class OrderResponse: FHIRResource
{
	override public class var resourceName: String {
		get { return "OrderResponse" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Identifiers assigned to this order by the orderer or by the receiver */
	public var identifier: [Identifier]?
	
	/** The order that this is a response to */
	public var request: FHIRElement? {
		get { return resolveReference("request") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "request")
			}
		}
	}
	
	/** When the response was made */
	public var date: NSDate?
	
	/** Who made the response */
	public var who: FHIRElement? {
		get { return resolveReference("who") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "who")
			}
		}
	}
	
	/** If required by policy */
	public var authorityCodeableConcept: CodeableConcept?
	
	/** If required by policy */
	public var authorityResourceReference: FHIRElement? {
		get { return resolveReference("authorityResourceReference") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "authorityResourceReference")
			}
		}
	}
	
	/** pending | review | rejected | error | accepted | cancelled | replaced | aborted | complete */
	public var code: String?
	
	/** Additional description of the response */
	public var description: String?
	
	/** Details of the outcome of performing the order */
	public var fulfillment: [FHIRElement]? {
		get { return resolveReferences("fulfillment") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "fulfillment")
			}
		}
	}
	
	public convenience init(request: ResourceReference?, code: String?) {
		self.init(json: nil)
		if nil != request {
			self.request = request
		}
		if nil != code {
			self.code = code
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["request"] as? NSDictionary {
				self.request = ResourceReference(json: val)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["who"] as? NSDictionary {
				self.who = ResourceReference(json: val)
			}
			if let val = js["authorityCodeableConcept"] as? NSDictionary {
				self.authorityCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["authorityResourceReference"] as? NSDictionary {
				self.authorityResourceReference = ResourceReference(json: val)
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["fulfillment"] as? [NSDictionary] {
				self.fulfillment = ResourceReference.from(val) as? [ResourceReference]
			}
		}
	}
}

