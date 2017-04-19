//
//  EligibilityResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/EligibilityResponse) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
EligibilityResponse resource.

This resource provides eligibility and plan details from the processing of an Eligibility resource.
*/
open class EligibilityResponse: DomainResource {
	override open class var resourceType: String {
		get { return "EligibilityResponse" }
	}
	
	/// Creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: FHIRString?
	
	/// Processing errors.
	public var error: [EligibilityResponseError]?
	
	/// Printed Form Identifier.
	public var form: CodeableConcept?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Coverage inforce indicator.
	public var inforce: FHIRBool?
	
	/// Details by insurance coverage.
	public var insurance: [EligibilityResponseInsurance]?
	
	/// Insurer issuing the coverage.
	public var insurer: Reference?
	
	/// complete | error | partial.
	public var outcome: CodeableConcept?
	
	/// Eligibility reference.
	public var request: Reference?
	
	/// Responsible organization.
	public var requestOrganization: Reference?
	
	/// Responsible practitioner.
	public var requestProvider: Reference?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		disposition = createInstance(type: FHIRString.self, for: "disposition", in: json, context: &instCtx, owner: self) ?? disposition
		error = createInstances(of: EligibilityResponseError.self, for: "error", in: json, context: &instCtx, owner: self) ?? error
		form = createInstance(type: CodeableConcept.self, for: "form", in: json, context: &instCtx, owner: self) ?? form
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		inforce = createInstance(type: FHIRBool.self, for: "inforce", in: json, context: &instCtx, owner: self) ?? inforce
		insurance = createInstances(of: EligibilityResponseInsurance.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		outcome = createInstance(type: CodeableConcept.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		requestOrganization = createInstance(type: Reference.self, for: "requestOrganization", in: json, context: &instCtx, owner: self) ?? requestOrganization
		requestProvider = createInstance(type: Reference.self, for: "requestProvider", in: json, context: &instCtx, owner: self) ?? requestProvider
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		arrayDecorate(json: &json, withKey: "error", using: self.error, errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.inforce?.decorate(json: &json, withKey: "inforce", errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.requestOrganization?.decorate(json: &json, withKey: "requestOrganization", errors: &errors)
		self.requestProvider?.decorate(json: &json, withKey: "requestProvider", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}


/**
Processing errors.

Mutually exclusive with Services Provided (Item).
*/
open class EligibilityResponseError: BackboneElement {
	override open class var resourceType: String {
		get { return "EligibilityResponseError" }
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
Details by insurance coverage.

The insurer may provide both the details for the requested coverage as well as details for additional coverages known to
the insurer.
*/
open class EligibilityResponseInsurance: BackboneElement {
	override open class var resourceType: String {
		get { return "EligibilityResponseInsurance" }
	}
	
	/// Benefits by Category.
	public var benefitBalance: [EligibilityResponseInsuranceBenefitBalance]?
	
	/// Contract details.
	public var contract: Reference?
	
	/// Updated Coverage details.
	public var coverage: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		benefitBalance = createInstances(of: EligibilityResponseInsuranceBenefitBalance.self, for: "benefitBalance", in: json, context: &instCtx, owner: self) ?? benefitBalance
		contract = createInstance(type: Reference.self, for: "contract", in: json, context: &instCtx, owner: self) ?? contract
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "benefitBalance", using: self.benefitBalance, errors: &errors)
		self.contract?.decorate(json: &json, withKey: "contract", errors: &errors)
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
	}
}


/**
Benefits by Category.

Benefits and optionally current balances by Category.
*/
open class EligibilityResponseInsuranceBenefitBalance: BackboneElement {
	override open class var resourceType: String {
		get { return "EligibilityResponseInsuranceBenefitBalance" }
	}
	
	/// Type of services covered.
	public var category: CodeableConcept?
	
	/// Description of the benefit or services covered.
	public var description_fhir: FHIRString?
	
	/// Excluded from the plan.
	public var excluded: FHIRBool?
	
	/// Benefit Summary.
	public var financial: [EligibilityResponseInsuranceBenefitBalanceFinancial]?
	
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
		financial = createInstances(of: EligibilityResponseInsuranceBenefitBalanceFinancial.self, for: "financial", in: json, context: &instCtx, owner: self) ?? financial
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
open class EligibilityResponseInsuranceBenefitBalanceFinancial: BackboneElement {
	override open class var resourceType: String {
		get { return "EligibilityResponseInsuranceBenefitBalanceFinancial" }
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

