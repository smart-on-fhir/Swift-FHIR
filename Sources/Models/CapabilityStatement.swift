//
//  CapabilityStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/CapabilityStatement) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
A statement of system Capabilities.

A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server that may be used as a statement of
actual server functionality or a statement of required or desired server implementation.
*/
open class CapabilityStatement: DomainResource {
	override open class var resourceType: String {
		get { return "CapabilityStatement" }
	}
	
	/// A code that indicates whether the application accepts unknown elements or extensions when reading resources.
	public var acceptUnknown: UnknownContentCode?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the capability statement.
	public var description_fhir: FHIRString?
	
	/// Document definition.
	public var document: [CapabilityStatementDocument]?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// FHIR Version the system uses.
	public var fhirVersion: FHIRString?
	
	/// formats supported (xml | json | ttl | mime type).
	public var format: [FHIRString]?
	
	/// If this describes a specific instance.
	public var implementation: CapabilityStatementImplementation?
	
	/// Implementation Guide supported.
	public var implementationGuide: [FHIRURL]?
	
	/// Canonical URL of another capability statement this implements.
	public var instantiates: [FHIRURL]?
	
	/// Intended jurisdiction for capability statement (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind not instance of software) or a class of implementation (e.g. a desired purchase).
	public var kind: CapabilityStatementKind?
	
	/// If messaging is supported.
	public var messaging: [CapabilityStatementMessaging]?
	
	/// Name for this capability statement (Computer friendly).
	public var name: FHIRString?
	
	/// Patch formats supported.
	public var patchFormat: [FHIRString]?
	
	/// Profiles for use cases supported.
	public var profile: [Reference]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this capability statement is defined.
	public var purpose: FHIRString?
	
	/// If the endpoint is a RESTful one.
	public var rest: [CapabilityStatementRest]?
	
	/// Software that is covered by this capability statement.
	public var software: CapabilityStatementSoftware?
	
	/// The status of this capability statement. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this capability statement (Human friendly).
	public var title: FHIRString?
	
