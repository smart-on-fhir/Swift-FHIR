//
//  ExplanationOfBenefit.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit) on 2018-05-03.
//  2018, SMART Health IT.
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
	
	/// Author.
	public var enterer: Reference?
	
	/// Servicing Facility.
	public var facility: Reference?
	
	/// Printed Form Identifier.
	public var form: CodeableConcept?
	
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
	
	/// Original prescription if superceded by fulfiller.
	public var originalPrescription: Reference?
	
	/// queued | complete | error | partial.
	public var outcome: FHIRString?
	
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
	
	/// Adjudication totals.
	public var total: [ExplanationOfBenefitTotal]?
	
	/// Type or discipline.
	public var type: CodeableConcept?
	
	/// Complete (Bill or Claim), Proposed (Pre-Authorization), Exploratory (Pre-determination).
	public var use: Use?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		accident = createInstance(type: ExplanationOfBenefitAccident.self, for: "accident", in: json, context: &instCtx, owner: self) ?? accident
		addItem = createInstances(of: ExplanationOfBenefitAddItem.self, for: "addItem", in: json, context: &instCtx, owner: self) ?? addItem
		benefitBalance = createInstances(of: ExplanationOfBenefitBenefitBalance.self, for: "benefitBalance", in: json, context: &instCtx, owner: self) ?? benefitBalance
		billablePeriod = createInstance(type: Period.self, for: "billablePeriod", in: json, context: &instCtx, owner: self) ?? billablePeriod
		careTeam = createInstances(of: ExplanationOfBenefitCareTeam.self, for: "careTeam", in: json, context: &instCtx, owner: self) ?? careTeam
		claim = createInstance(type: Reference.self, for: "claim", in: json, context: &instCtx, owner: self) ?? claim
		claimResponse = createInstance(type: Reference.self, for: "claimResponse", in: json, context: &instCtx, owner: self) ?? claimResponse
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		diagnosis = createInstances(of: ExplanationOfBenefitDiagnosis.self, for: "diagnosis", in: json, context: &instCtx, owner: self) ?? diagnosis
		disposition = createInstance(type: FHIRString.self, for: "disposition", in: json, context: &instCtx, owner: self) ?? disposition
		enterer = createInstance(type: Reference.self, for: "enterer", in: json, context: &instCtx, owner: self) ?? enterer
		facility = createInstance(type: Reference.self, for: "facility", in: json, context: &instCtx, owner: self) ?? facility
		form = createInstance(type: CodeableConcept.self, for: "form", in: json, context: &instCtx, owner: self) ?? form
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		information = createInstances(of: ExplanationOfBenefitInformation.self, for: "information", in: json, context: &instCtx, owner: self) ?? information
		insurance = createInstance(type: ExplanationOfBenefitInsurance.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		item = createInstances(of: ExplanationOfBenefitItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		originalPrescription = createInstance(type: Reference.self, for: "originalPrescription", in: json, context: &instCtx, owner: self) ?? originalPrescription
		outcome = createInstance(type: FHIRString.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		payee = createInstance(type: ExplanationOfBenefitPayee.self, for: "payee", in: json, context: &instCtx, owner: self) ?? payee
		payment = createInstance(type: ExplanationOfBenefitPayment.self, for: "payment", in: json, context: &instCtx, owner: self) ?? payment
		precedence = createInstance(type: FHIRInteger.self, for: "precedence", in: json, context: &instCtx, owner: self) ?? precedence
		prescription = createInstance(type: Reference.self, for: "prescription", in: json, context: &instCtx, owner: self) ?? prescription
		procedure = createInstances(of: ExplanationOfBenefitProcedure.self, for: "procedure", in: json, context: &instCtx, owner: self) ?? procedure
		processNote = createInstances(of: ExplanationOfBenefitProcessNote.self, for: "processNote", in: json, context: &instCtx, owner: self) ?? processNote
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		referral = createInstance(type: Reference.self, for: "referral", in: json, context: &instCtx, owner: self) ?? referral
		related = createInstances(of: ExplanationOfBenefitRelated.self, for: "related", in: json, context: &instCtx, owner: self) ?? related
		status = createEnum(type: ExplanationOfBenefitStatus.self, for: "status", in: json, context: &instCtx) ?? status
		subType = createInstances(of: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		total = createInstances(of: ExplanationOfBenefitTotal.self, for: "total", in: json, context: &instCtx, owner: self) ?? total
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		use = createEnum(type: Use.self, for: "use", in: json, context: &instCtx) ?? use
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
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.facility?.decorate(json: &json, withKey: "facility", errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "information", using: self.information, errors: &errors)
		self.insurance?.decorate(json: &json, withKey: "insurance", errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
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
		arrayDecorate(json: &json, withKey: "total", using: self.total, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
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

The first tier service adjudications for payor added services.
*/
open class ExplanationOfBenefitAddItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAddItem" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
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
	
	/// Billing Code.
	public var service: CodeableConcept?
	
	/// Subdetail sequence number.
	public var subDetailSequence: [FHIRInteger]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		adjudication = createInstances(of: ExplanationOfBenefitItemAdjudication.self, for: "adjudication", in: json, context: &instCtx, owner: self) ?? adjudication
		detailSequence = createInstances(of: FHIRInteger.self, for: "detailSequence", in: json, context: &instCtx, owner: self) ?? detailSequence
		fee = createInstance(type: Money.self, for: "fee", in: json, context: &instCtx, owner: self) ?? fee
		itemSequence = createInstances(of: FHIRInteger.self, for: "itemSequence", in: json, context: &instCtx, owner: self) ?? itemSequence
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		noteNumber = createInstances(of: FHIRInteger.self, for: "noteNumber", in: json, context: &instCtx, owner: self) ?? noteNumber
		service = createInstance(type: CodeableConcept.self, for: "service", in: json, context: &instCtx, owner: self) ?? service
		subDetailSequence = createInstances(of: FHIRInteger.self, for: "subDetailSequence", in: json, context: &instCtx, owner: self) ?? subDetailSequence
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
		arrayDecorate(json: &json, withKey: "subDetailSequence", using: self.subDetailSequence, errors: &errors)
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
		subCategory = createInstance(type: CodeableConcept.self, for: "subCategory", in: json, context: &instCtx, owner: self) ?? subCategory
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
	
	/// Number to convey order of careteam.
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
	
	/// Number to convey order of diagnosis.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		diagnosisCodeableConcept = createInstance(type: CodeableConcept.self, for: "diagnosisCodeableConcept", in: json, context: &instCtx, owner: self) ?? diagnosisCodeableConcept
		diagnosisReference = createInstance(type: Reference.self, for: "diagnosisReference", in: json, context: &instCtx, owner: self) ?? diagnosisReference
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
	public var valueBoolean: FHIRBool?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		preAuthRef = createInstances(of: FHIRString.self, for: "preAuthRef", in: json, context: &instCtx, owner: self) ?? preAuthRef
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
	public var careTeamSequence: [FHIRInteger]?
	
	/// Type of service or product.
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
	public var procedureSequence: [FHIRInteger]?
	
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
		programCode = createInstances(of: CodeableConcept.self, for: "programCode", in: json, context: &instCtx, owner: self) ?? programCode
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		revenue = createInstance(type: CodeableConcept.self, for: "revenue", in: json, context: &instCtx, owner: self) ?? revenue
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		service = createInstance(type: CodeableConcept.self, for: "service", in: json, context: &instCtx, owner: self) ?? service
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
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: FHIRInteger) {
		self.init()
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
		programCode = createInstances(of: CodeableConcept.self, for: "programCode", in: json, context: &instCtx, owner: self) ?? programCode
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		revenue = createInstance(type: CodeableConcept.self, for: "revenue", in: json, context: &instCtx, owner: self) ?? revenue
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		service = createInstance(type: CodeableConcept.self, for: "service", in: json, context: &instCtx, owner: self) ?? service
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
		arrayDecorate(json: &json, withKey: "programCode", using: self.programCode, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.revenue?.decorate(json: &json, withKey: "revenue", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		self.service?.decorate(json: &json, withKey: "service", errors: &errors)
		arrayDecorate(json: &json, withKey: "subDetail", using: self.subDetail, errors: &errors)
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
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: FHIRInteger) {
		self.init()
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
		programCode = createInstances(of: CodeableConcept.self, for: "programCode", in: json, context: &instCtx, owner: self) ?? programCode
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		revenue = createInstance(type: CodeableConcept.self, for: "revenue", in: json, context: &instCtx, owner: self) ?? revenue
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		service = createInstance(type: CodeableConcept.self, for: "service", in: json, context: &instCtx, owner: self) ?? service
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
		arrayDecorate(json: &json, withKey: "programCode", using: self.programCode, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.revenue?.decorate(json: &json, withKey: "revenue", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		self.service?.decorate(json: &json, withKey: "service", errors: &errors)
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
	public var party: Reference?
	
	/// organization | patient | practitioner | relatedperson.
	public var resource: Coding?
	
	/// Type of party: Subscriber, Provider, other.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		party = createInstance(type: Reference.self, for: "party", in: json, context: &instCtx, owner: self) ?? party
		resource = createInstance(type: Coding.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.party?.decorate(json: &json, withKey: "party", errors: &errors)
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		procedureCodeableConcept = createInstance(type: CodeableConcept.self, for: "procedureCodeableConcept", in: json, context: &instCtx, owner: self) ?? procedureCodeableConcept
		procedureReference = createInstance(type: Reference.self, for: "procedureReference", in: json, context: &instCtx, owner: self) ?? procedureReference
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		
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
Adjudication totals.

Totals for amounts submitted, co-pays, benefits payable etc.
*/
open class ExplanationOfBenefitTotal: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitTotal" }
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

