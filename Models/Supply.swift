//
//  Supply.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (supply.profile.json) on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A supply -  request and provision.
 *
 *  Scope and Usage The scope of the supply resource is for supplies used in the healthcare process. This includes
 *  supplies specifically used in the treatment of patients as well as supply movement within an institution
 *  (transport a set of supplies from materials management to a service unit (nurse station). This resource does
 *  not include the provisioning of transportation services.
 */
public class Supply: FHIRResource
{
	override public class var resourceName: String {
		get { return "Supply" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** The kind of supply (central, non-stock, etc) */
	public var kind: CodeableConcept?
	
	/** Unique identifier */
	public var identifier: Identifier?
	
	/** requested | dispensed | received | failed | cancelled */
	public var status: String?
	
	/** Medication, Substance, or Device requested to be supplied */
	public var orderedItem: FHIRElement? {
		get { return resolveReference("orderedItem") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "orderedItem")
			}
		}
	}
	
	/** Patient for whom the item is supplied */
	public var patient: FHIRElement? {
		get { return resolveReference("patient") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "patient")
			}
		}
	}
	
	/** Supply details */
	public var dispense: [SupplyDispense]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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
			if let val = js["dispense"] as? [NSDictionary] {
				self.dispense = SupplyDispense.from(val) as? [SupplyDispense]
			}
		}
	}
}


/**
 *  Supply details.
 *
 *  Indicates the details of the dispense event such as the days supply and quantity of a supply dispensed.
 */
public class SupplyDispense: FHIRElement
{	
	/** External identifier */
	public var identifier: Identifier?
	
	/** in progress | dispensed | abandoned */
	public var status: String?
	
	/** Category of dispense event */
	public var type: CodeableConcept?
	
	/** Amount dispensed */
	public var quantity: Quantity?
	
	/** Medication, Substance, or Device supplied */
	public var suppliedItem: FHIRElement? {
		get { return resolveReference("suppliedItem") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "suppliedItem")
			}
		}
	}
	
	/** Dispenser */
	public var supplier: FHIRElement? {
		get { return resolveReference("supplier") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "supplier")
			}
		}
	}
	
	/** Dispensing time */
	public var whenPrepared: Period?
	
	/** Handover time */
	public var whenHandedOver: Period?
	
	/** Where the Supply was sent */
	public var destination: FHIRElement? {
		get { return resolveReference("destination") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "destination")
			}
		}
	}
	
	/** Who collected the Supply */
	public var receiver: [FHIRElement]? {
		get { return resolveReferences("receiver") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "receiver")
			}
		}
	}
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
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
			if let val = js["receiver"] as? [NSDictionary] {
				self.receiver = ResourceReference.from(val) as? [ResourceReference]
			}
		}
	}
}

