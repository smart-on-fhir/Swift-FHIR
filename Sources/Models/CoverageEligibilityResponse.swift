//
//  CoverageEligibilityResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
CoverageEligibilityResponse resource.

This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
*/
open class CoverageEligibilityResponse: DomainResource {
	override open class var resourceType: String {
		get { return "CoverageEligibilityResponse" }
	}
	
	/// Response creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: FHIRString?
	
	/// Processing errors.
	public var error: [CoverageEligibilityResponseError]?
	
	/// Printed form identifier.
	public var form: CodeableConcept?
	
	/// Business Identifier for coverage eligiblity request.
	public var identifier: [Identifier]?
	
	/// Patient insurance information.
	public var insurance: [CoverageEligibilityResponseInsurance]?
	
	/// Coverage issuer.
	public var insurer: Reference?
	
	/// The outcome of the request processing.
	public var outcome: ClaimProcessingCodes?
	
	/// Intended recipient of products and services.
	public var patient: Reference?
	
	/// Preauthorization reference.
	public var preAuthRef: FHIRString?
	
	/// Code to specify whether requesting: prior authorization requirements for some service categories or billing
	/// codes; benefits for coverages specified or discovered; discovery and return of coverages for the patient; and/or
	/// validation that the specified coverage is in-force at the date/period specified or 'now' if not specified.
	public var purpose: [EligibilityResponsePurpose]?
	
	/// Eligibility request reference.
	public var request: Reference?
	
	/// Party responsible for the request.
	public var requestor: Reference?
	
	/// Estimated date or dates of service.
	public var servicedDate: FHIRDate?
	
	/// Estimated date or dates of service.
	public var servicedPeriod: Period?
	
	/// The status of the resource instance.
	public var status: FinancialResourceStatusCodes?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(created: DateTime, insurer: Reference, outcome: ClaimProcessingCodes, patient: Reference, purpose: [EligibilityResponsePurpose], request: Reference, status: FinancialResourceStatusCodes) {
		self.init()
		self.created = created
		self.insurer = insurer
		self.outcome = outcome
		self.patient = patient
		self.purpose = purpose
		self.request = request
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		if nil == created && !instCtx.containsKey("created") {
			instCtx.addError(FHIRValidationError(missing: "created"))
		}
		disposition = createInstance(type: FHIRString.self, for: "disposition", in: json, context: &instCtx, owner: self) ?? disposition
		error = createInstances(of: CoverageEligibilityResponseError.self, for: "error", in: json, context: &instCtx, owner: self) ?? error
		form = createInstance(type: CodeableConcept.self, for: "form", in: json, context: &instCtx, owner: self) ?? form
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		insurance = createInstances(of: CoverageEligibilityResponseInsurance.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		if nil == insurer && !instCtx.containsKey("insurer") {
			instCtx.addError(FHIRValidationError(missing: "insurer"))
		}
		outcome = createEnum(type: ClaimProcessingCodes.self, for: "outcome", in: json, context: &instCtx) ?? outcome
		if nil == outcome && !instCtx.containsKey("outcome") {
			instCtx.addError(FHIRValidationError(missing: "outcome"))
		}
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		preAuthRef = createInstance(type: FHIRString.self, for: "preAuthRef", in: json, context: &instCtx, owner: self) ?? preAuthRef
		purpose = createEnums(of: EligibilityResponsePurpose.self, for: "purpose", in: json, context: &instCtx) ?? purpose
		if (nil == purpose || purpose!.isEmpty) && !instCtx.containsKey("purpose") {
			instCtx.addError(FHIRValidationError(missing: "purpose"))
		}
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		if nil == request && !instCtx.containsKey("request") {
			instCtx.addError(FHIRValidationError(missing: "request"))
		}
		requestor = createInstance(type: Reference.self, for: "requestor", in: json, context: &instCtx, owner: self) ?? requestor
		servicedDate = createInstance(type: FHIRDate.self, for: "servicedDate", in: json, context: &instCtx, owner: self) ?? servicedDate
		servicedPeriod = createInstance(type: Period.self, for: "servicedPeriod", in: json, context: &instCtx, owner: self) ?? servicedPeriod
		status = createEnum(type: FinancialResourceStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		if nil == self.created {
			errors.append(FHIRValidationError(missing: "created"))
		}
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		arrayDecorate(json: &json, withKey: "error", using: self.error, errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		if nil == self.insurer {
			errors.append(FHIRValidationError(missing: "insurer"))
		}
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		if nil == self.outcome {
			errors.append(FHIRValidationError(missing: "outcome"))
		}
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.preAuthRef?.decorate(json: &json, withKey: "preAuthRef", errors: &errors)
		arrayDecorate(json: &json, withKey: "purpose", using: self.purpose, errors: &errors)
		if nil == purpose || self.purpose!.isEmpty {
			errors.append(FHIRValidationError(missing: "purpose"))
		}
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		if nil == self.request {
			errors.append(FHIRValidationError(missing: "request"))
		}
		self.requestor?.decorate(json: &json, withKey: "requestor", errors: &errors)
		self.servicedDate?.decorate(json: &json, withKey: "servicedDate", errors: &errors)
		self.servicedPeriod?.decorate(json: &json, withKey: "servicedPeriod", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}


/**
Processing errors.

Errors encountered during the processing of the request.
*/
open class CoverageEligibilityResponseError: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageEligibilityResponseError" }
	}
	
	/// Error code detailing processing issues.
	public var code: CodeableConcept?
	
	
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
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
	}
}


/**
Patient insurance information.

Financial instruments for reimbursement for the health care products and services.
*/
open class CoverageEligibilityResponseInsurance: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageEligibilityResponseInsurance" }
	}
	
