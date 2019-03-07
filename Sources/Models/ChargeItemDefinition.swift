//
//  ChargeItemDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ChargeItemDefinition) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Definition of properties and rules about how the price and the applicability of a ChargeItem can be determined.

The ChargeItemDefinition resource provides the properties that apply to the (billing) codes necessary to calculate costs
and prices. The properties may differ largely depending on type and realm, therefore this resource gives only a rough
structure and requires profiling for each type of billing code system.
*/
open class ChargeItemDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "ChargeItemDefinition" }
	}
	
	/// Whether or not the billing code is applicable.
	public var applicability: [ChargeItemDefinitionApplicability]?
	
	/// When the charge item definition was approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Billing codes or product types this definition applies to.
	public var code: CodeableConcept?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Underlying externally-defined charge item definition.
	public var derivedFromUri: [FHIRURL]?
	
	/// Natural language description of the charge item definition.
	public var description_fhir: FHIRString?
	
	/// When the charge item definition is expected to be used.
	public var effectivePeriod: Period?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Additional identifier for the charge item definition.
	public var identifier: [Identifier]?
	
	/// Instances this definition applies to.
	public var instance: [Reference]?
	
	/// Intended jurisdiction for charge item definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// When the charge item definition was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// A larger definition of which this particular definition is a component or step.
	public var partOf: [FHIRURL]?
	
	/// Group of properties which are applicable under the same conditions.
	public var propertyGroup: [ChargeItemDefinitionPropertyGroup]?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Completed or terminated request(s) whose function is taken by this new request.
	public var replaces: [FHIRURL]?
	
	/// The current state of the ChargeItemDefinition.
	public var status: PublicationStatus?
	
	/// Name for this charge item definition (human friendly).
	public var title: FHIRString?
	
	/// Canonical identifier for this charge item definition, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the charge item definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus, url: FHIRURL) {
		self.init()
		self.status = status
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		applicability = createInstances(of: ChargeItemDefinitionApplicability.self, for: "applicability", in: json, context: &instCtx, owner: self) ?? applicability
		approvalDate = createInstance(type: FHIRDate.self, for: "approvalDate", in: json, context: &instCtx, owner: self) ?? approvalDate
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		derivedFromUri = createInstances(of: FHIRURL.self, for: "derivedFromUri", in: json, context: &instCtx, owner: self) ?? derivedFromUri
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		instance = createInstances(of: Reference.self, for: "instance", in: json, context: &instCtx, owner: self) ?? instance
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		partOf = createInstances(of: FHIRURL.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		propertyGroup = createInstances(of: ChargeItemDefinitionPropertyGroup.self, for: "propertyGroup", in: json, context: &instCtx, owner: self) ?? propertyGroup
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		replaces = createInstances(of: FHIRURL.self, for: "replaces", in: json, context: &instCtx, owner: self) ?? replaces
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		if nil == url && !instCtx.containsKey("url") {
			instCtx.addError(FHIRValidationError(missing: "url"))
		}
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "applicability", using: self.applicability, errors: &errors)
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		arrayDecorate(json: &json, withKey: "derivedFromUri", using: self.derivedFromUri, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "instance", using: self.instance, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "propertyGroup", using: self.propertyGroup, errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		arrayDecorate(json: &json, withKey: "replaces", using: self.replaces, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Whether or not the billing code is applicable.

Expressions that describe applicability criteria for the billing code.
*/
open class ChargeItemDefinitionApplicability: BackboneElement {
	override open class var resourceType: String {
		get { return "ChargeItemDefinitionApplicability" }
	}
	
	/// Natural language description of the condition.
	public var description_fhir: FHIRString?
	
	/// Boolean-valued expression.
	public var expression: FHIRString?
	
	/// Language of the expression.
	public var language: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		expression = createInstance(type: FHIRString.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		language = createInstance(type: FHIRString.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
	}
}


/**
Group of properties which are applicable under the same conditions.

Group of properties which are applicable under the same conditions. If no applicability rules are established for the
group, then all properties always apply.
*/
open class ChargeItemDefinitionPropertyGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "ChargeItemDefinitionPropertyGroup" }
	}
	
	/// Conditions under which the priceComponent is applicable.
	public var applicability: [ChargeItemDefinitionApplicability]?
	
	/// Components of total line item price.
	public var priceComponent: [ChargeItemDefinitionPropertyGroupPriceComponent]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		applicability = createInstances(of: ChargeItemDefinitionApplicability.self, for: "applicability", in: json, context: &instCtx, owner: self) ?? applicability
		priceComponent = createInstances(of: ChargeItemDefinitionPropertyGroupPriceComponent.self, for: "priceComponent", in: json, context: &instCtx, owner: self) ?? priceComponent
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "applicability", using: self.applicability, errors: &errors)
		arrayDecorate(json: &json, withKey: "priceComponent", using: self.priceComponent, errors: &errors)
	}
}


/**
Components of total line item price.

The price for a ChargeItem may be calculated as a base price with surcharges/deductions that apply in certain
conditions. A ChargeItemDefinition resource that defines the prices, factors and conditions that apply to a billing code
is currently under development. The priceComponent element can be used to offer transparency to the recipient of the
Invoice of how the prices have been calculated.
*/
open class ChargeItemDefinitionPropertyGroupPriceComponent: BackboneElement {
	override open class var resourceType: String {
		get { return "ChargeItemDefinitionPropertyGroupPriceComponent" }
	}
	
	/// Monetary amount associated with this component.
	public var amount: Money?
	
	/// Code identifying the specific component.
	public var code: CodeableConcept?
	
	/// Factor used for calculating this component.
	public var factor: FHIRDecimal?
	
	/// This code identifies the type of the component.
	public var type: InvoicePriceComponentType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: InvoicePriceComponentType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Money.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		type = createEnum(type: InvoicePriceComponentType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

