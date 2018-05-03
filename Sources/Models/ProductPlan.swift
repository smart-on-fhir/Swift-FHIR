//
//  ProductPlan.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/ProductPlan) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Details of a Health Insurance product/plan provided by an organization.
*/
open class ProductPlan: DomainResource {
	override open class var resourceType: String {
		get { return "ProductPlan" }
	}
	
	/// An address for the organization.
	public var address: [Address]?
	
	/// Administrator of the product/plan.
	public var administeredBy: Reference?
	
	/// A list of alternate names that the product/plan is known as, or was known as in the past.
	public var alias: [FHIRString]?
	
	/// Contact for the product/plan for a certain purpose.
	public var contact: [ProductPlanContact]?
	
	/// Details about the coverage offered by the insurance product.
	public var coverage: [ProductPlanCoverage]?
	
	/// The geographic region in which this product/plan is available.
	public var coverageArea: Reference?
	
	/// Technical endpoints providing access to services operated for the organization.
	public var endpoint: [Reference]?
	
	/// Identifies this product/plan  across multiple systems.
	public var identifier: [Identifier]?
	
	/// Official name.
	public var name: FHIRString?
	
	/// Owner of the product/plan.
	public var ownedBy: Reference?
	
	/// The time period the product/plan is available.
	public var period: Period?
	
	/// Details about an insurance plan.
	public var plan: [ProductPlanPlan]?
	
	/// Whether the organization's record is still in active use.
	public var status: PublicationStatus?
	
