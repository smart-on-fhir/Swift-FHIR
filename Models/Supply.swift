//
//  Supply.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (supply.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["dispense"] as? [JSONDictionary] {
				self.dispense = SupplyDispense.from(val, owner: self) as? [SupplyDispense]
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["kind"] as? JSONDictionary {
				self.kind = CodeableConcept(json: val, owner: self)
			}
			if let val = js["orderedItem"] as? JSONDictionary {
				self.orderedItem = Reference(json: val, owner: self)
			}
			if let val = js["patient"] as? JSONDictionary {
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
	public var whenHandedOver: DateTime?
	
	/// Dispensing time
	public var whenPrepared: Period?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["destination"] as? JSONDictionary {
				self.destination = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["receiver"] as? [JSONDictionary] {
				self.receiver = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["suppliedItem"] as? JSONDictionary {
				self.suppliedItem = Reference(json: val, owner: self)
			}
			if let val = js["supplier"] as? JSONDictionary {
				self.supplier = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["whenHandedOver"] as? String {
				self.whenHandedOver = DateTime(string: val)
			}
			if let val = js["whenPrepared"] as? JSONDictionary {
				self.whenPrepared = Period(json: val, owner: self)
			}
		}
	}
}

