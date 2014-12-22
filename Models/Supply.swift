//
//  Supply.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (supply.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A supply -  request and provision.
 *
 *  A supply - a  request for something, and provision of what is supplied.
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
	public var orderedItem: Reference?
	
	/// Patient for whom the item is supplied
	public var patient: Reference?
	
	/// requested | dispensed | received | failed | cancelled
	public var status: String?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["dispense"] as? [NSDictionary] {
				self.dispense = SupplyDispense.from(val, owner: self) as? [SupplyDispense]
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["kind"] as? NSDictionary {
				self.kind = CodeableConcept(json: val, owner: self)
			}
			if let val = js["orderedItem"] as? NSDictionary {
				self.orderedItem = Reference(json: val, owner: self)
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
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
	override public class var resourceName: String {
		get { return "SupplyDispense" }
	}
	
	/// Where the Supply was sent
	public var destination: Reference?
	
	/// External identifier
	public var identifier: Identifier?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Who collected the Supply
	public var receiver: [Reference]?
	
	/// in progress | dispensed | abandoned
	public var status: String?
	
	/// Medication, Substance, or Device supplied
	public var suppliedItem: Reference?
	
	/// Dispenser
	public var supplier: Reference?
	
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
				self.destination = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["receiver"] as? [NSDictionary] {
				self.receiver = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["suppliedItem"] as? NSDictionary {
				self.suppliedItem = Reference(json: val, owner: self)
			}
			if let val = js["supplier"] as? NSDictionary {
				self.supplier = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["whenHandedOver"] as? NSDictionary {
				self.whenHandedOver = Period(json: val, owner: self)
			}
			if let val = js["whenPrepared"] as? NSDictionary {
				self.whenPrepared = Period(json: val, owner: self)
			}
		}
	}
}