	/// Kind of product/plan.
	public var type: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		address = createInstances(of: Address.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		administeredBy = createInstance(type: Reference.self, for: "administeredBy", in: json, context: &instCtx, owner: self) ?? administeredBy
		alias = createInstances(of: FHIRString.self, for: "alias", in: json, context: &instCtx, owner: self) ?? alias
		contact = createInstances(of: ProductPlanContact.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		coverage = createInstances(of: ProductPlanCoverage.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		coverageArea = createInstance(type: Reference.self, for: "coverageArea", in: json, context: &instCtx, owner: self) ?? coverageArea
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		ownedBy = createInstance(type: Reference.self, for: "ownedBy", in: json, context: &instCtx, owner: self) ?? ownedBy
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		plan = createInstances(of: ProductPlanPlan.self, for: "plan", in: json, context: &instCtx, owner: self) ?? plan
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "address", using: self.address, errors: &errors)
		self.administeredBy?.decorate(json: &json, withKey: "administeredBy", errors: &errors)
		arrayDecorate(json: &json, withKey: "alias", using: self.alias, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "coverage", using: self.coverage, errors: &errors)
		self.coverageArea?.decorate(json: &json, withKey: "coverageArea", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.ownedBy?.decorate(json: &json, withKey: "ownedBy", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "plan", using: self.plan, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}


/**
Contact for the product/plan for a certain purpose.
*/
open class ProductPlanContact: BackboneElement {
	override open class var resourceType: String {
		get { return "ProductPlanContact" }
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
Details about the coverage offered by the insurance product.
*/
open class ProductPlanCoverage: BackboneElement {
	override open class var resourceType: String {
		get { return "ProductPlanCoverage" }
	}
	
	/// Specific benefits under this type of coverage.
	public var benefit: [ProductPlanCoverageBenefit]?
	
	/// Type of coverage.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(benefit: [ProductPlanCoverageBenefit], type: CodeableConcept) {
		self.init()
		self.benefit = benefit
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		benefit = createInstances(of: ProductPlanCoverageBenefit.self, for: "benefit", in: json, context: &instCtx, owner: self) ?? benefit
		if (nil == benefit || benefit!.isEmpty) && !instCtx.containsKey("benefit") {
			instCtx.addError(FHIRValidationError(missing: "benefit"))
		}
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
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Specific benefits under this type of coverage.
*/
open class ProductPlanCoverageBenefit: BackboneElement {
	override open class var resourceType: String {
		get { return "ProductPlanCoverageBenefit" }
	}
	
	/// Specific benefit and related value.
	public var item: [ProductPlanCoverageBenefitItem]?
	
	/// Type of benefit.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: [ProductPlanCoverageBenefitItem], type: CodeableConcept) {
		self.init()
		self.item = item
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		item = createInstances(of: ProductPlanCoverageBenefitItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		if (nil == item || item!.isEmpty) && !instCtx.containsKey("item") {
			instCtx.addError(FHIRValidationError(missing: "item"))
		}
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		if nil == item || self.item!.isEmpty {
			errors.append(FHIRValidationError(missing: "item"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Specific benefit and related value.
*/
open class ProductPlanCoverageBenefitItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ProductPlanCoverageBenefitItem" }
	}
	
	/// Value of the specific benefit.
	public var benefitValue: Quantity?
	
	/// Coded Details of the specific benefit (days; visits).
	public var code: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		benefitValue = createInstance(type: Quantity.self, for: "benefitValue", in: json, context: &instCtx, owner: self) ?? benefitValue
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.benefitValue?.decorate(json: &json, withKey: "benefitValue", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
	}
}


/**
Details about an insurance plan.
*/
open class ProductPlanPlan: BackboneElement {
	override open class var resourceType: String {
		get { return "ProductPlanPlan" }
	}
	
	/// List of the costs associated with plan benefits.
	public var category: [ProductPlanPlanCategory]?
	
	/// Additional descriptive content about the plan.
	public var description_fhir: FHIRString?
	
	/// Plan premium.
	public var premium: Money?
	
	/// Type of plan.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createInstances(of: ProductPlanPlanCategory.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		premium = createInstance(type: Money.self, for: "premium", in: json, context: &instCtx, owner: self) ?? premium
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.premium?.decorate(json: &json, withKey: "premium", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
List of the costs associated with plan benefits.
*/
open class ProductPlanPlanCategory: BackboneElement {
	override open class var resourceType: String {
		get { return "ProductPlanPlanCategory" }
	}
	
	/// List of the specific benefits under this category of benefit.
	public var benefit: [ProductPlanPlanCategoryBenefit]?
	
	/// General category of benefit (Medical; Dental; Vision; Drug; Mental Health; Substance Abuse; Hospice, Home
	/// Health).
	public var code: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		benefit = createInstances(of: ProductPlanPlanCategoryBenefit.self, for: "benefit", in: json, context: &instCtx, owner: self) ?? benefit
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "benefit", using: self.benefit, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
	}
}


/**
List of the specific benefits under this category of benefit.
*/
open class ProductPlanPlanCategoryBenefit: BackboneElement {
	override open class var resourceType: String {
		get { return "ProductPlanPlanCategoryBenefit" }
	}
	
	/// List of the costs associated with a specific benefit.
	public var cost: [ProductPlanPlanCategoryBenefitCost]?
	
	/// Type of specific benefit (preventative; primary care office visit; speciality office visit; hospitalization;
	/// emergency room; urgent care).
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		cost = createInstances(of: ProductPlanPlanCategoryBenefitCost.self, for: "cost", in: json, context: &instCtx, owner: self) ?? cost
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
List of the costs associated with a specific benefit.
*/
open class ProductPlanPlanCategoryBenefitCost: BackboneElement {
	override open class var resourceType: String {
		get { return "ProductPlanPlanCategoryBenefitCost" }
	}
	
	/// Whether the cost applies to in-network or out-of-network providers (in-network; out-of-network; other).
	public var applicability: [Coding]?
	
	/// Additional information about the cost, such as information about funding sources (e.g. HSA, HRA, FSA, RRA).
	public var qualifiers: [FHIRString]?
	
	/// Type of cost (copay; individual cap; family cap; coinsurance; deductible).
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
		
		applicability = createInstances(of: Coding.self, for: "applicability", in: json, context: &instCtx, owner: self) ?? applicability
		qualifiers = createInstances(of: FHIRString.self, for: "qualifiers", in: json, context: &instCtx, owner: self) ?? qualifiers
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		value = createInstance(type: Quantity.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "applicability", using: self.applicability, errors: &errors)
		arrayDecorate(json: &json, withKey: "qualifiers", using: self.qualifiers, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
	}
}

