//
//  SearchParameter.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/SearchParameter) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Search Parameter for a resource.

A search parameter that defines a named search item that can be used to search/filter on a resource.
*/
open class SearchParameter: DomainResource {
	override open class var resourceType: String {
		get { return "SearchParameter" }
	}
	
	/// The resource type(s) this search parameter applies to.
	public var base: [FHIRString]?
	
	/// Chained names supported.
	public var chain: [FHIRString]?
	
	/// Code used in URL.
	public var code: FHIRString?
	
	/// Comparators supported for the search parameter.
	public var comparator: [SearchComparator]?
	
	/// For Composite resources to define the parts.
	public var component: [SearchParameterComponent]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Original Definition for the search parameter.
	public var derivedFrom: FHIRURL?
	
	/// Natural language description of the search parameter.
	public var description_fhir: FHIRString?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// FHIRPath expression that extracts the values.
	public var expression: FHIRString?
	
	/// Intended jurisdiction for search parameter (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// A modifier supported for the search parameter.
	public var modifier: [SearchModifierCode]?
	
	/// Name for this search parameter (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this search parameter is defined.
	public var purpose: FHIRString?
	
	/// The status of this search parameter. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Types of resource (if a resource reference).
	public var target: [FHIRString]?
	
	/// The type of value a search parameter refers to, and how the content is interpreted.
	public var type: SearchParamType?
	
	/// Logical URI to reference this search parameter (globally unique).
	public var url: FHIRURL?
	
	/// Context the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the search parameter.
	public var version: FHIRString?
	
	/// XPath that extracts the values.
	public var xpath: FHIRString?
	
	/// How the search parameter relates to the set of elements returned by evaluating the xpath query.
	public var xpathUsage: XPathUsageType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(base: [FHIRString], code: FHIRString, description_fhir: FHIRString, name: FHIRString, status: PublicationStatus, type: SearchParamType, url: FHIRURL) {
		self.init()
		self.base = base
		self.code = code
		self.description_fhir = description_fhir
		self.name = name
		self.status = status
		self.type = type
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		base = createInstances(of: FHIRString.self, for: "base", in: json, context: &instCtx, owner: self) ?? base
		if (nil == base || base!.isEmpty) && !instCtx.containsKey("base") {
			instCtx.addError(FHIRValidationError(missing: "base"))
		}
		chain = createInstances(of: FHIRString.self, for: "chain", in: json, context: &instCtx, owner: self) ?? chain
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		comparator = createEnums(of: SearchComparator.self, for: "comparator", in: json, context: &instCtx) ?? comparator
		component = createInstances(of: SearchParameterComponent.self, for: "component", in: json, context: &instCtx, owner: self) ?? component
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		derivedFrom = createInstance(type: FHIRURL.self, for: "derivedFrom", in: json, context: &instCtx, owner: self) ?? derivedFrom
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		if nil == description_fhir && !instCtx.containsKey("description") {
			instCtx.addError(FHIRValidationError(missing: "description"))
		}
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		expression = createInstance(type: FHIRString.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		modifier = createEnums(of: SearchModifierCode.self, for: "modifier", in: json, context: &instCtx) ?? modifier
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		target = createInstances(of: FHIRString.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
		type = createEnum(type: SearchParamType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		if nil == url && !instCtx.containsKey("url") {
			instCtx.addError(FHIRValidationError(missing: "url"))
		}
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
		xpath = createInstance(type: FHIRString.self, for: "xpath", in: json, context: &instCtx, owner: self) ?? xpath
		xpathUsage = createEnum(type: XPathUsageType.self, for: "xpathUsage", in: json, context: &instCtx) ?? xpathUsage
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "base", using: self.base, errors: &errors)
		if nil == base || self.base!.isEmpty {
			errors.append(FHIRValidationError(missing: "base"))
		}
		arrayDecorate(json: &json, withKey: "chain", using: self.chain, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "comparator", using: self.comparator, errors: &errors)
		arrayDecorate(json: &json, withKey: "component", using: self.component, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.derivedFrom?.decorate(json: &json, withKey: "derivedFrom", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		if nil == self.description_fhir {
			errors.append(FHIRValidationError(missing: "description"))
		}
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "target", using: self.target, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
		self.xpath?.decorate(json: &json, withKey: "xpath", errors: &errors)
		self.xpathUsage?.decorate(json: &json, withKey: "xpathUsage", errors: &errors)
	}
}


/**
For Composite resources to define the parts.

Used to define the parts of a composite search parameter.
*/
open class SearchParameterComponent: BackboneElement {
	override open class var resourceType: String {
		get { return "SearchParameterComponent" }
	}
	
	/// Defines how the part works.
	public var definition: Reference?
	
	/// Subexpression relative to main expression.
	public var expression: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(definition: Reference, expression: FHIRString) {
		self.init()
		self.definition = definition
		self.expression = expression
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		definition = createInstance(type: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		if nil == definition && !instCtx.containsKey("definition") {
			instCtx.addError(FHIRValidationError(missing: "definition"))
		}
		expression = createInstance(type: FHIRString.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		if nil == expression && !instCtx.containsKey("expression") {
			instCtx.addError(FHIRValidationError(missing: "expression"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		if nil == self.definition {
			errors.append(FHIRValidationError(missing: "definition"))
		}
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		if nil == self.expression {
			errors.append(FHIRValidationError(missing: "expression"))
		}
	}
}

