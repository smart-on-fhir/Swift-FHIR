//
//  CoverageEligibilityRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
CoverageEligibilityRequest resource.

The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in
the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force
and optionally to provide the insurance details of the policy.
*/
open class CoverageEligibilityRequest: DomainResource {
	override open class var resourceType: String {
		get { return "CoverageEligibilityRequest" }
	}
	
	/// Creation date.
	public var created: DateTime?
	
	/// Author.
	public var enterer: Reference?
	
	/// Servicing facility.
	public var facility: Reference?
	
	/// Business Identifier for coverage eligiblity request.
	public var identifier: [Identifier]?
	
	/// Patient insurance information.
	public var insurance: [CoverageEligibilityRequestInsurance]?
	
	/// Coverage issuer.
	public var insurer: Reference?
	
	/// Item to be evaluated for eligibiity.
	public var item: [CoverageEligibilityRequestItem]?
	
	/// Intended recipient of products and services.
	public var patient: Reference?
	
	/// Desired processing priority.
	public var priority: CodeableConcept?
	
	/// Party responsible for the request.
	public var provider: Reference?
	
	/// Code to specify whether requesting: prior authorization requirements for some service categories or billing
	/// codes; benefits for coverages specified or discovered; discovery and return of coverages for the patient; and/or
	/// validation that the specified coverage is in-force at the date/period specified or 'now' if not specified.
	public var purpose: [EligibilityRequestPurpose]?
	
	/// Estimated date or dates of service.
	public var servicedDate: FHIRDate?
	
	/// Estimated date or dates of service.
	public var servicedPeriod: Period?
	
	/// The status of the resource instance.
	public var status: FinancialResourceStatusCodes?
	
