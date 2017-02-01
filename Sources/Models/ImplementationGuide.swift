//
//  ImplementationGuide.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/ImplementationGuide) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A set of rules about how FHIR is used.

A set of rules or how FHIR is used to solve a particular problem. This resource is used to gather all the parts of an
implementation guide into a logical whole, and to publish a computable definition of all the parts.
*/
open class ImplementationGuide: DomainResource {
	override open class var resourceType: String {
		get { return "ImplementationGuide" }
	}
	
	/// Image, css, script, etc..
	public var binary: [FHIRURL]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Another Implementation guide this depends on.
	public var dependency: [ImplementationGuideDependency]?
	
	/// Natural language description of the implementation guide.
	public var description_fhir: FHIRString?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// FHIR Version this Implementation Guide targets.
	public var fhirVersion: FHIRString?
	
	/// Profiles that apply globally.
	public var global: [ImplementationGuideGlobal]?
	
	/// Intended jurisdiction for implementation guide (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this implementation guide (Computer friendly).
	public var name: FHIRString?
	
	/// Group of resources as used in .page.package.
	public var package: [ImplementationGuidePackage]?
	
	/// Page/Section in the Guide.
	public var page: ImplementationGuidePage?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// The status of this implementation guide. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Logical uri to reference this implementation guide (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the implementation guide.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, status: PublicationStatus, url: FHIRURL) {
		self.init()
		self.name = name
		self.status = status
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		binary = try createInstances(of: FHIRURL.self, for: "binary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? binary
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		dependency = try createInstances(of: ImplementationGuideDependency.self, for: "dependency", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dependency
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		fhirVersion = try createInstance(type: FHIRString.self, for: "fhirVersion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fhirVersion
		global = try createInstances(of: ImplementationGuideGlobal.self, for: "global", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? global
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		package = try createInstances(of: ImplementationGuidePackage.self, for: "package", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? package
		page = try createInstance(type: ImplementationGuidePage.self, for: "page", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? page
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		if nil == url && !presentKeys.contains("url") {
			errors.append(FHIRValidationError(missing: "url"))
		}
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "binary", using: self.binary, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		arrayDecorate(json: &json, withKey: "dependency", using: self.dependency, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		self.fhirVersion?.decorate(json: &json, withKey: "fhirVersion", errors: &errors)
		arrayDecorate(json: &json, withKey: "global", using: self.global, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		arrayDecorate(json: &json, withKey: "package", using: self.package, errors: &errors)
		self.page?.decorate(json: &json, withKey: "page", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Another Implementation guide this depends on.

Another implementation guide that this implementation depends on. Typically, an implementation guide uses value sets,
profiles etc.defined in other implementation guides.
*/
open class ImplementationGuideDependency: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideDependency" }
	}
	
	/// How the dependency is represented when the guide is published.
	public var type: GuideDependencyType?
	
	/// Where to find dependency.
	public var uri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: GuideDependencyType, uri: FHIRURL) {
		self.init()
		self.type = type
		self.uri = uri
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		type = createEnum(type: GuideDependencyType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		uri = try createInstance(type: FHIRURL.self, for: "uri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uri
		if nil == uri && !presentKeys.contains("uri") {
			errors.append(FHIRValidationError(missing: "uri"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.uri?.decorate(json: &json, withKey: "uri", errors: &errors)
		if nil == self.uri {
			errors.append(FHIRValidationError(missing: "uri"))
		}
	}
}


/**
Profiles that apply globally.

A set of profiles that all resources covered by this implementation guide must conform to.
*/
open class ImplementationGuideGlobal: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideGlobal" }
	}
	
	/// Profile that all resources must conform to.
	public var profile: Reference?
	
	/// Type this profiles applies to.
	public var type: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(profile: Reference, type: FHIRString) {
		self.init()
		self.profile = profile
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		profile = try createInstance(type: Reference.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		if nil == profile && !presentKeys.contains("profile") {
			errors.append(FHIRValidationError(missing: "profile"))
		}
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		if nil == self.profile {
			errors.append(FHIRValidationError(missing: "profile"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Group of resources as used in .page.package.

A logical group of resources. Logical groups can be used when building pages.
*/
open class ImplementationGuidePackage: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuidePackage" }
	}
	
	/// Human readable text describing the package.
	public var description_fhir: FHIRString?
	
	/// Name used .page.package.
	public var name: FHIRString?
	
	/// Resource in the implementation guide.
	public var resource: [ImplementationGuidePackageResource]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, resource: [ImplementationGuidePackageResource]) {
		self.init()
		self.name = name
		self.resource = resource
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		resource = try createInstances(of: ImplementationGuidePackageResource.self, for: "resource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resource
		if (nil == resource || resource!.isEmpty) && !presentKeys.contains("resource") {
			errors.append(FHIRValidationError(missing: "resource"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		arrayDecorate(json: &json, withKey: "resource", using: self.resource, errors: &errors)
		if nil == resource || self.resource!.isEmpty {
			errors.append(FHIRValidationError(missing: "resource"))
		}
	}
}


/**
Resource in the implementation guide.

A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability
statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
*/
open class ImplementationGuidePackageResource: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuidePackageResource" }
	}
	
	/// Short code to identify the resource.
	public var acronym: FHIRString?
	
	/// Reason why included in guide.
	public var description_fhir: FHIRString?
	
	/// If not an example, has it's normal meaning.
	public var example: FHIRBool?
	
	/// Resource this is an example of (if applicable).
	public var exampleFor: Reference?
	
	/// Human Name for the resource.
	public var name: FHIRString?
	
	/// Location of the resource.
	public var sourceReference: Reference?
	
	/// Location of the resource.
	public var sourceUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(example: FHIRBool, source: Any) {
		self.init()
		self.example = example
		if let value = source as? FHIRURL {
			self.sourceUri = value
		}
		else if let value = source as? Reference {
			self.sourceReference = value
		}
		else {
			fhir_warn("Type “\(type(of: source))” for property “\(source)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		acronym = try createInstance(type: FHIRString.self, for: "acronym", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? acronym
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		example = try createInstance(type: FHIRBool.self, for: "example", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? example
		if nil == example && !presentKeys.contains("example") {
			errors.append(FHIRValidationError(missing: "example"))
		}
		exampleFor = try createInstance(type: Reference.self, for: "exampleFor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? exampleFor
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		sourceReference = try createInstance(type: Reference.self, for: "sourceReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sourceReference
		sourceUri = try createInstance(type: FHIRURL.self, for: "sourceUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sourceUri
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.sourceUri && nil == self.sourceReference {
			errors.append(FHIRValidationError(missing: "source[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.acronym?.decorate(json: &json, withKey: "acronym", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.example?.decorate(json: &json, withKey: "example", errors: &errors)
		if nil == self.example {
			errors.append(FHIRValidationError(missing: "example"))
		}
		self.exampleFor?.decorate(json: &json, withKey: "exampleFor", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.sourceReference?.decorate(json: &json, withKey: "sourceReference", errors: &errors)
		self.sourceUri?.decorate(json: &json, withKey: "sourceUri", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.sourceUri && nil == self.sourceReference {
			errors.append(FHIRValidationError(missing: "source[x]"))
		}
	}
}


/**
Page/Section in the Guide.

A page / section in the implementation guide. The root page is the implementation guide home page.
*/
open class ImplementationGuidePage: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuidePage" }
	}
	
	/// Format of the page (e.g. html, markdown, etc.).
	public var format: FHIRString?
	
	/// The kind of page that this is. Some pages are autogenerated (list, example), and other kinds are of interest so
	/// that tools can navigate the user to the page of interest.
	public var kind: GuidePageKind?
	
	/// Name of package to include.
	public var package: [FHIRString]?
	
	/// Nested Pages / Sections.
	public var page: [ImplementationGuidePage]?
	
	/// Where to find that page.
	public var source: FHIRURL?
	
	/// Short title shown for navigational assistance.
	public var title: FHIRString?
	
	/// Kind of resource to include in the list.
	public var type: [FHIRString]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(kind: GuidePageKind, source: FHIRURL, title: FHIRString) {
		self.init()
		self.kind = kind
		self.source = source
		self.title = title
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		format = try createInstance(type: FHIRString.self, for: "format", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? format
		kind = createEnum(type: GuidePageKind.self, for: "kind", in: json, presentKeys: &presentKeys, errors: &errors) ?? kind
		if nil == kind && !presentKeys.contains("kind") {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		package = try createInstances(of: FHIRString.self, for: "package", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? package
		page = try createInstances(of: ImplementationGuidePage.self, for: "page", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? page
		source = try createInstance(type: FHIRURL.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		if nil == source && !presentKeys.contains("source") {
			errors.append(FHIRValidationError(missing: "source"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		if nil == title && !presentKeys.contains("title") {
			errors.append(FHIRValidationError(missing: "title"))
		}
		type = try createInstances(of: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.format?.decorate(json: &json, withKey: "format", errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		if nil == self.kind {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		arrayDecorate(json: &json, withKey: "package", using: self.package, errors: &errors)
		arrayDecorate(json: &json, withKey: "page", using: self.page, errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		if nil == self.source {
			errors.append(FHIRValidationError(missing: "source"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		if nil == self.title {
			errors.append(FHIRValidationError(missing: "title"))
		}
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}

