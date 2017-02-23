//
//  SupplyRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/SupplyRequest) on 2017-02-23.
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
	public var authoredOn: DateTime?
	
	/// The kind of supply (central, non-stock, etc.).
	public var category: CodeableConcept?
	
	/// The origin of the supply.
	public var deliverFrom: Reference?
	
	/// The destination of the supply.
	public var deliverTo: Reference?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// When the request should be fulfilled.
	public var occurrenceDateTime: DateTime?
	
	/// When the request should be fulfilled.
	public var occurrencePeriod: Period?
	
	/// When the request should be fulfilled.
	public var occurrenceTiming: Timing?
	
	/// The item being requested.
	public var orderedItem: SupplyRequestOrderedItem?
	
	/// Indicates how quickly this SupplyRequest should be addressed with respect to other requests.
	public var priority: RequestPriority?
	
	/// Why the supply item was requested.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Why the supply item was requested.
	public var reasonReference: Reference?
	
	/// Who/what is requesting service.
	public var requester: SupplyRequestRequester?
	
	/// Status of the supply request.
	public var status: SupplyRequestStatus?
	
	/// Who is intended to fulfill the request.
	public var supplier: [Reference]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authoredOn = try createInstance(type: DateTime.self, for: "authoredOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authoredOn
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		deliverFrom = try createInstance(type: Reference.self, for: "deliverFrom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deliverFrom
		deliverTo = try createInstance(type: Reference.self, for: "deliverTo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deliverTo
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		occurrenceDateTime = try createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceDateTime
		occurrencePeriod = try createInstance(type: Period.self, for: "occurrencePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrencePeriod
		occurrenceTiming = try createInstance(type: Timing.self, for: "occurrenceTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceTiming
		orderedItem = try createInstance(type: SupplyRequestOrderedItem.self, for: "orderedItem", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? orderedItem
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors) ?? priority
		reasonCodeableConcept = try createInstance(type: CodeableConcept.self, for: "reasonCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCodeableConcept
		reasonReference = try createInstance(type: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		requester = try createInstance(type: SupplyRequestRequester.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		status = createEnum(type: SupplyRequestStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		supplier = try createInstances(of: Reference.self, for: "supplier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supplier
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.deliverFrom?.decorate(json: &json, withKey: "deliverFrom", errors: &errors)
		self.deliverTo?.decorate(json: &json, withKey: "deliverTo", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.occurrenceTiming?.decorate(json: &json, withKey: "occurrenceTiming", errors: &errors)
		self.orderedItem?.decorate(json: &json, withKey: "orderedItem", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.reasonCodeableConcept?.decorate(json: &json, withKey: "reasonCodeableConcept", errors: &errors)
		self.reasonReference?.decorate(json: &json, withKey: "reasonReference", errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "supplier", using: self.supplier, errors: &errors)
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
Who/what is requesting service.

The individual who initiated the request and has responsibility for its activation.
*/
open class SupplyRequestRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "SupplyRequestRequester" }
	}
	
	/// Individual making the request.
	public var agent: Reference?
	
	/// Organization agent is acting for.
	public var onBehalfOf: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(agent: Reference) {
		self.init()
		self.agent = agent
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		agent = try createInstance(type: Reference.self, for: "agent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? agent
		if nil == agent && !presentKeys.contains("agent") {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		onBehalfOf = try createInstance(type: Reference.self, for: "onBehalfOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onBehalfOf
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.agent?.decorate(json: &json, withKey: "agent", errors: &errors)
		if nil == self.agent {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
	}
}

