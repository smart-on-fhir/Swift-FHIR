//
//  Claim.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Claim) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Claim, Pre-determination or Pre-authorization.

A provider issued list of services and products provided, or to be provided, to a patient which is provided to an
insurer for payment recovery.
*/
open class Claim: DomainResource {
	override open class var resourceType: String {
		get { return "Claim" }
	}
	
	/// Details about an accident.
	public var accident: ClaimAccident?
	
	/// Period for charge submission.
	public var billablePeriod: Period?
	
	/// Members of the care team.
	public var careTeam: [ClaimCareTeam]?
	
	/// Creation date.
	public var created: DateTime?
	
	/// List of Diagnosis.
	public var diagnosis: [ClaimDiagnosis]?
	
	/// Period unable to work.
	public var employmentImpacted: Period?
	
	/// Author.
	public var enterer: Reference?
	
	/// Servicing Facility.
	public var facility: Reference?
	
	/// Funds requested to be reserved.
	public var fundsReserve: CodeableConcept?
	
	/// Period in hospital.
	public var hospitalization: Period?
	
	/// Claim number.
	public var identifier: [Identifier]?
	
	/// Exceptions, special considerations, the condition, situation, prior or concurrent issues.
	public var information: [ClaimInformation]?
	
	/// Insurance or medical plan.
	public var insurance: [ClaimInsurance]?
	
	/// Target.
	public var insurer: Reference?
	
	/// Goods and Services.
	public var item: [ClaimItem]?
	
	/// Responsible organization.
	public var organization: Reference?
	
	/// Original prescription if superceded by fulfiller.
	public var originalPrescription: Reference?
	
	/// The subject of the Products and Services.
	public var patient: Reference?
	
	/// Party to be paid any benefits payable.
	public var payee: ClaimPayee?
	
	/// Prescription authorizing services or products.
	public var prescription: Reference?
	
	/// Desired processing priority.
	public var priority: CodeableConcept?
	
	/// Procedures performed.
	public var procedure: [ClaimProcedure]?
	
	/// Responsible provider.
	public var provider: Reference?
	
	/// Treatment Referral.
	public var referral: Reference?
	
	/// Related Claims which may be revelant to processing this claimn.
	public var related: [ClaimRelated]?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	/// Finer grained claim type information.
	public var subType: [CodeableConcept]?
	
	/// Total claim cost.
	public var total: Money?
	
	/// Type or discipline.
	public var type: CodeableConcept?
	
