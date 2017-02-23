//
//  SupplyDelivery.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/SupplyDelivery) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
Delivery of bulk Supplies.

Record of delivery of what is supplied.
*/
open class SupplyDelivery: DomainResource {
	override open class var resourceType: String {
		get { return "SupplyDelivery" }
	}
	
	/// Fulfills plan, proposal or order.
	public var basedOn: [Reference]?
	
	/// Where the Supply was sent.
	public var destination: Reference?
	
	/// External identifier.
	public var identifier: Identifier?
	
	/// When event occurred.
	public var occurrenceDateTime: DateTime?
	
	/// When event occurred.
	public var occurrencePeriod: Period?
	
	/// When event occurred.
	public var occurrenceTiming: Timing?
	
	/// Part of referenced event.
	public var partOf: [Reference]?
	
	/// Patient for whom the item is supplied.
	public var patient: Reference?
	
	/// Who collected the Supply.
	public var receiver: [Reference]?
	
	/// A code specifying the state of the dispense event.
	public var status: SupplyDeliveryStatus?
	
	/// The item that is delivered or supplied.
	public var suppliedItem: SupplyDeliverySuppliedItem?
	
	/// Dispenser.
	public var supplier: Reference?
	
	/// Category of dispense event.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		destination = try createInstance(type: Reference.self, for: "destination", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? destination
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		occurrenceDateTime = try createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceDateTime
		occurrencePeriod = try createInstance(type: Period.self, for: "occurrencePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrencePeriod
		occurrenceTiming = try createInstance(type: Timing.self, for: "occurrenceTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceTiming
		partOf = try createInstances(of: Reference.self, for: "partOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partOf
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		receiver = try createInstances(of: Reference.self, for: "receiver", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? receiver
		status = createEnum(type: SupplyDeliveryStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		suppliedItem = try createInstance(type: SupplyDeliverySuppliedItem.self, for: "suppliedItem", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? suppliedItem
		supplier = try createInstance(type: Reference.self, for: "supplier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supplier
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.destination?.decorate(json: &json, withKey: "destination", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.occurrenceTiming?.decorate(json: &json, withKey: "occurrenceTiming", errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		arrayDecorate(json: &json, withKey: "receiver", using: self.receiver, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.suppliedItem?.decorate(json: &json, withKey: "suppliedItem", errors: &errors)
		self.supplier?.decorate(json: &json, withKey: "supplier", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
The item that is delivered or supplied.

The item that is being delivered or has been supplied.
*/
open class SupplyDeliverySuppliedItem: BackboneElement {
	override open class var resourceType: String {
		get { return "SupplyDeliverySuppliedItem" }
	}
	
	/// Medication, Substance, or Device supplied.
	public var itemCodeableConcept: CodeableConcept?
	
	/// Medication, Substance, or Device supplied.
	public var itemReference: Reference?
	
	/// Amount dispensed.
	public var quantity: Quantity?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		itemCodeableConcept = try createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? itemCodeableConcept
		itemReference = try createInstance(type: Reference.self, for: "itemReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? itemReference
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
	}
}

