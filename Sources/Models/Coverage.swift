//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2017-02-23.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		beneficiary = try createInstance(type: Reference.self, for: "beneficiary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? beneficiary
		contract = try createInstances(of: Reference.self, for: "contract", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contract
		dependent = try createInstance(type: FHIRString.self, for: "dependent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dependent
		grouping = try createInstance(type: CoverageGrouping.self, for: "grouping", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? grouping
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		network = try createInstance(type: FHIRString.self, for: "network", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? network
		order = try createInstance(type: FHIRInteger.self, for: "order", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? order
		payor = try createInstances(of: Reference.self, for: "payor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? payor
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		policyHolder = try createInstance(type: Reference.self, for: "policyHolder", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? policyHolder
		relationship = try createInstance(type: CodeableConcept.self, for: "relationship", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relationship
		sequence = try createInstance(type: FHIRString.self, for: "sequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequence
		status = try createInstance(type: FHIRString.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		subscriber = try createInstance(type: Reference.self, for: "subscriber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subscriber
		subscriberId = try createInstance(type: FHIRString.self, for: "subscriberId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subscriberId
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		`class` = try createInstance(type: FHIRString.self, for: "class", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? `class`
		classDisplay = try createInstance(type: FHIRString.self, for: "classDisplay", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? classDisplay
		group = try createInstance(type: FHIRString.self, for: "group", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? group
		groupDisplay = try createInstance(type: FHIRString.self, for: "groupDisplay", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? groupDisplay
		plan = try createInstance(type: FHIRString.self, for: "plan", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? plan
		planDisplay = try createInstance(type: FHIRString.self, for: "planDisplay", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? planDisplay
		subClass = try createInstance(type: FHIRString.self, for: "subClass", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subClass
		subClassDisplay = try createInstance(type: FHIRString.self, for: "subClassDisplay", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subClassDisplay
		subGroup = try createInstance(type: FHIRString.self, for: "subGroup", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subGroup
		subGroupDisplay = try createInstance(type: FHIRString.self, for: "subGroupDisplay", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subGroupDisplay
		subPlan = try createInstance(type: FHIRString.self, for: "subPlan", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subPlan
		subPlanDisplay = try createInstance(type: FHIRString.self, for: "subPlanDisplay", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subPlanDisplay
		
		return errors.isEmpty ? nil : errors
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

