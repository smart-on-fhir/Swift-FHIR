//
//  SupplyDelivery.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/SupplyDelivery) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		destination = createInstance(type: Reference.self, for: "destination", in: json, context: &instCtx, owner: self) ?? destination
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		occurrencePeriod = createInstance(type: Period.self, for: "occurrencePeriod", in: json, context: &instCtx, owner: self) ?? occurrencePeriod
		occurrenceTiming = createInstance(type: Timing.self, for: "occurrenceTiming", in: json, context: &instCtx, owner: self) ?? occurrenceTiming
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		receiver = createInstances(of: Reference.self, for: "receiver", in: json, context: &instCtx, owner: self) ?? receiver
		status = createEnum(type: SupplyDeliveryStatus.self, for: "status", in: json, context: &instCtx) ?? status
		suppliedItem = createInstance(type: SupplyDeliverySuppliedItem.self, for: "suppliedItem", in: json, context: &instCtx, owner: self) ?? suppliedItem
		supplier = createInstance(type: Reference.self, for: "supplier", in: json, context: &instCtx, owner: self) ?? supplier
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		itemCodeableConcept = createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, context: &instCtx, owner: self) ?? itemCodeableConcept
		itemReference = createInstance(type: Reference.self, for: "itemReference", in: json, context: &instCtx, owner: self) ?? itemReference
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
	}
}

