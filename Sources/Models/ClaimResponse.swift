//
//  ClaimResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ClaimResponse) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Response to a claim predetermination or preauthorization.

This resource provides the adjudication details from the processing of a Claim resource.
*/
open class ClaimResponse: DomainResource {
	override open class var resourceType: String {
		get { return "ClaimResponse" }
	}
	
	/// Insurer added line items.
	public var addItem: [ClaimResponseAddItem]?
	
	/// Header-level adjudication.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Request for additional information.
	public var communicationRequest: [Reference]?
	
	/// Response creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: FHIRString?
	
	/// Processing errors.
	public var error: [ClaimResponseError]?
	
	/// Printed reference or actual form.
	public var form: Attachment?
	
	/// Printed form identifier.
	public var formCode: CodeableConcept?
	
	/// Funds reserved status.
	public var fundsReserve: CodeableConcept?
	
	/// Business Identifier for a claim response.
	public var identifier: [Identifier]?
	
	/// Patient insurance information.
	public var insurance: [ClaimResponseInsurance]?
	
	/// Party responsible for reimbursement.
	public var insurer: Reference?
	
	/// Adjudication for claim line items.
	public var item: [ClaimResponseItem]?
	
	/// The outcome of the claim, predetermination, or preauthorization processing.
	public var outcome: ClaimProcessingCodes?
	
	/// The recipient of the products and services.
	public var patient: Reference?
	
	/// Party to be paid any benefits payable.
	public var payeeType: CodeableConcept?
	
	/// Payment Details.
	public var payment: ClaimResponsePayment?
	
	/// Preauthorization reference effective period.
	public var preAuthPeriod: Period?
	
	/// Preauthorization reference.
	public var preAuthRef: FHIRString?
	
	/// Note concerning adjudication.
	public var processNote: [ClaimResponseProcessNote]?
	
	/// Id of resource triggering adjudication.
	public var request: Reference?
	
	/// Party responsible for the claim.
	public var requestor: Reference?
	
	/// The status of the resource instance.
	public var status: FinancialResourceStatusCodes?
	
	/// More granular claim type.
	public var subType: CodeableConcept?
	
	/// Adjudication totals.
	public var total: [ClaimResponseTotal]?
	
	/// More granular claim type.
	public var type: CodeableConcept?
	
