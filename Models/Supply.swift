//
//  Supply.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
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
	override class var resourceName: String {
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
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["kind"] as? NSDictionary {
				self.kind = CodeableConcept(json: val)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["orderedItem"] as? NSDictionary {
				self.orderedItem = ResourceReference(json: val)
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = ResourceReference(json: val)
			}
			if let val = js["dispense"] as? Array<NSDictionary> {
				self.dispense = SupplyDispense.from(val) as? SupplyDispense[]
			}
		}
		super.init(json: json)
	}
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
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
			}
			if let val = js["suppliedItem"] as? NSDictionary {
				self.suppliedItem = ResourceReference(json: val)
			}
			if let val = js["supplier"] as? NSDictionary {
				self.supplier = ResourceReference(json: val)
			}
			if let val = js["whenPrepared"] as? NSDictionary {
				self.whenPrepared = Period(json: val)
			}
			if let val = js["whenHandedOver"] as? NSDictionary {
				self.whenHandedOver = Period(json: val)
			}
			if let val = js["destination"] as? NSDictionary {
				self.destination = ResourceReference(json: val)
			}
			if let val = js["receiver"] as? Array<NSDictionary> {
				self.receiver = ResourceReference.from(val) as? ResourceReference[]
			}
		}
		super.init(json: json)
	}
}
