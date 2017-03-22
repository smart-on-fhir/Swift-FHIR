//
//  CapabilityStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/CapabilityStatement) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A statement of system capabilities.

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
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// FHIR Version the system uses.
	public var fhirVersion: FHIRString?
	
	/// formats supported (xml | json | ttl | mime type).
	public var format: [FHIRString]?
	
	/// If this describes a specific instance.
	public var implementation: CapabilityStatementImplementation?
	
	/// Implementation guides supported.
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
	
	/// Name for this capability statement (computer friendly).
	public var name: FHIRString?
	
	/// Patch formats supported.
	public var patchFormat: [FHIRString]?
	
	/// Profiles for use cases supported.
	public var profile: [Reference]?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this capability statement is defined.
	public var purpose: FHIRString?
	
	/// If the endpoint is a RESTful one.
	public var rest: [CapabilityStatementRest]?
	
	/// Software that is covered by this capability statement.
	public var software: CapabilityStatementSoftware?
	
	/// The status of this capability statement. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this capability statement (human friendly).
	public var title: FHIRString?
	
	/// Logical URI to reference this capability statement (globally unique).
	public var url: FHIRURL?
	
	/// Context the content is intended to support.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		acceptUnknown = createEnum(type: UnknownContentCode.self, for: "acceptUnknown", in: json, context: &instCtx) ?? acceptUnknown
		if nil == acceptUnknown && !instCtx.containsKey("acceptUnknown") {
			instCtx.addError(FHIRValidationError(missing: "acceptUnknown"))
		}
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		if nil == date && !instCtx.containsKey("date") {
			instCtx.addError(FHIRValidationError(missing: "date"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		document = createInstances(of: CapabilityStatementDocument.self, for: "document", in: json, context: &instCtx, owner: self) ?? document
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		fhirVersion = createInstance(type: FHIRString.self, for: "fhirVersion", in: json, context: &instCtx, owner: self) ?? fhirVersion
		if nil == fhirVersion && !instCtx.containsKey("fhirVersion") {
			instCtx.addError(FHIRValidationError(missing: "fhirVersion"))
		}
		format = createInstances(of: FHIRString.self, for: "format", in: json, context: &instCtx, owner: self) ?? format
		if (nil == format || format!.isEmpty) && !instCtx.containsKey("format") {
			instCtx.addError(FHIRValidationError(missing: "format"))
		}
		implementation = createInstance(type: CapabilityStatementImplementation.self, for: "implementation", in: json, context: &instCtx, owner: self) ?? implementation
		implementationGuide = createInstances(of: FHIRURL.self, for: "implementationGuide", in: json, context: &instCtx, owner: self) ?? implementationGuide
		instantiates = createInstances(of: FHIRURL.self, for: "instantiates", in: json, context: &instCtx, owner: self) ?? instantiates
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		kind = createEnum(type: CapabilityStatementKind.self, for: "kind", in: json, context: &instCtx) ?? kind
		if nil == kind && !instCtx.containsKey("kind") {
			instCtx.addError(FHIRValidationError(missing: "kind"))
		}
		messaging = createInstances(of: CapabilityStatementMessaging.self, for: "messaging", in: json, context: &instCtx, owner: self) ?? messaging
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		patchFormat = createInstances(of: FHIRString.self, for: "patchFormat", in: json, context: &instCtx, owner: self) ?? patchFormat
		profile = createInstances(of: Reference.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		rest = createInstances(of: CapabilityStatementRest.self, for: "rest", in: json, context: &instCtx, owner: self) ?? rest
		software = createInstance(type: CapabilityStatementSoftware.self, for: "software", in: json, context: &instCtx, owner: self) ?? software
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
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
	
	/// Mode of this document declaration - whether an application is a producer or consumer.
	public var mode: DocumentMode?
	
	/// Constraint on a resource used in the document.
	public var profile: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: DocumentMode, profile: Reference) {
		self.init()
		self.mode = mode
		self.profile = profile
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		mode = createEnum(type: DocumentMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		if nil == mode && !instCtx.containsKey("mode") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "mode"))
		}
		profile = createInstance(type: Reference.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		if nil == profile && !instCtx.containsKey("profile") {
			instCtx.addError(FHIRValidationError(missing: "profile"))
		}
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
	
	/// Messages supported by this system.
	public var supportedMessage: [CapabilityStatementMessagingSupportedMessage]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		endpoint = createInstances(of: CapabilityStatementMessagingEndpoint.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		event = createInstances(of: CapabilityStatementMessagingEvent.self, for: "event", in: json, context: &instCtx, owner: self) ?? event
		reliableCache = createInstance(type: FHIRInteger.self, for: "reliableCache", in: json, context: &instCtx, owner: self) ?? reliableCache
		supportedMessage = createInstances(of: CapabilityStatementMessagingSupportedMessage.self, for: "supportedMessage", in: json, context: &instCtx, owner: self) ?? supportedMessage
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "event", using: self.event, errors: &errors)
		self.reliableCache?.decorate(json: &json, withKey: "reliableCache", errors: &errors)
		arrayDecorate(json: &json, withKey: "supportedMessage", using: self.supportedMessage, errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		address = createInstance(type: FHIRURL.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		if nil == address && !instCtx.containsKey("address") {
			instCtx.addError(FHIRValidationError(missing: "address"))
		}
		protocol_fhir = createInstance(type: Coding.self, for: "protocol", in: json, context: &instCtx, owner: self) ?? protocol_fhir
		if nil == protocol_fhir && !instCtx.containsKey("protocol") {
			instCtx.addError(FHIRValidationError(missing: "protocol"))
		}
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
	
	/// The mode of this event declaration - whether an application is a sender or receiver.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createEnum(type: MessageSignificanceCategory.self, for: "category", in: json, context: &instCtx) ?? category
		code = createInstance(type: Coding.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		focus = createInstance(type: FHIRString.self, for: "focus", in: json, context: &instCtx, owner: self) ?? focus
		if nil == focus && !instCtx.containsKey("focus") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "focus"))
		}
		mode = createEnum(type: EventCapabilityMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		if nil == mode && !instCtx.containsKey("mode") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "mode"))
		}
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		if nil == request && !instCtx.containsKey("request") {
			instCtx.addError(FHIRValidationError(missing: "request"))
		}
		response = createInstance(type: Reference.self, for: "response", in: json, context: &instCtx, owner: self) ?? response
		if nil == response && !instCtx.containsKey("response") {
			instCtx.addError(FHIRValidationError(missing: "response"))
		}
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
Messages supported by this system.

References to message definitions for messages this system can send or receive.
*/
open class CapabilityStatementMessagingSupportedMessage: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementMessagingSupportedMessage" }
	}
	
	/// Message supported by this system.
	public var definition: Reference?
	
	/// The mode of this event declaration - whether application is sender or receiver.
	public var mode: EventCapabilityMode?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(definition: Reference, mode: EventCapabilityMode) {
		self.init()
		self.definition = definition
		self.mode = mode
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		definition = createInstance(type: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		if nil == definition && !instCtx.containsKey("definition") {
			instCtx.addError(FHIRValidationError(missing: "definition"))
		}
		mode = createEnum(type: EventCapabilityMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		if nil == mode && !instCtx.containsKey("mode") {
			instCtx.addError(FHIRValidationError(missing: "mode"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		if nil == self.definition {
			errors.append(FHIRValidationError(missing: "definition"))
		}
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		if nil == self.mode {
			errors.append(FHIRValidationError(missing: "mode"))
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
	
	/// Identifies whether this portion of the statement is describing the ability to initiate or receive restful
	/// operations.
	public var mode: RestfulCapabilityMode?
	
	/// Definition of an operation or a custom query.
	public var operation: [CapabilityStatementRestOperation]?
	
	/// Resource served on the REST interface.
	public var resource: [CapabilityStatementRestResource]?
	
	/// Search parameters for searching all resources.
	public var searchParam: [CapabilityStatementRestResourceSearchParam]?
	
	/// Information about security of implementation.
	public var security: CapabilityStatementRestSecurity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: RestfulCapabilityMode) {
		self.init()
		self.mode = mode
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		compartment = createInstances(of: FHIRURL.self, for: "compartment", in: json, context: &instCtx, owner: self) ?? compartment
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		interaction = createInstances(of: CapabilityStatementRestInteraction.self, for: "interaction", in: json, context: &instCtx, owner: self) ?? interaction
		mode = createEnum(type: RestfulCapabilityMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		if nil == mode && !instCtx.containsKey("mode") {
			instCtx.addError(FHIRValidationError(missing: "mode"))
		}
		operation = createInstances(of: CapabilityStatementRestOperation.self, for: "operation", in: json, context: &instCtx, owner: self) ?? operation
		resource = createInstances(of: CapabilityStatementRestResource.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		searchParam = createInstances(of: CapabilityStatementRestResourceSearchParam.self, for: "searchParam", in: json, context: &instCtx, owner: self) ?? searchParam
		security = createInstance(type: CapabilityStatementRestSecurity.self, for: "security", in: json, context: &instCtx, owner: self) ?? security
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createEnum(type: FHIRRestfulInteractions.self, for: "code", in: json, context: &instCtx) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
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

Definition of an operation or a named query together with its parameters and their meaning and type.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		definition = createInstance(type: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		if nil == definition && !instCtx.containsKey("definition") {
			instCtx.addError(FHIRValidationError(missing: "definition"))
		}
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
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
	
	/// Search parameters supported by implementation.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		conditionalCreate = createInstance(type: FHIRBool.self, for: "conditionalCreate", in: json, context: &instCtx, owner: self) ?? conditionalCreate
		conditionalDelete = createEnum(type: ConditionalDeleteStatus.self, for: "conditionalDelete", in: json, context: &instCtx) ?? conditionalDelete
		conditionalRead = createEnum(type: ConditionalReadStatus.self, for: "conditionalRead", in: json, context: &instCtx) ?? conditionalRead
		conditionalUpdate = createInstance(type: FHIRBool.self, for: "conditionalUpdate", in: json, context: &instCtx, owner: self) ?? conditionalUpdate
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		interaction = createInstances(of: CapabilityStatementRestResourceInteraction.self, for: "interaction", in: json, context: &instCtx, owner: self) ?? interaction
		if (nil == interaction || interaction!.isEmpty) && !instCtx.containsKey("interaction") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "interaction"))
		}
		profile = createInstance(type: Reference.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		readHistory = createInstance(type: FHIRBool.self, for: "readHistory", in: json, context: &instCtx, owner: self) ?? readHistory
		referencePolicy = createEnums(of: ReferenceHandlingPolicy.self, for: "referencePolicy", in: json, context: &instCtx) ?? referencePolicy
		searchInclude = createInstances(of: FHIRString.self, for: "searchInclude", in: json, context: &instCtx, owner: self) ?? searchInclude
		searchParam = createInstances(of: CapabilityStatementRestResourceSearchParam.self, for: "searchParam", in: json, context: &instCtx, owner: self) ?? searchParam
		searchRevInclude = createInstances(of: FHIRString.self, for: "searchRevInclude", in: json, context: &instCtx, owner: self) ?? searchRevInclude
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		updateCreate = createInstance(type: FHIRBool.self, for: "updateCreate", in: json, context: &instCtx, owner: self) ?? updateCreate
		versioning = createEnum(type: ResourceVersionPolicy.self, for: "versioning", in: json, context: &instCtx) ?? versioning
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createEnum(type: FHIRRestfulInteractions.self, for: "code", in: json, context: &instCtx) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
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
Search parameters supported by implementation.

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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		definition = createInstance(type: FHIRURL.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		type = createEnum(type: SearchParamType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		certificate = createInstances(of: CapabilityStatementRestSecurityCertificate.self, for: "certificate", in: json, context: &instCtx, owner: self) ?? certificate
		cors = createInstance(type: FHIRBool.self, for: "cors", in: json, context: &instCtx, owner: self) ?? cors
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		service = createInstances(of: CodeableConcept.self, for: "service", in: json, context: &instCtx, owner: self) ?? service
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
	
	/// Mime type for certificates.
	public var type: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		blob = createInstance(type: Base64Binary.self, for: "blob", in: json, context: &instCtx, owner: self) ?? blob
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		releaseDate = createInstance(type: DateTime.self, for: "releaseDate", in: json, context: &instCtx, owner: self) ?? releaseDate
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
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

