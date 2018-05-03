//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Insurance or medical plan or a payment agreement.

Financial instrument which may be used to reimburse or pay for health care products and services.
*/
open class Coverage: DomainResource {
	override open class var resourceType: String {
		get { return "Coverage" }
	}
	
	/// Additional coverage classifications.
	public var `class`: [CoverageClass]?
	
	/// Plan Beneficiary.
	public var beneficiary: Reference?
	
	/// Contract details.
	public var contract: [Reference]?
	
	/// Patient payments for services/products.
	public var copay: [CoverageCopay]?
	
	/// Dependent number.
	public var dependent: FHIRString?
	
	/// The primary coverage ID.
	public var identifier: [Identifier]?
	
	/// Insurer network.
	public var network: FHIRString?
	
	/// Relative order of the coverage.
	public var order: FHIRInteger?
	
	/// Identifier for the plan or agreement issuer.
	public var payor: [Reference]?
	
	/// Coverage start and end dates.
	public var period: Period?
	
	/// Owner of the policy.
	public var policyHolder: Reference?
	
	/// Beneficiary relationship to the Subscriber.
	public var relationship: CodeableConcept?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	/// Subscriber to the policy.
	public var subscriber: Reference?
	
	/// ID assigned to the Subscriber.
	public var subscriberId: FHIRString?
	
	/// Type of coverage such as medical or accident.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		`class` = createInstances(of: CoverageClass.self, for: "class", in: json, context: &instCtx, owner: self) ?? `class`
		beneficiary = createInstance(type: Reference.self, for: "beneficiary", in: json, context: &instCtx, owner: self) ?? beneficiary
		contract = createInstances(of: Reference.self, for: "contract", in: json, context: &instCtx, owner: self) ?? contract
		copay = createInstances(of: CoverageCopay.self, for: "copay", in: json, context: &instCtx, owner: self) ?? copay
		dependent = createInstance(type: FHIRString.self, for: "dependent", in: json, context: &instCtx, owner: self) ?? dependent
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		network = createInstance(type: FHIRString.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		order = createInstance(type: FHIRInteger.self, for: "order", in: json, context: &instCtx, owner: self) ?? order
		payor = createInstances(of: Reference.self, for: "payor", in: json, context: &instCtx, owner: self) ?? payor
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		policyHolder = createInstance(type: Reference.self, for: "policyHolder", in: json, context: &instCtx, owner: self) ?? policyHolder
		relationship = createInstance(type: CodeableConcept.self, for: "relationship", in: json, context: &instCtx, owner: self) ?? relationship
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		subscriber = createInstance(type: Reference.self, for: "subscriber", in: json, context: &instCtx, owner: self) ?? subscriber
		subscriberId = createInstance(type: FHIRString.self, for: "subscriberId", in: json, context: &instCtx, owner: self) ?? subscriberId
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "class", using: self.`class`, errors: &errors)
		self.beneficiary?.decorate(json: &json, withKey: "beneficiary", errors: &errors)
		arrayDecorate(json: &json, withKey: "contract", using: self.contract, errors: &errors)
		arrayDecorate(json: &json, withKey: "copay", using: self.copay, errors: &errors)
		self.dependent?.decorate(json: &json, withKey: "dependent", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.network?.decorate(json: &json, withKey: "network", errors: &errors)
		self.order?.decorate(json: &json, withKey: "order", errors: &errors)
		arrayDecorate(json: &json, withKey: "payor", using: self.payor, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.policyHolder?.decorate(json: &json, withKey: "policyHolder", errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.subscriber?.decorate(json: &json, withKey: "subscriber", errors: &errors)
		self.subscriberId?.decorate(json: &json, withKey: "subscriberId", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Additional coverage classifications.

A suite of underwrite specific classifiers, for example may be used to identify a class of coverage or employer group,
Policy, Plan.
*/
open class CoverageClass: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageClass" }
	}
	
	/// Display text for an identifier for the group.
	public var name: FHIRString?
	
	/// Type of class such as 'group' or 'plan'.
	public var type: Coding?
	
	/// The tag or value under the classification.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding, value: FHIRString) {
		self.init()
		self.type = type
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		type = createInstance(type: Coding.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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

A suite of underwrite specific classifiers, for example may be used to identify a class of coverage or employer group,
Policy, Plan.
*/
open class CoverageCopay: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageCopay" }
	}
	
	/// The type of service or product.
	public var type: Coding?
	
	/// The amount or percentage of the copayment.
	public var value: Quantity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: Quantity) {
		self.init()
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		type = createInstance(type: Coding.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		value = createInstance(type: Quantity.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
	}
}

