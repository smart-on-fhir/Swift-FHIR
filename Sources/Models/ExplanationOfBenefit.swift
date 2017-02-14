//
//  ExplanationOfBenefit.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit) on 2017-02-14.
//  2017, SMART Health IT.
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
	
	/// Details of an accident.
	public var accident: ExplanationOfBenefitAccident?
	
	/// Insurer added line items.
	public var addItem: [ExplanationOfBenefitAddItem]?
	
	/// Balance by Benefit Category.
	public var benefitBalance: [ExplanationOfBenefitBenefitBalance]?
	
	/// Period for charge submission.
	public var billablePeriod: Period?
	
	/// Care Team members.
	public var careTeam: [ExplanationOfBenefitCareTeam]?
	
	/// Claim reference.
	public var claim: Reference?
	
	/// Claim response reference.
	public var claimResponse: Reference?
	
	/// Creation date.
	public var created: DateTime?
	
	/// List of Diagnosis.
	public var diagnosis: [ExplanationOfBenefitDiagnosis]?
	
	/// Disposition Message.
	public var disposition: FHIRString?
	
	/// Period unable to work.
	public var employmentImpacted: Period?
	
	/// Author.
	public var enterer: Reference?
	
	/// Servicing Facility.
	public var facility: Reference?
	
	/// Printed Form Identifier.
	public var form: CodeableConcept?
	
	/// Period in hospital.
	public var hospitalization: Period?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Exceptions, special considerations, the condition, situation, prior or concurrent issues.
	public var information: [ExplanationOfBenefitInformation]?
	
	/// Insurance or medical plan.
	public var insurance: ExplanationOfBenefitInsurance?
	
	/// Insurer responsible for the EOB.
	public var insurer: Reference?
	
	/// Goods and Services.
	public var item: [ExplanationOfBenefitItem]?
	
	/// Responsible organization for the claim.
	public var organization: Reference?
	
	/// Original prescription if superceded by fulfiller.
	public var originalPrescription: Reference?
	
	/// complete | error | partial.
	public var outcome: CodeableConcept?
	
	/// The subject of the Products and Services.
	public var patient: Reference?
	
	/// Party to be paid any benefits payable.
	public var payee: ExplanationOfBenefitPayee?
	
	/// Payment (if paid).
	public var payment: ExplanationOfBenefitPayment?
	
	/// Precedence (primary, secondary, etc.).
	public var precedence: FHIRInteger?
	
	/// Prescription authorizing services or products.
	public var prescription: Reference?
	
	/// Procedures performed.
	public var procedure: [ExplanationOfBenefitProcedure]?
	
	/// Processing notes.
	public var processNote: [ExplanationOfBenefitProcessNote]?
	
	/// Responsible provider for the claim.
	public var provider: Reference?
	
	/// Treatment Referral.
	public var referral: Reference?
	
	/// Related Claims which may be revelant to processing this claim.
	public var related: [ExplanationOfBenefitRelated]?
	
	/// The status of the resource instance.
	public var status: ExplanationOfBenefitStatus?
	
	/// Finer grained claim type information.
	public var subType: [CodeableConcept]?
	
	/// Total benefit payable for the Claim.
	public var totalBenefit: Money?
	
	/// Total Cost of service from the Claim.
	public var totalCost: Money?
	
	/// Type or discipline.
	public var type: CodeableConcept?
	
	/// Unallocated deductable.
	public var unallocDeductable: Money?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		accident = try createInstance(type: ExplanationOfBenefitAccident.self, for: "accident", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? accident
		addItem = try createInstances(of: ExplanationOfBenefitAddItem.self, for: "addItem", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? addItem
		benefitBalance = try createInstances(of: ExplanationOfBenefitBenefitBalance.self, for: "benefitBalance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? benefitBalance
		billablePeriod = try createInstance(type: Period.self, for: "billablePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? billablePeriod
		careTeam = try createInstances(of: ExplanationOfBenefitCareTeam.self, for: "careTeam", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? careTeam
		claim = try createInstance(type: Reference.self, for: "claim", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? claim
		claimResponse = try createInstance(type: Reference.self, for: "claimResponse", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? claimResponse
		created = try createInstance(type: DateTime.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		diagnosis = try createInstances(of: ExplanationOfBenefitDiagnosis.self, for: "diagnosis", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? diagnosis
		disposition = try createInstance(type: FHIRString.self, for: "disposition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? disposition
		employmentImpacted = try createInstance(type: Period.self, for: "employmentImpacted", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? employmentImpacted
		enterer = try createInstance(type: Reference.self, for: "enterer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? enterer
		facility = try createInstance(type: Reference.self, for: "facility", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? facility
		form = try createInstance(type: CodeableConcept.self, for: "form", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? form
		hospitalization = try createInstance(type: Period.self, for: "hospitalization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? hospitalization
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		information = try createInstances(of: ExplanationOfBenefitInformation.self, for: "information", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? information
		insurance = try createInstance(type: ExplanationOfBenefitInsurance.self, for: "insurance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? insurance
		insurer = try createInstance(type: Reference.self, for: "insurer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? insurer
		item = try createInstances(of: ExplanationOfBenefitItem.self, for: "item", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? item
		organization = try createInstance(type: Reference.self, for: "organization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? organization
		originalPrescription = try createInstance(type: Reference.self, for: "originalPrescription", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? originalPrescription
		outcome = try createInstance(type: CodeableConcept.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		payee = try createInstance(type: ExplanationOfBenefitPayee.self, for: "payee", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? payee
		payment = try createInstance(type: ExplanationOfBenefitPayment.self, for: "payment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? payment
		precedence = try createInstance(type: FHIRInteger.self, for: "precedence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? precedence
		prescription = try createInstance(type: Reference.self, for: "prescription", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? prescription
		procedure = try createInstances(of: ExplanationOfBenefitProcedure.self, for: "procedure", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? procedure
		processNote = try createInstances(of: ExplanationOfBenefitProcessNote.self, for: "processNote", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? processNote
		provider = try createInstance(type: Reference.self, for: "provider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? provider
		referral = try createInstance(type: Reference.self, for: "referral", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referral
		related = try createInstances(of: ExplanationOfBenefitRelated.self, for: "related", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? related
		status = createEnum(type: ExplanationOfBenefitStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		subType = try createInstances(of: CodeableConcept.self, for: "subType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subType
		totalBenefit = try createInstance(type: Money.self, for: "totalBenefit", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? totalBenefit
		totalCost = try createInstance(type: Money.self, for: "totalCost", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? totalCost
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		unallocDeductable = try createInstance(type: Money.self, for: "unallocDeductable", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? unallocDeductable
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.accident?.decorate(json: &json, withKey: "accident", errors: &errors)
		arrayDecorate(json: &json, withKey: "addItem", using: self.addItem, errors: &errors)
		arrayDecorate(json: &json, withKey: "benefitBalance", using: self.benefitBalance, errors: &errors)
		self.billablePeriod?.decorate(json: &json, withKey: "billablePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "careTeam", using: self.careTeam, errors: &errors)
		self.claim?.decorate(json: &json, withKey: "claim", errors: &errors)
		self.claimResponse?.decorate(json: &json, withKey: "claimResponse", errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		arrayDecorate(json: &json, withKey: "diagnosis", using: self.diagnosis, errors: &errors)
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		self.employmentImpacted?.decorate(json: &json, withKey: "employmentImpacted", errors: &errors)
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.facility?.decorate(json: &json, withKey: "facility", errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		self.hospitalization?.decorate(json: &json, withKey: "hospitalization", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "information", using: self.information, errors: &errors)
		self.insurance?.decorate(json: &json, withKey: "insurance", errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.originalPrescription?.decorate(json: &json, withKey: "originalPrescription", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.payee?.decorate(json: &json, withKey: "payee", errors: &errors)
		self.payment?.decorate(json: &json, withKey: "payment", errors: &errors)
		self.precedence?.decorate(json: &json, withKey: "precedence", errors: &errors)
		self.prescription?.decorate(json: &json, withKey: "prescription", errors: &errors)
		arrayDecorate(json: &json, withKey: "procedure", using: self.procedure, errors: &errors)
		arrayDecorate(json: &json, withKey: "processNote", using: self.processNote, errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.referral?.decorate(json: &json, withKey: "referral", errors: &errors)
		arrayDecorate(json: &json, withKey: "related", using: self.related, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "subType", using: self.subType, errors: &errors)
		self.totalBenefit?.decorate(json: &json, withKey: "totalBenefit", errors: &errors)
		self.totalCost?.decorate(json: &json, withKey: "totalCost", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.unallocDeductable?.decorate(json: &json, withKey: "unallocDeductable", errors: &errors)
	}
}


/**
Details of an accident.

An accident which resulted in the need for healthcare services.
*/
open class ExplanationOfBenefitAccident: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAccident" }
	}
	
	/// When the accident occurred.
	public var date: FHIRDate?
	
	/// Accident Place.
	public var locationAddress: Address?
	
	/// Accident Place.
	public var locationReference: Reference?
	
	/// The nature of the accident.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		date = try createInstance(type: FHIRDate.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		locationAddress = try createInstance(type: Address.self, for: "locationAddress", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? locationAddress
		locationReference = try createInstance(type: Reference.self, for: "locationReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? locationReference
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
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

The first tier service adjudications for payor added services.
*/
open class ExplanationOfBenefitAddItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAddItem" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product.
	public var category: CodeableConcept?
	
	/// Added items details.
	public var detail: [ExplanationOfBenefitAddItemDetail]?
	
	/// Professional fee or Product charge.
	public var fee: Money?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// List of note numbers which apply.
	public var noteNumber: [FHIRInteger]?
	
	/// Revenue or cost center code.
	public var revenue: CodeableConcept?
	
	/// Service instances.
	public var sequenceLinkId: [FHIRInteger]?
	
	/// Billing Code.
	public var service: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		adjudication = try createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? adjudication
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		detail = try createInstances(of: ExplanationOfBenefitAddItemDetail.self, for: "detail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detail
		fee = try createInstance(type: Money.self, for: "fee", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fee
		modifier = try createInstances(of: CodeableConcept.self, for: "modifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modifier
		noteNumber = try createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? noteNumber
		revenue = try createInstance(type: CodeableConcept.self, for: "revenue", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? revenue
		sequenceLinkId = try createInstances(of: FHIRInteger.self, for: "sequenceLinkId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequenceLinkId
		service = try createInstance(type: CodeableConcept.self, for: "service", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? service
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		self.fee?.decorate(json: &json, withKey: "fee", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		self.revenue?.decorate(json: &json, withKey: "revenue", errors: &errors)
		arrayDecorate(json: &json, withKey: "sequenceLinkId", using: self.sequenceLinkId, errors: &errors)
		self.service?.decorate(json: &json, withKey: "service", errors: &errors)
	}
}


/**
Added items details.

The second tier service adjudications for payor added services.
*/
open class ExplanationOfBenefitAddItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAddItemDetail" }
	}
	
	/// Added items detail adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product.
	public var category: CodeableConcept?
	
	/// Professional fee or Product charge.
	public var fee: Money?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// List of note numbers which apply.
	public var noteNumber: [FHIRInteger]?
	
	/// Revenue or cost center code.
	public var revenue: CodeableConcept?
	
	/// Billing Code.
	public var service: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		adjudication = try createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? adjudication
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		fee = try createInstance(type: Money.self, for: "fee", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fee
		modifier = try createInstances(of: CodeableConcept.self, for: "modifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modifier
		noteNumber = try createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? noteNumber
		revenue = try createInstance(type: CodeableConcept.self, for: "revenue", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? revenue
		service = try createInstance(type: CodeableConcept.self, for: "service", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? service
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.fee?.decorate(json: &json, withKey: "fee", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		self.revenue?.decorate(json: &json, withKey: "revenue", errors: &errors)
		self.service?.decorate(json: &json, withKey: "service", errors: &errors)
	}
}


/**
Balance by Benefit Category.
*/
open class ExplanationOfBenefitBenefitBalance: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitBenefitBalance" }
	}
	
	/// Type of services covered.
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
	
	/// Detailed services covered within the type.
	public var subCategory: CodeableConcept?
	
	/// Annual or lifetime.
	public var term: CodeableConcept?
	
	/// Individual or family.
	public var unit: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: CodeableConcept) {
		self.init()
		self.category = category
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		if nil == category && !presentKeys.contains("category") {
			errors.append(FHIRValidationError(missing: "category"))
		}
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		excluded = try createInstance(type: FHIRBool.self, for: "excluded", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? excluded
		financial = try createInstances(of: ExplanationOfBenefitBenefitBalanceFinancial.self, for: "financial", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? financial
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		network = try createInstance(type: CodeableConcept.self, for: "network", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? network
		subCategory = try createInstance(type: CodeableConcept.self, for: "subCategory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subCategory
		term = try createInstance(type: CodeableConcept.self, for: "term", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? term
		unit = try createInstance(type: CodeableConcept.self, for: "unit", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? unit
		
		return errors.isEmpty ? nil : errors
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
		self.subCategory?.decorate(json: &json, withKey: "subCategory", errors: &errors)
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
	
	/// Deductable, visits, benefit amount.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		allowedMoney = try createInstance(type: Money.self, for: "allowedMoney", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? allowedMoney
		allowedString = try createInstance(type: FHIRString.self, for: "allowedString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? allowedString
		allowedUnsignedInt = try createInstance(type: FHIRInteger.self, for: "allowedUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? allowedUnsignedInt
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		usedMoney = try createInstance(type: Money.self, for: "usedMoney", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? usedMoney
		usedUnsignedInt = try createInstance(type: FHIRInteger.self, for: "usedUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? usedUnsignedInt
		
		return errors.isEmpty ? nil : errors
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

The members of the team who provided the overall service as well as their role and whether responsible and
qualifications.
*/
open class ExplanationOfBenefitCareTeam: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitCareTeam" }
	}
	
	/// Member of the Care Team.
	public var provider: Reference?
	
	/// Type, classification or Specialization.
	public var qualification: CodeableConcept?
	
	/// Billing practitioner.
	public var responsible: FHIRBool?
	
	/// Role on the team.
	public var role: CodeableConcept?
	
	/// Number to covey order of careteam.
	public var sequence: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(provider: Reference, sequence: FHIRInteger) {
		self.init()
		self.provider = provider
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		provider = try createInstance(type: Reference.self, for: "provider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? provider
		if nil == provider && !presentKeys.contains("provider") {
			errors.append(FHIRValidationError(missing: "provider"))
		}
		qualification = try createInstance(type: CodeableConcept.self, for: "qualification", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? qualification
		responsible = try createInstance(type: FHIRBool.self, for: "responsible", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? responsible
		role = try createInstance(type: CodeableConcept.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		sequence = try createInstance(type: FHIRInteger.self, for: "sequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequence
		if nil == sequence && !presentKeys.contains("sequence") {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		
		return errors.isEmpty ? nil : errors
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
List of Diagnosis.

Ordered list of patient diagnosis for which care is sought.
*/
open class ExplanationOfBenefitDiagnosis: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitDiagnosis" }
	}
	
	/// Patient's diagnosis.
	public var diagnosisCodeableConcept: CodeableConcept?
	
	/// Patient's diagnosis.
	public var diagnosisReference: Reference?
	
	/// Package billing code.
	public var packageCode: CodeableConcept?
	
	/// Number to covey order of diagnosis.
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
			fhir_warn("Type “\(type(of: diagnosis))” for property “\(diagnosis)” is invalid, ignoring")
		}
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		diagnosisCodeableConcept = try createInstance(type: CodeableConcept.self, for: "diagnosisCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? diagnosisCodeableConcept
		diagnosisReference = try createInstance(type: Reference.self, for: "diagnosisReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? diagnosisReference
		packageCode = try createInstance(type: CodeableConcept.self, for: "packageCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? packageCode
		sequence = try createInstance(type: FHIRInteger.self, for: "sequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequence
		if nil == sequence && !presentKeys.contains("sequence") {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		type = try createInstances(of: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.diagnosisCodeableConcept && nil == self.diagnosisReference {
			errors.append(FHIRValidationError(missing: "diagnosis[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.diagnosisCodeableConcept?.decorate(json: &json, withKey: "diagnosisCodeableConcept", errors: &errors)
		self.diagnosisReference?.decorate(json: &json, withKey: "diagnosisReference", errors: &errors)
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
Exceptions, special considerations, the condition, situation, prior or concurrent issues.

Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent
issues. Often there are mutiple jurisdiction specific valuesets which are required.
*/
open class ExplanationOfBenefitInformation: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitInformation" }
	}
	
	/// General class of information.
	public var category: CodeableConcept?
	
	/// Type of information.
	public var code: CodeableConcept?
	
	/// Reason associated with the information.
	public var reason: Coding?
	
	/// Information instance identifier.
	public var sequence: FHIRInteger?
	
	/// When it occurred.
	public var timingDate: FHIRDate?
	
	/// When it occurred.
	public var timingPeriod: Period?
	
	/// Additional Data or supporting information.
	public var valueAttachment: Attachment?
	
	/// Additional Data or supporting information.
	public var valueQuantity: Quantity?
	
	/// Additional Data or supporting information.
	public var valueReference: Reference?
	
	/// Additional Data or supporting information.
	public var valueString: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: CodeableConcept, sequence: FHIRInteger) {
		self.init()
		self.category = category
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		if nil == category && !presentKeys.contains("category") {
			errors.append(FHIRValidationError(missing: "category"))
		}
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		reason = try createInstance(type: Coding.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		sequence = try createInstance(type: FHIRInteger.self, for: "sequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequence
		if nil == sequence && !presentKeys.contains("sequence") {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		timingDate = try createInstance(type: FHIRDate.self, for: "timingDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingDate
		timingPeriod = try createInstance(type: Period.self, for: "timingPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingPeriod
		valueAttachment = try createInstance(type: Attachment.self, for: "valueAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAttachment
		valueQuantity = try createInstance(type: Quantity.self, for: "valueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueQuantity
		valueReference = try createInstance(type: Reference.self, for: "valueReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueReference
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		
		return errors.isEmpty ? nil : errors
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
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
	}
}


/**
Insurance or medical plan.

Financial instrument by which payment information for health care.
*/
open class ExplanationOfBenefitInsurance: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitInsurance" }
	}
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Pre-Authorization/Determination Reference.
	public var preAuthRef: [FHIRString]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		coverage = try createInstance(type: Reference.self, for: "coverage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? coverage
		preAuthRef = try createInstances(of: FHIRString.self, for: "preAuthRef", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? preAuthRef
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		arrayDecorate(json: &json, withKey: "preAuthRef", using: self.preAuthRef, errors: &errors)
	}
}


/**
Goods and Services.

First tier of goods and services.
*/
open class ExplanationOfBenefitItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItem" }
	}
	
	/// Adjudication details.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Service Location.
	public var bodySite: CodeableConcept?
	
	/// Applicable careteam members.
	public var careTeamLinkId: [FHIRInteger]?
	
	/// Type of service or product.
	public var category: CodeableConcept?
	
	/// Additional items.
	public var detail: [ExplanationOfBenefitItemDetail]?
	
	/// Applicable diagnoses.
	public var diagnosisLinkId: [FHIRInteger]?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Applicable exception and supporting information.
	public var informationLinkId: [FHIRInteger]?
	
	/// Place of service.
	public var locationAddress: Address?
	
	/// Place of service.
	public var locationCodeableConcept: CodeableConcept?
	
	/// Place of service.
	public var locationReference: Reference?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Total item cost.
	public var net: Money?
	
	/// List of note numbers which apply.
	public var noteNumber: [FHIRInteger]?
	
	/// Applicable procedures.
	public var procedureLinkId: [FHIRInteger]?
	
	/// Program specific reason for item inclusion.
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services.
	public var quantity: Quantity?
	
	/// Revenue or cost center code.
	public var revenue: CodeableConcept?
	
	/// Service instance.
	public var sequence: FHIRInteger?
	
	/// Billing Code.
	public var service: CodeableConcept?
	
	/// Date or dates of Service.
	public var servicedDate: FHIRDate?
	
	/// Date or dates of Service.
	public var servicedPeriod: Period?
	
	/// Service Sub-location.
	public var subSite: [CodeableConcept]?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: FHIRInteger) {
		self.init()
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		adjudication = try createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? adjudication
		bodySite = try createInstance(type: CodeableConcept.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		careTeamLinkId = try createInstances(of: FHIRInteger.self, for: "careTeamLinkId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? careTeamLinkId
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		detail = try createInstances(of: ExplanationOfBenefitItemDetail.self, for: "detail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detail
		diagnosisLinkId = try createInstances(of: FHIRInteger.self, for: "diagnosisLinkId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? diagnosisLinkId
		factor = try createInstance(type: FHIRDecimal.self, for: "factor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? factor
		informationLinkId = try createInstances(of: FHIRInteger.self, for: "informationLinkId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? informationLinkId
		locationAddress = try createInstance(type: Address.self, for: "locationAddress", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? locationAddress
		locationCodeableConcept = try createInstance(type: CodeableConcept.self, for: "locationCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? locationCodeableConcept
		locationReference = try createInstance(type: Reference.self, for: "locationReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? locationReference
		modifier = try createInstances(of: CodeableConcept.self, for: "modifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modifier
		net = try createInstance(type: Money.self, for: "net", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? net
		noteNumber = try createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? noteNumber
		procedureLinkId = try createInstances(of: FHIRInteger.self, for: "procedureLinkId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? procedureLinkId
		programCode = try createInstances(of: CodeableConcept.self, for: "programCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? programCode
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		revenue = try createInstance(type: CodeableConcept.self, for: "revenue", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? revenue
		sequence = try createInstance(type: FHIRInteger.self, for: "sequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequence
		if nil == sequence && !presentKeys.contains("sequence") {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		service = try createInstance(type: CodeableConcept.self, for: "service", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? service
		servicedDate = try createInstance(type: FHIRDate.self, for: "servicedDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? servicedDate
		servicedPeriod = try createInstance(type: Period.self, for: "servicedPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? servicedPeriod
		subSite = try createInstances(of: CodeableConcept.self, for: "subSite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subSite
		udi = try createInstances(of: Reference.self, for: "udi", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? udi
		unitPrice = try createInstance(type: Money.self, for: "unitPrice", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? unitPrice
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		arrayDecorate(json: &json, withKey: "careTeamLinkId", using: self.careTeamLinkId, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		arrayDecorate(json: &json, withKey: "diagnosisLinkId", using: self.diagnosisLinkId, errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "informationLinkId", using: self.informationLinkId, errors: &errors)
		self.locationAddress?.decorate(json: &json, withKey: "locationAddress", errors: &errors)
		self.locationCodeableConcept?.decorate(json: &json, withKey: "locationCodeableConcept", errors: &errors)
		self.locationReference?.decorate(json: &json, withKey: "locationReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		arrayDecorate(json: &json, withKey: "procedureLinkId", using: self.procedureLinkId, errors: &errors)
		arrayDecorate(json: &json, withKey: "programCode", using: self.programCode, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.revenue?.decorate(json: &json, withKey: "revenue", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		self.service?.decorate(json: &json, withKey: "service", errors: &errors)
		self.servicedDate?.decorate(json: &json, withKey: "servicedDate", errors: &errors)
		self.servicedPeriod?.decorate(json: &json, withKey: "servicedPeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "subSite", using: self.subSite, errors: &errors)
		arrayDecorate(json: &json, withKey: "udi", using: self.udi, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Adjudication details.

The adjudications results.
*/
open class ExplanationOfBenefitItemAdjudication: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc..
	public var category: CodeableConcept?
	
	/// Explanation of Adjudication outcome.
	public var reason: CodeableConcept?
	
	/// Non-monitory value.
	public var value: FHIRDecimal?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: CodeableConcept) {
		self.init()
		self.category = category
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		amount = try createInstance(type: Money.self, for: "amount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? amount
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		if nil == category && !presentKeys.contains("category") {
			errors.append(FHIRValidationError(missing: "category"))
		}
		reason = try createInstance(type: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		value = try createInstance(type: FHIRDecimal.self, for: "value", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? value
		
		return errors.isEmpty ? nil : errors
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

Second tier of goods and services.
*/
open class ExplanationOfBenefitItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemDetail" }
	}
	
	/// Detail level adjudication details.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product.
	public var category: CodeableConcept?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Total additional item cost.
	public var net: Money?
	
	/// List of note numbers which apply.
	public var noteNumber: [FHIRInteger]?
	
	/// Program specific reason for item inclusion.
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services.
	public var quantity: Quantity?
	
	/// Revenue or cost center code.
	public var revenue: CodeableConcept?
	
	/// Service instance.
	public var sequence: FHIRInteger?
	
	/// Billing Code.
	public var service: CodeableConcept?
	
	/// Additional items.
	public var subDetail: [ExplanationOfBenefitItemDetailSubDetail]?
	
	/// Group or type of product or service.
	public var type: CodeableConcept?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: FHIRInteger, type: CodeableConcept) {
		self.init()
		self.sequence = sequence
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		adjudication = try createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? adjudication
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		factor = try createInstance(type: FHIRDecimal.self, for: "factor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? factor
		modifier = try createInstances(of: CodeableConcept.self, for: "modifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modifier
		net = try createInstance(type: Money.self, for: "net", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? net
		noteNumber = try createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? noteNumber
		programCode = try createInstances(of: CodeableConcept.self, for: "programCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? programCode
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		revenue = try createInstance(type: CodeableConcept.self, for: "revenue", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? revenue
		sequence = try createInstance(type: FHIRInteger.self, for: "sequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequence
		if nil == sequence && !presentKeys.contains("sequence") {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		service = try createInstance(type: CodeableConcept.self, for: "service", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? service
		subDetail = try createInstances(of: ExplanationOfBenefitItemDetailSubDetail.self, for: "subDetail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subDetail
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		udi = try createInstances(of: Reference.self, for: "udi", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? udi
		unitPrice = try createInstance(type: Money.self, for: "unitPrice", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? unitPrice
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		arrayDecorate(json: &json, withKey: "programCode", using: self.programCode, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.revenue?.decorate(json: &json, withKey: "revenue", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		self.service?.decorate(json: &json, withKey: "service", errors: &errors)
		arrayDecorate(json: &json, withKey: "subDetail", using: self.subDetail, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		arrayDecorate(json: &json, withKey: "udi", using: self.udi, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Additional items.

Third tier of goods and services.
*/
open class ExplanationOfBenefitItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemDetailSubDetail" }
	}
	
	/// Language if different from the resource.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product.
	public var category: CodeableConcept?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Net additional item cost.
	public var net: Money?
	
	/// List of note numbers which apply.
	public var noteNumber: [FHIRInteger]?
	
	/// Program specific reason for item inclusion.
	public var programCode: [CodeableConcept]?
	
	/// Count of Products or Services.
	public var quantity: Quantity?
	
	/// Revenue or cost center code.
	public var revenue: CodeableConcept?
	
	/// Service instance.
	public var sequence: FHIRInteger?
	
	/// Billing Code.
	public var service: CodeableConcept?
	
	/// Type of product or service.
	public var type: CodeableConcept?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: FHIRInteger, type: CodeableConcept) {
		self.init()
		self.sequence = sequence
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		adjudication = try createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? adjudication
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		factor = try createInstance(type: FHIRDecimal.self, for: "factor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? factor
		modifier = try createInstances(of: CodeableConcept.self, for: "modifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modifier
		net = try createInstance(type: Money.self, for: "net", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? net
		noteNumber = try createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? noteNumber
		programCode = try createInstances(of: CodeableConcept.self, for: "programCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? programCode
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		revenue = try createInstance(type: CodeableConcept.self, for: "revenue", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? revenue
		sequence = try createInstance(type: FHIRInteger.self, for: "sequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequence
		if nil == sequence && !presentKeys.contains("sequence") {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		service = try createInstance(type: CodeableConcept.self, for: "service", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? service
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		udi = try createInstances(of: Reference.self, for: "udi", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? udi
		unitPrice = try createInstance(type: Money.self, for: "unitPrice", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? unitPrice
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "adjudication", using: self.adjudication, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		arrayDecorate(json: &json, withKey: "noteNumber", using: self.noteNumber, errors: &errors)
		arrayDecorate(json: &json, withKey: "programCode", using: self.programCode, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.revenue?.decorate(json: &json, withKey: "revenue", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		self.service?.decorate(json: &json, withKey: "service", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		arrayDecorate(json: &json, withKey: "udi", using: self.udi, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Party to be paid any benefits payable.

The party to be reimbursed for the services.
*/
open class ExplanationOfBenefitPayee: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitPayee" }
	}
	
	/// Party to receive the payable.
	public var partyIdentifier: Identifier?
	
	/// Party to receive the payable.
	public var partyReference: Reference?
	
	/// organization | patient | practitioner | relatedperson.
	public var resourceType: CodeableConcept?
	
	/// Type of party: Subscriber, Provider, other.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		partyIdentifier = try createInstance(type: Identifier.self, for: "partyIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partyIdentifier
		partyReference = try createInstance(type: Reference.self, for: "partyReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partyReference
		resourceType = try createInstance(type: CodeableConcept.self, for: "resourceType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resourceType
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.partyIdentifier?.decorate(json: &json, withKey: "partyIdentifier", errors: &errors)
		self.partyReference?.decorate(json: &json, withKey: "partyReference", errors: &errors)
		self.resourceType?.decorate(json: &json, withKey: "resourceType", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Payment (if paid).

Payment details for the claim if the claim has been paid.
*/
open class ExplanationOfBenefitPayment: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitPayment" }
	}
	
	/// Payment adjustment for non-Claim issues.
	public var adjustment: Money?
	
	/// Explanation for the non-claim adjustment.
	public var adjustmentReason: CodeableConcept?
	
	/// Payable amount after adjustment.
	public var amount: Money?
	
	/// Expected date of Payment.
	public var date: FHIRDate?
	
	/// Identifier of the payment instrument.
	public var identifier: Identifier?
	
	/// Partial or Complete.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		adjustment = try createInstance(type: Money.self, for: "adjustment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? adjustment
		adjustmentReason = try createInstance(type: CodeableConcept.self, for: "adjustmentReason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? adjustmentReason
		amount = try createInstance(type: Money.self, for: "amount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? amount
		date = try createInstance(type: FHIRDate.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
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
Procedures performed.

Ordered list of patient procedures performed to support the adjudication.
*/
open class ExplanationOfBenefitProcedure: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitProcedure" }
	}
	
	/// When the procedure was performed.
	public var date: DateTime?
	
	/// Patient's list of procedures performed.
	public var procedureCodeableConcept: CodeableConcept?
	
	/// Patient's list of procedures performed.
	public var procedureReference: Reference?
	
	/// Procedure sequence for reference.
	public var sequence: FHIRInteger?
	
	
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
			fhir_warn("Type “\(type(of: procedure))” for property “\(procedure)” is invalid, ignoring")
		}
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		procedureCodeableConcept = try createInstance(type: CodeableConcept.self, for: "procedureCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? procedureCodeableConcept
		procedureReference = try createInstance(type: Reference.self, for: "procedureReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? procedureReference
		sequence = try createInstance(type: FHIRInteger.self, for: "sequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequence
		if nil == sequence && !presentKeys.contains("sequence") {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.procedureCodeableConcept && nil == self.procedureReference {
			errors.append(FHIRValidationError(missing: "procedure[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
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
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.procedureCodeableConcept && nil == self.procedureReference {
			errors.append(FHIRValidationError(missing: "procedure[x]"))
		}
	}
}


/**
Processing notes.

Note text.
*/
open class ExplanationOfBenefitProcessNote: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitProcessNote" }
	}
	
	/// Language if different from the resource.
	public var language: CodeableConcept?
	
	/// Sequence number for this note.
	public var number: FHIRInteger?
	
	/// Note explanitory text.
	public var text: FHIRString?
	
	/// display | print | printoper.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		language = try createInstance(type: CodeableConcept.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		number = try createInstance(type: FHIRInteger.self, for: "number", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? number
		text = try createInstance(type: FHIRString.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
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
Related Claims which may be revelant to processing this claim.

Other claims which are related to this claim such as prior claim versions or for related services.
*/
open class ExplanationOfBenefitRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitRelated" }
	}
	
	/// Reference to the related claim.
	public var claim: Reference?
	
	/// Related file or case reference.
	public var reference: Identifier?
	
	/// How the reference claim is related.
	public var relationship: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		claim = try createInstance(type: Reference.self, for: "claim", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? claim
		reference = try createInstance(type: Identifier.self, for: "reference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reference
		relationship = try createInstance(type: CodeableConcept.self, for: "relationship", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relationship
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.claim?.decorate(json: &json, withKey: "claim", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
	}
}