	/// When the benefits are applicable.
	public var benefitPeriod: Period?
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Coverage inforce indicator.
	public var inforce: FHIRBool?
	
	/// Benefits and authorization details.
	public var item: [CoverageEligibilityResponseInsuranceItem]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: Reference) {
		self.init()
		self.coverage = coverage
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		benefitPeriod = createInstance(type: Period.self, for: "benefitPeriod", in: json, context: &instCtx, owner: self) ?? benefitPeriod
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		if nil == coverage && !instCtx.containsKey("coverage") {
			instCtx.addError(FHIRValidationError(missing: "coverage"))
		}
		inforce = createInstance(type: FHIRBool.self, for: "inforce", in: json, context: &instCtx, owner: self) ?? inforce
		item = createInstances(of: CoverageEligibilityResponseInsuranceItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.benefitPeriod?.decorate(json: &json, withKey: "benefitPeriod", errors: &errors)
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		if nil == self.coverage {
			errors.append(FHIRValidationError(missing: "coverage"))
		}
		self.inforce?.decorate(json: &json, withKey: "inforce", errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
	}
}


/**
Benefits and authorization details.

Benefits and optionally current balances, and authorization details by category or service.
*/
open class CoverageEligibilityResponseInsuranceItem: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageEligibilityResponseInsuranceItem" }
	}
	
	/// Authorization required flag.
	public var authorizationRequired: FHIRBool?
	
	/// Type of required supporting materials.
	public var authorizationSupporting: [CodeableConcept]?
	
	/// Preauthorization requirements endpoint.
	public var authorizationUrl: FHIRURL?
	
	/// Benefit Summary.
	public var benefit: [CoverageEligibilityResponseInsuranceItemBenefit]?
	
	/// Benefit classification.
	public var category: CodeableConcept?
	
	/// Description of the benefit or services covered.
	public var description_fhir: FHIRString?
	
	/// Excluded from the plan.
	public var excluded: FHIRBool?
	
	/// Product or service billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Short name for the benefit.
	public var name: FHIRString?
	
	/// In or out of network.
	public var network: CodeableConcept?
	
	/// Billing, service, product, or drug code.
	public var productOrService: CodeableConcept?
	
	/// Performing practitioner.
	public var provider: Reference?
	
	/// Annual or lifetime.
	public var term: CodeableConcept?
	
	/// Individual or family.
	public var unit: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authorizationRequired = createInstance(type: FHIRBool.self, for: "authorizationRequired", in: json, context: &instCtx, owner: self) ?? authorizationRequired
		authorizationSupporting = createInstances(of: CodeableConcept.self, for: "authorizationSupporting", in: json, context: &instCtx, owner: self) ?? authorizationSupporting
		authorizationUrl = createInstance(type: FHIRURL.self, for: "authorizationUrl", in: json, context: &instCtx, owner: self) ?? authorizationUrl
		benefit = createInstances(of: CoverageEligibilityResponseInsuranceItemBenefit.self, for: "benefit", in: json, context: &instCtx, owner: self) ?? benefit
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		excluded = createInstance(type: FHIRBool.self, for: "excluded", in: json, context: &instCtx, owner: self) ?? excluded
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		network = createInstance(type: CodeableConcept.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		productOrService = createInstance(type: CodeableConcept.self, for: "productOrService", in: json, context: &instCtx, owner: self) ?? productOrService
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		term = createInstance(type: CodeableConcept.self, for: "term", in: json, context: &instCtx, owner: self) ?? term
		unit = createInstance(type: CodeableConcept.self, for: "unit", in: json, context: &instCtx, owner: self) ?? unit
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authorizationRequired?.decorate(json: &json, withKey: "authorizationRequired", errors: &errors)
		arrayDecorate(json: &json, withKey: "authorizationSupporting", using: self.authorizationSupporting, errors: &errors)
		self.authorizationUrl?.decorate(json: &json, withKey: "authorizationUrl", errors: &errors)
		arrayDecorate(json: &json, withKey: "benefit", using: self.benefit, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.excluded?.decorate(json: &json, withKey: "excluded", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.network?.decorate(json: &json, withKey: "network", errors: &errors)
		self.productOrService?.decorate(json: &json, withKey: "productOrService", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.term?.decorate(json: &json, withKey: "term", errors: &errors)
		self.unit?.decorate(json: &json, withKey: "unit", errors: &errors)
	}
}


/**
Benefit Summary.

Benefits used to date.
*/
open class CoverageEligibilityResponseInsuranceItemBenefit: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageEligibilityResponseInsuranceItemBenefit" }
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
	public var usedString: FHIRString?
	
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
		usedString = createInstance(type: FHIRString.self, for: "usedString", in: json, context: &instCtx, owner: self) ?? usedString
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
		self.usedString?.decorate(json: &json, withKey: "usedString", errors: &errors)
		self.usedUnsignedInt?.decorate(json: &json, withKey: "usedUnsignedInt", errors: &errors)
	}
}

