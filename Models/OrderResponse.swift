//
//  OrderResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	var request: ResourceReference

	/*! When the response was made */
	var date: NSDate?

	/*! Who made the response */
	var who: ResourceReference?

	/*! If required by policy */
	var authorityResourceReference: ResourceReference?

	/*! If required by policy */
	var authorityCodeableConcept: CodeableConcept?

	/*! pending | review | rejected | error | accepted | cancelled | replaced | aborted | complete */
	var code: String

	/*! Additional description of the response */
	var description: String?

	/*! Details of the outcome of performing the order */
	var fulfillment: ResourceReference[]?

	init(request: ResourceReference, code: String) {
		self.request = request
		self.code = code
	}
}
