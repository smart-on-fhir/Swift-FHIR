//
//  InsurancePlan.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/InsurancePlan) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Details of a Health Insurance product/plan provided by an organization.
*/
open class InsurancePlan: DomainResource {
	override open class var resourceType: String {
		get { return "InsurancePlan" }
	}
	
	/// Product administrator.
	public var administeredBy: Reference?
	
	/// Alternate names.
	public var alias: [FHIRString]?
	
	/// Contact for the product.
	public var contact: [InsurancePlanContact]?
	
	/// Coverage details.
	public var coverage: [InsurancePlanCoverage]?
	
	/// Where product applies.
	public var coverageArea: [Reference]?
	
	/// Technical endpoint.
	public var endpoint: [Reference]?
	
	/// Business Identifier for Product.
	public var identifier: [Identifier]?
	
	/// Official name.
	public var name: FHIRString?
	
	/// What networks are Included.
	public var network: [Reference]?
	
	/// Plan issuer.
	public var ownedBy: Reference?
	
	/// When the product is available.
	public var period: Period?
	
	/// Plan details.
	public var plan: [InsurancePlanPlan]?
	
	/// The current state of the health insurance product.
	public var status: PublicationStatus?
	
	/// Kind of product.
	public var type: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		administeredBy = createInstance(type: Reference.self, for: "administeredBy", in: json, context: &instCtx, owner: self) ?? administeredBy
		alias = createInstances(of: FHIRString.self, for: "alias", in: json, context: &instCtx, owner: self) ?? alias
		contact = createInstances(of: InsurancePlanContact.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		coverage = createInstances(of: InsurancePlanCoverage.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		coverageArea = createInstances(of: Reference.self, for: "coverageArea", in: json, context: &instCtx, owner: self) ?? coverageArea
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		network = createInstances(of: Reference.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		ownedBy = createInstance(type: Reference.self, for: "ownedBy", in: json, context: &instCtx, owner: self) ?? ownedBy
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		plan = createInstances(of: InsurancePlanPlan.self, for: "plan", in: json, context: &instCtx, owner: self) ?? plan
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.administeredBy?.decorate(json: &json, withKey: "administeredBy", errors: &errors)
		arrayDecorate(json: &json, withKey: "alias", using: self.alias, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "coverage", using: self.coverage, errors: &errors)
		arrayDecorate(json: &json, withKey: "coverageArea", using: self.coverageArea, errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "network", using: self.network, errors: &errors)
		self.ownedBy?.decorate(json: &json, withKey: "ownedBy", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "plan", using: self.plan, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}


/**
Contact for the product.

The contact for the health insurance product for a certain purpose.
*/
open class InsurancePlanContact: BackboneElement {
	override open class var resourceType: String {
		get { return "InsurancePlanContact" }
	}
	
	/// Visiting or postal addresses for the contact.
	public var address: Address?
	
	/// A name associated with the contact.
	public var name: HumanName?
	
	/// The type of contact.
	public var purpose: CodeableConcept?
	
	/// Contact details (telephone, email, etc.)  for a contact.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		address = createInstance(type: Address.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		name = createInstance(type: HumanName.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		purpose = createInstance(type: CodeableConcept.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.address?.decorate(json: &json, withKey: "address", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}


/**
Coverage details.

Details about the coverage offered by the insurance product.
*/
open class InsurancePlanCoverage: BackboneElement {
	override open class var resourceType: String {
		get { return "InsurancePlanCoverage" }
	}
	
	/// List of benefits.
	public var benefit: [InsurancePlanCoverageBenefit]?
	
	/// What networks provide coverage.
	public var network: [Reference]?
	
	/// Type of coverage.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(benefit: [InsurancePlanCoverageBenefit], type: CodeableConcept) {
		self.init()
		self.benefit = benefit
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		benefit = createInstances(of: InsurancePlanCoverageBenefit.self, for: "benefit", in: json, context: &instCtx, owner: self) ?? benefit
		if (nil == benefit || benefit!.isEmpty) && !instCtx.containsKey("benefit") {
			instCtx.addError(FHIRValidationError(missing: "benefit"))
		}
		network = createInstances(of: Reference.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "benefit", using: self.benefit, errors: &errors)
		if nil == benefit || self.benefit!.isEmpty {
			errors.append(FHIRValidationError(missing: "benefit"))
		}
		arrayDecorate(json: &json, withKey: "network", using: self.network, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
List of benefits.

Specific benefits under this type of coverage.
*/
open class InsurancePlanCoverageBenefit: BackboneElement {
	override open class var resourceType: String {
		get { return "InsurancePlanCoverageBenefit" }
	}
	
	/// Benefit limits.
	public var limit: [InsurancePlanCoverageBenefitLimit]?
	
	/// Referral requirements.
	public var requirement: FHIRString?
	
	/// Type of benefit.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		limit = createInstances(of: InsurancePlanCoverageBenefitLimit.self, for: "limit", in: json, context: &instCtx, owner: self) ?? limit
		requirement = createInstance(type: FHIRString.self, for: "requirement", in: json, context: &instCtx, owner: self) ?? requirement
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "limit", using: self.limit, errors: &errors)
		self.requirement?.decorate(json: &json, withKey: "requirement", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Benefit limits.

The specific limits on the benefit.
*/
open class InsurancePlanCoverageBenefitLimit: BackboneElement {
	override open class var resourceType: String {
		get { return "InsurancePlanCoverageBenefitLimit" }
	}
	
	/// Benefit limit details.
	public var code: CodeableConcept?
	
	/// Maximum value allowed.
	public var value: Quantity?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		value = createInstance(type: Quantity.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
	}
}


/**
Plan details.

Details about an insurance plan.
*/
open class InsurancePlanPlan: BackboneElement {
	override open class var resourceType: String {
		get { return "InsurancePlanPlan" }
	}
	
	/// Where product applies.
	public var coverageArea: [Reference]?
	
	/// Overall costs.
	public var generalCost: [InsurancePlanPlanGeneralCost]?
	
	/// Business Identifier for Product.
	public var identifier: [Identifier]?
	
	/// What networks provide coverage.
	public var network: [Reference]?
	
	/// Specific costs.
	public var specificCost: [InsurancePlanPlanSpecificCost]?
	
	/// Type of plan.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		coverageArea = createInstances(of: Reference.self, for: "coverageArea", in: json, context: &instCtx, owner: self) ?? coverageArea
		generalCost = createInstances(of: InsurancePlanPlanGeneralCost.self, for: "generalCost", in: json, context: &instCtx, owner: self) ?? generalCost
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		network = createInstances(of: Reference.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		specificCost = createInstances(of: InsurancePlanPlanSpecificCost.self, for: "specificCost", in: json, context: &instCtx, owner: self) ?? specificCost
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "coverageArea", using: self.coverageArea, errors: &errors)
		arrayDecorate(json: &json, withKey: "generalCost", using: self.generalCost, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "network", using: self.network, errors: &errors)
		arrayDecorate(json: &json, withKey: "specificCost", using: self.specificCost, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Overall costs.

Overall costs associated with the plan.
*/
open class InsurancePlanPlanGeneralCost: BackboneElement {
	override open class var resourceType: String {
		get { return "InsurancePlanPlanGeneralCost" }
	}
	
	/// Additional cost information.
	public var comment: FHIRString?
	
	/// Cost value.
	public var cost: Money?
	
	/// Number of enrollees.
	public var groupSize: FHIRInteger?
	
	/// Type of cost.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		cost = createInstance(type: Money.self, for: "cost", in: json, context: &instCtx, owner: self) ?? cost
		groupSize = createInstance(type: FHIRInteger.self, for: "groupSize", in: json, context: &instCtx, owner: self) ?? groupSize
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.cost?.decorate(json: &json, withKey: "cost", errors: &errors)
		self.groupSize?.decorate(json: &json, withKey: "groupSize", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Specific costs.

Costs associated with the coverage provided by the product.
*/
open class InsurancePlanPlanSpecificCost: BackboneElement {
	override open class var resourceType: String {
		get { return "InsurancePlanPlanSpecificCost" }
	}
	
	/// Benefits list.
	public var benefit: [InsurancePlanPlanSpecificCostBenefit]?
	
	/// General category of benefit.
	public var category: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: CodeableConcept) {
		self.init()
		self.category = category
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		benefit = createInstances(of: InsurancePlanPlanSpecificCostBenefit.self, for: "benefit", in: json, context: &instCtx, owner: self) ?? benefit
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		if nil == category && !instCtx.containsKey("category") {
			instCtx.addError(FHIRValidationError(missing: "category"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "benefit", using: self.benefit, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		if nil == self.category {
			errors.append(FHIRValidationError(missing: "category"))
		}
	}
}


/**
Benefits list.

List of the specific benefits under this category of benefit.
*/
open class InsurancePlanPlanSpecificCostBenefit: BackboneElement {
	override open class var resourceType: String {
		get { return "InsurancePlanPlanSpecificCostBenefit" }
	}
	
	/// List of the costs.
	public var cost: [InsurancePlanPlanSpecificCostBenefitCost]?
	
	/// Type of specific benefit.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		cost = createInstances(of: InsurancePlanPlanSpecificCostBenefitCost.self, for: "cost", in: json, context: &instCtx, owner: self) ?? cost
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "cost", using: self.cost, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
List of the costs.

List of the costs associated with a specific benefit.
*/
open class InsurancePlanPlanSpecificCostBenefitCost: BackboneElement {
	override open class var resourceType: String {
		get { return "InsurancePlanPlanSpecificCostBenefitCost" }
	}
	
	/// in-network | out-of-network | other.
	public var applicability: CodeableConcept?
	
	/// Additional information about the cost.
	public var qualifiers: [CodeableConcept]?
	
	/// Type of cost.
	public var type: CodeableConcept?
	
	/// The actual cost value.
	public var value: Quantity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		applicability = createInstance(type: CodeableConcept.self, for: "applicability", in: json, context: &instCtx, owner: self) ?? applicability
		qualifiers = createInstances(of: CodeableConcept.self, for: "qualifiers", in: json, context: &instCtx, owner: self) ?? qualifiers
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		value = createInstance(type: Quantity.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.applicability?.decorate(json: &json, withKey: "applicability", errors: &errors)
		arrayDecorate(json: &json, withKey: "qualifiers", using: self.qualifiers, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
	}
}

