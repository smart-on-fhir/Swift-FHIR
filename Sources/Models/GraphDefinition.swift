//
//  GraphDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/GraphDefinition) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
Definition of an graph of resources.

A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by
following references. The Graph Definition resource defines a set and makes rules about the set.
*/
open class GraphDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "GraphDefinition" }
	}
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the graph definition.
	public var description_fhir: FHIRString?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Intended jurisdiction for graph definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Links this graph makes rules about.
	public var link: [GraphDefinitionLink]?
	
	/// Name for this graph definition (Computer friendly).
	public var name: FHIRString?
	
	/// Profile on base resource.
	public var profile: FHIRURL?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this graph definition is defined.
	public var purpose: FHIRString?
	
	/// Type of resource at which the graph starts.
	public var start: FHIRString?
	
	/// The status of this graph definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Logical uri to reference this graph definition (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the graph definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, start: FHIRString, status: PublicationStatus) {
		self.init()
		self.name = name
		self.start = start
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		link = try createInstances(of: GraphDefinitionLink.self, for: "link", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? link
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		profile = try createInstance(type: FHIRURL.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		start = try createInstance(type: FHIRString.self, for: "start", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? start
		if nil == start && !presentKeys.contains("start") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "start"))
		}
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		arrayDecorate(json: &json, withKey: "link", using: self.link, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.start?.decorate(json: &json, withKey: "start", errors: &errors)
		if nil == self.start {
			errors.append(FHIRValidationError(missing: "start"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Links this graph makes rules about.
*/
open class GraphDefinitionLink: BackboneElement {
	override open class var resourceType: String {
		get { return "GraphDefinitionLink" }
	}
	
	/// Why this link is specified.
	public var description_fhir: FHIRString?
	
	/// Maximum occurences for this link.
	public var max: FHIRString?
	
	/// Minimum occurences for this link.
	public var min: FHIRInteger?
	
	/// Path in the resource that contains the link.
	public var path: FHIRString?
	
	/// Which slice (if profiled).
	public var sliceName: FHIRString?
	
	/// Potential target for the link.
	public var target: [GraphDefinitionLinkTarget]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: FHIRString, target: [GraphDefinitionLinkTarget]) {
		self.init()
		self.path = path
		self.target = target
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		max = try createInstance(type: FHIRString.self, for: "max", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? max
		min = try createInstance(type: FHIRInteger.self, for: "min", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? min
		path = try createInstance(type: FHIRString.self, for: "path", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? path
		if nil == path && !presentKeys.contains("path") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "path"))
		}
		sliceName = try createInstance(type: FHIRString.self, for: "sliceName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sliceName
		target = try createInstances(of: GraphDefinitionLinkTarget.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		if (nil == target || target!.isEmpty) && !presentKeys.contains("target") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "target"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.max?.decorate(json: &json, withKey: "max", errors: &errors)
		self.min?.decorate(json: &json, withKey: "min", errors: &errors)
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		if nil == self.path {
			errors.append(FHIRValidationError(missing: "path"))
		}
		self.sliceName?.decorate(json: &json, withKey: "sliceName", errors: &errors)
		arrayDecorate(json: &json, withKey: "target", using: self.target, errors: &errors)
		if nil == target || self.target!.isEmpty {
			errors.append(FHIRValidationError(missing: "target"))
		}
	}
}


/**
Potential target for the link.
*/
open class GraphDefinitionLinkTarget: BackboneElement {
	override open class var resourceType: String {
		get { return "GraphDefinitionLinkTarget" }
	}
	
	/// Compartment Consistency Rules.
	public var compartment: [GraphDefinitionLinkTargetCompartment]?
	
	/// Additional links from target resource.
	public var link: [GraphDefinitionLink]?
	
	/// Profile for the target resource.
	public var profile: FHIRURL?
	
	/// Type of resource this link refers to.
	public var type: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: FHIRString) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		compartment = try createInstances(of: GraphDefinitionLinkTargetCompartment.self, for: "compartment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? compartment
		link = try createInstances(of: GraphDefinitionLink.self, for: "link", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? link
		profile = try createInstance(type: FHIRURL.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "compartment", using: self.compartment, errors: &errors)
		arrayDecorate(json: &json, withKey: "link", using: self.link, errors: &errors)
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Compartment Consistency Rules.
*/
open class GraphDefinitionLinkTargetCompartment: BackboneElement {
	override open class var resourceType: String {
		get { return "GraphDefinitionLinkTargetCompartment" }
	}
	
	/// None
	public var code: CompartmentType?
	
	/// Documentation for FHIRPath expression.
	public var description_fhir: FHIRString?
	
	/// Custom rule, as a FHIRPath expression.
	public var expression: FHIRString?
	
	/// identical | matching | different | no-rule | custom.
	public var rule: GraphCompartmentRule?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CompartmentType, rule: GraphCompartmentRule) {
		self.init()
		self.code = code
		self.rule = rule
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = createEnum(type: CompartmentType.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors) ?? code
		if nil == code && !presentKeys.contains("code") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "code"))
		}
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		expression = try createInstance(type: FHIRString.self, for: "expression", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expression
		rule = createEnum(type: GraphCompartmentRule.self, for: "rule", in: json, presentKeys: &presentKeys, errors: &errors) ?? rule
		if nil == rule && !presentKeys.contains("rule") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "rule"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.rule?.decorate(json: &json, withKey: "rule", errors: &errors)
		if nil == self.rule {
			errors.append(FHIRValidationError(missing: "rule"))
		}
	}
}

