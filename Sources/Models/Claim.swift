//
//  Claim.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Claim) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Claim, Pre-determination or Pre-authorization.

A provider issued list of professional services and products which have been provided, or are to be provided, to a
patient which is sent to an insurer for reimbursement.
*/
open class Claim: DomainResource {
	override open class var resourceType: String {
		get { return "Claim" }
	}
	
	/// Details of the event.
	public var accident: ClaimAccident?
	
	/// Relevant time frame for the claim.
	public var billablePeriod: Period?
	
	/// Members of the care team.
	public var careTeam: [ClaimCareTeam]?
	
	/// Resource creation date.
	public var created: DateTime?
	
	/// Pertinent diagnosis information.
	public var diagnosis: [ClaimDiagnosis]?
	
	/// Author of the claim.
	public var enterer: Reference?
	
	/// Servicing facility.
	public var facility: Reference?
	
	/// For whom to reserve funds.
	public var fundsReserve: CodeableConcept?
	
	/// Business Identifier for claim.
	public var identifier: [Identifier]?
	
	/// Patient insurance information.
	public var insurance: [ClaimInsurance]?
	
	/// Target.
	public var insurer: Reference?
	
	/// Product or service provided.
	public var item: [ClaimItem]?
	
	/// Original prescription if superseded by fulfiller.
	public var originalPrescription: Reference?
	
	/// The recipient of the products and services.
	public var patient: Reference?
	
	/// Recipient of benefits payable.
	public var payee: ClaimPayee?
	
	/// Prescription authorizing services and products.
	public var prescription: Reference?
	
	/// Desired processing ugency.
	public var priority: CodeableConcept?
	
	/// Clinical procedures performed.
	public var procedure: [ClaimProcedure]?
	
	/// Party responsible for the claim.
	public var provider: Reference?
	
	/// Treatment referral.
	public var referral: Reference?
	
	/// Prior or corollary claims.
	public var related: [ClaimRelated]?
	
	/// The status of the resource instance.
	public var status: FinancialResourceStatusCodes?
	
	/// More granular claim type.
	public var subType: CodeableConcept?
	
	/// Supporting information.
	public var supportingInfo: [ClaimSupportingInfo]?
	
	/// Total claim cost.
	public var total: Money?
	
	/// Category or discipline.
	public var type: CodeableConcept?
	