	/// Complete (Bill or Claim), Proposed (Pre-Authorization), Exploratory (Pre-determination).
	public var use: Use?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		accident = createInstance(type: ClaimAccident.self, for: "accident", in: json, context: &instCtx, owner: self) ?? accident
		billablePeriod = createInstance(type: Period.self, for: "billablePeriod", in: json, context: &instCtx, owner: self) ?? billablePeriod
		careTeam = createInstances(of: ClaimCareTeam.self, for: "careTeam", in: json, context: &instCtx, owner: self) ?? careTeam
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		diagnosis = createInstances(of: ClaimDiagnosis.self, for: "diagnosis", in: json, context: &instCtx, owner: self) ?? diagnosis
		employmentImpacted = createInstance(type: Period.self, for: "employmentImpacted", in: json, context: &instCtx, owner: self) ?? employmentImpacted
		enterer = createInstance(type: Reference.self, for: "enterer", in: json, context: &instCtx, owner: self) ?? enterer
		facility = createInstance(type: Reference.self, for: "facility", in: json, context: &instCtx, owner: self) ?? facility
		fundsReserve = createInstance(type: CodeableConcept.self, for: "fundsReserve", in: json, context: &instCtx, owner: self) ?? fundsReserve
		hospitalization = createInstance(type: Period.self, for: "hospitalization", in: json, context: &instCtx, owner: self) ?? hospitalization
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		information = createInstances(of: ClaimInformation.self, for: "information", in: json, context: &instCtx, owner: self) ?? information
		insurance = createInstances(of: ClaimInsurance.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		item = createInstances(of: ClaimItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		originalPrescription = createInstance(type: Reference.self, for: "originalPrescription", in: json, context: &instCtx, owner: self) ?? originalPrescription
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		payee = createInstance(type: ClaimPayee.self, for: "payee", in: json, context: &instCtx, owner: self) ?? payee
		prescription = createInstance(type: Reference.self, for: "prescription", in: json, context: &instCtx, owner: self) ?? prescription
		priority = createInstance(type: CodeableConcept.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		procedure = createInstances(of: ClaimProcedure.self, for: "procedure", in: json, context: &instCtx, owner: self) ?? procedure
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		referral = createInstance(type: Reference.self, for: "referral", in: json, context: &instCtx, owner: self) ?? referral
		related = createInstances(of: ClaimRelated.self, for: "related", in: json, context: &instCtx, owner: self) ?? related
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		subType = createInstances(of: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		total = createInstance(type: Money.self, for: "total", in: json, context: &instCtx, owner: self) ?? total
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		use = createEnum(type: Use.self, for: "use", in: json, context: &instCtx) ?? use
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.accident?.decorate(json: &json, withKey: "accident", errors: &errors)
		self.billablePeriod?.decorate(json: &json, withKey: "billablePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "careTeam", using: self.careTeam, errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		arrayDecorate(json: &json, withKey: "diagnosis", using: self.diagnosis, errors: &errors)
		self.employmentImpacted?.decorate(json: &json, withKey: "employmentImpacted", errors: &errors)
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.facility?.decorate(json: &json, withKey: "facility", errors: &errors)
		self.fundsReserve?.decorate(json: &json, withKey: "fundsReserve", errors: &errors)
		self.hospitalization?.decorate(json: &json, withKey: "hospitalization", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "information", using: self.information, errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.originalPrescription?.decorate(json: &json, withKey: "originalPrescription", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.payee?.decorate(json: &json, withKey: "payee", errors: &errors)
		self.prescription?.decorate(json: &json, withKey: "prescription", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "procedure", using: self.procedure, errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.referral?.decorate(json: &json, withKey: "referral", errors: &errors)
		arrayDecorate(json: &json, withKey: "related", using: self.related, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "subType", using: self.subType, errors: &errors)
		self.total?.decorate(json: &json, withKey: "total", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
	}
}


/**
Details about an accident.

An accident which resulted in the need for healthcare services.
*/
open class ClaimAccident: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimAccident" }
	}
	
	/// When the accident occurred
	/// see information codes
	/// see information codes.
	public var date: FHIRDate?
	
	/// Accident Place.
	public var locationAddress: Address?
	
	/// Accident Place.
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

The members of the team who provided the overall service as well as their role and whether responsible and
qualifications.
*/
open class ClaimCareTeam: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimCareTeam" }
	}
	
	/// Provider individual or organization.
	public var provider: Reference?
	
	/// Type, classification or Specialization.
	public var qualification: CodeableConcept?
	
	/// Billing provider.
	public var responsible: FHIRBool?
	
	/// Role on the team.
	public var role: CodeableConcept?
	
	/// Number to covey order of careTeam.
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

List of patient diagnosis for which care is sought.
*/
open class ClaimDiagnosis: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimDiagnosis" }
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
open class ClaimInformation: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimInformation" }
	}
	
	/// General class of information.
	public var category: CodeableConcept?
	
	/// Type of information.
	public var code: CodeableConcept?
	
	/// Reason associated with the information.
	public var reason: CodeableConcept?
	
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
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
	}
}


/**
Insurance or medical plan.

Financial instrument by which payment information for health care.
*/
open class ClaimInsurance: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimInsurance" }
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
Goods and Services.

First tier of goods and services.
*/
open class ClaimItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimItem" }
	}
	
	/// Service Location.
	public var bodySite: CodeableConcept?
	
	/// Applicable careTeam members.
	public var careTeamLinkId: [FHIRInteger]?
	
	/// Type of service or product.
	public var category: CodeableConcept?
	
	/// Additional items.
	public var detail: [ClaimItemDetail]?
	
	/// Applicable diagnoses.
	public var diagnosisLinkId: [FHIRInteger]?
	
	/// Encounters related to this billed item.
	public var encounter: [Reference]?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		bodySite = createInstance(type: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		careTeamLinkId = createInstances(of: FHIRInteger.self, for: "careTeamLinkId", in: json, context: &instCtx, owner: self) ?? careTeamLinkId
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		detail = createInstances(of: ClaimItemDetail.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		diagnosisLinkId = createInstances(of: FHIRInteger.self, for: "diagnosisLinkId", in: json, context: &instCtx, owner: self) ?? diagnosisLinkId
		encounter = createInstances(of: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		informationLinkId = createInstances(of: FHIRInteger.self, for: "informationLinkId", in: json, context: &instCtx, owner: self) ?? informationLinkId
		locationAddress = createInstance(type: Address.self, for: "locationAddress", in: json, context: &instCtx, owner: self) ?? locationAddress
		locationCodeableConcept = createInstance(type: CodeableConcept.self, for: "locationCodeableConcept", in: json, context: &instCtx, owner: self) ?? locationCodeableConcept
		locationReference = createInstance(type: Reference.self, for: "locationReference", in: json, context: &instCtx, owner: self) ?? locationReference
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		procedureLinkId = createInstances(of: FHIRInteger.self, for: "procedureLinkId", in: json, context: &instCtx, owner: self) ?? procedureLinkId
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
		
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		arrayDecorate(json: &json, withKey: "careTeamLinkId", using: self.careTeamLinkId, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		arrayDecorate(json: &json, withKey: "diagnosisLinkId", using: self.diagnosisLinkId, errors: &errors)
		arrayDecorate(json: &json, withKey: "encounter", using: self.encounter, errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "informationLinkId", using: self.informationLinkId, errors: &errors)
		self.locationAddress?.decorate(json: &json, withKey: "locationAddress", errors: &errors)
		self.locationCodeableConcept?.decorate(json: &json, withKey: "locationCodeableConcept", errors: &errors)
		self.locationReference?.decorate(json: &json, withKey: "locationReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
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
Additional items.

Second tier of goods and services.
*/
open class ClaimItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimItemDetail" }
	}
	
	/// Type of service or product.
	public var category: CodeableConcept?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Total additional item cost.
	public var net: Money?
	
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
	public var subDetail: [ClaimItemDetailSubDetail]?
	
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
		
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		programCode = createInstances(of: CodeableConcept.self, for: "programCode", in: json, context: &instCtx, owner: self) ?? programCode
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		revenue = createInstance(type: CodeableConcept.self, for: "revenue", in: json, context: &instCtx, owner: self) ?? revenue
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		service = createInstance(type: CodeableConcept.self, for: "service", in: json, context: &instCtx, owner: self) ?? service
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
open class ClaimItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimItemDetailSubDetail" }
	}
	
	/// Type of service or product.
	public var category: CodeableConcept?
	
	/// Price scaling factor.
	public var factor: FHIRDecimal?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Net additional item cost.
	public var net: Money?
	
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
		
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
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
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
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
open class ClaimPayee: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimPayee" }
	}
	
	/// Party to receive the payable.
	public var party: Reference?
	
	/// organization | patient | practitioner | relatedperson.
	public var resourceType: Coding?
	
	/// Type of party: Subscriber, Provider, other.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		party = createInstance(type: Reference.self, for: "party", in: json, context: &instCtx, owner: self) ?? party
		resourceType = createInstance(type: Coding.self, for: "resourceType", in: json, context: &instCtx, owner: self) ?? resourceType
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.party?.decorate(json: &json, withKey: "party", errors: &errors)
		self.resourceType?.decorate(json: &json, withKey: "resourceType", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Procedures performed.

Ordered list of patient procedures performed to support the adjudication.
*/
open class ClaimProcedure: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimProcedure" }
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
Related Claims which may be revelant to processing this claimn.

Other claims which are related to this claim such as prior claim versions or for related services.
*/
open class ClaimRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimRelated" }
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

