//
//  SupplyDelivery.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/SupplyDelivery) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Delivery of Supply.
 *
 *  Record of delivery of what is supplied.
 */
public class SupplyDelivery: DomainResource {
	override public class var resourceName: String {
		get { return "SupplyDelivery" }
	}
	
	/// Where the Supply was sent.
	public var destination: Reference?
	
	/// External identifier.
	public var identifier: Identifier?
	
	/// Patient for whom the item is supplied.
	public var patient: Reference?
	
	/// Amount dispensed.
	public var quantity: Quantity?
	
	/// Who collected the Supply.
	public var receiver: [Reference]?
	
	/// in-progress | completed | abandoned.
	public var status: String?
	
	/// Medication, Substance, or Device supplied.
	public var suppliedItemCodeableConcept: CodeableConcept?
	
	/// Medication, Substance, or Device supplied.
	public var suppliedItemReference: Reference?
	
	/// Dispenser.
	public var supplier: Reference?
	
	/// Handover time.
	public var time: DateTime?
	
	/// Category of dispense event.
	public var type: CodeableConcept?
	
	/// Dispensing time.
	public var whenPrepared: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? FHIRJSON {
					self.destination = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["receiver"] {
				presentKeys.insert("receiver")
				if let val = exist as? [FHIRJSON] {
					self.receiver = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "receiver", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["suppliedItemCodeableConcept"] {
				presentKeys.insert("suppliedItemCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.suppliedItemCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "suppliedItemCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["suppliedItemReference"] {
				presentKeys.insert("suppliedItemReference")
				if let val = exist as? FHIRJSON {
					self.suppliedItemReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "suppliedItemReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["supplier"] {
				presentKeys.insert("supplier")
				if let val = exist as? FHIRJSON {
					self.supplier = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "supplier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["time"] {
				presentKeys.insert("time")
				if let val = exist as? String {
					self.time = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "time", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["whenPrepared"] {
				presentKeys.insert("whenPrepared")
				if let val = exist as? FHIRJSON {
					self.whenPrepared = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "whenPrepared", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
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
		if let suppliedItemCodeableConcept = self.suppliedItemCodeableConcept {
			json["suppliedItemCodeableConcept"] = suppliedItemCodeableConcept.asJSON()
		}
		if let suppliedItemReference = self.suppliedItemReference {
			json["suppliedItemReference"] = suppliedItemReference.asJSON()
		}
		if let supplier = self.supplier {
			json["supplier"] = supplier.asJSON()
		}
		if let time = self.time {
			json["time"] = time.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let whenPrepared = self.whenPrepared {
			json["whenPrepared"] = whenPrepared.asJSON()
		}
		
		return json
	}
}

