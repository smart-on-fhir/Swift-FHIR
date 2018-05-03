//
//  ClaimResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/ClaimResponse) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Remittance resource.

This resource provides the adjudication details from the processing of a Claim resource.
*/
open class ClaimResponse: DomainResource {
	override open class var resourceType: String {
		get { return "ClaimResponse" }
	}
	
	/// Insurer added line items.
	public var addItem: [ClaimResponseAddItem]?
	
	/// Request for additional information.
	public var communicationRequest: [Reference]?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: FHIRString?
	
	/// Processing errors.
	public var error: [ClaimResponseError]?
	
	/// Printed Form Identifier.
	public var form: CodeableConcept?
	
	/// Response  number.
	public var identifier: [Identifier]?
	
	/// Insurance or medical plan.
	public var insurance: [ClaimResponseInsurance]?
	
	/// Insurance issuing organization.
	public var insurer: Reference?
	
	/// Line items.
	public var item: [ClaimResponseItem]?
	
	/// queued | complete | error | partial.
	public var outcome: FHIRString?
	
	/// The subject of the Products and Services.
	public var patient: Reference?
	
	/// Party to be paid any benefits payable.
	public var payeeType: CodeableConcept?
	
	/// Payment details, if paid.
	public var payment: ClaimResponsePayment?
	
	/// Processing notes.
	public var processNote: [ClaimResponseProcessNote]?
	
	/// Id of resource triggering adjudication.
	public var request: Reference?
	
	/// Responsible practitioner.
	public var requestProvider: Reference?
	
	/// Funds reserved status.
	public var reserved: Coding?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	/// Finer grained claim type information.
	public var subType: [CodeableConcept]?
	
	/// Adjudication totals.
	public var total: [ClaimResponseTotal]?
	
	/// Type or discipline.
	public var type: CodeableConcept?
	