	/// A code to indicate whether the nature of the request is: to request adjudication of products and services
	/// previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the
	/// non-binding adjudication of the listed products and services which could be provided in the future.
	public var use: Use?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(created: DateTime, insurer: Reference, outcome: ClaimProcessingCodes, patient: Reference, status: FinancialResourceStatusCodes, type: CodeableConcept, use: Use) {
		self.init()
		self.created = created
		self.insurer = insurer
		self.outcome = outcome
		self.patient = patient
		self.status = status
		self.type = type
		self.use = use
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		addItem = createInstances(of: ClaimResponseAddItem.self, for: "addItem", in: json, context: &instCtx, owner: self) ?? addItem
		adjudication = createInstances(of: ClaimResponseItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		communicationRequest = createInstances(of: Reference.self, for: "communicationRequest", in: json, context: &instCtx, owner: self) ?? communicationRequest
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		if nil == created && !instCtx.containsKey("created") {
			instCtx.addError(FHIRValidationError(missing: "created"))
		}
		disposition = createInstance(type: FHIRString.self, for: "disposition", in: json, context: &instCtx, owner: self) ?? disposition
		error = createInstances(of: ClaimResponseError.self, for: "error", in: json, context: &instCtx, owner: self) ?? error
		form = createInstance(type: Attachment.self, for: "form", in: json, context: &instCtx, owner: self) ?? form
		formCode = createInstance(type: CodeableConcept.self, for: "formCode", in: json, context: &instCtx, owner: self) ?? formCode
		fundsReserve = createInstance(type: CodeableConcept.self, for: "fundsReserve", in: json, context: &instCtx, owner: self) ?? fundsReserve
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		insurance = createInstances(of: ClaimResponseInsurance.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		if nil == insurer && !instCtx.containsKey("insurer") {
			instCtx.addError(FHIRValidationError(missing: "insurer"))
		}
		item = createInstances(of: ClaimResponseItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		outcome = createEnum(type: ClaimProcessingCodes.self, for: "outcome", in: json, context: &instCtx) ?? outcome
		if nil == outcome && !instCtx.containsKey("outcome") {
			instCtx.addError(FHIRValidationError(missing: "outcome"))
		}
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		payeeType = createInstance(type: CodeableConcept.self, for: "payeeType", in: json, context: &instCtx, owner: self) ?? payeeType
		payment = createInstance(type: ClaimResponsePayment.self, for: "payment", in: json, context: &instCtx, owner: self) ?? payment
		preAuthPeriod = createInstance(type: Period.self, for: "preAuthPeriod", in: json, context: &instCtx, owner: self) ?? preAuthPeriod
		preAuthRef = createInstance(type: FHIRString.self, for: "preAuthRef", in: json, context: &instCtx, owner: self) ?? preAuthRef
		processNote = createInstances(of: ClaimResponseProcessNote.self, for: "processNote", in: json, context: &instCtx, owner: self) ?? processNote
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		requestor = createInstance(type: Reference.self, for: "requestor", in: json, context: &instCtx, owner: self) ?? requestor
		status = createEnum(type: FinancialResourceStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subType = createInstance(type: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		total = createInstances(of: ClaimResponseTotal.self, for: "total", in: json, context: &instCtx, owner: self) ?? total
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		use = createEnum(type: Use.self, for: "use", in: json, context: &instCtx) ?? use
		if nil == use && !instCtx.containsKey("use") {
			instCtx.addError(FHIRValidationError(missing: "use"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "addItem", using: self.addItem, errors: &errors)
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		arrayDecorate(json: &json, withKey: "communicationRequest", using: self.communicationRequest, errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		if nil == self.created {
			errors.append(FHIRValidationError(missing: "created"))
		}
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		arrayDecorate(json: &json, withKey: "error", using: self.error, errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		self.formCode?.decorate(json: &json, withKey: "formCode", errors: &errors)
		self.fundsReserve?.decorate(json: &json, withKey: "fundsReserve", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		if nil == self.insurer {
			errors.append(FHIRValidationError(missing: "insurer"))
		}
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		if nil == self.outcome {
			errors.append(FHIRValidationError(missing: "outcome"))
		}
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.payeeType?.decorate(json: &json, withKey: "payeeType", errors: &errors)
		self.payment?.decorate(json: &json, withKey: "payment", errors: &errors)
		self.preAuthPeriod?.decorate(json: &json, withKey: "preAuthPeriod", errors: &errors)
		self.preAuthRef?.decorate(json: &json, withKey: "preAuthRef", errors: &errors)
		arrayDecorate(json: &json, withKey: "processNote", using: self.processNote, errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.requestor?.decorate(json: &json, withKey: "requestor", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subType?.decorate(json: &json, withKey: "subType", errors: &errors)
		arrayDecorate(json: &json, withKey: "total", using: self.total, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
		if nil == self.use {
			errors.append(FHIRValidationError(missing: "use"))
		}
	}
}


/**
Insurer added line items.

The first-tier service adjudications for payor added product or service lines.
*/
open class ClaimResponseAddItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseAddItem" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Anatomical location.
	public var bodySite: CodeableConcept?
	
	/// Insurer added line details.
	public var detail: [ClaimResponseAddItemDetail]?
	
	/// Detail sequence number.
	public var detailSequence: [FHIRInteger]?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Item sequence number.
	public var itemSequence: [FHIRInteger]?
	
	/// Place of service or where product was supplied.
	public var locationAddress: Address?
	
	/// Place of service or where product was supplied.
	public var locationCodeableConcept: CodeableConcept?
	
	/// Place of service or where product was supplied.
	public var locationReference: Reference?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Total item cost.
	public var net: Money?
	
	/// Applicable note numbers.
	public var noteNumber: [FHIRInteger]?
	
	/// Billing, service, product, or drug code.
	public var productOrService: CodeableConcept?
	
	/// Program the product or service is provided under.
	public var programCode: [CodeableConcept]?
	
	/// Authorized providers.
	public var provider: [Reference]?
	
	/// Count of products or services.
	public var quantity: Quantity?
	
	/// Date or dates of service or product delivery.
	public var servicedDate: FHIRDate?
	
	/// Date or dates of service or product delivery.
	public var servicedPeriod: Period?
	
	/// Anatomical sub-location.
	public var subSite: [CodeableConcept]?
	
	/// Subdetail sequence number.
	public var subdetailSequence: [FHIRInteger]?
	
	/// Fee, charge or cost per item.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(adjudication: [ClaimResponseItemAdjudication], productOrService: CodeableConcept) {
		self.init()
		self.adjudication = adjudication
		self.productOrService = productOrService
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ClaimResponseItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		if (nil == adjudication || adjudication!.isEmpty) && !instCtx.containsKey("adjudication") {
			instCtx.addError(FHIRValidationError(missing: "adjudication"))
		}
		bodySite = createInstance(type: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		detail = createInstances(of: ClaimResponseAddItemDetail.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		detailSequence = createInstances(of: FHIRInteger.self, for: "detailSequence", in: json, context: &instCtx, owner: self) ?? detailSequence
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		itemSequence = createInstances(of: FHIRInteger.self, for: "itemSequence", in: json, context: &instCtx, owner: self) ?? itemSequence
		locationAddress = createInstance(type: Address.self, for: "locationAddress", in: json, context: &instCtx, owner: self) ?? locationAddress
		locationCodeableConcept = createInstance(type: CodeableConcept.self, for: "locationCodeableConcept", in: json, context: &instCtx, owner: self) ?? locationCodeableConcept
		locationReference = createInstance(type: Reference.self, for: "locationReference", in: json, context: &instCtx, owner: self) ?? locationReference
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		productOrService = createInstance(type: CodeableConcept.self, for: "productOrService", in: json, context: &instCtx, owner: self) ?? productOrService
		if nil == productOrService && !instCtx.containsKey("productOrService") {
			instCtx.addError(FHIRValidationError(missing: "productOrService"))
		}
		programCode = createInstances(of: CodeableConcept.self, for: "programCode", in: json, context: &instCtx, owner: self) ?? programCode
		provider = createInstances(of: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		servicedDate = createInstance(type: FHIRDate.self, for: "servicedDate", in: json, context: &instCtx, owner: self) ?? servicedDate
		servicedPeriod = createInstance(type: Period.self, for: "servicedPeriod", in: json, context: &instCtx, owner: self) ?? servicedPeriod
		subSite = createInstances(of: CodeableConcept.self, for: "subSite", in: json, context: &instCtx, owner: self) ?? subSite
		subdetailSequence = createInstances(of: FHIRInteger.self, for: "subdetailSequence", in: json, context: &instCtx, owner: self) ?? subdetailSequence
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		if nil == adjudication || self.adjudication!.isEmpty {
			errors.append(FHIRValidationError(missing: "adjudication"))
		}
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		arrayDecorate(json: &json, withKey: "detailSequence", using: self.detailSequence, errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "itemSequence", using: self.itemSequence, errors: &errors)
		self.locationAddress?.decorate(json: &json, withKey: "locationAddress", errors: &errors)
		self.locationCodeableConcept?.decorate(json: &json, withKey: "locationCodeableConcept", errors: &errors)
		self.locationReference?.decorate(json: &json, withKey: "locationReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		self.productOrService?.decorate(json: &json, withKey: "productOrService", errors: &errors)
		if nil == self.productOrService {
			errors.append(FHIRValidationError(missing: "productOrService"))
		}
		arrayDecorate(json: &json, withKey: "programCode", using: self.programCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "provider", using: self.provider, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.servicedDate?.decorate(json: &json, withKey: "servicedDate", errors: &errors)
		self.servicedPeriod?.decorate(json: &json, withKey: "servicedPeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "subSite", using: self.subSite, errors: &errors)
		arrayDecorate(json: &json, withKey: "subdetailSequence", using: self.subdetailSequence, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Insurer added line details.

The second-tier service adjudications for payor added services.
*/
open class ClaimResponseAddItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseAddItemDetail" }
	}
	
	/// Added items detail adjudication.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Total item cost.
	public var net: Money?
	
	/// Applicable note numbers.
	public var noteNumber: [FHIRInteger]?
	
	/// Billing, service, product, or drug code.
	public var productOrService: CodeableConcept?
	
	/// Count of products or services.
	public var quantity: Quantity?
	
	/// Insurer added line items.
	public var subDetail: [ClaimResponseAddItemDetailSubDetail]?
	
	/// Fee, charge or cost per item.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(adjudication: [ClaimResponseItemAdjudication], productOrService: CodeableConcept) {
		self.init()
		self.adjudication = adjudication
		self.productOrService = productOrService
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ClaimResponseItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		if (nil == adjudication || adjudication!.isEmpty) && !instCtx.containsKey("adjudication") {
			instCtx.addError(FHIRValidationError(missing: "adjudication"))
		}
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		productOrService = createInstance(type: CodeableConcept.self, for: "productOrService", in: json, context: &instCtx, owner: self) ?? productOrService
		if nil == productOrService && !instCtx.containsKey("productOrService") {
			instCtx.addError(FHIRValidationError(missing: "productOrService"))
		}
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		subDetail = createInstances(of: ClaimResponseAddItemDetailSubDetail.self, for: "subDetail", in: json, context: &instCtx, owner: self) ?? subDetail
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		if nil == adjudication || self.adjudication!.isEmpty {
			errors.append(FHIRValidationError(missing: "adjudication"))
		}
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		self.productOrService?.decorate(json: &json, withKey: "productOrService", errors: &errors)
		if nil == self.productOrService {
			errors.append(FHIRValidationError(missing: "productOrService"))
		}
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "subDetail", using: self.subDetail, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Insurer added line items.

The third-tier service adjudications for payor added services.
*/
open class ClaimResponseAddItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseAddItemDetailSubDetail" }
	}
	
	/// Added items detail adjudication.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Total item cost.
	public var net: Money?
	
	/// Applicable note numbers.
	public var noteNumber: [FHIRInteger]?
	
	/// Billing, service, product, or drug code.
	public var productOrService: CodeableConcept?
	
	/// Count of products or services.
	public var quantity: Quantity?
	
	/// Fee, charge or cost per item.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(adjudication: [ClaimResponseItemAdjudication], productOrService: CodeableConcept) {
		self.init()
		self.adjudication = adjudication
		self.productOrService = productOrService
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ClaimResponseItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		if (nil == adjudication || adjudication!.isEmpty) && !instCtx.containsKey("adjudication") {
			instCtx.addError(FHIRValidationError(missing: "adjudication"))
		}
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		productOrService = createInstance(type: CodeableConcept.self, for: "productOrService", in: json, context: &instCtx, owner: self) ?? productOrService
		if nil == productOrService && !instCtx.containsKey("productOrService") {
			instCtx.addError(FHIRValidationError(missing: "productOrService"))
		}
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		if nil == adjudication || self.adjudication!.isEmpty {
			errors.append(FHIRValidationError(missing: "adjudication"))
		}
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		self.productOrService?.decorate(json: &json, withKey: "productOrService", errors: &errors)
		if nil == self.productOrService {
			errors.append(FHIRValidationError(missing: "productOrService"))
		}
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Processing errors.

Errors encountered during the processing of the adjudication.
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
Patient insurance information.

Financial instruments for reimbursement for the health care products and services specified on the claim.
*/
open class ClaimResponseInsurance: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseInsurance" }
	}
	
	/// Additional provider contract number.
	public var businessArrangement: FHIRString?
	
	/// Adjudication results.
	public var claimResponse: Reference?
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Coverage to be used for adjudication.
	public var focal: FHIRBool?
	
	/// Insurance instance identifier.
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
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
	}
}


/**
Adjudication for claim line items.

A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups
of sub-details.
*/
open class ClaimResponseItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItem" }
	}
	
	/// Adjudication details.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Adjudication for claim details.
	public var detail: [ClaimResponseItemDetail]?
	
	/// Claim item instance identifier.
	public var itemSequence: FHIRInteger?
	
	/// Applicable note numbers.
	public var noteNumber: [FHIRInteger]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(adjudication: [ClaimResponseItemAdjudication], itemSequence: FHIRInteger) {
		self.init()
		self.adjudication = adjudication
		self.itemSequence = itemSequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ClaimResponseItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		if (nil == adjudication || adjudication!.isEmpty) && !instCtx.containsKey("adjudication") {
			instCtx.addError(FHIRValidationError(missing: "adjudication"))
		}
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
		if nil == adjudication || self.adjudication!.isEmpty {
			errors.append(FHIRValidationError(missing: "adjudication"))
		}
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

If this item is a group then the values here are a summary of the adjudication of the detail items. If this item is a
simple product or service then this is the result of the adjudication of this item.
*/
open class ClaimResponseItemAdjudication: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItemAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Money?
	
	/// Type of adjudication information.
	public var category: CodeableConcept?
	
	/// Explanation of adjudication outcome.
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
Adjudication for claim details.

A claim detail. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
*/
open class ClaimResponseItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItemDetail" }
	}
	
	/// Detail level adjudication details.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Claim detail instance identifier.
	public var detailSequence: FHIRInteger?
	
	/// Applicable note numbers.
	public var noteNumber: [FHIRInteger]?
	
	/// Adjudication for claim sub-details.
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(adjudication: [ClaimResponseItemAdjudication], detailSequence: FHIRInteger) {
		self.init()
		self.adjudication = adjudication
		self.detailSequence = detailSequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ClaimResponseItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		if (nil == adjudication || adjudication!.isEmpty) && !instCtx.containsKey("adjudication") {
			instCtx.addError(FHIRValidationError(missing: "adjudication"))
		}
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
		if nil == adjudication || self.adjudication!.isEmpty {
			errors.append(FHIRValidationError(missing: "adjudication"))
		}
		self.detailSequence?.decorate(json: &json, withKey: "detailSequence", errors: &errors)
		if nil == self.detailSequence {
			errors.append(FHIRValidationError(missing: "detailSequence"))
		}
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		arrayDecorate(json: &json, withKey: "subDetail", using: self.subDetail, errors: &errors)
	}
}


/**
Adjudication for claim sub-details.

A sub-detail adjudication of a simple product or service.
*/
open class ClaimResponseItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItemDetailSubDetail" }
	}
	
	/// Subdetail level adjudication details.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Applicable note numbers.
	public var noteNumber: [FHIRInteger]?
	
	/// Claim sub-detail instance identifier.
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
Payment Details.

Payment details for the adjudication of the claim.
*/
open class ClaimResponsePayment: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponsePayment" }
	}
	
	/// Payment adjustment for non-claim issues.
	public var adjustment: Money?
	
	/// Explanation for the adjustment.
	public var adjustmentReason: CodeableConcept?
	
	/// Payable amount after adjustment.
	public var amount: Money?
	
	/// Expected date of payment.
	public var date: FHIRDate?
	
	/// Business identifier for the payment.
	public var identifier: Identifier?
	
	/// Partial or complete payment.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(amount: Money, type: CodeableConcept) {
		self.init()
		self.amount = amount
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjustment = createInstance(type: Money.self, for: "adjustment", in: json, context: &instCtx, owner: self) ?? adjustment
		adjustmentReason = createInstance(type: CodeableConcept.self, for: "adjustmentReason", in: json, context: &instCtx, owner: self) ?? adjustmentReason
		amount = createInstance(type: Money.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		if nil == amount && !instCtx.containsKey("amount") {
			instCtx.addError(FHIRValidationError(missing: "amount"))
		}
		date = createInstance(type: FHIRDate.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.adjustment?.decorate(json: &json, withKey: "adjustment", errors: &errors)
		self.adjustmentReason?.decorate(json: &json, withKey: "adjustmentReason", errors: &errors)
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		if nil == self.amount {
			errors.append(FHIRValidationError(missing: "amount"))
		}
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Note concerning adjudication.

A note that describes or explains adjudication results in a human readable form.
*/
open class ClaimResponseProcessNote: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseProcessNote" }
	}
	
	/// Language of the text.
	public var language: CodeableConcept?
	
	/// Note instance identifier.
	public var number: FHIRInteger?
	
	/// Note explanatory text.
	public var text: FHIRString?
	
	/// The business purpose of the note text.
	public var type: NoteType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(text: FHIRString) {
		self.init()
		self.text = text
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		language = createInstance(type: CodeableConcept.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		number = createInstance(type: FHIRInteger.self, for: "number", in: json, context: &instCtx, owner: self) ?? number
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		if nil == text && !instCtx.containsKey("text") {
			instCtx.addError(FHIRValidationError(missing: "text"))
		}
		type = createEnum(type: NoteType.self, for: "type", in: json, context: &instCtx) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.number?.decorate(json: &json, withKey: "number", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		if nil == self.text {
			errors.append(FHIRValidationError(missing: "text"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Adjudication totals.

Categorized monetary totals for the adjudication.
*/
open class ClaimResponseTotal: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseTotal" }
	}
	
	/// Financial total for the category.
	public var amount: Money?
	
	/// Type of adjudication information.
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

