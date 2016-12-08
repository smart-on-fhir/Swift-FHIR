//
//  SearchParameter.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/SearchParameter) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// FluentPath expression that extracts the values.
	public var expression: FHIRString?
	
	/// Intended jurisdiction for search parameter (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// A modifier supported for the search parameter.
	public var modifier: [SearchModifierCode]?
	
	/// Name for this search parameter (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this search parameter is defined.
	public var purpose: FHIRString?
	
	/// The status of this search parameter. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Types of resource (if a resource reference).
	public var target: [FHIRString]?
	
	/// The type of value a search parameter refers to, and how the content is interpreted.
	public var type: SearchParamType?
	
	/// Logical uri to reference this search parameter (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		base = try createInstances(of: FHIRString.self, for: "base", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? base
		if (nil == base || base!.isEmpty) && !presentKeys.contains("base") {
			errors.append(FHIRValidationError(missing: "base"))
		}
		chain = try createInstances(of: FHIRString.self, for: "chain", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? chain
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		comparator = createEnums(of: SearchComparator.self, for: "comparator", in: json, presentKeys: &presentKeys, errors: &errors) ?? comparator
		component = try createInstances(of: SearchParameterComponent.self, for: "component", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? component
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		derivedFrom = try createInstance(type: FHIRURL.self, for: "derivedFrom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? derivedFrom
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		if nil == description_fhir && !presentKeys.contains("description") {
			errors.append(FHIRValidationError(missing: "description"))
		}
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		expression = try createInstance(type: FHIRString.self, for: "expression", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expression
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		modifier = createEnums(of: SearchModifierCode.self, for: "modifier", in: json, presentKeys: &presentKeys, errors: &errors) ?? modifier
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		target = try createInstances(of: FHIRString.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		type = createEnum(type: SearchParamType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		if nil == url && !presentKeys.contains("url") {
			errors.append(FHIRValidationError(missing: "url"))
		}
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		xpath = try createInstance(type: FHIRString.self, for: "xpath", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? xpath
		xpathUsage = createEnum(type: XPathUsageType.self, for: "xpathUsage", in: json, presentKeys: &presentKeys, errors: &errors) ?? xpathUsage
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		definition = try createInstance(type: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		if nil == definition && !presentKeys.contains("definition") {
			errors.append(FHIRValidationError(missing: "definition"))
		}
		expression = try createInstance(type: FHIRString.self, for: "expression", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expression
		if nil == expression && !presentKeys.contains("expression") {
			errors.append(FHIRValidationError(missing: "expression"))
		}
		
		return errors.isEmpty ? nil : errors
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