	/// Complete (Bill or Claim), Proposed (Pre-Authorization), Exploratory (Pre-determination).
	public var use: Use?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		addItem = createInstances(of: ClaimResponseAddItem.self, for: "addItem", in: json, context: &instCtx, owner: self) ?? addItem
		communicationRequest = createInstances(of: Reference.self, for: "communicationRequest", in: json, context: &instCtx, owner: self) ?? communicationRequest
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		disposition = createInstance(type: FHIRString.self, for: "disposition", in: json, context: &instCtx, owner: self) ?? disposition
		error = createInstances(of: ClaimResponseError.self, for: "error", in: json, context: &instCtx, owner: self) ?? error
		form = createInstance(type: CodeableConcept.self, for: "form", in: json, context: &instCtx, owner: self) ?? form
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		insurance = createInstances(of: ClaimResponseInsurance.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		item = createInstances(of: ClaimResponseItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		outcome = createInstance(type: FHIRString.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		payeeType = createInstance(type: CodeableConcept.self, for: "payeeType", in: json, context: &instCtx, owner: self) ?? payeeType
		payment = createInstance(type: ClaimResponsePayment.self, for: "payment", in: json, context: &instCtx, owner: self) ?? payment
		processNote = createInstances(of: ClaimResponseProcessNote.self, for: "processNote", in: json, context: &instCtx, owner: self) ?? processNote
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		requestProvider = createInstance(type: Reference.self, for: "requestProvider", in: json, context: &instCtx, owner: self) ?? requestProvider
		reserved = createInstance(type: Coding.self, for: "reserved", in: json, context: &instCtx, owner: self) ?? reserved
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		subType = createInstances(of: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		total = createInstances(of: ClaimResponseTotal.self, for: "total", in: json, context: &instCtx, owner: self) ?? total
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		use = createEnum(type: Use.self, for: "use", in: json, context: &instCtx) ?? use
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "addItem", using: self.addItem, errors: &errors)
		arrayDecorate(json: &json, withKey: "communicationRequest", using: self.communicationRequest, errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		arrayDecorate(json: &json, withKey: "error", using: self.error, errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.payeeType?.decorate(json: &json, withKey: "payeeType", errors: &errors)
		self.payment?.decorate(json: &json, withKey: "payment", errors: &errors)
		arrayDecorate(json: &json, withKey: "processNote", using: self.processNote, errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.requestProvider?.decorate(json: &json, withKey: "requestProvider", errors: &errors)
		self.reserved?.decorate(json: &json, withKey: "reserved", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "subType", using: self.subType, errors: &errors)
		arrayDecorate(json: &json, withKey: "total", using: self.total, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
	}
}


/**
Insurer added line items.

The first tier service adjudications for payor added services.
*/
open class ClaimResponseAddItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseAddItem" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Detail sequence number.
	public var detailSequence: [FHIRInteger]?
	
	/// Professional fee or Product charge.
	public var fee: Money?
	
	/// Service instances.
	public var itemSequence: [FHIRInteger]?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// List of note numbers which apply.
	public var noteNumber: [FHIRInteger]?
	
	/// Group, Service or Product.
	public var service: CodeableConcept?
	
	/// Subdetail sequence number.
	public var subdetailSequence: [FHIRInteger]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ClaimResponseItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		detailSequence = createInstances(of: FHIRInteger.self, for: "detailSequence", in: json, context: &instCtx, owner: self) ?? detailSequence
		fee = createInstance(type: Money.self, for: "fee", in: json, context: &instCtx, owner: self) ?? fee
		itemSequence = createInstances(of: FHIRInteger.self, for: "itemSequence", in: json, context: &instCtx, owner: self) ?? itemSequence
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		service = createInstance(type: CodeableConcept.self, for: "service", in: json, context: &instCtx, owner: self) ?? service
		subdetailSequence = createInstances(of: FHIRInteger.self, for: "subdetailSequence", in: json, context: &instCtx, owner: self) ?? subdetailSequence
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		arrayDecorate(json: &json, withKey: "detailSequence", using: self.detailSequence, errors: &errors)
		self.fee?.decorate(json: &json, withKey: "fee", errors: &errors)
		arrayDecorate(json: &json, withKey: "itemSequence", using: self.itemSequence, errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		self.service?.decorate(json: &json, withKey: "service", errors: &errors)
		arrayDecorate(json: &json, withKey: "subdetailSequence", using: self.subdetailSequence, errors: &errors)
	}
}


/**
Processing errors.

Mutually exclusive with Services Provided (Item).
*/
open class ClaimResponseError: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseError" }
	}
	
	/// Error code detailing processing issues.
	public var code: CodeableConcept?
	
	/// Detail sequence number.
	public var detailSequence: FHIRInteger?
	
	/// Item sequence number.
	public var itemSequence: FHIRInteger?
	
	/// Subdetail sequence number.
	public var subDetailSequence: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		detailSequence = createInstance(type: FHIRInteger.self, for: "detailSequence", in: json, context: &instCtx, owner: self) ?? detailSequence
		itemSequence = createInstance(type: FHIRInteger.self, for: "itemSequence", in: json, context: &instCtx, owner: self) ?? itemSequence
		subDetailSequence = createInstance(type: FHIRInteger.self, for: "subDetailSequence", in: json, context: &instCtx, owner: self) ?? subDetailSequence
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.detailSequence?.decorate(json: &json, withKey: "detailSequence", errors: &errors)
		self.itemSequence?.decorate(json: &json, withKey: "itemSequence", errors: &errors)
		self.subDetailSequence?.decorate(json: &json, withKey: "subDetailSequence", errors: &errors)
	}
}


/**
Insurance or medical plan.

Financial instrument by which payment information for health care.
*/
open class ClaimResponseInsurance: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseInsurance" }
	}
	
	/// Business agreement.
	public var businessArrangement: FHIRString?
	
	/// Adjudication results.
	public var claimResponse: Reference?
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Is the focal Coverage.
	public var focal: FHIRBool?
	
	/// Pre-Authorization/Determination Reference.
	public var preAuthRef: [FHIRString]?
	
