//
//  TerminologyCapabilities.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/TerminologyCapabilities) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A statement of system capabilities.

A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be
used as a statement of actual server functionality or a statement of required or desired server implementation.
*/
open class TerminologyCapabilities: DomainResource {
	override open class var resourceType: String {
		get { return "TerminologyCapabilities" }
	}
	
	/// Information about the [ConceptMap/$closure](conceptmap-operation-closure.html) operation.
	public var closure: TerminologyCapabilitiesClosure?
	
	/// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
	public var codeSearch: CodeSearchSupport?
	
	/// A code system supported by the server.
	public var codeSystem: [TerminologyCapabilitiesCodeSystem]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Natural language description of the terminology capabilities.
	public var description_fhir: FHIRString?
	
	/// Information about the [ValueSet/$expand](valueset-operation-expand.html) operation.
	public var expansion: TerminologyCapabilitiesExpansion?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// If this describes a specific instance.
	public var implementation: TerminologyCapabilitiesImplementation?
	
	/// Intended jurisdiction for terminology capabilities (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind, not instance of software) or a class of implementation (e.g. a desired purchase).
	public var kind: CapabilityStatementKind?
	
	/// Whether lockedDate is supported.
	public var lockedDate: FHIRBool?
	
	/// Name for this terminology capabilities (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this terminology capabilities is defined.
	public var purpose: FHIRString?
	
	/// Software that is covered by this terminology capability statement.
	public var software: TerminologyCapabilitiesSoftware?
	
	/// The status of this terminology capabilities. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this terminology capabilities (human friendly).
	public var title: FHIRString?
	
	/// Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
	public var translation: TerminologyCapabilitiesTranslation?
	
	/// Canonical identifier for this terminology capabilities, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
	public var validateCode: TerminologyCapabilitiesValidateCode?
	
