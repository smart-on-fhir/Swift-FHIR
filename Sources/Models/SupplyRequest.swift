//
//  SupplyRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/SupplyRequest) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authoredOn = createInstance(type: DateTime.self, for: "authoredOn", in: json, context: &instCtx, owner: self) ?? authoredOn
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		deliverFrom = createInstance(type: Reference.self, for: "deliverFrom", in: json, context: &instCtx, owner: self) ?? deliverFrom
		deliverTo = createInstance(type: Reference.self, for: "deliverTo", in: json, context: &instCtx, owner: self) ?? deliverTo
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		occurrencePeriod = createInstance(type: Period.self, for: "occurrencePeriod", in: json, context: &instCtx, owner: self) ?? occurrencePeriod
		occurrenceTiming = createInstance(type: Timing.self, for: "occurrenceTiming", in: json, context: &instCtx, owner: self) ?? occurrenceTiming
		orderedItem = createInstance(type: SupplyRequestOrderedItem.self, for: "orderedItem", in: json, context: &instCtx, owner: self) ?? orderedItem
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		reasonCodeableConcept = createInstance(type: CodeableConcept.self, for: "reasonCodeableConcept", in: json, context: &instCtx, owner: self) ?? reasonCodeableConcept
		reasonReference = createInstance(type: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		requester = createInstance(type: SupplyRequestRequester.self, for: "requester", in: json, context: &instCtx, owner: self) ?? requester
		status = createEnum(type: SupplyRequestStatus.self, for: "status", in: json, context: &instCtx) ?? status
		supplier = createInstances(of: Reference.self, for: "supplier", in: json, context: &instCtx, owner: self) ?? supplier
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		itemCodeableConcept = createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, context: &instCtx, owner: self) ?? itemCodeableConcept
		itemReference = createInstance(type: Reference.self, for: "itemReference", in: json, context: &instCtx, owner: self) ?? itemReference
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		if nil == quantity && !instCtx.containsKey("quantity") {
			instCtx.addError(FHIRValidationError(missing: "quantity"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		agent = createInstance(type: Reference.self, for: "agent", in: json, context: &instCtx, owner: self) ?? agent
		if nil == agent && !instCtx.containsKey("agent") {
			instCtx.addError(FHIRValidationError(missing: "agent"))
		}
		onBehalfOf = createInstance(type: Reference.self, for: "onBehalfOf", in: json, context: &instCtx, owner: self) ?? onBehalfOf
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