	/// A code to indicate whether the nature of the request is: to request adjudication of products and services
	/// previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the
	/// non-binding adjudication of the listed products and services which could be provided in the future.
	public var use: Use?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(created: DateTime, insurance: [ClaimInsurance], patient: Reference, priority: CodeableConcept, provider: Reference, status: FinancialResourceStatusCodes, type: CodeableConcept, use: Use) {
		self.init()
		self.created = created
		self.insurance = insurance
		self.patient = patient
		self.priority = priority
		self.provider = provider
		self.status = status
		self.type = type
		self.use = use
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		accident = createInstance(type: ClaimAccident.self, for: "accident", in: json, context: &instCtx, owner: self) ?? accident
		billablePeriod = createInstance(type: Period.self, for: "billablePeriod", in: json, context: &instCtx, owner: self) ?? billablePeriod
		careTeam = createInstances(of: ClaimCareTeam.self, for: "careTeam", in: json, context: &instCtx, owner: self) ?? careTeam
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		if nil == created && !instCtx.containsKey("created") {
			instCtx.addError(FHIRValidationError(missing: "created"))
		}
		diagnosis = createInstances(of: ClaimDiagnosis.self, for: "diagnosis", in: json, context: &instCtx, owner: self) ?? diagnosis
		enterer = createInstance(type: Reference.self, for: "enterer", in: json, context: &instCtx, owner: self) ?? enterer
		facility = createInstance(type: Reference.self, for: "facility", in: json, context: &instCtx, owner: self) ?? facility
		fundsReserve = createInstance(type: CodeableConcept.self, for: "fundsReserve", in: json, context: &instCtx, owner: self) ?? fundsReserve
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		insurance = createInstances(of: ClaimInsurance.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		if (nil == insurance || insurance!.isEmpty) && !instCtx.containsKey("insurance") {
			instCtx.addError(FHIRValidationError(missing: "insurance"))
		}
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		item = createInstances(of: ClaimItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		originalPrescription = createInstance(type: Reference.self, for: "originalPrescription", in: json, context: &instCtx, owner: self) ?? originalPrescription
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		payee = createInstance(type: ClaimPayee.self, for: "payee", in: json, context: &instCtx, owner: self) ?? payee
		prescription = createInstance(type: Reference.self, for: "prescription", in: json, context: &instCtx, owner: self) ?? prescription
		priority = createInstance(type: CodeableConcept.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		if nil == priority && !instCtx.containsKey("priority") {
			instCtx.addError(FHIRValidationError(missing: "priority"))
		}
		procedure = createInstances(of: ClaimProcedure.self, for: "procedure", in: json, context: &instCtx, owner: self) ?? procedure
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		if nil == provider && !instCtx.containsKey("provider") {
			instCtx.addError(FHIRValidationError(missing: "provider"))
		}
		referral = createInstance(type: Reference.self, for: "referral", in: json, context: &instCtx, owner: self) ?? referral
		related = createInstances(of: ClaimRelated.self, for: "related", in: json, context: &instCtx, owner: self) ?? related
		status = createEnum(type: FinancialResourceStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subType = createInstance(type: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		supportingInfo = createInstances(of: ClaimSupportingInfo.self, for: "supportingInfo", in: json, context: &instCtx, owner: self) ?? supportingInfo
		total = createInstance(type: Money.self, for: "total", in: json, context: &instCtx, owner: self) ?? total
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
		self.billablePeriod?.decorate(json: &json, withKey: "billablePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "careTeam", using: self.careTeam, errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		if nil == self.created {
			errors.append(FHIRValidationError(missing: "created"))
		}
		arrayDecorate(json: &json, withKey: "diagnosis", using: self.diagnosis, errors: &errors)
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.facility?.decorate(json: &json, withKey: "facility", errors: &errors)
		self.fundsReserve?.decorate(json: &json, withKey: "fundsReserve", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		if nil == insurance || self.insurance!.isEmpty {
			errors.append(FHIRValidationError(missing: "insurance"))
		}
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.originalPrescription?.decorate(json: &json, withKey: "originalPrescription", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.payee?.decorate(json: &json, withKey: "payee", errors: &errors)
		self.prescription?.decorate(json: &json, withKey: "prescription", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		if nil == self.priority {
			errors.append(FHIRValidationError(missing: "priority"))
		}
		arrayDecorate(json: &json, withKey: "procedure", using: self.procedure, errors: &errors)
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
		self.total?.decorate(json: &json, withKey: "total", errors: &errors)
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

Details of an accident which resulted in injuries which required the products and services listed in the claim.
*/
open class ClaimAccident: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimAccident" }
	}
	
	/// When the incident occurred.
	public var date: FHIRDate?
	
	/// Where the event occurred.
	public var locationAddress: Address?
	
	/// Where the event occurred.
	public var locationReference: Reference?
	
	/// The nature of the accident.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: FHIRDate) {
		self.init()
		self.date = date
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: FHIRDate.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		if nil == date && !instCtx.containsKey("date") {
			instCtx.addError(FHIRValidationError(missing: "date"))
		}
		locationAddress = createInstance(type: Address.self, for: "locationAddress", in: json, context: &instCtx, owner: self) ?? locationAddress
		locationReference = createInstance(type: Reference.self, for: "locationReference", in: json, context: &instCtx, owner: self) ?? locationReference
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		if nil == self.date {
			errors.append(FHIRValidationError(missing: "date"))
		}
		self.locationAddress?.decorate(json: &json, withKey: "locationAddress", errors: &errors)
		self.locationReference?.decorate(json: &json, withKey: "locationReference", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Members of the care team.

The members of the team who provided the products and services.
*/
open class ClaimCareTeam: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimCareTeam" }
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
open class ClaimDiagnosis: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimDiagnosis" }
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
open class ClaimInsurance: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimInsurance" }
	}
	
	/// Additional provider contract number.
	public var businessArrangement: FHIRString?
	
	/// Adjudication results.
	public var claimResponse: Reference?
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Coverage to be used for adjudication.
	public var focal: FHIRBool?
	
	/// Pre-assigned Claim number.
	public var identifier: Identifier?
	
	/// Prior authorization reference number.
	public var preAuthRef: [FHIRString]?
	
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
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
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
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "preAuthRef", using: self.preAuthRef, errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
	}
}


/**
Product or service provided.

A claim line. Either a simple  product or service or a 'group' of details which can each be a simple items or groups of
sub-details.
*/
open class ClaimItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimItem" }
	}
	
	/// Anatomical location.
	public var bodySite: CodeableConcept?
	
	/// Applicable careTeam members.
	public var careTeamSequence: [FHIRInteger]?
	
	/// Benefit classification.
	public var category: CodeableConcept?
	
	/// Product or service provided.
	public var detail: [ClaimItemDetail]?
	
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
		
		bodySite = createInstance(type: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		careTeamSequence = createInstances(of: FHIRInteger.self, for: "careTeamSequence", in: json, context: &instCtx, owner: self) ?? careTeamSequence
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		detail = createInstances(of: ClaimItemDetail.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		diagnosisSequence = createInstances(of: FHIRInteger.self, for: "diagnosisSequence", in: json, context: &instCtx, owner: self) ?? diagnosisSequence
		encounter = createInstances(of: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		informationSequence = createInstances(of: FHIRInteger.self, for: "informationSequence", in: json, context: &instCtx, owner: self) ?? informationSequence
		locationAddress = createInstance(type: Address.self, for: "locationAddress", in: json, context: &instCtx, owner: self) ?? locationAddress
		locationCodeableConcept = createInstance(type: CodeableConcept.self, for: "locationCodeableConcept", in: json, context: &instCtx, owner: self) ?? locationCodeableConcept
		locationReference = createInstance(type: Reference.self, for: "locationReference", in: json, context: &instCtx, owner: self) ?? locationReference
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
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
Product or service provided.

A claim detail line. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
*/
open class ClaimItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimItemDetail" }
	}
	
	/// Benefit classification.
	public var category: CodeableConcept?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Total item cost.
	public var net: Money?
	
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
	
	/// Product or service provided.
	public var subDetail: [ClaimItemDetailSubDetail]?
	
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
		
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
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
		subDetail = createInstances(of: ClaimItemDetailSubDetail.self, for: "subDetail", in: json, context: &instCtx, owner: self) ?? subDetail
		udi = createInstances(of: Reference.self, for: "udi", in: json, context: &instCtx, owner: self) ?? udi
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
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
Product or service provided.

A claim detail line. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
*/
open class ClaimItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimItemDetailSubDetail" }
	}
	
	/// Benefit classification.
	public var category: CodeableConcept?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Total item cost.
	public var net: Money?
	
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
		
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
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
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
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
open class ClaimPayee: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimPayee" }
	}
	
	/// Recipient reference.
	public var party: Reference?
	
	/// Category of recipient.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		party = createInstance(type: Reference.self, for: "party", in: json, context: &instCtx, owner: self) ?? party
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.party?.decorate(json: &json, withKey: "party", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Clinical procedures performed.

Procedures performed on the patient relevant to the billing items with the claim.
*/
open class ClaimProcedure: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimProcedure" }
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
Prior or corollary claims.

Other claims which are related to this claim such as prior submissions or claims for related services or for the same
event.
*/
open class ClaimRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimRelated" }
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
open class ClaimSupportingInfo: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimSupportingInfo" }
	}
	
	/// Classification of the supplied information.
	public var category: CodeableConcept?
	
	/// Type of information.
	public var code: CodeableConcept?
	
	/// Explanation for the information.
	public var reason: CodeableConcept?
	
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
		reason = createInstance(type: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
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

