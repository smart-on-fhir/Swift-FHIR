//
//  EligibilityResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/EligibilityResponse) on 2017-02-14.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		created = try createInstance(type: DateTime.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		disposition = try createInstance(type: FHIRString.self, for: "disposition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? disposition
		error = try createInstances(of: EligibilityResponseError.self, for: "error", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? error
		form = try createInstance(type: CodeableConcept.self, for: "form", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? form
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		inforce = try createInstance(type: FHIRBool.self, for: "inforce", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? inforce
		insurance = try createInstances(of: EligibilityResponseInsurance.self, for: "insurance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? insurance
		insurer = try createInstance(type: Reference.self, for: "insurer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? insurer
		outcome = try createInstance(type: CodeableConcept.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		request = try createInstance(type: Reference.self, for: "request", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? request
		requestOrganization = try createInstance(type: Reference.self, for: "requestOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requestOrganization
		requestProvider = try createInstance(type: Reference.self, for: "requestProvider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requestProvider
		status = try createInstance(type: FHIRString.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		benefitBalance = try createInstances(of: EligibilityResponseInsuranceBenefitBalance.self, for: "benefitBalance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? benefitBalance
		contract = try createInstance(type: Reference.self, for: "contract", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contract
		coverage = try createInstance(type: Reference.self, for: "coverage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? coverage
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		if nil == category && !presentKeys.contains("category") {
			errors.append(FHIRValidationError(missing: "category"))
		}
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		excluded = try createInstance(type: FHIRBool.self, for: "excluded", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? excluded
		financial = try createInstances(of: EligibilityResponseInsuranceBenefitBalanceFinancial.self, for: "financial", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? financial
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

