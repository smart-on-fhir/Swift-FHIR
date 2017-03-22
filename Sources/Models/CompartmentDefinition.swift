//
//  CompartmentDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/CompartmentDefinition) on 2017-03-22.
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
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Intended jurisdiction for compartment definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this compartment definition (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this compartment definition is defined.
	public var purpose: FHIRString?
	
	/// How a resource is related to the compartment.
	public var resource: [CompartmentDefinitionResource]?
	
	/// Whether the search syntax is supported.
	public var search: FHIRBool?
	
	/// The status of this compartment definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this compartment definition (human friendly).
	public var title: FHIRString?
	
	/// Logical URI to reference this compartment definition (globally unique).
	public var url: FHIRURL?
	
	/// Context the content is intended to support.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createEnum(type: CompartmentType.self, for: "code", in: json, context: &instCtx) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		resource = createInstances(of: CompartmentDefinitionResource.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		search = createInstance(type: FHIRBool.self, for: "search", in: json, context: &instCtx, owner: self) ?? search
		if nil == search && !instCtx.containsKey("search") {
			instCtx.addError(FHIRValidationError(missing: "search"))
		}
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
How a resource is related to the compartment.

Information about how a resource is related to the compartment.
*/
open class CompartmentDefinitionResource: BackboneElement {
	override open class var resourceType: String {
		get { return "CompartmentDefinitionResource" }
	}
	
	/// Name of resource type.
	public var code: FHIRString?
	
	/// Additional documentation about the resource and compartment.
	public var documentation: FHIRString?
	
	/// Search Parameter Name, or chained parameters.
	public var param: [FHIRString]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		param = createInstances(of: FHIRString.self, for: "param", in: json, context: &instCtx, owner: self) ?? param
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

