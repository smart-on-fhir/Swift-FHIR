//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Coverage) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Insurance or medical plan or a payment agreement.

Financial instrument which may be used to reimburse or pay for health care products and services. Includes both
insurance and self-payment.
*/
open class Coverage: DomainResource {
	override open class var resourceType: String {
		get { return "Coverage" }
	}
	
	/// Additional coverage classifications.
	public var `class`: [CoverageClass]?
	
	/// Plan beneficiary.
	public var beneficiary: Reference?
	
	/// Contract details.
	public var contract: [Reference]?
	
	/// Patient payments for services/products.
	public var costToBeneficiary: [CoverageCostToBeneficiary]?
	
	/// Dependent number.
	public var dependent: FHIRString?
	
	/// Business Identifier for the coverage.
	public var identifier: [Identifier]?
	
	/// Insurer network.
	public var network: FHIRString?
	
	/// Relative order of the coverage.
	public var order: FHIRInteger?
	
	/// Issuer of the policy.
	public var payor: [Reference]?
	
	/// Coverage start and end dates.
	public var period: Period?
	
	/// Owner of the policy.
	public var policyHolder: Reference?
	
	/// Beneficiary relationship to the subscriber.
	public var relationship: CodeableConcept?
	
	/// The status of the resource instance.
	public var status: FinancialResourceStatusCodes?
	
	/// Reimbursement to insurer.
	public var subrogation: FHIRBool?
	
	/// Subscriber to the policy.
	public var subscriber: Reference?
	
	/// ID assigned to the subscriber.
	public var subscriberId: FHIRString?
	
	/// Coverage category such as medical or accident.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(beneficiary: Reference, payor: [Reference], status: FinancialResourceStatusCodes) {
		self.init()
		self.beneficiary = beneficiary
		self.payor = payor
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		`class` = createInstances(of: CoverageClass.self, for: "class", in: json, context: &instCtx, owner: self) ?? `class`
		beneficiary = createInstance(type: Reference.self, for: "beneficiary", in: json, context: &instCtx, owner: self) ?? beneficiary
		if nil == beneficiary && !instCtx.containsKey("beneficiary") {
			instCtx.addError(FHIRValidationError(missing: "beneficiary"))
		}
		contract = createInstances(of: Reference.self, for: "contract", in: json, context: &instCtx, owner: self) ?? contract
		costToBeneficiary = createInstances(of: CoverageCostToBeneficiary.self, for: "costToBeneficiary", in: json, context: &instCtx, owner: self) ?? costToBeneficiary
		dependent = createInstance(type: FHIRString.self, for: "dependent", in: json, context: &instCtx, owner: self) ?? dependent
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		network = createInstance(type: FHIRString.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		order = createInstance(type: FHIRInteger.self, for: "order", in: json, context: &instCtx, owner: self) ?? order
		payor = createInstances(of: Reference.self, for: "payor", in: json, context: &instCtx, owner: self) ?? payor
		if (nil == payor || payor!.isEmpty) && !instCtx.containsKey("payor") {
			instCtx.addError(FHIRValidationError(missing: "payor"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		policyHolder = createInstance(type: Reference.self, for: "policyHolder", in: json, context: &instCtx, owner: self) ?? policyHolder
		relationship = createInstance(type: CodeableConcept.self, for: "relationship", in: json, context: &instCtx, owner: self) ?? relationship
		status = createEnum(type: FinancialResourceStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subrogation = createInstance(type: FHIRBool.self, for: "subrogation", in: json, context: &instCtx, owner: self) ?? subrogation
		subscriber = createInstance(type: Reference.self, for: "subscriber", in: json, context: &instCtx, owner: self) ?? subscriber
		subscriberId = createInstance(type: FHIRString.self, for: "subscriberId", in: json, context: &instCtx, owner: self) ?? subscriberId
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "class", using: self.`class`, errors: &errors)
		self.beneficiary?.decorate(json: &json, withKey: "beneficiary", errors: &errors)
		if nil == self.beneficiary {
			errors.append(FHIRValidationError(missing: "beneficiary"))
		}
		arrayDecorate(json: &json, withKey: "contract", using: self.contract, errors: &errors)
		arrayDecorate(json: &json, withKey: "costToBeneficiary", using: self.costToBeneficiary, errors: &errors)
		self.dependent?.decorate(json: &json, withKey: "dependent", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.network?.decorate(json: &json, withKey: "network", errors: &errors)
		self.order?.decorate(json: &json, withKey: "order", errors: &errors)
		arrayDecorate(json: &json, withKey: "payor", using: self.payor, errors: &errors)
		if nil == payor || self.payor!.isEmpty {
			errors.append(FHIRValidationError(missing: "payor"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.policyHolder?.decorate(json: &json, withKey: "policyHolder", errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subrogation?.decorate(json: &json, withKey: "subrogation", errors: &errors)
		self.subscriber?.decorate(json: &json, withKey: "subscriber", errors: &errors)
		self.subscriberId?.decorate(json: &json, withKey: "subscriberId", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Additional coverage classifications.

A suite of underwriter specific classifiers.
*/
open class CoverageClass: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageClass" }
	}
	
	/// Human readable description of the type and value.
	public var name: FHIRString?
	
	/// Type of class such as 'group' or 'plan'.
	public var type: CodeableConcept?
	
	/// Value associated with the type.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept, value: FHIRString) {
		self.init()
		self.type = type
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
	}
}


/**
Patient payments for services/products.

A suite of codes indicating the cost category and associated amount which have been detailed in the policy and may have
been  included on the health card.
*/
open class CoverageCostToBeneficiary: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageCostToBeneficiary" }
	}
	
	/// Exceptions for patient payments.
	public var exception: [CoverageCostToBeneficiaryException]?
	
	/// Cost category.
	public var type: CodeableConcept?
	
	/// The amount or percentage due from the beneficiary.
	public var valueMoney: Money?
	
	/// The amount or percentage due from the beneficiary.
	public var valueQuantity: Quantity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: Any) {
		self.init()
		if let value = value as? Quantity {
			self.valueQuantity = value
		}
		else if let value = value as? Money {
			self.valueMoney = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		exception = createInstances(of: CoverageCostToBeneficiaryException.self, for: "exception", in: json, context: &instCtx, owner: self) ?? exception
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		valueMoney = createInstance(type: Money.self, for: "valueMoney", in: json, context: &instCtx, owner: self) ?? valueMoney
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueQuantity && nil == self.valueMoney {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "exception", using: self.exception, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.valueMoney?.decorate(json: &json, withKey: "valueMoney", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueQuantity && nil == self.valueMoney {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}


/**
Exceptions for patient payments.

A suite of codes indicating exceptions or reductions to patient costs and their effective periods.
*/
open class CoverageCostToBeneficiaryException: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageCostToBeneficiaryException" }
	}
	
	/// The effective period of the exception.
	public var period: Period?
	
	/// Exception category.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

