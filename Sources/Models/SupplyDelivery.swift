//
//  SupplyDelivery.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/SupplyDelivery) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Delivery of Supply.
 *
 *  Record of delivery of what is supplied.
 */
open class SupplyDelivery: DomainResource {
	override open class var resourceType: String {
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["destination"] {
			presentKeys.insert("destination")
			if let val = exist as? FHIRJSON {
				do {
					self.destination = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "destination"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "destination", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["receiver"] {
			presentKeys.insert("receiver")
			if let val = exist as? [FHIRJSON] {
				do {
					self.receiver = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "receiver"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "receiver", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["suppliedItemCodeableConcept"] {
			presentKeys.insert("suppliedItemCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.suppliedItemCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "suppliedItemCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "suppliedItemCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["suppliedItemReference"] {
			presentKeys.insert("suppliedItemReference")
			if let val = exist as? FHIRJSON {
				do {
					self.suppliedItemReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "suppliedItemReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "suppliedItemReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["supplier"] {
			presentKeys.insert("supplier")
			if let val = exist as? FHIRJSON {
				do {
					self.supplier = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "supplier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "supplier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["time"] {
			presentKeys.insert("time")
			if let val = exist as? String {
				self.time = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "time", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["whenPrepared"] {
			presentKeys.insert("whenPrepared")
			if let val = exist as? FHIRJSON {
				do {
					self.whenPrepared = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "whenPrepared"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "whenPrepared", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let destination = self.destination {
			json["destination"] = destination.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let receiver = self.receiver {
			json["receiver"] = receiver.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let suppliedItemCodeableConcept = self.suppliedItemCodeableConcept {
			json["suppliedItemCodeableConcept"] = suppliedItemCodeableConcept.asJSON(errors: &errors)
		}
		if let suppliedItemReference = self.suppliedItemReference {
			json["suppliedItemReference"] = suppliedItemReference.asJSON(errors: &errors)
		}
		if let supplier = self.supplier {
			json["supplier"] = supplier.asJSON(errors: &errors)
		}
		if let time = self.time {
			json["time"] = time.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let whenPrepared = self.whenPrepared {
			json["whenPrepared"] = whenPrepared.asJSON(errors: &errors)
		}
		
		return json
	}
}

