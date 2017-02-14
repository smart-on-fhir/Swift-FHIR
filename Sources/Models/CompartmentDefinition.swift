//
//  CompartmentDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/CompartmentDefinition) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Compartment Definition for a resource.

A compartment definition that defines how resources are accessed on a server.
*/
open class CompartmentDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "CompartmentDefinition" }
	}
	
	/// Which compartment this definition describes.
	public var code: CompartmentType?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the compartment definition.
	public var description_fhir: FHIRString?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Intended jurisdiction for compartment definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this compartment definition (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this compartment definition is defined.
	public var purpose: FHIRString?
	
	/// How resource is related to the compartment.
	public var resource: [CompartmentDefinitionResource]?
	
	/// Whether the search syntax is supported.
	public var search: FHIRBool?
	
	/// The status of this compartment definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this compartment definition (Human friendly).
	public var title: FHIRString?
	
	/// Logical uri to reference this compartment definition (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CompartmentType, name: FHIRString, search: FHIRBool, status: PublicationStatus, url: FHIRURL) {
		self.init()
		self.code = code
		self.name = name
		self.search = search
		self.status = status
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = createEnum(type: CompartmentType.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		resource = try createInstances(of: CompartmentDefinitionResource.self, for: "resource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resource
		search = try createInstance(type: FHIRBool.self, for: "search", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? search
		if nil == search && !presentKeys.contains("search") {
			errors.append(FHIRValidationError(missing: "search"))
		}
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		if nil == url && !presentKeys.contains("url") {
			errors.append(FHIRValidationError(missing: "url"))
		}
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "resource", using: self.resource, errors: &errors)
		self.search?.decorate(json: &json, withKey: "search", errors: &errors)
		if nil == self.search {
			errors.append(FHIRValidationError(missing: "search"))
		}
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
	}
}


/**
How resource is related to the compartment.

Information about how a resource it related to the compartment.
*/
open class CompartmentDefinitionResource: BackboneElement {
	override open class var resourceType: String {
		get { return "CompartmentDefinitionResource" }
	}
	
	/// Name of resource type.
	public var code: FHIRString?
	
	/// Additional doco about the resource and compartment.
	public var documentation: FHIRString?
	
	/// Search Parameter Name, or chained params.
	public var param: [FHIRString]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		param = try createInstances(of: FHIRString.self, for: "param", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? param
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		arrayDecorate(json: &json, withKey: "param", using: self.param, errors: &errors)
	}
}

