//
//  SupplyRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/SupplyRequest) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Request for a medication, substance or device.

A record of a request for a medication, substance or device used in the healthcare setting.
*/
open class SupplyRequest: DomainResource {
	override open class var resourceType: String {
		get { return "SupplyRequest" }
	}
	
	/// When the request was made.
	public var date: DateTime?
	
	/// The origin of the supply.
	public var from: Reference?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// The kind of supply (central, non-stock, etc.).
	public var kind: CodeableConcept?
	
	/// The item being requested.
	public var orderedItem: SupplyRequestOrderedItem?
	
	/// Patient for whom the item is supplied.
	public var patient: Reference?
	
	/// Why the supply item was requested.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Why the supply item was requested.
	public var reasonReference: Reference?
	
	/// Who initiated this order.
	public var source: Reference?
	
	/// Status of the supply request.
	public var status: SupplyRequestStatus?
	
	/// Who is intended to fulfill the request.
	public var supplier: [Reference]?
	
	/// The destination of the supply.
	public var to: Reference?
	
	/// When the request should be fulfilled.
	public var when: SupplyRequestWhen?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		from = try createInstance(type: Reference.self, for: "from", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? from
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		kind = try createInstance(type: CodeableConcept.self, for: "kind", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? kind
		orderedItem = try createInstance(type: SupplyRequestOrderedItem.self, for: "orderedItem", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? orderedItem
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		reasonCodeableConcept = try createInstance(type: CodeableConcept.self, for: "reasonCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCodeableConcept
		reasonReference = try createInstance(type: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		source = try createInstance(type: Reference.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		status = createEnum(type: SupplyRequestStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		supplier = try createInstances(of: Reference.self, for: "supplier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supplier
		to = try createInstance(type: Reference.self, for: "to", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? to
		when = try createInstance(type: SupplyRequestWhen.self, for: "when", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? when
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.from?.decorate(json: &json, withKey: "from", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		self.orderedItem?.decorate(json: &json, withKey: "orderedItem", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.reasonCodeableConcept?.decorate(json: &json, withKey: "reasonCodeableConcept", errors: &errors)
		self.reasonReference?.decorate(json: &json, withKey: "reasonReference", errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "supplier", using: self.supplier, errors: &errors)
		self.to?.decorate(json: &json, withKey: "to", errors: &errors)
		self.when?.decorate(json: &json, withKey: "when", errors: &errors)
	}
}


/**
The item being requested.
*/
open class SupplyRequestOrderedItem: BackboneElement {
	override open class var resourceType: String {
		get { return "SupplyRequestOrderedItem" }
	}
	
	/// Medication, Substance, or Device requested to be supplied.
	public var itemCodeableConcept: CodeableConcept?
	
	/// Medication, Substance, or Device requested to be supplied.
	public var itemReference: Reference?
	
	/// The requested amount of the item indicated.
	public var quantity: Quantity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(quantity: Quantity) {
		self.init()
		self.quantity = quantity
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		itemCodeableConcept = try createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? itemCodeableConcept
		itemReference = try createInstance(type: Reference.self, for: "itemReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? itemReference
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		if nil == quantity && !presentKeys.contains("quantity") {
			errors.append(FHIRValidationError(missing: "quantity"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		if nil == self.quantity {
			errors.append(FHIRValidationError(missing: "quantity"))
		}
	}
}


/**
When the request should be fulfilled.
*/
open class SupplyRequestWhen: BackboneElement {
	override open class var resourceType: String {
		get { return "SupplyRequestWhen" }
	}
	
	/// Fulfilment code.
	public var code: CodeableConcept?
	
	/// Formal fulfillment schedule.
	public var schedule: Timing?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		schedule = try createInstance(type: Timing.self, for: "schedule", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? schedule
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.schedule?.decorate(json: &json, withKey: "schedule", errors: &errors)
	}
}

