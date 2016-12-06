//
//  CapabilityStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/CapabilityStatement) on 2016-12-06.
//  2016, SMART Health IT.
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
	public var experimental: Bool?
	
	/// FHIR Version the system uses.
	public var fhirVersion: FHIRString?
	
	/// formats supported (xml | json | ttl | mime type).
	public var format: [FHIRString]?
	
	/// If this describes a specific instance.
	public var implementation: CapabilityStatementImplementation?
	
	/// Implementation Guide supported.
	public var implementationGuide: [URL]?
	
	/// Canonical URL of another capability statement this implements.
	public var instantiates: [URL]?
	
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
	public var url: URL?
	
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
		if let exist = json["acceptUnknown"] {
			presentKeys.insert("acceptUnknown")
			if let val = exist as? String {
				if let enumval = UnknownContentCode(rawValue: val) {
					self.acceptUnknown = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "acceptUnknown", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "acceptUnknown", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "acceptUnknown"))
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["copyright"] {
			presentKeys.insert("copyright")
			if let val = exist as? String {
				self.copyright = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "copyright", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "date"))
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["document"] {
			presentKeys.insert("document")
			if let val = exist as? [FHIRJSON] {
				do {
					self.document = try CapabilityStatementDocument.instantiate(fromArray: val, owner: self) as? [CapabilityStatementDocument]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "document"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "document", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["fhirVersion"] {
			presentKeys.insert("fhirVersion")
			if let val = exist as? String {
				self.fhirVersion = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fhirVersion", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "fhirVersion"))
		}
		if let exist = json["format"] {
			presentKeys.insert("format")
			if let val = exist as? [String] {
				self.format = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "format", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "format"))
		}
		if let exist = json["implementation"] {
			presentKeys.insert("implementation")
			if let val = exist as? FHIRJSON {
				do {
					self.implementation = try CapabilityStatementImplementation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "implementation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "implementation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["implementationGuide"] {
			presentKeys.insert("implementationGuide")
			if let val = exist as? [String] {
				self.implementationGuide = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "implementationGuide", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["instantiates"] {
			presentKeys.insert("instantiates")
			if let val = exist as? [String] {
				self.instantiates = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "instantiates", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["kind"] {
			presentKeys.insert("kind")
			if let val = exist as? String {
				if let enumval = CapabilityStatementKind(rawValue: val) {
					self.kind = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "kind", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "kind", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		if let exist = json["messaging"] {
			presentKeys.insert("messaging")
			if let val = exist as? [FHIRJSON] {
				do {
					self.messaging = try CapabilityStatementMessaging.instantiate(fromArray: val, owner: self) as? [CapabilityStatementMessaging]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "messaging"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "messaging", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patchFormat"] {
			presentKeys.insert("patchFormat")
			if let val = exist as? [String] {
				self.patchFormat = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "patchFormat", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? [FHIRJSON] {
				do {
					self.profile = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["rest"] {
			presentKeys.insert("rest")
			if let val = exist as? [FHIRJSON] {
				do {
					self.rest = try CapabilityStatementRest.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRest]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rest"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rest", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["software"] {
			presentKeys.insert("software")
			if let val = exist as? FHIRJSON {
				do {
					self.software = try CapabilityStatementSoftware(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "software"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "software", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = PublicationStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "useContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let acceptUnknown = self.acceptUnknown {
			json["acceptUnknown"] = acceptUnknown.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "acceptUnknown"))
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "date"))
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let document = self.document {
			json["document"] = document.map() { $0.asJSON(errors: &errors) }
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fhirVersion = self.fhirVersion {
			json["fhirVersion"] = fhirVersion.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "fhirVersion"))
		}
		if let format = self.format {
			json["format"] = format.map() { $0.asJSON() }
		}
		else {
			errors.append(FHIRValidationError(missing: "format"))
		}
		if let implementation = self.implementation {
			json["implementation"] = implementation.asJSON(errors: &errors)
		}
		if let implementationGuide = self.implementationGuide {
			json["implementationGuide"] = implementationGuide.map() { $0.asJSON() }
		}
		if let instantiates = self.instantiates {
			json["instantiates"] = instantiates.map() { $0.asJSON() }
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let kind = self.kind {
			json["kind"] = kind.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		if let messaging = self.messaging {
			json["messaging"] = messaging.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let patchFormat = self.patchFormat {
			json["patchFormat"] = patchFormat.map() { $0.asJSON() }
		}
		if let profile = self.profile {
			json["profile"] = profile.map() { $0.asJSON(errors: &errors) }
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let rest = self.rest {
			json["rest"] = rest.map() { $0.asJSON(errors: &errors) }
		}
		if let software = self.software {
			json["software"] = software.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
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
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				if let enumval = DocumentMode(rawValue: val) {
					self.mode = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "mode", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? FHIRJSON {
				do {
					self.profile = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "profile"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "profile"))
		}
		
		return json
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
	public var url: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: FHIRString) {
		self.init()
		self.description_fhir = description_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "description"))
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "description_fhir"))
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
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
	public var reliableCache: UInt?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(event: [CapabilityStatementMessagingEvent]) {
		self.init()
		self.event = event
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["endpoint"] {
			presentKeys.insert("endpoint")
			if let val = exist as? [FHIRJSON] {
				do {
					self.endpoint = try CapabilityStatementMessagingEndpoint.instantiate(fromArray: val, owner: self) as? [CapabilityStatementMessagingEndpoint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "endpoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "endpoint", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["event"] {
			presentKeys.insert("event")
			if let val = exist as? [FHIRJSON] {
				do {
					self.event = try CapabilityStatementMessagingEvent.instantiate(fromArray: val, owner: self) as? [CapabilityStatementMessagingEvent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "event"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "event", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "event"))
		}
		if let exist = json["reliableCache"] {
			presentKeys.insert("reliableCache")
			if let val = exist as? UInt {
				self.reliableCache = val
			}
			else {
				errors.append(FHIRValidationError(key: "reliableCache", wants: UInt.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.map() { $0.asJSON(errors: &errors) }
		}
		if let event = self.event {
			json["event"] = event.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "event"))
		}
		if let reliableCache = self.reliableCache {
			json["reliableCache"] = reliableCache.asJSON()
		}
		
		return json
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
	
	/// Address of end-point.
	public var address: URL?
	
	/// http | ftp | mllp +.
	public var protocol_fhir: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(address: URL, protocol_fhir: Coding) {
		self.init()
		self.address = address
		self.protocol_fhir = protocol_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["address"] {
			presentKeys.insert("address")
			if let val = exist as? String {
				self.address = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "address", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "address"))
		}
		if let exist = json["protocol"] {
			presentKeys.insert("protocol")
			if let val = exist as? FHIRJSON {
				do {
					self.protocol_fhir = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "protocol"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "protocol", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "protocol"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "address"))
		}
		if let protocol_fhir = self.protocol_fhir {
			json["protocol"] = protocol_fhir.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "protocol_fhir"))
		}
		
		return json
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
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? String {
				if let enumval = MessageSignificanceCategory(rawValue: val) {
					self.category = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "category", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["focus"] {
			presentKeys.insert("focus")
			if let val = exist as? String {
				self.focus = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "focus", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "focus"))
		}
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				if let enumval = EventCapabilityMode(rawValue: val) {
					self.mode = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "mode", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let exist = json["request"] {
			presentKeys.insert("request")
			if let val = exist as? FHIRJSON {
				do {
					self.request = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "request"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "request", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "request"))
		}
		if let exist = json["response"] {
			presentKeys.insert("response")
			if let val = exist as? FHIRJSON {
				do {
					self.response = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "response"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "response", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "response"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let category = self.category {
			json["category"] = category.rawValue
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let focus = self.focus {
			json["focus"] = focus.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "focus"))
		}
		if let mode = self.mode {
			json["mode"] = mode.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let request = self.request {
			json["request"] = request.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "request"))
		}
		if let response = self.response {
			json["response"] = response.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "response"))
		}
		
		return json
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
	public var compartment: [URL]?
	
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
		if let exist = json["compartment"] {
			presentKeys.insert("compartment")
			if let val = exist as? [String] {
				self.compartment = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "compartment", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["interaction"] {
			presentKeys.insert("interaction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.interaction = try CapabilityStatementRestInteraction.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestInteraction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "interaction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "interaction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				if let enumval = RestfulCapabilityMode(rawValue: val) {
					self.mode = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "mode", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let exist = json["operation"] {
			presentKeys.insert("operation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.operation = try CapabilityStatementRestOperation.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestOperation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? [FHIRJSON] {
				do {
					self.resource = try CapabilityStatementRestResource.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestResource]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["searchParam"] {
			presentKeys.insert("searchParam")
			if let val = exist as? [FHIRJSON] {
				do {
					self.searchParam = try CapabilityStatementRestResourceSearchParam.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestResourceSearchParam]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "searchParam"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "searchParam", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["security"] {
			presentKeys.insert("security")
			if let val = exist as? FHIRJSON {
				do {
					self.security = try CapabilityStatementRestSecurity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "security"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "security", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let compartment = self.compartment {
			json["compartment"] = compartment.map() { $0.asJSON() }
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let interaction = self.interaction {
			json["interaction"] = interaction.map() { $0.asJSON(errors: &errors) }
		}
		if let mode = self.mode {
			json["mode"] = mode.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let operation = self.operation {
			json["operation"] = operation.map() { $0.asJSON(errors: &errors) }
		}
		if let resource = self.resource {
			json["resource"] = resource.map() { $0.asJSON(errors: &errors) }
		}
		if let searchParam = self.searchParam {
			json["searchParam"] = searchParam.map() { $0.asJSON(errors: &errors) }
		}
		if let security = self.security {
			json["security"] = security.asJSON(errors: &errors)
		}
		
		return json
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
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				if let enumval = FHIRRestfulInteractions(rawValue: val) {
					self.code = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "code", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		
		return json
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
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? FHIRJSON {
				do {
					self.definition = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "definition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "definition"))
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let definition = self.definition {
			json["definition"] = definition.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "definition"))
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		
		return json
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
	public var conditionalCreate: Bool?
	
	/// A code that indicates how the server supports conditional delete.
	public var conditionalDelete: ConditionalDeleteStatus?
	
	/// A code that indicates how the server supports conditional read.
	public var conditionalRead: ConditionalReadStatus?
	
	/// If allows/uses conditional update.
	public var conditionalUpdate: Bool?
	
	/// Additional information about the use of the resource type.
	public var documentation: FHIRString?
	
	/// What operations are supported?.
	public var interaction: [CapabilityStatementRestResourceInteraction]?
	
	/// Base System profile for all uses of resource.
	public var profile: Reference?
	
	/// Whether vRead can return past versions.
	public var readHistory: Bool?
	
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
	public var updateCreate: Bool?
	
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
		if let exist = json["conditionalCreate"] {
			presentKeys.insert("conditionalCreate")
			if let val = exist as? Bool {
				self.conditionalCreate = val
			}
			else {
				errors.append(FHIRValidationError(key: "conditionalCreate", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["conditionalDelete"] {
			presentKeys.insert("conditionalDelete")
			if let val = exist as? String {
				if let enumval = ConditionalDeleteStatus(rawValue: val) {
					self.conditionalDelete = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "conditionalDelete", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "conditionalDelete", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["conditionalRead"] {
			presentKeys.insert("conditionalRead")
			if let val = exist as? String {
				if let enumval = ConditionalReadStatus(rawValue: val) {
					self.conditionalRead = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "conditionalRead", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "conditionalRead", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["conditionalUpdate"] {
			presentKeys.insert("conditionalUpdate")
			if let val = exist as? Bool {
				self.conditionalUpdate = val
			}
			else {
				errors.append(FHIRValidationError(key: "conditionalUpdate", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["interaction"] {
			presentKeys.insert("interaction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.interaction = try CapabilityStatementRestResourceInteraction.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestResourceInteraction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "interaction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "interaction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "interaction"))
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? FHIRJSON {
				do {
					self.profile = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["readHistory"] {
			presentKeys.insert("readHistory")
			if let val = exist as? Bool {
				self.readHistory = val
			}
			else {
				errors.append(FHIRValidationError(key: "readHistory", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["referencePolicy"] {
			presentKeys.insert("referencePolicy")
			if let val = exist as? [String] { var i = -1
				self.referencePolicy = val.map() { i += 1
					if let enumval = ReferenceHandlingPolicy(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "referencePolicy.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "referencePolicy", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["searchInclude"] {
			presentKeys.insert("searchInclude")
			if let val = exist as? [String] {
				self.searchInclude = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "searchInclude", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["searchParam"] {
			presentKeys.insert("searchParam")
			if let val = exist as? [FHIRJSON] {
				do {
					self.searchParam = try CapabilityStatementRestResourceSearchParam.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestResourceSearchParam]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "searchParam"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "searchParam", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["searchRevInclude"] {
			presentKeys.insert("searchRevInclude")
			if let val = exist as? [String] {
				self.searchRevInclude = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "searchRevInclude", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["updateCreate"] {
			presentKeys.insert("updateCreate")
			if let val = exist as? Bool {
				self.updateCreate = val
			}
			else {
				errors.append(FHIRValidationError(key: "updateCreate", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["versioning"] {
			presentKeys.insert("versioning")
			if let val = exist as? String {
				if let enumval = ResourceVersionPolicy(rawValue: val) {
					self.versioning = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "versioning", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "versioning", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let conditionalCreate = self.conditionalCreate {
			json["conditionalCreate"] = conditionalCreate.asJSON()
		}
		if let conditionalDelete = self.conditionalDelete {
			json["conditionalDelete"] = conditionalDelete.rawValue
		}
		if let conditionalRead = self.conditionalRead {
			json["conditionalRead"] = conditionalRead.rawValue
		}
		if let conditionalUpdate = self.conditionalUpdate {
			json["conditionalUpdate"] = conditionalUpdate.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let interaction = self.interaction {
			json["interaction"] = interaction.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "interaction"))
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON(errors: &errors)
		}
		if let readHistory = self.readHistory {
			json["readHistory"] = readHistory.asJSON()
		}
		if let referencePolicy = self.referencePolicy {
			json["referencePolicy"] = referencePolicy.map() { $0.rawValue }
		}
		if let searchInclude = self.searchInclude {
			json["searchInclude"] = searchInclude.map() { $0.asJSON() }
		}
		if let searchParam = self.searchParam {
			json["searchParam"] = searchParam.map() { $0.asJSON(errors: &errors) }
		}
		if let searchRevInclude = self.searchRevInclude {
			json["searchRevInclude"] = searchRevInclude.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let updateCreate = self.updateCreate {
			json["updateCreate"] = updateCreate.asJSON()
		}
		if let versioning = self.versioning {
			json["versioning"] = versioning.rawValue
		}
		
		return json
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
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				if let enumval = FHIRRestfulInteractions(rawValue: val) {
					self.code = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "code", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		
		return json
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
	public var definition: URL?
	
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
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? String {
				self.definition = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = SearchParamType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return json
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
	public var cors: Bool?
	
	/// General description of how security works.
	public var description_fhir: FHIRString?
	
	/// OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates.
	public var service: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["certificate"] {
			presentKeys.insert("certificate")
			if let val = exist as? [FHIRJSON] {
				do {
					self.certificate = try CapabilityStatementRestSecurityCertificate.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestSecurityCertificate]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "certificate"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "certificate", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["cors"] {
			presentKeys.insert("cors")
			if let val = exist as? Bool {
				self.cors = val
			}
			else {
				errors.append(FHIRValidationError(key: "cors", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["service"] {
			presentKeys.insert("service")
			if let val = exist as? [FHIRJSON] {
				do {
					self.service = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "service"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "service", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let certificate = self.certificate {
			json["certificate"] = certificate.map() { $0.asJSON(errors: &errors) }
		}
		if let cors = self.cors {
			json["cors"] = cors.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let service = self.service {
			json["service"] = service.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
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
		if let exist = json["blob"] {
			presentKeys.insert("blob")
			if let val = exist as? String {
				self.blob = Base64Binary(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "blob", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let blob = self.blob {
			json["blob"] = blob.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
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
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["releaseDate"] {
			presentKeys.insert("releaseDate")
			if let val = exist as? String {
				self.releaseDate = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "releaseDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let releaseDate = self.releaseDate {
			json["releaseDate"] = releaseDate.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

