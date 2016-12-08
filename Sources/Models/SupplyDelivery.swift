//
//  SupplyDelivery.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/SupplyDelivery) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
Delivery of Supply.

Record of delivery of what is supplied.
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
	
	/// A code specifying the state of the dispense event.
	public var status: SupplyDeliveryStatus?
	
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
		
		destination = try createInstance(type: Reference.self, for: "destination", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? destination
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		receiver = try createInstances(of: Reference.self, for: "receiver", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? receiver
		status = createEnum(type: SupplyDeliveryStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		suppliedItemCodeableConcept = try createInstance(type: CodeableConcept.self, for: "suppliedItemCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? suppliedItemCodeableConcept
		suppliedItemReference = try createInstance(type: Reference.self, for: "suppliedItemReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? suppliedItemReference
		supplier = try createInstance(type: Reference.self, for: "supplier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supplier
		time = try createInstance(type: DateTime.self, for: "time", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? time
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		whenPrepared = try createInstance(type: Period.self, for: "whenPrepared", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whenPrepared
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.destination?.decorate(json: &json, withKey: "destination", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "receiver", using: self.receiver, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.suppliedItemCodeableConcept?.decorate(json: &json, withKey: "suppliedItemCodeableConcept", errors: &errors)
		self.suppliedItemReference?.decorate(json: &json, withKey: "suppliedItemReference", errors: &errors)
		self.supplier?.decorate(json: &json, withKey: "supplier", errors: &errors)
		self.time?.decorate(json: &json, withKey: "time", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.whenPrepared?.decorate(json: &json, withKey: "whenPrepared", errors: &errors)
	}
}