	/// Logical uri to reference this capability statement (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the capability statement.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(acceptUnknown: UnknownContentCode, date: DateTime, fhirVersion: FHIRString, format: [FHIRString], kind: CapabilityStatementKind, status: PublicationStatus) {
		self.init()
		self.acceptUnknown = acceptUnknown
		self.date = date
		self.fhirVersion = fhirVersion
		self.format = format
		self.kind = kind
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		acceptUnknown = createEnum(type: UnknownContentCode.self, for: "acceptUnknown", in: json, presentKeys: &presentKeys, errors: &errors) ?? acceptUnknown
		if nil == acceptUnknown && !presentKeys.contains("acceptUnknown") {
			errors.append(FHIRValidationError(missing: "acceptUnknown"))
		}
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		if nil == date && !presentKeys.contains("date") {
			errors.append(FHIRValidationError(missing: "date"))
		}
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		document = try createInstances(of: CapabilityStatementDocument.self, for: "document", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? document
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		fhirVersion = try createInstance(type: FHIRString.self, for: "fhirVersion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fhirVersion
		if nil == fhirVersion && !presentKeys.contains("fhirVersion") {
			errors.append(FHIRValidationError(missing: "fhirVersion"))
		}
		format = try createInstances(of: FHIRString.self, for: "format", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? format
		if (nil == format || format!.isEmpty) && !presentKeys.contains("format") {
			errors.append(FHIRValidationError(missing: "format"))
		}
		implementation = try createInstance(type: CapabilityStatementImplementation.self, for: "implementation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? implementation
		implementationGuide = try createInstances(of: FHIRURL.self, for: "implementationGuide", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? implementationGuide
		instantiates = try createInstances(of: FHIRURL.self, for: "instantiates", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? instantiates
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		kind = createEnum(type: CapabilityStatementKind.self, for: "kind", in: json, presentKeys: &presentKeys, errors: &errors) ?? kind
		if nil == kind && !presentKeys.contains("kind") {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		messaging = try createInstances(of: CapabilityStatementMessaging.self, for: "messaging", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? messaging
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		patchFormat = try createInstances(of: FHIRString.self, for: "patchFormat", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patchFormat
		profile = try createInstances(of: Reference.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		rest = try createInstances(of: CapabilityStatementRest.self, for: "rest", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rest
		software = try createInstance(type: CapabilityStatementSoftware.self, for: "software", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? software
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.acceptUnknown?.decorate(json: &json, withKey: "acceptUnknown", errors: &errors)
		if nil == self.acceptUnknown {
			errors.append(FHIRValidationError(missing: "acceptUnknown"))
		}
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		if nil == self.date {
			errors.append(FHIRValidationError(missing: "date"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "document", using: self.document, errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		self.fhirVersion?.decorate(json: &json, withKey: "fhirVersion", errors: &errors)
		if nil == self.fhirVersion {
			errors.append(FHIRValidationError(missing: "fhirVersion"))
		}
		arrayDecorate(json: &json, withKey: "format", using: self.format, errors: &errors)
		if nil == format || self.format!.isEmpty {
			errors.append(FHIRValidationError(missing: "format"))
		}
		self.implementation?.decorate(json: &json, withKey: "implementation", errors: &errors)
		arrayDecorate(json: &json, withKey: "implementationGuide", using: self.implementationGuide, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiates", using: self.instantiates, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		if nil == self.kind {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		arrayDecorate(json: &json, withKey: "messaging", using: self.messaging, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "patchFormat", using: self.patchFormat, errors: &errors)
		arrayDecorate(json: &json, withKey: "profile", using: self.profile, errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "rest", using: self.rest, errors: &errors)
		self.software?.decorate(json: &json, withKey: "software", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Document definition.

A document definition.
*/
open class CapabilityStatementDocument: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementDocument" }
	}
	
	/// Description of document support.
	public var documentation: FHIRString?
	
	/// Mode of this document declaration - whether application is producer or consumer.
	public var mode: DocumentMode?
	
	/// Constraint on a resource used in the document.
	public var profile: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: DocumentMode, profile: Reference) {
		self.init()
		self.mode = mode
		self.profile = profile
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		mode = createEnum(type: DocumentMode.self, for: "mode", in: json, presentKeys: &presentKeys, errors: &errors) ?? mode
		if nil == mode && !presentKeys.contains("mode") {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		profile = try createInstance(type: Reference.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		if nil == profile && !presentKeys.contains("profile") {
			errors.append(FHIRValidationError(missing: "profile"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		if nil == self.mode {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		if nil == self.profile {
			errors.append(FHIRValidationError(missing: "profile"))
		}
	}
}


/**
If this describes a specific instance.

Identifies a specific implementation instance that is described by the capability statement - i.e. a particular
installation, rather than the capabilities of a software program.
*/
open class CapabilityStatementImplementation: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementImplementation" }
	}
	
	/// Describes this specific instance.
	public var description_fhir: FHIRString?
	
	/// Base URL for the installation.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: FHIRString) {
		self.init()
		self.description_fhir = description_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		if nil == description_fhir && !presentKeys.contains("description") {
			errors.append(FHIRValidationError(missing: "description"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		
		return errors.isEmpty ? nil : errors
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
If messaging is supported.

A description of the messaging capabilities of the solution.
*/
open class CapabilityStatementMessaging: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementMessaging" }
	}
	
	/// Messaging interface behavior details.
	public var documentation: FHIRString?
	
	/// Where messages should be sent.
	public var endpoint: [CapabilityStatementMessagingEndpoint]?
	
	/// Declare support for this event.
	public var event: [CapabilityStatementMessagingEvent]?
	
	/// Reliable Message Cache Length (min).
	public var reliableCache: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(event: [CapabilityStatementMessagingEvent]) {
		self.init()
		self.event = event
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		endpoint = try createInstances(of: CapabilityStatementMessagingEndpoint.self, for: "endpoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? endpoint
		event = try createInstances(of: CapabilityStatementMessagingEvent.self, for: "event", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? event
		if (nil == event || event!.isEmpty) && !presentKeys.contains("event") {
			errors.append(FHIRValidationError(missing: "event"))
		}
		reliableCache = try createInstance(type: FHIRInteger.self, for: "reliableCache", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reliableCache
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "event", using: self.event, errors: &errors)
		if nil == event || self.event!.isEmpty {
			errors.append(FHIRValidationError(missing: "event"))
		}
		self.reliableCache?.decorate(json: &json, withKey: "reliableCache", errors: &errors)
	}
}


/**
Where messages should be sent.

An endpoint (network accessible address) to which messages and/or replies are to be sent.
*/
open class CapabilityStatementMessagingEndpoint: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementMessagingEndpoint" }
	}
	
	/// Network address or identifier of the end-point.
	public var address: FHIRURL?
	
	/// http | ftp | mllp +.
	public var protocol_fhir: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(address: FHIRURL, protocol_fhir: Coding) {
		self.init()
		self.address = address
		self.protocol_fhir = protocol_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		address = try createInstance(type: FHIRURL.self, for: "address", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? address
		if nil == address && !presentKeys.contains("address") {
			errors.append(FHIRValidationError(missing: "address"))
		}
		protocol_fhir = try createInstance(type: Coding.self, for: "protocol", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? protocol_fhir
		if nil == protocol_fhir && !presentKeys.contains("protocol") {
			errors.append(FHIRValidationError(missing: "protocol"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.address?.decorate(json: &json, withKey: "address", errors: &errors)
		if nil == self.address {
			errors.append(FHIRValidationError(missing: "address"))
		}
		self.protocol_fhir?.decorate(json: &json, withKey: "protocol", errors: &errors)
		if nil == self.protocol_fhir {
			errors.append(FHIRValidationError(missing: "protocol"))
		}
	}
}


/**
Declare support for this event.

A description of the solution's support for an event at this end-point.
*/
open class CapabilityStatementMessagingEvent: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementMessagingEvent" }
	}
	
	/// The impact of the content of the message.
	public var category: MessageSignificanceCategory?
	
	/// Event type.
	public var code: Coding?
	
	/// Endpoint-specific event documentation.
	public var documentation: FHIRString?
	
	/// Resource that's focus of message.
	public var focus: FHIRString?
	
	/// The mode of this event declaration - whether application is sender or receiver.
	public var mode: EventCapabilityMode?
	
	/// Profile that describes the request.
	public var request: Reference?
	
	/// Profile that describes the response.
	public var response: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: Coding, focus: FHIRString, mode: EventCapabilityMode, request: Reference, response: Reference) {
		self.init()
		self.code = code
		self.focus = focus
		self.mode = mode
		self.request = request
		self.response = response
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		category = createEnum(type: MessageSignificanceCategory.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors) ?? category
		code = try createInstance(type: Coding.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		focus = try createInstance(type: FHIRString.self, for: "focus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? focus
		if nil == focus && !presentKeys.contains("focus") {
			errors.append(FHIRValidationError(missing: "focus"))
		}
		mode = createEnum(type: EventCapabilityMode.self, for: "mode", in: json, presentKeys: &presentKeys, errors: &errors) ?? mode
		if nil == mode && !presentKeys.contains("mode") {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		request = try createInstance(type: Reference.self, for: "request", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? request
		if nil == request && !presentKeys.contains("request") {
			errors.append(FHIRValidationError(missing: "request"))
		}
		response = try createInstance(type: Reference.self, for: "response", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? response
		if nil == response && !presentKeys.contains("response") {
			errors.append(FHIRValidationError(missing: "response"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		self.focus?.decorate(json: &json, withKey: "focus", errors: &errors)
		if nil == self.focus {
			errors.append(FHIRValidationError(missing: "focus"))
		}
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		if nil == self.mode {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		if nil == self.request {
			errors.append(FHIRValidationError(missing: "request"))
		}
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		if nil == self.response {
			errors.append(FHIRValidationError(missing: "response"))
		}
	}
}


/**
If the endpoint is a RESTful one.

A definition of the restful capabilities of the solution, if any.
*/
open class CapabilityStatementRest: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRest" }
	}
	
	/// Compartments served/used by system.
	public var compartment: [FHIRURL]?
	
	/// General description of implementation.
	public var documentation: FHIRString?
	
	/// What operations are supported?.
	public var interaction: [CapabilityStatementRestInteraction]?
	
	/// Identifies whether this portion of the statement is describing ability to initiate or receive restful
	/// operations.
	public var mode: RestfulCapabilityMode?
	
	/// Definition of an operation or a custom query.
	public var operation: [CapabilityStatementRestOperation]?
	
	/// Resource served on the REST interface.
	public var resource: [CapabilityStatementRestResource]?
	
	/// Search params for searching all resources.
	public var searchParam: [CapabilityStatementRestResourceSearchParam]?
	
	/// Information about security of implementation.
	public var security: CapabilityStatementRestSecurity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: RestfulCapabilityMode) {
		self.init()
		self.mode = mode
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		compartment = try createInstances(of: FHIRURL.self, for: "compartment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? compartment
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		interaction = try createInstances(of: CapabilityStatementRestInteraction.self, for: "interaction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? interaction
		mode = createEnum(type: RestfulCapabilityMode.self, for: "mode", in: json, presentKeys: &presentKeys, errors: &errors) ?? mode
		if nil == mode && !presentKeys.contains("mode") {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		operation = try createInstances(of: CapabilityStatementRestOperation.self, for: "operation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? operation
		resource = try createInstances(of: CapabilityStatementRestResource.self, for: "resource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resource
		searchParam = try createInstances(of: CapabilityStatementRestResourceSearchParam.self, for: "searchParam", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? searchParam
		security = try createInstance(type: CapabilityStatementRestSecurity.self, for: "security", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? security
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "compartment", using: self.compartment, errors: &errors)
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		arrayDecorate(json: &json, withKey: "interaction", using: self.interaction, errors: &errors)
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		if nil == self.mode {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		arrayDecorate(json: &json, withKey: "operation", using: self.operation, errors: &errors)
		arrayDecorate(json: &json, withKey: "resource", using: self.resource, errors: &errors)
		arrayDecorate(json: &json, withKey: "searchParam", using: self.searchParam, errors: &errors)
		self.security?.decorate(json: &json, withKey: "security", errors: &errors)
	}
}


/**
What operations are supported?.

A specification of restful operations supported by the system.
*/
open class CapabilityStatementRestInteraction: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestInteraction" }
	}
	
	/// A coded identifier of the operation, supported by the system.
	/// Only use: ['transaction', 'batch', 'search-system', 'history-system']
	public var code: FHIRRestfulInteractions?
	
	/// Anything special about operation behavior.
	public var documentation: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRRestfulInteractions) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = createEnum(type: FHIRRestfulInteractions.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
	}
}


/**
Definition of an operation or a custom query.

Definition of an operation or a named query and with its parameters and their meaning and type.
*/
open class CapabilityStatementRestOperation: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestOperation" }
	}
	
	/// The defined operation/query.
	public var definition: Reference?
	
	/// Name by which the operation/query is invoked.
	public var name: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(definition: Reference, name: FHIRString) {
		self.init()
		self.definition = definition
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		definition = try createInstance(type: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		if nil == definition && !presentKeys.contains("definition") {
			errors.append(FHIRValidationError(missing: "definition"))
		}
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		if nil == self.definition {
			errors.append(FHIRValidationError(missing: "definition"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
	}
}


/**
Resource served on the REST interface.

A specification of the restful capabilities of the solution for a specific resource type.
*/
open class CapabilityStatementRestResource: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestResource" }
	}
	
	/// If allows/uses conditional create.
	public var conditionalCreate: FHIRBool?
	
	/// A code that indicates how the server supports conditional delete.
	public var conditionalDelete: ConditionalDeleteStatus?
	
	/// A code that indicates how the server supports conditional read.
	public var conditionalRead: ConditionalReadStatus?
	
	/// If allows/uses conditional update.
	public var conditionalUpdate: FHIRBool?
	
	/// Additional information about the use of the resource type.
	public var documentation: FHIRString?
	
	/// What operations are supported?.
	public var interaction: [CapabilityStatementRestResourceInteraction]?
	
	/// Base System profile for all uses of resource.
	public var profile: Reference?
	
	/// Whether vRead can return past versions.
	public var readHistory: FHIRBool?
	
	/// A set of flags that defines how references are supported.
	public var referencePolicy: [ReferenceHandlingPolicy]?
	
	/// _include values supported by the server.
	public var searchInclude: [FHIRString]?
	
	/// Search params supported by implementation.
	public var searchParam: [CapabilityStatementRestResourceSearchParam]?
	
	/// _revinclude values supported by the server.
	public var searchRevInclude: [FHIRString]?
	
	/// A resource type that is supported.
	public var type: FHIRString?
	
	/// If update can commit to a new identity.
	public var updateCreate: FHIRBool?
	
	/// This field is set to no-version to specify that the system does not support (server) or use (client) versioning
	/// for this resource type. If this has some other value, the server must at least correctly track and populate the
	/// versionId meta-property on resources. If the value is 'versioned-update', then the server supports all the
	/// versioning features, including using e-tags for version integrity in the API.
	public var versioning: ResourceVersionPolicy?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(interaction: [CapabilityStatementRestResourceInteraction], type: FHIRString) {
		self.init()
		self.interaction = interaction
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		conditionalCreate = try createInstance(type: FHIRBool.self, for: "conditionalCreate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? conditionalCreate
		conditionalDelete = createEnum(type: ConditionalDeleteStatus.self, for: "conditionalDelete", in: json, presentKeys: &presentKeys, errors: &errors) ?? conditionalDelete
		conditionalRead = createEnum(type: ConditionalReadStatus.self, for: "conditionalRead", in: json, presentKeys: &presentKeys, errors: &errors) ?? conditionalRead
		conditionalUpdate = try createInstance(type: FHIRBool.self, for: "conditionalUpdate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? conditionalUpdate
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		interaction = try createInstances(of: CapabilityStatementRestResourceInteraction.self, for: "interaction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? interaction
		if (nil == interaction || interaction!.isEmpty) && !presentKeys.contains("interaction") {
			errors.append(FHIRValidationError(missing: "interaction"))
		}
		profile = try createInstance(type: Reference.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		readHistory = try createInstance(type: FHIRBool.self, for: "readHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? readHistory
		referencePolicy = createEnums(of: ReferenceHandlingPolicy.self, for: "referencePolicy", in: json, presentKeys: &presentKeys, errors: &errors) ?? referencePolicy
		searchInclude = try createInstances(of: FHIRString.self, for: "searchInclude", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? searchInclude
		searchParam = try createInstances(of: CapabilityStatementRestResourceSearchParam.self, for: "searchParam", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? searchParam
		searchRevInclude = try createInstances(of: FHIRString.self, for: "searchRevInclude", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? searchRevInclude
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		updateCreate = try createInstance(type: FHIRBool.self, for: "updateCreate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? updateCreate
		versioning = createEnum(type: ResourceVersionPolicy.self, for: "versioning", in: json, presentKeys: &presentKeys, errors: &errors) ?? versioning
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.conditionalCreate?.decorate(json: &json, withKey: "conditionalCreate", errors: &errors)
		self.conditionalDelete?.decorate(json: &json, withKey: "conditionalDelete", errors: &errors)
		self.conditionalRead?.decorate(json: &json, withKey: "conditionalRead", errors: &errors)
		self.conditionalUpdate?.decorate(json: &json, withKey: "conditionalUpdate", errors: &errors)
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		arrayDecorate(json: &json, withKey: "interaction", using: self.interaction, errors: &errors)
		if nil == interaction || self.interaction!.isEmpty {
			errors.append(FHIRValidationError(missing: "interaction"))
		}
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		self.readHistory?.decorate(json: &json, withKey: "readHistory", errors: &errors)
		arrayDecorate(json: &json, withKey: "referencePolicy", using: self.referencePolicy, errors: &errors)
		arrayDecorate(json: &json, withKey: "searchInclude", using: self.searchInclude, errors: &errors)
		arrayDecorate(json: &json, withKey: "searchParam", using: self.searchParam, errors: &errors)
		arrayDecorate(json: &json, withKey: "searchRevInclude", using: self.searchRevInclude, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.updateCreate?.decorate(json: &json, withKey: "updateCreate", errors: &errors)
		self.versioning?.decorate(json: &json, withKey: "versioning", errors: &errors)
	}
}


/**
What operations are supported?.

Identifies a restful operation supported by the solution.
*/
open class CapabilityStatementRestResourceInteraction: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestResourceInteraction" }
	}
	
	/// Coded identifier of the operation, supported by the system resource.
	/// Only use: ['read', 'vread', 'update', 'patch', 'delete', 'history-instance', 'history-type', 'create', 'search-type']
	public var code: FHIRRestfulInteractions?
	
	/// Anything special about operation behavior.
	public var documentation: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRRestfulInteractions) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = createEnum(type: FHIRRestfulInteractions.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
	}
}


/**
Search params supported by implementation.

Search parameters for implementations to support and/or make use of - either references to ones defined in the
specification, or additional ones defined for/by the implementation.
*/
open class CapabilityStatementRestResourceSearchParam: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestResourceSearchParam" }
	}
	
	/// Source of definition for parameter.
	public var definition: FHIRURL?
	
	/// Server-specific usage.
	public var documentation: FHIRString?
	
	/// Name of search parameter.
	public var name: FHIRString?
	
	/// The type of value a search parameter refers to, and how the content is interpreted.
	public var type: SearchParamType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, type: SearchParamType) {
		self.init()
		self.name = name
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		definition = try createInstance(type: FHIRURL.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		type = createEnum(type: SearchParamType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Information about security of implementation.

Information about security implementation from an interface perspective - what a client needs to know.
*/
open class CapabilityStatementRestSecurity: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestSecurity" }
	}
	
	/// Certificates associated with security profiles.
	public var certificate: [CapabilityStatementRestSecurityCertificate]?
	
	/// Adds CORS Headers (http://enable-cors.org/).
	public var cors: FHIRBool?
	
	/// General description of how security works.
	public var description_fhir: FHIRString?
	
	/// OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates.
	public var service: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		certificate = try createInstances(of: CapabilityStatementRestSecurityCertificate.self, for: "certificate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? certificate
		cors = try createInstance(type: FHIRBool.self, for: "cors", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? cors
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		service = try createInstances(of: CodeableConcept.self, for: "service", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? service
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "certificate", using: self.certificate, errors: &errors)
		self.cors?.decorate(json: &json, withKey: "cors", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "service", using: self.service, errors: &errors)
	}
}


/**
Certificates associated with security profiles.
*/
open class CapabilityStatementRestSecurityCertificate: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestSecurityCertificate" }
	}
	
	/// Actual certificate.
	public var blob: Base64Binary?
	
	/// Mime type for certificate.
	public var type: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		blob = try createInstance(type: Base64Binary.self, for: "blob", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? blob
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.blob?.decorate(json: &json, withKey: "blob", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Software that is covered by this capability statement.

Software that is covered by this capability statement.  It is used when the capability statement describes the
capabilities of a particular software version, independent of an installation.
*/
open class CapabilityStatementSoftware: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementSoftware" }
	}
	
	/// A name the software is known by.
	public var name: FHIRString?
	
	/// Date this version released.
	public var releaseDate: DateTime?
	
	/// Version covered by this statement.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		releaseDate = try createInstance(type: DateTime.self, for: "releaseDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? releaseDate
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.releaseDate?.decorate(json: &json, withKey: "releaseDate", errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}