	/// Service instance identifier.
	public var sequence: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: Reference, focal: FHIRBool, sequence: FHIRInteger) {
		self.init()
		self.coverage = coverage
		self.focal = focal
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		businessArrangement = createInstance(type: FHIRString.self, for: "businessArrangement", in: json, context: &instCtx, owner: self) ?? businessArrangement
		claimResponse = createInstance(type: Reference.self, for: "claimResponse", in: json, context: &instCtx, owner: self) ?? claimResponse
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		if nil == coverage && !instCtx.containsKey("coverage") {
			instCtx.addError(FHIRValidationError(missing: "coverage"))
		}
		focal = createInstance(type: FHIRBool.self, for: "focal", in: json, context: &instCtx, owner: self) ?? focal
		if nil == focal && !instCtx.containsKey("focal") {
			instCtx.addError(FHIRValidationError(missing: "focal"))
		}
		preAuthRef = createInstances(of: FHIRString.self, for: "preAuthRef", in: json, context: &instCtx, owner: self) ?? preAuthRef
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.businessArrangement?.decorate(json: &json, withKey: "businessArrangement", errors: &errors)
		self.claimResponse?.decorate(json: &json, withKey: "claimResponse", errors: &errors)
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		if nil == self.coverage {
			errors.append(FHIRValidationError(missing: "coverage"))
		}
		self.focal?.decorate(json: &json, withKey: "focal", errors: &errors)
		if nil == self.focal {
			errors.append(FHIRValidationError(missing: "focal"))
		}
		arrayDecorate(json: &json, withKey: "preAuthRef", using: self.preAuthRef, errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
	}
}


/**
Line items.

The first tier service adjudications for submitted services.
*/
open class ClaimResponseItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItem" }
	}
	
	/// Adjudication details.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Detail line items.
	public var detail: [ClaimResponseItemDetail]?
	
	/// Service instance.
	public var itemSequence: FHIRInteger?
	
	/// List of note numbers which apply.
	public var noteNumber: [FHIRInteger]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(itemSequence: FHIRInteger) {
		self.init()
		self.itemSequence = itemSequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ClaimResponseItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		detail = createInstances(of: ClaimResponseItemDetail.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		itemSequence = createInstance(type: FHIRInteger.self, for: "itemSequence", in: json, context: &instCtx, owner: self) ?? itemSequence
		if nil == itemSequence && !instCtx.containsKey("itemSequence") {
			instCtx.addError(FHIRValidationError(missing: "itemSequence"))
		}
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		self.itemSequence?.decorate(json: &json, withKey: "itemSequence", errors: &errors)
		if nil == self.itemSequence {
			errors.append(FHIRValidationError(missing: "itemSequence"))
		}
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
	}
}


/**
Adjudication details.

The adjudication results.
*/
open class ClaimResponseItemAdjudication: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItemAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc..
	public var category: CodeableConcept?
	
	/// Explanation of Adjudication outcome.
	public var reason: CodeableConcept?
	
	/// Non-monetary value.
	public var value: FHIRDecimal?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: CodeableConcept) {
		self.init()
		self.category = category
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Money.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		if nil == category && !instCtx.containsKey("category") {
			instCtx.addError(FHIRValidationError(missing: "category"))
		}
		reason = createInstance(type: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		value = createInstance(type: FHIRDecimal.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		if nil == self.category {
			errors.append(FHIRValidationError(missing: "category"))
		}
		self.reason?.decorate(json: &json, withKey: "reason", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
	}
}


/**
Detail line items.

The second tier service adjudications for submitted services.
*/
open class ClaimResponseItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItemDetail" }
	}
	
	/// Detail level adjudication details.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Service instance.
	public var detailSequence: FHIRInteger?
	
	/// List of note numbers which apply.
	public var noteNumber: [FHIRInteger]?
	
	/// Subdetail line items.
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(detailSequence: FHIRInteger) {
		self.init()
		self.detailSequence = detailSequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ClaimResponseItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		detailSequence = createInstance(type: FHIRInteger.self, for: "detailSequence", in: json, context: &instCtx, owner: self) ?? detailSequence
		if nil == detailSequence && !instCtx.containsKey("detailSequence") {
			instCtx.addError(FHIRValidationError(missing: "detailSequence"))
		}
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		subDetail = createInstances(of: ClaimResponseItemDetailSubDetail.self, for: "subDetail", in: json, context: &instCtx, owner: self) ?? subDetail
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		self.detailSequence?.decorate(json: &json, withKey: "detailSequence", errors: &errors)
		if nil == self.detailSequence {
			errors.append(FHIRValidationError(missing: "detailSequence"))
		}
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		arrayDecorate(json: &json, withKey: "subDetail", using: self.subDetail, errors: &errors)
	}
}


