//
//  Supply.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A supply -  request and provision.
 *
 *  Scope and Usage The scope of the supply resource is for supplies used in the healthcare process. This includes
 *  supplies specifically used in the treatment of patients as well as supply movement within an institution
 *  (transport a set of supplies from materials management to a service unit (nurse station). This resource does
 *  not include the provisioning of transportation services.
 */
class Supply: FHIRResource
{
	override var resourceName: String {
		get { return "Supply" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! The kind of supply (central, non-stock, etc) */
	var kind: CodeableConcept?

	/*! Unique identifier */
	var identifier: Identifier?

	/*! requested | dispensed | received | failed | cancelled */
	var status: String?

	/*! Medication, Substance, or Device requested to be supplied */
	var orderedItem: ResourceReference?

	/*! Patient for whom the item is supplied */
	var patient: ResourceReference?

	/*! Supply details */
	var dispense: SupplyDispense[]?

}


/*!
 *  Supply details.
 *
 *  Indicates the details of the dispense event such as the days supply and quantity of a supply dispensed.
 */
class SupplyDispense: FHIRElement
{
	/*! External identifier */
	var identifier: Identifier?

	/*! in progress | dispensed | abandoned */
	var status: String?

	/*! Category of dispense event */
	var type: CodeableConcept?

	/*! Amount dispensed */
	var quantity: Quantity?

	/*! Medication, Substance, or Device supplied */
	var suppliedItem: ResourceReference?

	/*! Dispenser */
	var supplier: ResourceReference?

	/*! Dispensing time */
	var whenPrepared: Period?

	/*! Handover time */
	var whenHandedOver: Period?

	/*! Where the Supply was sent */
	var destination: ResourceReference?

	/*! Who collected the Supply */
	var receiver: ResourceReference[]?

}
