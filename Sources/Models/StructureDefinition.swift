//
//  StructureDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/StructureDefinition) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
Structural Definition.

A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in
FHIR, and also for describing extensions, and constraints on resources and data types.
*/
open class StructureDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "StructureDefinition" }
	}
	
	/// Whether the structure is abstract.
	public var abstract: FHIRBool?
	
	/// Definition that this type is constrained/specialized from.
	public var baseDefinition: FHIRURL?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Where the extension can be used in instances.
	public var context: [FHIRString]?
	
	/// FHIRPath invariants - when the extension can be used.
	public var contextInvariant: [FHIRString]?
	
	/// If this is an extension, Identifies the context within FHIR resources where the extension can be used.
	public var contextType: ExtensionContext?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// How the type relates to the baseDefinition.
	public var derivation: TypeDerivationRule?
	
	/// Natural language description of the structure definition.
	public var description_fhir: FHIRString?
	
	/// Differential view of the structure.
	public var differential: StructureDefinitionDifferential?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// FHIR Version this StructureDefinition targets.
	public var fhirVersion: FHIRString?
	
	/// Additional identifier for the structure definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for structure definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Assist with indexing and finding.
	public var keyword: [Coding]?
	
	/// Defines the kind of structure that this definition is describing.
	public var kind: StructureDefinitionKind?
	
	/// External specification that the content is mapped to.
	public var mapping: [StructureDefinitionMapping]?
	
	/// Name for this structure definition (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this structure definition is defined.
	public var purpose: FHIRString?
	
	/// Snapshot view of the structure.
	public var snapshot: StructureDefinitionSnapshot?
	
	/// The status of this structure definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this structure definition (Human friendly).
	public var title: FHIRString?
	
	/// Type defined or constrained by this structure.
	public var type: FHIRString?
	
	/// Logical uri to reference this structure definition (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the structure definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(abstract: FHIRBool, kind: StructureDefinitionKind, name: FHIRString, status: PublicationStatus, type: FHIRString, url: FHIRURL) {
		self.init()
		self.abstract = abstract
		self.kind = kind
		self.name = name
		self.status = status
		self.type = type
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		abstract = try createInstance(type: FHIRBool.self, for: "abstract", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? abstract
		if nil == abstract && !presentKeys.contains("abstract") {
			errors.append(FHIRValidationError(missing: "abstract"))
		}
		baseDefinition = try createInstance(type: FHIRURL.self, for: "baseDefinition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? baseDefinition
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		context = try createInstances(of: FHIRString.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		contextInvariant = try createInstances(of: FHIRString.self, for: "contextInvariant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contextInvariant
		contextType = createEnum(type: ExtensionContext.self, for: "contextType", in: json, presentKeys: &presentKeys, errors: &errors) ?? contextType
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		derivation = createEnum(type: TypeDerivationRule.self, for: "derivation", in: json, presentKeys: &presentKeys, errors: &errors) ?? derivation
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		differential = try createInstance(type: StructureDefinitionDifferential.self, for: "differential", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? differential
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		fhirVersion = try createInstance(type: FHIRString.self, for: "fhirVersion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fhirVersion
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		keyword = try createInstances(of: Coding.self, for: "keyword", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? keyword
		kind = createEnum(type: StructureDefinitionKind.self, for: "kind", in: json, presentKeys: &presentKeys, errors: &errors) ?? kind
		if nil == kind && !presentKeys.contains("kind") {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		mapping = try createInstances(of: StructureDefinitionMapping.self, for: "mapping", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? mapping
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		snapshot = try createInstance(type: StructureDefinitionSnapshot.self, for: "snapshot", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? snapshot
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
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
		
		self.abstract?.decorate(json: &json, withKey: "abstract", errors: &errors)
		if nil == self.abstract {
			errors.append(FHIRValidationError(missing: "abstract"))
		}
		self.baseDefinition?.decorate(json: &json, withKey: "baseDefinition", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "context", using: self.context, errors: &errors)
		arrayDecorate(json: &json, withKey: "contextInvariant", using: self.contextInvariant, errors: &errors)
		self.contextType?.decorate(json: &json, withKey: "contextType", errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.derivation?.decorate(json: &json, withKey: "derivation", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.differential?.decorate(json: &json, withKey: "differential", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		self.fhirVersion?.decorate(json: &json, withKey: "fhirVersion", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		arrayDecorate(json: &json, withKey: "keyword", using: self.keyword, errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		if nil == self.kind {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		arrayDecorate(json: &json, withKey: "mapping", using: self.mapping, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.snapshot?.decorate(json: &json, withKey: "snapshot", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
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
	}
}


/**
Differential view of the structure.

A differential view is expressed relative to the base StructureDefinition - a statement of differences that it applies.
*/
open class StructureDefinitionDifferential: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureDefinitionDifferential" }
	}
	
	/// Definition of elements in the resource (if no StructureDefinition).
	public var element: [ElementDefinition]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(element: [ElementDefinition]) {
		self.init()
		self.element = element
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		element = try createInstances(of: ElementDefinition.self, for: "element", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? element
		if (nil == element || element!.isEmpty) && !presentKeys.contains("element") {
			errors.append(FHIRValidationError(missing: "element"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "element", using: self.element, errors: &errors)
		if nil == element || self.element!.isEmpty {
			errors.append(FHIRValidationError(missing: "element"))
		}
	}
}


/**
External specification that the content is mapped to.

An external specification that the content is mapped to.
*/
open class StructureDefinitionMapping: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureDefinitionMapping" }
	}
	
	/// Versions, Issues, Scope limitations etc..
	public var comments: FHIRString?
	
	/// Internal id when this mapping is used.
	public var identity: FHIRString?
	
	/// Names what this mapping refers to.
	public var name: FHIRString?
	
	/// Identifies what this mapping refers to.
	public var uri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identity: FHIRString) {
		self.init()
		self.identity = identity
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		comments = try createInstance(type: FHIRString.self, for: "comments", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comments
		identity = try createInstance(type: FHIRString.self, for: "identity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identity
		if nil == identity && !presentKeys.contains("identity") {
			errors.append(FHIRValidationError(missing: "identity"))
		}
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		uri = try createInstance(type: FHIRURL.self, for: "uri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uri
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.comments?.decorate(json: &json, withKey: "comments", errors: &errors)
		self.identity?.decorate(json: &json, withKey: "identity", errors: &errors)
		if nil == self.identity {
			errors.append(FHIRValidationError(missing: "identity"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.uri?.decorate(json: &json, withKey: "uri", errors: &errors)
	}
}


/**
Snapshot view of the structure.

A snapshot view is expressed in a stand alone form that can be used and interpreted without considering the base
StructureDefinition.
*/
open class StructureDefinitionSnapshot: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureDefinitionSnapshot" }
	}
	
	/// Definition of elements in the resource (if no StructureDefinition).
	public var element: [ElementDefinition]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(element: [ElementDefinition]) {
		self.init()
		self.element = element
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		element = try createInstances(of: ElementDefinition.self, for: "element", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? element
		if (nil == element || element!.isEmpty) && !presentKeys.contains("element") {
			errors.append(FHIRValidationError(missing: "element"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "element", using: self.element, errors: &errors)
		if nil == element || self.element!.isEmpty {
			errors.append(FHIRValidationError(missing: "element"))
		}
	}
}

