//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// Plan Beneficiary.
	public var beneficiary: Reference?
	
	/// Contract details.
	public var contract: [Reference]?
	
	/// Dependent number.
	public var dependent: FHIRString?
	
	/// Additional coverage classifications.
	public var grouping: CoverageGrouping?
	
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
	
	/// The plan instance or sequence counter.
	public var sequence: FHIRString?
	
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
		
		beneficiary = createInstance(type: Reference.self, for: "beneficiary", in: json, context: &instCtx, owner: self) ?? beneficiary
		contract = createInstances(of: Reference.self, for: "contract", in: json, context: &instCtx, owner: self) ?? contract
		dependent = createInstance(type: FHIRString.self, for: "dependent", in: json, context: &instCtx, owner: self) ?? dependent
		grouping = createInstance(type: CoverageGrouping.self, for: "grouping", in: json, context: &instCtx, owner: self) ?? grouping
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		network = createInstance(type: FHIRString.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		order = createInstance(type: FHIRInteger.self, for: "order", in: json, context: &instCtx, owner: self) ?? order
		payor = createInstances(of: Reference.self, for: "payor", in: json, context: &instCtx, owner: self) ?? payor
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		policyHolder = createInstance(type: Reference.self, for: "policyHolder", in: json, context: &instCtx, owner: self) ?? policyHolder
		relationship = createInstance(type: CodeableConcept.self, for: "relationship", in: json, context: &instCtx, owner: self) ?? relationship
		sequence = createInstance(type: FHIRString.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		subscriber = createInstance(type: Reference.self, for: "subscriber", in: json, context: &instCtx, owner: self) ?? subscriber
		subscriberId = createInstance(type: FHIRString.self, for: "subscriberId", in: json, context: &instCtx, owner: self) ?? subscriberId
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.beneficiary?.decorate(json: &json, withKey: "beneficiary", errors: &errors)
		arrayDecorate(json: &json, withKey: "contract", using: self.contract, errors: &errors)
		self.dependent?.decorate(json: &json, withKey: "dependent", errors: &errors)
		self.grouping?.decorate(json: &json, withKey: "grouping", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.network?.decorate(json: &json, withKey: "network", errors: &errors)
		self.order?.decorate(json: &json, withKey: "order", errors: &errors)
		arrayDecorate(json: &json, withKey: "payor", using: self.payor, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.policyHolder?.decorate(json: &json, withKey: "policyHolder", errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
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
open class CoverageGrouping: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageGrouping" }
	}
	
	/// An identifier for the class.
	public var `class`: FHIRString?
	
	/// Display text for the class.
	public var classDisplay: FHIRString?
	
	/// An identifier for the group.
	public var group: FHIRString?
	
	/// Display text for an identifier for the group.
	public var groupDisplay: FHIRString?
	
	/// An identifier for the plan.
	public var plan: FHIRString?
	
	/// Display text for the plan.
	public var planDisplay: FHIRString?
	
	/// An identifier for the subsection of the class.
	public var subClass: FHIRString?
	
	/// Display text for the subsection of the subclass.
	public var subClassDisplay: FHIRString?
	
	/// An identifier for the subsection of the group.
	public var subGroup: FHIRString?
	
	/// Display text for the subsection of the group.
	public var subGroupDisplay: FHIRString?
	
	/// An identifier for the subsection of the plan.
	public var subPlan: FHIRString?
	
	/// Display text for the subsection of the plan.
	public var subPlanDisplay: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		`class` = createInstance(type: FHIRString.self, for: "class", in: json, context: &instCtx, owner: self) ?? `class`
		classDisplay = createInstance(type: FHIRString.self, for: "classDisplay", in: json, context: &instCtx, owner: self) ?? classDisplay
		group = createInstance(type: FHIRString.self, for: "group", in: json, context: &instCtx, owner: self) ?? group
		groupDisplay = createInstance(type: FHIRString.self, for: "groupDisplay", in: json, context: &instCtx, owner: self) ?? groupDisplay
		plan = createInstance(type: FHIRString.self, for: "plan", in: json, context: &instCtx, owner: self) ?? plan
		planDisplay = createInstance(type: FHIRString.self, for: "planDisplay", in: json, context: &instCtx, owner: self) ?? planDisplay
		subClass = createInstance(type: FHIRString.self, for: "subClass", in: json, context: &instCtx, owner: self) ?? subClass
		subClassDisplay = createInstance(type: FHIRString.self, for: "subClassDisplay", in: json, context: &instCtx, owner: self) ?? subClassDisplay
		subGroup = createInstance(type: FHIRString.self, for: "subGroup", in: json, context: &instCtx, owner: self) ?? subGroup
		subGroupDisplay = createInstance(type: FHIRString.self, for: "subGroupDisplay", in: json, context: &instCtx, owner: self) ?? subGroupDisplay
		subPlan = createInstance(type: FHIRString.self, for: "subPlan", in: json, context: &instCtx, owner: self) ?? subPlan
		subPlanDisplay = createInstance(type: FHIRString.self, for: "subPlanDisplay", in: json, context: &instCtx, owner: self) ?? subPlanDisplay
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.`class`?.decorate(json: &json, withKey: "class", errors: &errors)
		self.classDisplay?.decorate(json: &json, withKey: "classDisplay", errors: &errors)
		self.group?.decorate(json: &json, withKey: "group", errors: &errors)
		self.groupDisplay?.decorate(json: &json, withKey: "groupDisplay", errors: &errors)
		self.plan?.decorate(json: &json, withKey: "plan", errors: &errors)
		self.planDisplay?.decorate(json: &json, withKey: "planDisplay", errors: &errors)
		self.subClass?.decorate(json: &json, withKey: "subClass", errors: &errors)
		self.subClassDisplay?.decorate(json: &json, withKey: "subClassDisplay", errors: &errors)
		self.subGroup?.decorate(json: &json, withKey: "subGroup", errors: &errors)
		self.subGroupDisplay?.decorate(json: &json, withKey: "subGroupDisplay", errors: &errors)
		self.subPlan?.decorate(json: &json, withKey: "subPlan", errors: &errors)
		self.subPlanDisplay?.decorate(json: &json, withKey: "subPlanDisplay", errors: &errors)
	}
}