	/// Supporting information.
	public var supportingInfo: [CoverageEligibilityRequestSupportingInfo]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(created: DateTime, insurer: Reference, patient: Reference, purpose: [EligibilityRequestPurpose], status: FinancialResourceStatusCodes) {
		self.init()
		self.created = created
		self.insurer = insurer
		self.patient = patient
		self.purpose = purpose
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		if nil == created && !instCtx.containsKey("created") {
			instCtx.addError(FHIRValidationError(missing: "created"))
		}
		enterer = createInstance(type: Reference.self, for: "enterer", in: json, context: &instCtx, owner: self) ?? enterer
		facility = createInstance(type: Reference.self, for: "facility", in: json, context: &instCtx, owner: self) ?? facility
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		insurance = createInstances(of: CoverageEligibilityRequestInsurance.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		if nil == insurer && !instCtx.containsKey("insurer") {
			instCtx.addError(FHIRValidationError(missing: "insurer"))
		}
		item = createInstances(of: CoverageEligibilityRequestItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		priority = createInstance(type: CodeableConcept.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		purpose = createEnums(of: EligibilityRequestPurpose.self, for: "purpose", in: json, context: &instCtx) ?? purpose
		if (nil == purpose || purpose!.isEmpty) && !instCtx.containsKey("purpose") {
			instCtx.addError(FHIRValidationError(missing: "purpose"))
		}
		servicedDate = createInstance(type: FHIRDate.self, for: "servicedDate", in: json, context: &instCtx, owner: self) ?? servicedDate
		servicedPeriod = createInstance(type: Period.self, for: "servicedPeriod", in: json, context: &instCtx, owner: self) ?? servicedPeriod
		status = createEnum(type: FinancialResourceStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		supportingInfo = createInstances(of: CoverageEligibilityRequestSupportingInfo.self, for: "supportingInfo", in: json, context: &instCtx, owner: self) ?? supportingInfo
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		if nil == self.created {
			errors.append(FHIRValidationError(missing: "created"))
		}
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.facility?.decorate(json: &json, withKey: "facility", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		if nil == self.insurer {
			errors.append(FHIRValidationError(missing: "insurer"))
		}
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		arrayDecorate(json: &json, withKey: "purpose", using: self.purpose, errors: &errors)
		if nil == purpose || self.purpose!.isEmpty {
			errors.append(FHIRValidationError(missing: "purpose"))
		}
		self.servicedDate?.decorate(json: &json, withKey: "servicedDate", errors: &errors)
		self.servicedPeriod?.decorate(json: &json, withKey: "servicedPeriod", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
	}
}


/**
Patient insurance information.

Financial instruments for reimbursement for the health care products and services.
*/
open class CoverageEligibilityRequestInsurance: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageEligibilityRequestInsurance" }
	}
	
	/// Additional provider contract number.
	public var businessArrangement: FHIRString?
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Applicable coverage.
	public var focal: FHIRBool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: Reference) {
		self.init()
		self.coverage = coverage
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		businessArrangement = createInstance(type: FHIRString.self, for: "businessArrangement", in: json, context: &instCtx, owner: self) ?? businessArrangement
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		if nil == coverage && !instCtx.containsKey("coverage") {
			instCtx.addError(FHIRValidationError(missing: "coverage"))
		}
		focal = createInstance(type: FHIRBool.self, for: "focal", in: json, context: &instCtx, owner: self) ?? focal
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.businessArrangement?.decorate(json: &json, withKey: "businessArrangement", errors: &errors)
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		if nil == self.coverage {
			errors.append(FHIRValidationError(missing: "coverage"))
		}
		self.focal?.decorate(json: &json, withKey: "focal", errors: &errors)
	}
}


/**
Item to be evaluated for eligibiity.

Service categories or billable services for which benefit details and/or an authorization prior to service delivery may
be required by the payor.
*/
open class CoverageEligibilityRequestItem: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageEligibilityRequestItem" }
	}
	
	/// Benefit classification.
	public var category: CodeableConcept?
	
	/// Product or service details.
	public var detail: [Reference]?
	
	/// Applicable diagnosis.
	public var diagnosis: [CoverageEligibilityRequestItemDiagnosis]?
	
	/// Servicing facility.
	public var facility: Reference?
	
	/// Product or service billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Billing, service, product, or drug code.
	public var productOrService: CodeableConcept?
	
	/// Perfoming practitioner.
	public var provider: Reference?
	
	/// Count of products or services.
	public var quantity: Quantity?
	
	/// Applicable exception or supporting information.
	public var supportingInfoSequence: [FHIRInteger]?
	
	/// Fee, charge or cost per item.
	public var unitPrice: Money?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		detail = createInstances(of: Reference.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		diagnosis = createInstances(of: CoverageEligibilityRequestItemDiagnosis.self, for: "diagnosis", in: json, context: &instCtx, owner: self) ?? diagnosis
		facility = createInstance(type: Reference.self, for: "facility", in: json, context: &instCtx, owner: self) ?? facility
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		productOrService = createInstance(type: CodeableConcept.self, for: "productOrService", in: json, context: &instCtx, owner: self) ?? productOrService
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		supportingInfoSequence = createInstances(of: FHIRInteger.self, for: "supportingInfoSequence", in: json, context: &instCtx, owner: self) ?? supportingInfoSequence
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		arrayDecorate(json: &json, withKey: "diagnosis", using: self.diagnosis, errors: &errors)
		self.facility?.decorate(json: &json, withKey: "facility", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.productOrService?.decorate(json: &json, withKey: "productOrService", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "supportingInfoSequence", using: self.supportingInfoSequence, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Applicable diagnosis.

Patient diagnosis for which care is sought.
*/
open class CoverageEligibilityRequestItemDiagnosis: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageEligibilityRequestItemDiagnosis" }
	}
	
	/// Nature of illness or problem.
	public var diagnosisCodeableConcept: CodeableConcept?
	
	/// Nature of illness or problem.
	public var diagnosisReference: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		diagnosisCodeableConcept = createInstance(type: CodeableConcept.self, for: "diagnosisCodeableConcept", in: json, context: &instCtx, owner: self) ?? diagnosisCodeableConcept
		diagnosisReference = createInstance(type: Reference.self, for: "diagnosisReference", in: json, context: &instCtx, owner: self) ?? diagnosisReference
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.diagnosisCodeableConcept?.decorate(json: &json, withKey: "diagnosisCodeableConcept", errors: &errors)
		self.diagnosisReference?.decorate(json: &json, withKey: "diagnosisReference", errors: &errors)
	}
}


/**
Supporting information.

Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent
issues.
*/
open class CoverageEligibilityRequestSupportingInfo: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageEligibilityRequestSupportingInfo" }
	}
	
	/// Applies to all items.
	public var appliesToAll: FHIRBool?
	
	/// Data to be provided.
	public var information: Reference?
	
	/// Information instance identifier.
	public var sequence: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(information: Reference, sequence: FHIRInteger) {
		self.init()
		self.information = information
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		appliesToAll = createInstance(type: FHIRBool.self, for: "appliesToAll", in: json, context: &instCtx, owner: self) ?? appliesToAll
		information = createInstance(type: Reference.self, for: "information", in: json, context: &instCtx, owner: self) ?? information
		if nil == information && !instCtx.containsKey("information") {
			instCtx.addError(FHIRValidationError(missing: "information"))
		}
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.appliesToAll?.decorate(json: &json, withKey: "appliesToAll", errors: &errors)
		self.information?.decorate(json: &json, withKey: "information", errors: &errors)
		if nil == self.information {
			errors.append(FHIRValidationError(missing: "information"))
		}
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
	}
}

