//
//  OrderResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A response to an order.
 *
 *  Scope and Usage The response to an order indicates the outcome of processing the order itself - whether it was
 *  accepted or rejected, or is still in process. The order response resource does not itself convey or represent
 *  information that arises as a result of performing the actual order, but it may have references to other
 *  resources that do have this information, in order to link between the original order and its outcome.
 */
class OrderResponse: FHIRResource
{
	override var resourceName: String {
		get { return "OrderResponse" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! Identifiers assigned to this order by the orderer or by the receiver */
	var identifier: Identifier[]?
	
	/*! The order that this is a response to */
	var request: ResourceReference?
	
	/*! When the response was made */
	var date: NSDate?
	
	/*! Who made the response */
	var who: ResourceReference?
	
	/*! If required by policy */
	var authorityResourceReference: ResourceReference?
	
	/*! If required by policy */
	var authorityCodeableConcept: CodeableConcept?
	
	/*! pending | review | rejected | error | accepted | cancelled | replaced | aborted | complete */
	var code: String?
	
	/*! Additional description of the response */
	var description: String?
	
	/*! Details of the outcome of performing the order */
	var fulfillment: ResourceReference[]?
	
	convenience init(request: ResourceReference?, code: String?) {
		self.init(json: nil)
		if request {
			self.request = request
		}
		if code {
			self.code = code
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["identifier"] as? Array<NSDictionary> {
				self.identifier = Identifier.from(val) as? Identifier[]
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
			if let val = js["authorityResourceReference"] as? NSDictionary {
				self.authorityResourceReference = ResourceReference(json: val)
			}
			if let val = js["authorityCodeableConcept"] as? NSDictionary {
				self.authorityCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["fulfillment"] as? Array<NSDictionary> {
				self.fulfillment = ResourceReference.from(val) as? ResourceReference[]
			}
		}
		super.init(json: json)
	}
}
