//
//  Supply.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Supply) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["dispense"] {
				presentKeys.addObject("dispense")
				if let val = exist as? [FHIRJSON] {
					self.dispense = SupplyDispense.from(val, owner: self) as? [SupplyDispense]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dispense\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["kind"] {
				presentKeys.addObject("kind")
				if let val = exist as? FHIRJSON {
					self.kind = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"kind\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["orderedItem"] {
				presentKeys.addObject("orderedItem")
				if let val = exist as? FHIRJSON {
					self.orderedItem = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"orderedItem\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["destination"] {
				presentKeys.addObject("destination")
				if let val = exist as? FHIRJSON {
					self.destination = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"destination\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["receiver"] {
				presentKeys.addObject("receiver")
				if let val = exist as? [FHIRJSON] {
					self.receiver = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"receiver\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["suppliedItem"] {
				presentKeys.addObject("suppliedItem")
				if let val = exist as? FHIRJSON {
					self.suppliedItem = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"suppliedItem\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["supplier"] {
				presentKeys.addObject("supplier")
				if let val = exist as? FHIRJSON {
					self.supplier = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"supplier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["whenHandedOver"] {
				presentKeys.addObject("whenHandedOver")
				if let val = exist as? String {
					self.whenHandedOver = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"whenHandedOver\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["whenPrepared"] {
				presentKeys.addObject("whenPrepared")
				if let val = exist as? FHIRJSON {
					self.whenPrepared = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"whenPrepared\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