/**
Subdetail line items.

The third tier service adjudications for submitted services.
*/
open class ClaimResponseItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItemDetailSubDetail" }
	}
	
	/// Subdetail level adjudication details.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// List of note numbers which apply.
	public var noteNumber: [FHIRInteger]?
	
	/// Service instance.
	public var subDetailSequence: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(subDetailSequence: FHIRInteger) {
		self.init()
		self.subDetailSequence = subDetailSequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ClaimResponseItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		subDetailSequence = createInstance(type: FHIRInteger.self, for: "subDetailSequence", in: json, context: &instCtx, owner: self) ?? subDetailSequence
		if nil == subDetailSequence && !instCtx.containsKey("subDetailSequence") {
			instCtx.addError(FHIRValidationError(missing: "subDetailSequence"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		self.subDetailSequence?.decorate(json: &json, withKey: "subDetailSequence", errors: &errors)
		if nil == self.subDetailSequence {
			errors.append(FHIRValidationError(missing: "subDetailSequence"))
		}
	}
}


/**
Payment details, if paid.

Payment details for the claim if the claim has been paid.
*/
open class ClaimResponsePayment: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponsePayment" }
	}
	
	/// Payment adjustment for non-Claim issues.
	public var adjustment: Money?
	
	/// Explanation for the non-claim adjustment.
	public var adjustmentReason: CodeableConcept?
	
	/// Payable amount after adjustment.
	public var amount: Money?
	
	/// Expected data of Payment.
	public var date: FHIRDate?
	
	/// Identifier of the payment instrument.
	public var identifier: Identifier?
	
	/// Partial or Complete.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjustment = createInstance(type: Money.self, for: "adjustment", in: json, context: &instCtx, owner: self) ?? adjustment
		adjustmentReason = createInstance(type: CodeableConcept.self, for: "adjustmentReason", in: json, context: &instCtx, owner: self) ?? adjustmentReason
		amount = createInstance(type: Money.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		date = createInstance(type: FHIRDate.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.adjustment?.decorate(json: &json, withKey: "adjustment", errors: &errors)
		self.adjustmentReason?.decorate(json: &json, withKey: "adjustmentReason", errors: &errors)
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Processing notes.

Note text.
*/
open class ClaimResponseProcessNote: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseProcessNote" }
	}
	
	/// Language if different from the resource.
	public var language: CodeableConcept?
	
	/// Sequence Number for this note.
	public var number: FHIRInteger?
	
	/// Note explanatory text.
	public var text: FHIRString?
	
	/// The note purpose: Print/Display.
	public var type: NoteType?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		language = createInstance(type: CodeableConcept.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		number = createInstance(type: FHIRInteger.self, for: "number", in: json, context: &instCtx, owner: self) ?? number
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		type = createEnum(type: NoteType.self, for: "type", in: json, context: &instCtx) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.number?.decorate(json: &json, withKey: "number", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Adjudication totals.

Totals for amounts submitted, co-pays, benefits payable etc.
*/
open class ClaimResponseTotal: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseTotal" }
	}
	
	/// Monetary amount.
	public var amount: Money?
	
	/// Adjudication category such as submitted, co-pay, eligible, benefit, etc..
	public var category: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(amount: Money, category: CodeableConcept) {
		self.init()
		self.amount = amount
		self.category = category
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Money.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		if nil == amount && !instCtx.containsKey("amount") {
			instCtx.addError(FHIRValidationError(missing: "amount"))
		}
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		if nil == category && !instCtx.containsKey("category") {
			instCtx.addError(FHIRValidationError(missing: "category"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		if nil == self.amount {
			errors.append(FHIRValidationError(missing: "amount"))
		}
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		if nil == self.category {
			errors.append(FHIRValidationError(missing: "category"))
		}
	}
}

