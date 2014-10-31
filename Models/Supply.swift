//
//  Supply.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (supply.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A supply -  request and provision.
 *
 *  Scope and Usage The scope of the supply resource is for supplies used in the healthcare process. This includes
 *  supplies specifically used in the treatment of patients as well as supply movement within an institution (transport
 *  a set of supplies from materials management to a service unit (nurse station). This resource does not include the
 *  provisioning of transportation services.
 */
public class Supply: FHIRResource
{
	override public class var resourceName: String {
		get { return "Supply" }
	}
	
	/// Supply details
	public var dispense: [SupplyDispense]?
	
	/// Unique identifier
	public var identifier: Identifier?
	
	/// The kind of supply (central, non-stock, etc)
	public var kind: CodeableConcept?
	
	/// Medication, Substance, or Device requested to be supplied
	public var orderedItem: FHIRReference<Medication>?
	
	/// Patient for whom the item is supplied
	public var patient: FHIRReference<Patient>?
	
	/// requested | dispensed | received | failed | cancelled
	public var status: String?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["dispense"] as? [NSDictionary] {
				self.dispense = SupplyDispense.from(val) as? [SupplyDispense]
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["kind"] as? NSDictionary {
				self.kind = CodeableConcept(json: val)
			}
			if let val = js["orderedItem"] as? NSDictionary {
				self.orderedItem = FHIRReference(json: val, owner: self)
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = FHIRReference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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
	/// Where the Supply was sent
	public var destination: FHIRReference<Location>?
	
	/// External identifier
	public var identifier: Identifier?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Who collected the Supply
	public var receiver: [FHIRReference<Practitioner>]?
	
	/// in progress | dispensed | abandoned
	public var status: String?
	
	/// Medication, Substance, or Device supplied
	public var suppliedItem: FHIRReference<Medication>?
	
	/// Dispenser
	public var supplier: FHIRReference<Practitioner>?
	
	/// Category of dispense event
	public var type: CodeableConcept?
	
	/// Handover time
	public var whenHandedOver: Period?
	
	/// Dispensing time
	public var whenPrepared: Period?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["destination"] as? NSDictionary {
				self.destination = FHIRReference(json: val, owner: self)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
			}
			if let val = js["receiver"] as? [NSDictionary] {
				self.receiver = FHIRReference.from(val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["suppliedItem"] as? NSDictionary {
				self.suppliedItem = FHIRReference(json: val, owner: self)
			}
			if let val = js["supplier"] as? NSDictionary {
				self.supplier = FHIRReference(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["whenHandedOver"] as? NSDictionary {
				self.whenHandedOver = Period(json: val)
			}
			if let val = js["whenPrepared"] as? NSDictionary {
				self.whenPrepared = Period(json: val)
			}
		}
	}
}

