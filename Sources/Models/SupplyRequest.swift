//
//  SupplyRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/SupplyRequest) on 2019-03-01.
//  2019, SMART Health IT.
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
	
	/// Business Identifier for SupplyRequest.
	public var identifier: [Identifier]?
	
	/// Medication, Substance, or Device requested to be supplied.
	public var itemCodeableConcept: CodeableConcept?
	
	/// Medication, Substance, or Device requested to be supplied.
	public var itemReference: Reference?
	
	/// When the request should be fulfilled.
	public var occurrenceDateTime: DateTime?
	
	/// When the request should be fulfilled.
	public var occurrencePeriod: Period?
	
	/// When the request should be fulfilled.
	public var occurrenceTiming: Timing?
	
	/// Ordered item details.
	public var parameter: [SupplyRequestParameter]?
	
	/// Indicates how quickly this SupplyRequest should be addressed with respect to other requests.
	public var priority: RequestPriority?
	
	/// The requested amount of the item indicated.
	public var quantity: Quantity?
	
	/// The reason why the supply item was requested.
	public var reasonCode: [CodeableConcept]?
	
	/// The reason why the supply item was requested.
	public var reasonReference: [Reference]?
	
	/// Individual making the request.
	public var requester: Reference?
	
	/// Status of the supply request.
	public var status: SupplyRequestStatus?
	
	/// Who is intended to fulfill the request.
	public var supplier: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Any, quantity: Quantity) {
		self.init()
		if let value = item as? CodeableConcept {
			self.itemCodeableConcept = value
		}
		else if let value = item as? Reference {
			self.itemReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: item))” for property “\(item)” is invalid, ignoring")
		}
		self.quantity = quantity
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authoredOn = createInstance(type: DateTime.self, for: "authoredOn", in: json, context: &instCtx, owner: self) ?? authoredOn
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		deliverFrom = createInstance(type: Reference.self, for: "deliverFrom", in: json, context: &instCtx, owner: self) ?? deliverFrom
		deliverTo = createInstance(type: Reference.self, for: "deliverTo", in: json, context: &instCtx, owner: self) ?? deliverTo
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		itemCodeableConcept = createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, context: &instCtx, owner: self) ?? itemCodeableConcept
		itemReference = createInstance(type: Reference.self, for: "itemReference", in: json, context: &instCtx, owner: self) ?? itemReference
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		occurrencePeriod = createInstance(type: Period.self, for: "occurrencePeriod", in: json, context: &instCtx, owner: self) ?? occurrencePeriod
		occurrenceTiming = createInstance(type: Timing.self, for: "occurrenceTiming", in: json, context: &instCtx, owner: self) ?? occurrenceTiming
		parameter = createInstances(of: SupplyRequestParameter.self, for: "parameter", in: json, context: &instCtx, owner: self) ?? parameter
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		if nil == quantity && !instCtx.containsKey("quantity") {
			instCtx.addError(FHIRValidationError(missing: "quantity"))
		}
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		requester = createInstance(type: Reference.self, for: "requester", in: json, context: &instCtx, owner: self) ?? requester
		status = createEnum(type: SupplyRequestStatus.self, for: "status", in: json, context: &instCtx) ?? status
		supplier = createInstances(of: Reference.self, for: "supplier", in: json, context: &instCtx, owner: self) ?? supplier
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			instCtx.addError(FHIRValidationError(missing: "item[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.deliverFrom?.decorate(json: &json, withKey: "deliverFrom", errors: &errors)
		self.deliverTo?.decorate(json: &json, withKey: "deliverTo", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.occurrenceTiming?.decorate(json: &json, withKey: "occurrenceTiming", errors: &errors)
		arrayDecorate(json: &json, withKey: "parameter", using: self.parameter, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		if nil == self.quantity {
			errors.append(FHIRValidationError(missing: "quantity"))
		}
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "supplier", using: self.supplier, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
	}
}


/**
Ordered item details.

Specific parameters for the ordered item.  For example, the size of the indicated item.
*/
open class SupplyRequestParameter: BackboneElement {
	override open class var resourceType: String {
		get { return "SupplyRequestParameter" }
	}
	
	/// Item detail.
	public var code: CodeableConcept?
	
	/// Value of detail.
	public var valueBoolean: FHIRBool?
	
	/// Value of detail.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value of detail.
	public var valueQuantity: Quantity?
	
	/// Value of detail.
	public var valueRange: Range?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueRange = createInstance(type: Range.self, for: "valueRange", in: json, context: &instCtx, owner: self) ?? valueRange
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
	}
}

