//
//  Supply.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/Supply) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A supply -  request and provision.
 *
 *  A supply - a  request for something, and provision of what is supplied.
 */
public class Supply: DomainResource
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let dispense = self.dispense {
			json["dispense"] = SupplyDispense.asJSONArray(dispense)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let kind = self.kind {
			json["kind"] = kind.asJSON()
		}
		if let orderedItem = self.orderedItem {
			json["orderedItem"] = orderedItem.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
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
	
	/// in-progress | dispensed | abandoned
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let destination = self.destination {
			json["destination"] = destination.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let receiver = self.receiver {
			json["receiver"] = Reference.asJSONArray(receiver)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let suppliedItem = self.suppliedItem {
			json["suppliedItem"] = suppliedItem.asJSON()
		}
		if let supplier = self.supplier {
			json["supplier"] = supplier.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let whenHandedOver = self.whenHandedOver {
			json["whenHandedOver"] = whenHandedOver.asJSON()
		}
		if let whenPrepared = self.whenPrepared {
			json["whenPrepared"] = whenPrepared.asJSON()
		}
		
		return json
	}
}