	/// Business version of the terminology capabilities.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime, kind: CapabilityStatementKind, status: PublicationStatus) {
		self.init()
		self.date = date
		self.kind = kind
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		closure = createInstance(type: TerminologyCapabilitiesClosure.self, for: "closure", in: json, context: &instCtx, owner: self) ?? closure
		codeSearch = createEnum(type: CodeSearchSupport.self, for: "codeSearch", in: json, context: &instCtx) ?? codeSearch
		codeSystem = createInstances(of: TerminologyCapabilitiesCodeSystem.self, for: "codeSystem", in: json, context: &instCtx, owner: self) ?? codeSystem
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		if nil == date && !instCtx.containsKey("date") {
			instCtx.addError(FHIRValidationError(missing: "date"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		expansion = createInstance(type: TerminologyCapabilitiesExpansion.self, for: "expansion", in: json, context: &instCtx, owner: self) ?? expansion
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		implementation = createInstance(type: TerminologyCapabilitiesImplementation.self, for: "implementation", in: json, context: &instCtx, owner: self) ?? implementation
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		kind = createEnum(type: CapabilityStatementKind.self, for: "kind", in: json, context: &instCtx) ?? kind
		if nil == kind && !instCtx.containsKey("kind") {
			instCtx.addError(FHIRValidationError(missing: "kind"))
		}
		lockedDate = createInstance(type: FHIRBool.self, for: "lockedDate", in: json, context: &instCtx, owner: self) ?? lockedDate
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		software = createInstance(type: TerminologyCapabilitiesSoftware.self, for: "software", in: json, context: &instCtx, owner: self) ?? software
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		translation = createInstance(type: TerminologyCapabilitiesTranslation.self, for: "translation", in: json, context: &instCtx, owner: self) ?? translation
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		validateCode = createInstance(type: TerminologyCapabilitiesValidateCode.self, for: "validateCode", in: json, context: &instCtx, owner: self) ?? validateCode
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.closure?.decorate(json: &json, withKey: "closure", errors: &errors)
		self.codeSearch?.decorate(json: &json, withKey: "codeSearch", errors: &errors)
		arrayDecorate(json: &json, withKey: "codeSystem", using: self.codeSystem, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		if nil == self.date {
			errors.append(FHIRValidationError(missing: "date"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expansion?.decorate(json: &json, withKey: "expansion", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		self.implementation?.decorate(json: &json, withKey: "implementation", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		if nil == self.kind {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		self.lockedDate?.decorate(json: &json, withKey: "lockedDate", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.software?.decorate(json: &json, withKey: "software", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.translation?.decorate(json: &json, withKey: "translation", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.validateCode?.decorate(json: &json, withKey: "validateCode", errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Information about the [ConceptMap/$closure](conceptmap-operation-closure.html) operation.

Whether the $closure operation is supported.
*/
open class TerminologyCapabilitiesClosure: BackboneElement {
	override open class var resourceType: String {
		get { return "TerminologyCapabilitiesClosure" }
	}
	
	/// If cross-system closure is supported.
	public var translation: FHIRBool?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		translation = createInstance(type: FHIRBool.self, for: "translation", in: json, context: &instCtx, owner: self) ?? translation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.translation?.decorate(json: &json, withKey: "translation", errors: &errors)
	}
}


/**
A code system supported by the server.

Identifies a code system that is supported by the server. If there is a no code system URL, then this declares the
general assumptions a client can make about support for any CodeSystem resource.
*/
open class TerminologyCapabilitiesCodeSystem: BackboneElement {
	override open class var resourceType: String {
		get { return "TerminologyCapabilitiesCodeSystem" }
	}
	
	/// Whether subsumption is supported.
	public var subsumption: FHIRBool?
	
	/// URI for the Code System.
	public var uri: FHIRURL?
	
	/// Version of Code System supported.
	public var version: [TerminologyCapabilitiesCodeSystemVersion]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		subsumption = createInstance(type: FHIRBool.self, for: "subsumption", in: json, context: &instCtx, owner: self) ?? subsumption
		uri = createInstance(type: FHIRURL.self, for: "uri", in: json, context: &instCtx, owner: self) ?? uri
		version = createInstances(of: TerminologyCapabilitiesCodeSystemVersion.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.subsumption?.decorate(json: &json, withKey: "subsumption", errors: &errors)
		self.uri?.decorate(json: &json, withKey: "uri", errors: &errors)
		arrayDecorate(json: &json, withKey: "version", using: self.version, errors: &errors)
	}
}


/**
Version of Code System supported.

For the code system, a list of versions that are supported by the server.
*/
open class TerminologyCapabilitiesCodeSystemVersion: BackboneElement {
	override open class var resourceType: String {
		get { return "TerminologyCapabilitiesCodeSystemVersion" }
	}
	
	/// Version identifier for this version.
	public var code: FHIRString?
	
	/// If compositional grammar is supported.
	public var compositional: FHIRBool?
	
	/// Filter Properties supported.
	public var filter: [TerminologyCapabilitiesCodeSystemVersionFilter]?
	
	/// If this is the default version for this code system.
	public var isDefault: FHIRBool?
	
	/// Language Displays supported.
	public var language: [FHIRString]?
	
	/// Properties supported for $lookup.
	public var property: [FHIRString]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		compositional = createInstance(type: FHIRBool.self, for: "compositional", in: json, context: &instCtx, owner: self) ?? compositional
		filter = createInstances(of: TerminologyCapabilitiesCodeSystemVersionFilter.self, for: "filter", in: json, context: &instCtx, owner: self) ?? filter
		isDefault = createInstance(type: FHIRBool.self, for: "isDefault", in: json, context: &instCtx, owner: self) ?? isDefault
		language = createInstances(of: FHIRString.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		property = createInstances(of: FHIRString.self, for: "property", in: json, context: &instCtx, owner: self) ?? property
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.compositional?.decorate(json: &json, withKey: "compositional", errors: &errors)
		arrayDecorate(json: &json, withKey: "filter", using: self.filter, errors: &errors)
		self.isDefault?.decorate(json: &json, withKey: "isDefault", errors: &errors)
		arrayDecorate(json: &json, withKey: "language", using: self.language, errors: &errors)
		arrayDecorate(json: &json, withKey: "property", using: self.property, errors: &errors)
	}
}


/**
Filter Properties supported.
*/
open class TerminologyCapabilitiesCodeSystemVersionFilter: BackboneElement {
	override open class var resourceType: String {
		get { return "TerminologyCapabilitiesCodeSystemVersionFilter" }
	}
	
	/// Code of the property supported.
	public var code: FHIRString?
	
	/// Operations supported for the property.
	public var op: [FHIRString]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString, op: [FHIRString]) {
		self.init()
		self.code = code
		self.op = op
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		op = createInstances(of: FHIRString.self, for: "op", in: json, context: &instCtx, owner: self) ?? op
		if (nil == op || op!.isEmpty) && !instCtx.containsKey("op") {
			instCtx.addError(FHIRValidationError(missing: "op"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "op", using: self.op, errors: &errors)
		if nil == op || self.op!.isEmpty {
			errors.append(FHIRValidationError(missing: "op"))
		}
	}
}


/**
Information about the [ValueSet/$expand](valueset-operation-expand.html) operation.
*/
open class TerminologyCapabilitiesExpansion: BackboneElement {
	override open class var resourceType: String {
		get { return "TerminologyCapabilitiesExpansion" }
	}
	
	/// Whether the server can return nested value sets.
	public var hierarchical: FHIRBool?
	
	/// Allow request for incomplete expansions?.
	public var incomplete: FHIRBool?
	
	/// Whether the server supports paging on expansion.
	public var paging: FHIRBool?
	
	/// Supported expansion parameter.
	public var parameter: [TerminologyCapabilitiesExpansionParameter]?
	
	/// Documentation about text searching works.
	public var textFilter: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		hierarchical = createInstance(type: FHIRBool.self, for: "hierarchical", in: json, context: &instCtx, owner: self) ?? hierarchical
		incomplete = createInstance(type: FHIRBool.self, for: "incomplete", in: json, context: &instCtx, owner: self) ?? incomplete
		paging = createInstance(type: FHIRBool.self, for: "paging", in: json, context: &instCtx, owner: self) ?? paging
		parameter = createInstances(of: TerminologyCapabilitiesExpansionParameter.self, for: "parameter", in: json, context: &instCtx, owner: self) ?? parameter
		textFilter = createInstance(type: FHIRString.self, for: "textFilter", in: json, context: &instCtx, owner: self) ?? textFilter
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.hierarchical?.decorate(json: &json, withKey: "hierarchical", errors: &errors)
		self.incomplete?.decorate(json: &json, withKey: "incomplete", errors: &errors)
		self.paging?.decorate(json: &json, withKey: "paging", errors: &errors)
		arrayDecorate(json: &json, withKey: "parameter", using: self.parameter, errors: &errors)
		self.textFilter?.decorate(json: &json, withKey: "textFilter", errors: &errors)
	}
}


/**
Supported expansion parameter.
*/
open class TerminologyCapabilitiesExpansionParameter: BackboneElement {
	override open class var resourceType: String {
		get { return "TerminologyCapabilitiesExpansionParameter" }
	}
	
	/// Description of support for parameter.
	public var documentation: FHIRString?
	
	/// Expansion Parameter name.
	public var name: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
	}
}


/**
If this describes a specific instance.

Identifies a specific implementation instance that is described by the terminology capability statement - i.e. a
particular installation, rather than the capabilities of a software program.
*/
open class TerminologyCapabilitiesImplementation: BackboneElement {
	override open class var resourceType: String {
		get { return "TerminologyCapabilitiesImplementation" }
	}
	
	/// Describes this specific instance.
	public var description_fhir: FHIRString?
	
	/// Base URL for the implementation.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: FHIRString) {
		self.init()
		self.description_fhir = description_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		if nil == description_fhir && !instCtx.containsKey("description") {
			instCtx.addError(FHIRValidationError(missing: "description"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		if nil == self.description_fhir {
			errors.append(FHIRValidationError(missing: "description"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
	}
}


/**
Software that is covered by this terminology capability statement.

Software that is covered by this terminology capability statement.  It is used when the statement describes the
capabilities of a particular software version, independent of an installation.
*/
open class TerminologyCapabilitiesSoftware: BackboneElement {
	override open class var resourceType: String {
		get { return "TerminologyCapabilitiesSoftware" }
	}
	
	/// A name the software is known by.
	public var name: FHIRString?
	
	/// Version covered by this statement.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
*/
open class TerminologyCapabilitiesTranslation: BackboneElement {
	override open class var resourceType: String {
		get { return "TerminologyCapabilitiesTranslation" }
	}
	
	/// Whether the client must identify the map.
	public var needsMap: FHIRBool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(needsMap: FHIRBool) {
		self.init()
		self.needsMap = needsMap
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		needsMap = createInstance(type: FHIRBool.self, for: "needsMap", in: json, context: &instCtx, owner: self) ?? needsMap
		if nil == needsMap && !instCtx.containsKey("needsMap") {
			instCtx.addError(FHIRValidationError(missing: "needsMap"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.needsMap?.decorate(json: &json, withKey: "needsMap", errors: &errors)
		if nil == self.needsMap {
			errors.append(FHIRValidationError(missing: "needsMap"))
		}
	}
}


/**
Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
*/
open class TerminologyCapabilitiesValidateCode: BackboneElement {
	override open class var resourceType: String {
		get { return "TerminologyCapabilitiesValidateCode" }
	}
	
	/// Whether translations are validated.
	public var translations: FHIRBool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(translations: FHIRBool) {
		self.init()
		self.translations = translations
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		translations = createInstance(type: FHIRBool.self, for: "translations", in: json, context: &instCtx, owner: self) ?? translations
		if nil == translations && !instCtx.containsKey("translations") {
			instCtx.addError(FHIRValidationError(missing: "translations"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.translations?.decorate(json: &json, withKey: "translations", errors: &errors)
		if nil == self.translations {
			errors.append(FHIRValidationError(missing: "translations"))
		}
	}
}

