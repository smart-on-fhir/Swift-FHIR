//
//  StructureDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/StructureDefinition) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Structural Definition.

A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in
FHIR, and also for describing extensions and constraints on resources and data types.
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
	
	/// For testing purposes, not real usage.
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
	
	/// Name for this structure definition (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this structure definition is defined.
	public var purpose: FHIRString?
	
	/// Snapshot view of the structure.
	public var snapshot: StructureDefinitionSnapshot?
	
	/// The status of this structure definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this structure definition (human friendly).
	public var title: FHIRString?
	
	/// Type defined or constrained by this structure.
	public var type: FHIRString?
	
	/// Logical URI to reference this structure definition (globally unique).
	public var url: FHIRURL?
	
	/// Context the content is intended to support.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		abstract = createInstance(type: FHIRBool.self, for: "abstract", in: json, context: &instCtx, owner: self) ?? abstract
		if nil == abstract && !instCtx.containsKey("abstract") {
			instCtx.addError(FHIRValidationError(missing: "abstract"))
		}
		baseDefinition = createInstance(type: FHIRURL.self, for: "baseDefinition", in: json, context: &instCtx, owner: self) ?? baseDefinition
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		context = createInstances(of: FHIRString.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		contextInvariant = createInstances(of: FHIRString.self, for: "contextInvariant", in: json, context: &instCtx, owner: self) ?? contextInvariant
		contextType = createEnum(type: ExtensionContext.self, for: "contextType", in: json, context: &instCtx) ?? contextType
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		derivation = createEnum(type: TypeDerivationRule.self, for: "derivation", in: json, context: &instCtx) ?? derivation
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		differential = createInstance(type: StructureDefinitionDifferential.self, for: "differential", in: json, context: &instCtx, owner: self) ?? differential
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		fhirVersion = createInstance(type: FHIRString.self, for: "fhirVersion", in: json, context: &instCtx, owner: self) ?? fhirVersion
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		keyword = createInstances(of: Coding.self, for: "keyword", in: json, context: &instCtx, owner: self) ?? keyword
		kind = createEnum(type: StructureDefinitionKind.self, for: "kind", in: json, context: &instCtx) ?? kind
		if nil == kind && !instCtx.containsKey("kind") {
			instCtx.addError(FHIRValidationError(missing: "kind"))
		}
		mapping = createInstances(of: StructureDefinitionMapping.self, for: "mapping", in: json, context: &instCtx, owner: self) ?? mapping
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		snapshot = createInstance(type: StructureDefinitionSnapshot.self, for: "snapshot", in: json, context: &instCtx, owner: self) ?? snapshot
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		if nil == url && !instCtx.containsKey("url") {
			instCtx.addError(FHIRValidationError(missing: "url"))
		}
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		element = createInstances(of: ElementDefinition.self, for: "element", in: json, context: &instCtx, owner: self) ?? element
		if (nil == element || element!.isEmpty) && !instCtx.containsKey("element") {
			instCtx.addError(FHIRValidationError(missing: "element"))
		}
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
	public var comment: FHIRString?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		identity = createInstance(type: FHIRString.self, for: "identity", in: json, context: &instCtx, owner: self) ?? identity
		if nil == identity && !instCtx.containsKey("identity") {
			instCtx.addError(FHIRValidationError(missing: "identity"))
		}
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		uri = createInstance(type: FHIRURL.self, for: "uri", in: json, context: &instCtx, owner: self) ?? uri
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		element = createInstances(of: ElementDefinition.self, for: "element", in: json, context: &instCtx, owner: self) ?? element
		if (nil == element || element!.isEmpty) && !instCtx.containsKey("element") {
			instCtx.addError(FHIRValidationError(missing: "element"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "element", using: self.element, errors: &errors)
		if nil == element || self.element!.isEmpty {
			errors.append(FHIRValidationError(missing: "element"))
		}
	}
}

