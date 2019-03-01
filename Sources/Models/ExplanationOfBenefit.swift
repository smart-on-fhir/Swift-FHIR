//
//  ExplanationOfBenefit.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Explanation of Benefit resource.

This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account
balance information, for informing the subscriber of the benefits provided.
*/
open class ExplanationOfBenefit: DomainResource {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefit" }
	}
	
	/// Details of the event.
	public var accident: ExplanationOfBenefitAccident?
	
	/// Insurer added line items.
	public var addItem: [ExplanationOfBenefitAddItem]?
	
	/// Header-level adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Balance by Benefit Category.
	public var benefitBalance: [ExplanationOfBenefitBenefitBalance]?
	
	/// When the benefits are applicable.
	public var benefitPeriod: Period?
	
	/// Relevant time frame for the claim.
	public var billablePeriod: Period?
	
	/// Care Team members.
	public var careTeam: [ExplanationOfBenefitCareTeam]?
	
	/// Claim reference.
	public var claim: Reference?
	
	/// Claim response reference.
	public var claimResponse: Reference?
	
	/// Response creation date.
	public var created: DateTime?
	
	/// Pertinent diagnosis information.
	public var diagnosis: [ExplanationOfBenefitDiagnosis]?
	
	/// Disposition Message.
	public var disposition: FHIRString?
	
	/// Author of the claim.
	public var enterer: Reference?
	
	/// Servicing Facility.
	public var facility: Reference?
	
	/// Printed reference or actual form.
	public var form: Attachment?
	
	/// Printed form identifier.
	public var formCode: CodeableConcept?
	
	/// Funds reserved status.
	public var fundsReserve: CodeableConcept?
	
	/// For whom to reserve funds.
	public var fundsReserveRequested: CodeableConcept?
	
	/// Business Identifier for the resource.
	public var identifier: [Identifier]?
	
	/// Patient insurance information.
	public var insurance: [ExplanationOfBenefitInsurance]?
	
	/// Party responsible for reimbursement.
	public var insurer: Reference?
	
	/// Product or service provided.
	public var item: [ExplanationOfBenefitItem]?
	
	/// Original prescription if superceded by fulfiller.
	public var originalPrescription: Reference?
	
	/// The outcome of the claim, predetermination, or preauthorization processing.
	public var outcome: ClaimProcessingCodes?
	
	/// The recipient of the products and services.
	public var patient: Reference?
	
	/// Recipient of benefits payable.
	public var payee: ExplanationOfBenefitPayee?
	
	/// Payment Details.
	public var payment: ExplanationOfBenefitPayment?
	
	/// Preauthorization reference.
	public var preAuthRef: [FHIRString]?
	
	/// Preauthorization in-effect period.
	public var preAuthRefPeriod: [Period]?
	
	/// Precedence (primary, secondary, etc.).
	public var precedence: FHIRInteger?
	
	/// Prescription authorizing services or products.
	public var prescription: Reference?
	
	/// Desired processing urgency.
	public var priority: CodeableConcept?
	
	/// Clinical procedures performed.
	public var procedure: [ExplanationOfBenefitProcedure]?
	
	/// Note concerning adjudication.
	public var processNote: [ExplanationOfBenefitProcessNote]?
	
	/// Party responsible for the claim.
	public var provider: Reference?
	
	/// Treatment Referral.
	public var referral: Reference?
	
	/// Prior or corollary claims.
	public var related: [ExplanationOfBenefitRelated]?
	
	/// The status of the resource instance.
	public var status: ExplanationOfBenefitStatus?
	
	/// More granular claim type.
	public var subType: CodeableConcept?
	
	/// Supporting information.
	public var supportingInfo: [ExplanationOfBenefitSupportingInfo]?
	
	/// Adjudication totals.
	public var total: [ExplanationOfBenefitTotal]?
	
	/// Category or discipline.
	public var type: CodeableConcept?
	
	/// A code to indicate whether the nature of the request is: to request adjudication of products and services
	/// previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the
	/// non-binding adjudication of the listed products and services which could be provided in the future.
	public var use: Use?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(created: DateTime, insurance: [ExplanationOfBenefitInsurance], insurer: Reference, outcome: ClaimProcessingCodes, patient: Reference, provider: Reference, status: ExplanationOfBenefitStatus, type: CodeableConcept, use: Use) {
		self.init()
		self.created = created
		self.insurance = insurance
		self.insurer = insurer
		self.outcome = outcome
		self.patient = patient
		self.provider = provider
		self.status = status
		self.type = type
		self.use = use
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		accident = createInstance(type: ExplanationOfBenefitAccident.self, for: "accident", in: json, context: &instCtx, owner: self) ?? accident
		addItem = createInstances(of: ExplanationOfBenefitAddItem.self, for: "addItem", in: json, context: &instCtx, owner: self) ?? addItem
		adjudication = createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		benefitBalance = createInstances(of: ExplanationOfBenefitBenefitBalance.self, for: "benefitBalance", in: json, context: &instCtx, owner: self) ?? benefitBalance
		benefitPeriod = createInstance(type: Period.self, for: "benefitPeriod", in: json, context: &instCtx, owner: self) ?? benefitPeriod
		billablePeriod = createInstance(type: Period.self, for: "billablePeriod", in: json, context: &instCtx, owner: self) ?? billablePeriod
		careTeam = createInstances(of: ExplanationOfBenefitCareTeam.self, for: "careTeam", in: json, context: &instCtx, owner: self) ?? careTeam
		claim = createInstance(type: Reference.self, for: "claim", in: json, context: &instCtx, owner: self) ?? claim
		claimResponse = createInstance(type: Reference.self, for: "claimResponse", in: json, context: &instCtx, owner: self) ?? claimResponse
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		if nil == created && !instCtx.containsKey("created") {
			instCtx.addError(FHIRValidationError(missing: "created"))
		}
		diagnosis = createInstances(of: ExplanationOfBenefitDiagnosis.self, for: "diagnosis", in: json, context: &instCtx, owner: self) ?? diagnosis
		disposition = createInstance(type: FHIRString.self, for: "disposition", in: json, context: &instCtx, owner: self) ?? disposition
		enterer = createInstance(type: Reference.self, for: "enterer", in: json, context: &instCtx, owner: self) ?? enterer
		facility = createInstance(type: Reference.self, for: "facility", in: json, context: &instCtx, owner: self) ?? facility
		form = createInstance(type: Attachment.self, for: "form", in: json, context: &instCtx, owner: self) ?? form
		formCode = createInstance(type: CodeableConcept.self, for: "formCode", in: json, context: &instCtx, owner: self) ?? formCode
		fundsReserve = createInstance(type: CodeableConcept.self, for: "fundsReserve", in: json, context: &instCtx, owner: self) ?? fundsReserve
		fundsReserveRequested = createInstance(type: CodeableConcept.self, for: "fundsReserveRequested", in: json, context: &instCtx, owner: self) ?? fundsReserveRequested
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		insurance = createInstances(of: ExplanationOfBenefitInsurance.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		if (nil == insurance || insurance!.isEmpty) && !instCtx.containsKey("insurance") {
			instCtx.addError(FHIRValidationError(missing: "insurance"))
		}
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		if nil == insurer && !instCtx.containsKey("insurer") {
			instCtx.addError(FHIRValidationError(missing: "insurer"))
		}
		item = createInstances(of: ExplanationOfBenefitItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		originalPrescription = createInstance(type: Reference.self, for: "originalPrescription", in: json, context: &instCtx, owner: self) ?? originalPrescription
		outcome = createEnum(type: ClaimProcessingCodes.self, for: "outcome", in: json, context: &instCtx) ?? outcome
		if nil == outcome && !instCtx.containsKey("outcome") {
			instCtx.addError(FHIRValidationError(missing: "outcome"))
		}
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		payee = createInstance(type: ExplanationOfBenefitPayee.self, for: "payee", in: json, context: &instCtx, owner: self) ?? payee
		payment = createInstance(type: ExplanationOfBenefitPayment.self, for: "payment", in: json, context: &instCtx, owner: self) ?? payment
		preAuthRef = createInstances(of: FHIRString.self, for: "preAuthRef", in: json, context: &instCtx, owner: self) ?? preAuthRef
		preAuthRefPeriod = createInstances(of: Period.self, for: "preAuthRefPeriod", in: json, context: &instCtx, owner: self) ?? preAuthRefPeriod
		precedence = createInstance(type: FHIRInteger.self, for: "precedence", in: json, context: &instCtx, owner: self) ?? precedence
		prescription = createInstance(type: Reference.self, for: "prescription", in: json, context: &instCtx, owner: self) ?? prescription
		priority = createInstance(type: CodeableConcept.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		procedure = createInstances(of: ExplanationOfBenefitProcedure.self, for: "procedure", in: json, context: &instCtx, owner: self) ?? procedure
		processNote = createInstances(of: ExplanationOfBenefitProcessNote.self, for: "processNote", in: json, context: &instCtx, owner: self) ?? processNote
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		if nil == provider && !instCtx.containsKey("provider") {
			instCtx.addError(FHIRValidationError(missing: "provider"))
		}
		referral = createInstance(type: Reference.self, for: "referral", in: json, context: &instCtx, owner: self) ?? referral
		related = createInstances(of: ExplanationOfBenefitRelated.self, for: "related", in: json, context: &instCtx, owner: self) ?? related
		status = createEnum(type: ExplanationOfBenefitStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subType = createInstance(type: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		supportingInfo = createInstances(of: ExplanationOfBenefitSupportingInfo.self, for: "supportingInfo", in: json, context: &instCtx, owner: self) ?? supportingInfo
		total = createInstances(of: ExplanationOfBenefitTotal.self, for: "total", in: json, context: &instCtx, owner: self) ?? total
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
		
		self.accident?.decorate(json: &json, withKey: "accident", errors: &errors)
		arrayDecorate(json: &json, withKey: "addItem", using: self.addItem, errors: &errors)
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		arrayDecorate(json: &json, withKey: "benefitBalance", using: self.benefitBalance, errors: &errors)
		self.benefitPeriod?.decorate(json: &json, withKey: "benefitPeriod", errors: &errors)
		self.billablePeriod?.decorate(json: &json, withKey: "billablePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "careTeam", using: self.careTeam, errors: &errors)
		self.claim?.decorate(json: &json, withKey: "claim", errors: &errors)
		self.claimResponse?.decorate(json: &json, withKey: "claimResponse", errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		if nil == self.created {
			errors.append(FHIRValidationError(missing: "created"))
		}
		arrayDecorate(json: &json, withKey: "diagnosis", using: self.diagnosis, errors: &errors)
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.facility?.decorate(json: &json, withKey: "facility", errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		self.formCode?.decorate(json: &json, withKey: "formCode", errors: &errors)
		self.fundsReserve?.decorate(json: &json, withKey: "fundsReserve", errors: &errors)
		self.fundsReserveRequested?.decorate(json: &json, withKey: "fundsReserveRequested", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		if nil == insurance || self.insurance!.isEmpty {
			errors.append(FHIRValidationError(missing: "insurance"))
		}
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		if nil == self.insurer {
			errors.append(FHIRValidationError(missing: "insurer"))
		}
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.originalPrescription?.decorate(json: &json, withKey: "originalPrescription", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		if nil == self.outcome {
			errors.append(FHIRValidationError(missing: "outcome"))
		}
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.payee?.decorate(json: &json, withKey: "payee", errors: &errors)
		self.payment?.decorate(json: &json, withKey: "payment", errors: &errors)
		arrayDecorate(json: &json, withKey: "preAuthRef", using: self.preAuthRef, errors: &errors)
		arrayDecorate(json: &json, withKey: "preAuthRefPeriod", using: self.preAuthRefPeriod, errors: &errors)
		self.precedence?.decorate(json: &json, withKey: "precedence", errors: &errors)
		self.prescription?.decorate(json: &json, withKey: "prescription", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "procedure", using: self.procedure, errors: &errors)
		arrayDecorate(json: &json, withKey: "processNote", using: self.processNote, errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		if nil == self.provider {
			errors.append(FHIRValidationError(missing: "provider"))
		}
		self.referral?.decorate(json: &json, withKey: "referral", errors: &errors)
		arrayDecorate(json: &json, withKey: "related", using: self.related, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subType?.decorate(json: &json, withKey: "subType", errors: &errors)
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
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
Details of the event.

Details of a accident which resulted in injuries which required the products and services listed in the claim.
*/
open class ExplanationOfBenefitAccident: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAccident" }
	}
	
	/// When the incident occurred.
	public var date: FHIRDate?
	
	/// Where the event occurred.
	public var locationAddress: Address?
	
	/// Where the event occurred.
	public var locationReference: Reference?
	
	/// The nature of the accident.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: FHIRDate.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		locationAddress = createInstance(type: Address.self, for: "locationAddress", in: json, context: &instCtx, owner: self) ?? locationAddress
		locationReference = createInstance(type: Reference.self, for: "locationReference", in: json, context: &instCtx, owner: self) ?? locationReference
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.locationAddress?.decorate(json: &json, withKey: "locationAddress", errors: &errors)
		self.locationReference?.decorate(json: &json, withKey: "locationReference", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Insurer added line items.

The first-tier service adjudications for payor added product or service lines.
*/
open class ExplanationOfBenefitAddItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAddItem" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Anatomical location.
	public var bodySite: CodeableConcept?
	
	/// Insurer added line items.
	public var detail: [ExplanationOfBenefitAddItemDetail]?
	
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
	
	/// Subdetail sequence number.
	public var subDetailSequence: [FHIRInteger]?
	
	/// Anatomical sub-location.
	public var subSite: [CodeableConcept]?
	
	/// Fee, charge or cost per item.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(productOrService: CodeableConcept) {
		self.init()
		self.productOrService = productOrService
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		bodySite = createInstance(type: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		detail = createInstances(of: ExplanationOfBenefitAddItemDetail.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
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
		subDetailSequence = createInstances(of: FHIRInteger.self, for: "subDetailSequence", in: json, context: &instCtx, owner: self) ?? subDetailSequence
		subSite = createInstances(of: CodeableConcept.self, for: "subSite", in: json, context: &instCtx, owner: self) ?? subSite
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
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
		arrayDecorate(json: &json, withKey: "subDetailSequence", using: self.subDetailSequence, errors: &errors)
		arrayDecorate(json: &json, withKey: "subSite", using: self.subSite, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Insurer added line items.

The second-tier service adjudications for payor added services.
*/
open class ExplanationOfBenefitAddItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAddItemDetail" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
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
	public var subDetail: [ExplanationOfBenefitAddItemDetailSubDetail]?
	
	/// Fee, charge or cost per item.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(productOrService: CodeableConcept) {
		self.init()
		self.productOrService = productOrService
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		productOrService = createInstance(type: CodeableConcept.self, for: "productOrService", in: json, context: &instCtx, owner: self) ?? productOrService
		if nil == productOrService && !instCtx.containsKey("productOrService") {
			instCtx.addError(FHIRValidationError(missing: "productOrService"))
		}
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		subDetail = createInstances(of: ExplanationOfBenefitAddItemDetailSubDetail.self, for: "subDetail", in: json, context: &instCtx, owner: self) ?? subDetail
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
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
open class ExplanationOfBenefitAddItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAddItemDetailSubDetail" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
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
	public convenience init(productOrService: CodeableConcept) {
		self.init()
		self.productOrService = productOrService
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
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
Balance by Benefit Category.
*/
open class ExplanationOfBenefitBenefitBalance: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitBenefitBalance" }
	}
	
	/// Benefit classification.
	public var category: CodeableConcept?
	
	/// Description of the benefit or services covered.
	public var description_fhir: FHIRString?
	
	/// Excluded from the plan.
	public var excluded: FHIRBool?
	
	/// Benefit Summary.
	public var financial: [ExplanationOfBenefitBenefitBalanceFinancial]?
	
	/// Short name for the benefit.
	public var name: FHIRString?
	
	/// In or out of network.
	public var network: CodeableConcept?
	
	/// Annual or lifetime.
	public var term: CodeableConcept?
	
	/// Individual or family.
	public var unit: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: CodeableConcept) {
		self.init()
		self.category = category
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		if nil == category && !instCtx.containsKey("category") {
			instCtx.addError(FHIRValidationError(missing: "category"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		excluded = createInstance(type: FHIRBool.self, for: "excluded", in: json, context: &instCtx, owner: self) ?? excluded
		financial = createInstances(of: ExplanationOfBenefitBenefitBalanceFinancial.self, for: "financial", in: json, context: &instCtx, owner: self) ?? financial
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		network = createInstance(type: CodeableConcept.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		term = createInstance(type: CodeableConcept.self, for: "term", in: json, context: &instCtx, owner: self) ?? term
		unit = createInstance(type: CodeableConcept.self, for: "unit", in: json, context: &instCtx, owner: self) ?? unit
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		if nil == self.category {
			errors.append(FHIRValidationError(missing: "category"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.excluded?.decorate(json: &json, withKey: "excluded", errors: &errors)
		arrayDecorate(json: &json, withKey: "financial", using: self.financial, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.network?.decorate(json: &json, withKey: "network", errors: &errors)
		self.term?.decorate(json: &json, withKey: "term", errors: &errors)
		self.unit?.decorate(json: &json, withKey: "unit", errors: &errors)
	}
}


/**
Benefit Summary.

Benefits Used to date.
*/
open class ExplanationOfBenefitBenefitBalanceFinancial: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitBenefitBalanceFinancial" }
	}
	
	/// Benefits allowed.
	public var allowedMoney: Money?
	
	/// Benefits allowed.
	public var allowedString: FHIRString?
	
	/// Benefits allowed.
	public var allowedUnsignedInt: FHIRInteger?
	
	/// Benefit classification.
	public var type: CodeableConcept?
	
	/// Benefits used.
	public var usedMoney: Money?
	
	/// Benefits used.
	public var usedUnsignedInt: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		allowedMoney = createInstance(type: Money.self, for: "allowedMoney", in: json, context: &instCtx, owner: self) ?? allowedMoney
		allowedString = createInstance(type: FHIRString.self, for: "allowedString", in: json, context: &instCtx, owner: self) ?? allowedString
		allowedUnsignedInt = createInstance(type: FHIRInteger.self, for: "allowedUnsignedInt", in: json, context: &instCtx, owner: self) ?? allowedUnsignedInt
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		usedMoney = createInstance(type: Money.self, for: "usedMoney", in: json, context: &instCtx, owner: self) ?? usedMoney
		usedUnsignedInt = createInstance(type: FHIRInteger.self, for: "usedUnsignedInt", in: json, context: &instCtx, owner: self) ?? usedUnsignedInt
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.allowedMoney?.decorate(json: &json, withKey: "allowedMoney", errors: &errors)
		self.allowedString?.decorate(json: &json, withKey: "allowedString", errors: &errors)
		self.allowedUnsignedInt?.decorate(json: &json, withKey: "allowedUnsignedInt", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.usedMoney?.decorate(json: &json, withKey: "usedMoney", errors: &errors)
		self.usedUnsignedInt?.decorate(json: &json, withKey: "usedUnsignedInt", errors: &errors)
	}
}


/**
Care Team members.

The members of the team who provided the products and services.
*/
open class ExplanationOfBenefitCareTeam: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitCareTeam" }
	}
	
	/// Practitioner or organization.
	public var provider: Reference?
	
	/// Practitioner credential or specialization.
	public var qualification: CodeableConcept?
	
	/// Indicator of the lead practitioner.
	public var responsible: FHIRBool?
	
	/// Function within the team.
	public var role: CodeableConcept?
	
	/// Order of care team.
	public var sequence: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(provider: Reference, sequence: FHIRInteger) {
		self.init()
		self.provider = provider
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		if nil == provider && !instCtx.containsKey("provider") {
			instCtx.addError(FHIRValidationError(missing: "provider"))
		}
		qualification = createInstance(type: CodeableConcept.self, for: "qualification", in: json, context: &instCtx, owner: self) ?? qualification
		responsible = createInstance(type: FHIRBool.self, for: "responsible", in: json, context: &instCtx, owner: self) ?? responsible
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		if nil == self.provider {
			errors.append(FHIRValidationError(missing: "provider"))
		}
		self.qualification?.decorate(json: &json, withKey: "qualification", errors: &errors)
		self.responsible?.decorate(json: &json, withKey: "responsible", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
	}
}


/**
Pertinent diagnosis information.

Information about diagnoses relevant to the claim items.
*/
open class ExplanationOfBenefitDiagnosis: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitDiagnosis" }
	}
	
	/// Nature of illness or problem.
	public var diagnosisCodeableConcept: CodeableConcept?
	
	/// Nature of illness or problem.
	public var diagnosisReference: Reference?
	
	/// Present on admission.
	public var onAdmission: CodeableConcept?
	
	/// Package billing code.
	public var packageCode: CodeableConcept?
	
	/// Diagnosis instance identifier.
	public var sequence: FHIRInteger?
	
	/// Timing or nature of the diagnosis.
	public var type: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(diagnosis: Any, sequence: FHIRInteger) {
		self.init()
		if let value = diagnosis as? CodeableConcept {
			self.diagnosisCodeableConcept = value
		}
		else if let value = diagnosis as? Reference {
			self.diagnosisReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: diagnosis))” for property “\(diagnosis)” is invalid, ignoring")
		}
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		diagnosisCodeableConcept = createInstance(type: CodeableConcept.self, for: "diagnosisCodeableConcept", in: json, context: &instCtx, owner: self) ?? diagnosisCodeableConcept
		diagnosisReference = createInstance(type: Reference.self, for: "diagnosisReference", in: json, context: &instCtx, owner: self) ?? diagnosisReference
		onAdmission = createInstance(type: CodeableConcept.self, for: "onAdmission", in: json, context: &instCtx, owner: self) ?? onAdmission
		packageCode = createInstance(type: CodeableConcept.self, for: "packageCode", in: json, context: &instCtx, owner: self) ?? packageCode
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.diagnosisCodeableConcept && nil == self.diagnosisReference {
			instCtx.addError(FHIRValidationError(missing: "diagnosis[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.diagnosisCodeableConcept?.decorate(json: &json, withKey: "diagnosisCodeableConcept", errors: &errors)
		self.diagnosisReference?.decorate(json: &json, withKey: "diagnosisReference", errors: &errors)
		self.onAdmission?.decorate(json: &json, withKey: "onAdmission", errors: &errors)
		self.packageCode?.decorate(json: &json, withKey: "packageCode", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.diagnosisCodeableConcept && nil == self.diagnosisReference {
			errors.append(FHIRValidationError(missing: "diagnosis[x]"))
		}
	}
}


/**
Patient insurance information.

Financial instruments for reimbursement for the health care products and services specified on the claim.
*/
open class ExplanationOfBenefitInsurance: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitInsurance" }
	}
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Coverage to be used for adjudication.
	public var focal: FHIRBool?
	
	/// Prior authorization reference number.
	public var preAuthRef: [FHIRString]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: Reference, focal: FHIRBool) {
		self.init()
		self.coverage = coverage
		self.focal = focal
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		if nil == coverage && !instCtx.containsKey("coverage") {
			instCtx.addError(FHIRValidationError(missing: "coverage"))
		}
		focal = createInstance(type: FHIRBool.self, for: "focal", in: json, context: &instCtx, owner: self) ?? focal
		if nil == focal && !instCtx.containsKey("focal") {
			instCtx.addError(FHIRValidationError(missing: "focal"))
		}
		preAuthRef = createInstances(of: FHIRString.self, for: "preAuthRef", in: json, context: &instCtx, owner: self) ?? preAuthRef
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		if nil == self.coverage {
			errors.append(FHIRValidationError(missing: "coverage"))
		}
		self.focal?.decorate(json: &json, withKey: "focal", errors: &errors)
		if nil == self.focal {
			errors.append(FHIRValidationError(missing: "focal"))
		}
		arrayDecorate(json: &json, withKey: "preAuthRef", using: self.preAuthRef, errors: &errors)
	}
}


/**
Product or service provided.

A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups
of sub-details.
*/
open class ExplanationOfBenefitItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItem" }
	}
	
	/// Adjudication details.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Anatomical location.
	public var bodySite: CodeableConcept?
	
	/// Applicable care team members.
	public var careTeamSequence: [FHIRInteger]?
	
	/// Benefit classification.
	public var category: CodeableConcept?
	
	/// Additional items.
	public var detail: [ExplanationOfBenefitItemDetail]?
	
	/// Applicable diagnoses.
	public var diagnosisSequence: [FHIRInteger]?
	
	/// Encounters related to this billed item.
	public var encounter: [Reference]?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Applicable exception and supporting information.
	public var informationSequence: [FHIRInteger]?
	
	/// Place of service or where product was supplied.
	public var locationAddress: Address?
	
	/// Place of service or where product was supplied.
	public var locationCodeableConcept: CodeableConcept?
	
	/// Place of service or where product was supplied.
	public var locationReference: Reference?
	
	/// Product or service billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Total item cost.
	public var net: Money?
	
	/// Applicable note numbers.
	public var noteNumber: [FHIRInteger]?
	
	/// Applicable procedures.
	public var procedureSequence: [FHIRInteger]?
	
	/// Billing, service, product, or drug code.
	public var productOrService: CodeableConcept?
	
	/// Program the product or service is provided under.
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services.
	public var quantity: Quantity?
	
	/// Revenue or cost center code.
	public var revenue: CodeableConcept?
	
	/// Item instance identifier.
	public var sequence: FHIRInteger?
	
	/// Date or dates of service or product delivery.
	public var servicedDate: FHIRDate?
	
	/// Date or dates of service or product delivery.
	public var servicedPeriod: Period?
	
	/// Anatomical sub-location.
	public var subSite: [CodeableConcept]?
	
	/// Unique device identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per item.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(productOrService: CodeableConcept, sequence: FHIRInteger) {
		self.init()
		self.productOrService = productOrService
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		bodySite = createInstance(type: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		careTeamSequence = createInstances(of: FHIRInteger.self, for: "careTeamSequence", in: json, context: &instCtx, owner: self) ?? careTeamSequence
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		detail = createInstances(of: ExplanationOfBenefitItemDetail.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		diagnosisSequence = createInstances(of: FHIRInteger.self, for: "diagnosisSequence", in: json, context: &instCtx, owner: self) ?? diagnosisSequence
		encounter = createInstances(of: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		informationSequence = createInstances(of: FHIRInteger.self, for: "informationSequence", in: json, context: &instCtx, owner: self) ?? informationSequence
		locationAddress = createInstance(type: Address.self, for: "locationAddress", in: json, context: &instCtx, owner: self) ?? locationAddress
		locationCodeableConcept = createInstance(type: CodeableConcept.self, for: "locationCodeableConcept", in: json, context: &instCtx, owner: self) ?? locationCodeableConcept
		locationReference = createInstance(type: Reference.self, for: "locationReference", in: json, context: &instCtx, owner: self) ?? locationReference
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		procedureSequence = createInstances(of: FHIRInteger.self, for: "procedureSequence", in: json, context: &instCtx, owner: self) ?? procedureSequence
		productOrService = createInstance(type: CodeableConcept.self, for: "productOrService", in: json, context: &instCtx, owner: self) ?? productOrService
		if nil == productOrService && !instCtx.containsKey("productOrService") {
			instCtx.addError(FHIRValidationError(missing: "productOrService"))
		}
		programCode = createInstances(of: CodeableConcept.self, for: "programCode", in: json, context: &instCtx, owner: self) ?? programCode
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		revenue = createInstance(type: CodeableConcept.self, for: "revenue", in: json, context: &instCtx, owner: self) ?? revenue
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		servicedDate = createInstance(type: FHIRDate.self, for: "servicedDate", in: json, context: &instCtx, owner: self) ?? servicedDate
		servicedPeriod = createInstance(type: Period.self, for: "servicedPeriod", in: json, context: &instCtx, owner: self) ?? servicedPeriod
		subSite = createInstances(of: CodeableConcept.self, for: "subSite", in: json, context: &instCtx, owner: self) ?? subSite
		udi = createInstances(of: Reference.self, for: "udi", in: json, context: &instCtx, owner: self) ?? udi
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		arrayDecorate(json: &json, withKey: "careTeamSequence", using: self.careTeamSequence, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		arrayDecorate(json: &json, withKey: "diagnosisSequence", using: self.diagnosisSequence, errors: &errors)
		arrayDecorate(json: &json, withKey: "encounter", using: self.encounter, errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "informationSequence", using: self.informationSequence, errors: &errors)
		self.locationAddress?.decorate(json: &json, withKey: "locationAddress", errors: &errors)
		self.locationCodeableConcept?.decorate(json: &json, withKey: "locationCodeableConcept", errors: &errors)
		self.locationReference?.decorate(json: &json, withKey: "locationReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		arrayDecorate(json: &json, withKey: "procedureSequence", using: self.procedureSequence, errors: &errors)
		self.productOrService?.decorate(json: &json, withKey: "productOrService", errors: &errors)
		if nil == self.productOrService {
			errors.append(FHIRValidationError(missing: "productOrService"))
		}
		arrayDecorate(json: &json, withKey: "programCode", using: self.programCode, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.revenue?.decorate(json: &json, withKey: "revenue", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		self.servicedDate?.decorate(json: &json, withKey: "servicedDate", errors: &errors)
		self.servicedPeriod?.decorate(json: &json, withKey: "servicedPeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "subSite", using: self.subSite, errors: &errors)
		arrayDecorate(json: &json, withKey: "udi", using: self.udi, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Adjudication details.

If this item is a group then the values here are a summary of the adjudication of the detail items. If this item is a
simple product or service then this is the result of the adjudication of this item.
*/
open class ExplanationOfBenefitItemAdjudication: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Money?
	
	/// Type of adjudication information.
	public var category: CodeableConcept?
	
	/// Explanation of adjudication outcome.
	public var reason: CodeableConcept?
	
	/// Non-monitary value.
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
Additional items.

Second-tier of goods and services.
*/
open class ExplanationOfBenefitItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemDetail" }
	}
	
	/// Detail level adjudication details.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Benefit classification.
	public var category: CodeableConcept?
	
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
	
	/// Program the product or service is provided under.
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services.
	public var quantity: Quantity?
	
	/// Revenue or cost center code.
	public var revenue: CodeableConcept?
	
	/// Product or service provided.
	public var sequence: FHIRInteger?
	
	/// Additional items.
	public var subDetail: [ExplanationOfBenefitItemDetailSubDetail]?
	
	/// Unique device identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per item.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(productOrService: CodeableConcept, sequence: FHIRInteger) {
		self.init()
		self.productOrService = productOrService
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		productOrService = createInstance(type: CodeableConcept.self, for: "productOrService", in: json, context: &instCtx, owner: self) ?? productOrService
		if nil == productOrService && !instCtx.containsKey("productOrService") {
			instCtx.addError(FHIRValidationError(missing: "productOrService"))
		}
		programCode = createInstances(of: CodeableConcept.self, for: "programCode", in: json, context: &instCtx, owner: self) ?? programCode
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		revenue = createInstance(type: CodeableConcept.self, for: "revenue", in: json, context: &instCtx, owner: self) ?? revenue
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		subDetail = createInstances(of: ExplanationOfBenefitItemDetailSubDetail.self, for: "subDetail", in: json, context: &instCtx, owner: self) ?? subDetail
		udi = createInstances(of: Reference.self, for: "udi", in: json, context: &instCtx, owner: self) ?? udi
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		self.productOrService?.decorate(json: &json, withKey: "productOrService", errors: &errors)
		if nil == self.productOrService {
			errors.append(FHIRValidationError(missing: "productOrService"))
		}
		arrayDecorate(json: &json, withKey: "programCode", using: self.programCode, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.revenue?.decorate(json: &json, withKey: "revenue", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		arrayDecorate(json: &json, withKey: "subDetail", using: self.subDetail, errors: &errors)
		arrayDecorate(json: &json, withKey: "udi", using: self.udi, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Additional items.

Third-tier of goods and services.
*/
open class ExplanationOfBenefitItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemDetailSubDetail" }
	}
	
	/// Subdetail level adjudication details.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Benefit classification.
	public var category: CodeableConcept?
	
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
	
	/// Program the product or service is provided under.
	public var programCode: [CodeableConcept]?
	
	/// Count of products or services.
	public var quantity: Quantity?
	
	/// Revenue or cost center code.
	public var revenue: CodeableConcept?
	
	/// Product or service provided.
	public var sequence: FHIRInteger?
	
	/// Unique device identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per item.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(productOrService: CodeableConcept, sequence: FHIRInteger) {
		self.init()
		self.productOrService = productOrService
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		productOrService = createInstance(type: CodeableConcept.self, for: "productOrService", in: json, context: &instCtx, owner: self) ?? productOrService
		if nil == productOrService && !instCtx.containsKey("productOrService") {
			instCtx.addError(FHIRValidationError(missing: "productOrService"))
		}
		programCode = createInstances(of: CodeableConcept.self, for: "programCode", in: json, context: &instCtx, owner: self) ?? programCode
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		revenue = createInstance(type: CodeableConcept.self, for: "revenue", in: json, context: &instCtx, owner: self) ?? revenue
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		udi = createInstances(of: Reference.self, for: "udi", in: json, context: &instCtx, owner: self) ?? udi
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		self.productOrService?.decorate(json: &json, withKey: "productOrService", errors: &errors)
		if nil == self.productOrService {
			errors.append(FHIRValidationError(missing: "productOrService"))
		}
		arrayDecorate(json: &json, withKey: "programCode", using: self.programCode, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.revenue?.decorate(json: &json, withKey: "revenue", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		arrayDecorate(json: &json, withKey: "udi", using: self.udi, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Recipient of benefits payable.

The party to be reimbursed for cost of the products and services according to the terms of the policy.
*/
open class ExplanationOfBenefitPayee: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitPayee" }
	}
	
	/// Recipient reference.
	public var party: Reference?
	
	/// Category of recipient.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		party = createInstance(type: Reference.self, for: "party", in: json, context: &instCtx, owner: self) ?? party
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.party?.decorate(json: &json, withKey: "party", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Payment Details.

Payment details for the adjudication of the claim.
*/
open class ExplanationOfBenefitPayment: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitPayment" }
	}
	
	/// Payment adjustment for non-claim issues.
	public var adjustment: Money?
	
	/// Explanation for the variance.
	public var adjustmentReason: CodeableConcept?
	
	/// Payable amount after adjustment.
	public var amount: Money?
	
	/// Expected date of payment.
	public var date: FHIRDate?
	
	/// Business identifier for the payment.
	public var identifier: Identifier?
	
	/// Partial or complete payment.
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
Clinical procedures performed.

Procedures performed on the patient relevant to the billing items with the claim.
*/
open class ExplanationOfBenefitProcedure: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitProcedure" }
	}
	
	/// When the procedure was performed.
	public var date: DateTime?
	
	/// Specific clinical procedure.
	public var procedureCodeableConcept: CodeableConcept?
	
	/// Specific clinical procedure.
	public var procedureReference: Reference?
	
	/// Procedure instance identifier.
	public var sequence: FHIRInteger?
	
	/// Category of Procedure.
	public var type: [CodeableConcept]?
	
	/// Unique device identifier.
	public var udi: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(procedure: Any, sequence: FHIRInteger) {
		self.init()
		if let value = procedure as? CodeableConcept {
			self.procedureCodeableConcept = value
		}
		else if let value = procedure as? Reference {
			self.procedureReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: procedure))” for property “\(procedure)” is invalid, ignoring")
		}
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		procedureCodeableConcept = createInstance(type: CodeableConcept.self, for: "procedureCodeableConcept", in: json, context: &instCtx, owner: self) ?? procedureCodeableConcept
		procedureReference = createInstance(type: Reference.self, for: "procedureReference", in: json, context: &instCtx, owner: self) ?? procedureReference
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		udi = createInstances(of: Reference.self, for: "udi", in: json, context: &instCtx, owner: self) ?? udi
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.procedureCodeableConcept && nil == self.procedureReference {
			instCtx.addError(FHIRValidationError(missing: "procedure[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.procedureCodeableConcept?.decorate(json: &json, withKey: "procedureCodeableConcept", errors: &errors)
		self.procedureReference?.decorate(json: &json, withKey: "procedureReference", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
		arrayDecorate(json: &json, withKey: "udi", using: self.udi, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.procedureCodeableConcept && nil == self.procedureReference {
			errors.append(FHIRValidationError(missing: "procedure[x]"))
		}
	}
}


/**
Note concerning adjudication.

A note that describes or explains adjudication results in a human readable form.
*/
open class ExplanationOfBenefitProcessNote: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitProcessNote" }
	}
	
	/// Language of the text.
	public var language: CodeableConcept?
	
	/// Note instance identifier.
	public var number: FHIRInteger?
	
	/// Note explanatory text.
	public var text: FHIRString?
	
	/// The business purpose of the note text.
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
Prior or corollary claims.

Other claims which are related to this claim such as prior submissions or claims for related services or for the same
event.
*/
open class ExplanationOfBenefitRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitRelated" }
	}
	
	/// Reference to the related claim.
	public var claim: Reference?
	
	/// File or case reference.
	public var reference: Identifier?
	
	/// How the reference claim is related.
	public var relationship: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		claim = createInstance(type: Reference.self, for: "claim", in: json, context: &instCtx, owner: self) ?? claim
		reference = createInstance(type: Identifier.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		relationship = createInstance(type: CodeableConcept.self, for: "relationship", in: json, context: &instCtx, owner: self) ?? relationship
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.claim?.decorate(json: &json, withKey: "claim", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
	}
}


/**
Supporting information.

Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent
issues.
*/
open class ExplanationOfBenefitSupportingInfo: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitSupportingInfo" }
	}
	
	/// Classification of the supplied information.
	public var category: CodeableConcept?
	
	/// Type of information.
	public var code: CodeableConcept?
	
	/// Explanation for the information.
	public var reason: Coding?
	
	/// Information instance identifier.
	public var sequence: FHIRInteger?
	
	/// When it occurred.
	public var timingDate: FHIRDate?
	
	/// When it occurred.
	public var timingPeriod: Period?
	
	/// Data to be provided.
	public var valueAttachment: Attachment?
	
	/// Data to be provided.
	public var valueBoolean: FHIRBool?
	
	/// Data to be provided.
	public var valueQuantity: Quantity?
	
	/// Data to be provided.
	public var valueReference: Reference?
	
	/// Data to be provided.
	public var valueString: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: CodeableConcept, sequence: FHIRInteger) {
		self.init()
		self.category = category
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		if nil == category && !instCtx.containsKey("category") {
			instCtx.addError(FHIRValidationError(missing: "category"))
		}
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		reason = createInstance(type: Coding.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		timingDate = createInstance(type: FHIRDate.self, for: "timingDate", in: json, context: &instCtx, owner: self) ?? timingDate
		timingPeriod = createInstance(type: Period.self, for: "timingPeriod", in: json, context: &instCtx, owner: self) ?? timingPeriod
		valueAttachment = createInstance(type: Attachment.self, for: "valueAttachment", in: json, context: &instCtx, owner: self) ?? valueAttachment
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueReference = createInstance(type: Reference.self, for: "valueReference", in: json, context: &instCtx, owner: self) ?? valueReference
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		if nil == self.category {
			errors.append(FHIRValidationError(missing: "category"))
		}
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.reason?.decorate(json: &json, withKey: "reason", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		self.timingDate?.decorate(json: &json, withKey: "timingDate", errors: &errors)
		self.timingPeriod?.decorate(json: &json, withKey: "timingPeriod", errors: &errors)
		self.valueAttachment?.decorate(json: &json, withKey: "valueAttachment", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
	}
}


/**
Adjudication totals.

Categorized monetary totals for the adjudication.
*/
open class ExplanationOfBenefitTotal: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitTotal" }
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

