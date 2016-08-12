//
//  Conformance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Conformance) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A conformance statement.
 *
 *  A conformance statement is a set of capabilities of a FHIR Server that may be used as a statement of actual server
 *  functionality or a statement of required or desired server implementation.
 */
public class Conformance: DomainResource {
	override public class var resourceName: String {
		get { return "Conformance" }
	}
	
	/// no | extensions | elements | both.
	public var acceptUnknown: String?
	
	/// Contact details of the publisher.
	public var contact: [ConformanceContact]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Publication Date(/time).
	public var date: DateTime?
	
	/// Human description of the conformance statement.
	public var description_fhir: String?
	
	/// Document definition.
	public var document: [ConformanceDocument]?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// FHIR Version the system uses.
	public var fhirVersion: String?
	
	/// formats supported (xml | json | ttl | mime type).
	public var format: [String]?
	
	/// If this describes a specific instance.
	public var implementation: ConformanceImplementation?
	
	/// Canonical URL of service implemented/used by software.
	public var instantiates: [NSURL]?
	
	/// instance | capability | requirements.
	public var kind: String?
	
	/// If messaging is supported.
	public var messaging: [ConformanceMessaging]?
	
	/// Informal name for this conformance statement.
	public var name: String?
	
	/// Profiles for use cases supported.
	public var profile: [Reference]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this resource has been created.
	public var requirements: String?
	
	/// If the endpoint is a RESTful one.
	public var rest: [ConformanceRest]?
	
	/// Software that is covered by this conformance statement.
	public var software: ConformanceSoftware?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Logical uri to reference this statement.
	public var url: NSURL?
	
	/// Content intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the statement.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(acceptUnknown: String, date: DateTime, fhirVersion: String, format: [String], kind: String, status: String) {
		self.init(json: nil)
		self.acceptUnknown = acceptUnknown
		self.date = date
		self.fhirVersion = fhirVersion
		self.format = format
		self.kind = kind
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["acceptUnknown"] {
				presentKeys.insert("acceptUnknown")
				if let val = exist as? String {
					self.acceptUnknown = val
				}
				else {
					errors.append(FHIRJSONError(key: "acceptUnknown", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "acceptUnknown"))
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ConformanceContact.from(val, owner: self) as? [ConformanceContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "date"))
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["document"] {
				presentKeys.insert("document")
				if let val = exist as? [FHIRJSON] {
					self.document = ConformanceDocument.from(val, owner: self) as? [ConformanceDocument]
				}
				else {
					errors.append(FHIRJSONError(key: "document", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fhirVersion"] {
				presentKeys.insert("fhirVersion")
				if let val = exist as? String {
					self.fhirVersion = val
				}
				else {
					errors.append(FHIRJSONError(key: "fhirVersion", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "fhirVersion"))
			}
			if let exist: AnyObject = js["format"] {
				presentKeys.insert("format")
				if let val = exist as? [String] {
					self.format = val
				}
				else {
					errors.append(FHIRJSONError(key: "format", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "format"))
			}
			if let exist: AnyObject = js["implementation"] {
				presentKeys.insert("implementation")
				if let val = exist as? FHIRJSON {
					self.implementation = ConformanceImplementation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "implementation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["instantiates"] {
				presentKeys.insert("instantiates")
				if let val = exist as? [String] {
					self.instantiates = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "instantiates", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["kind"] {
				presentKeys.insert("kind")
				if let val = exist as? String {
					self.kind = val
				}
				else {
					errors.append(FHIRJSONError(key: "kind", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "kind"))
			}
			if let exist: AnyObject = js["messaging"] {
				presentKeys.insert("messaging")
				if let val = exist as? [FHIRJSON] {
					self.messaging = ConformanceMessaging.from(val, owner: self) as? [ConformanceMessaging]
				}
				else {
					errors.append(FHIRJSONError(key: "messaging", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? [FHIRJSON] {
					self.profile = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.insert("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(FHIRJSONError(key: "requirements", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rest"] {
				presentKeys.insert("rest")
				if let val = exist as? [FHIRJSON] {
					self.rest = ConformanceRest.from(val, owner: self) as? [ConformanceRest]
				}
				else {
					errors.append(FHIRJSONError(key: "rest", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["software"] {
				presentKeys.insert("software")
				if let val = exist as? FHIRJSON {
					self.software = ConformanceSoftware(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "software", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let acceptUnknown = self.acceptUnknown {
			json["acceptUnknown"] = acceptUnknown.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = ConformanceContact.asJSONArray(contact)
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let document = self.document {
			json["document"] = ConformanceDocument.asJSONArray(document)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fhirVersion = self.fhirVersion {
			json["fhirVersion"] = fhirVersion.asJSON()
		}
		if let format = self.format {
			var arr = [AnyObject]()
			for val in format {
				arr.append(val.asJSON())
			}
			json["format"] = arr
		}
		if let implementation = self.implementation {
			json["implementation"] = implementation.asJSON()
		}
		if let instantiates = self.instantiates {
			var arr = [AnyObject]()
			for val in instantiates {
				arr.append(val.asJSON())
			}
			json["instantiates"] = arr
		}
		if let kind = self.kind {
			json["kind"] = kind.asJSON()
		}
		if let messaging = self.messaging {
			json["messaging"] = ConformanceMessaging.asJSONArray(messaging)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = Reference.asJSONArray(profile)
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let rest = self.rest {
			json["rest"] = ConformanceRest.asJSONArray(rest)
		}
		if let software = self.software {
			json["software"] = software.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = CodeableConcept.asJSONArray(useContext)
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class ConformanceContact: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceContact" }
	}
	
	/// Name of an individual to contact.
	public var name: String?
	
	/// Contact details for individual or publisher.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  Document definition.
 *
 *  A document definition.
 */
public class ConformanceDocument: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceDocument" }
	}
	
	/// Description of document support.
	public var documentation: String?
	
	/// producer | consumer.
	public var mode: String?
	
	/// Constraint on a resource used in the document.
	public var profile: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: String, profile: Reference) {
		self.init(json: nil)
		self.mode = mode
		self.profile = profile
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "mode"))
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "profile"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		
		return json
	}
}


/**
 *  If this describes a specific instance.
 *
 *  Identifies a specific implementation instance that is described by the conformance statement - i.e. a particular
 *  installation, rather than the capabilities of a software program.
 */
public class ConformanceImplementation: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceImplementation" }
	}
	
	/// Describes this specific instance.
	public var description_fhir: String?
	
	/// Base URL for the installation.
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: String) {
		self.init(json: nil)
		self.description_fhir = description_fhir
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "description"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
 *  If messaging is supported.
 *
 *  A description of the messaging capabilities of the solution.
 */
public class ConformanceMessaging: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceMessaging" }
	}
	
	/// Messaging interface behavior details.
	public var documentation: String?
	
	/// Where messages should be sent.
	public var endpoint: [ConformanceMessagingEndpoint]?
	
	/// Declare support for this event.
	public var event: [ConformanceMessagingEvent]?
	
	/// Reliable Message Cache Length (min).
	public var reliableCache: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(event: [ConformanceMessagingEvent]) {
		self.init(json: nil)
		self.event = event
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["endpoint"] {
				presentKeys.insert("endpoint")
				if let val = exist as? [FHIRJSON] {
					self.endpoint = ConformanceMessagingEndpoint.from(val, owner: self) as? [ConformanceMessagingEndpoint]
				}
				else {
					errors.append(FHIRJSONError(key: "endpoint", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["event"] {
				presentKeys.insert("event")
				if let val = exist as? [FHIRJSON] {
					self.event = ConformanceMessagingEvent.from(val, owner: self) as? [ConformanceMessagingEvent]
				}
				else {
					errors.append(FHIRJSONError(key: "event", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "event"))
			}
			if let exist: AnyObject = js["reliableCache"] {
				presentKeys.insert("reliableCache")
				if let val = exist as? UInt {
					self.reliableCache = val
				}
				else {
					errors.append(FHIRJSONError(key: "reliableCache", wants: UInt.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = ConformanceMessagingEndpoint.asJSONArray(endpoint)
		}
		if let event = self.event {
			json["event"] = ConformanceMessagingEvent.asJSONArray(event)
		}
		if let reliableCache = self.reliableCache {
			json["reliableCache"] = reliableCache.asJSON()
		}
		
		return json
	}
}


/**
 *  Where messages should be sent.
 *
 *  An endpoint (network accessible address) to which messages and/or replies are to be sent.
 */
public class ConformanceMessagingEndpoint: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceMessagingEndpoint" }
	}
	
	/// Address of end-point.
	public var address: NSURL?
	
	/// http | ftp | mllp +.
	public var protocol_fhir: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(address: NSURL, protocol_fhir: Coding) {
		self.init(json: nil)
		self.address = address
		self.protocol_fhir = protocol_fhir
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? String {
					self.address = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "address"))
			}
			if let exist: AnyObject = js["protocol"] {
				presentKeys.insert("protocol")
				if let val = exist as? FHIRJSON {
					self.protocol_fhir = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "protocol", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "protocol"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let protocol_fhir = self.protocol_fhir {
			json["protocol"] = protocol_fhir.asJSON()
		}
		
		return json
	}
}


/**
 *  Declare support for this event.
 *
 *  A description of the solution's support for an event at this end-point.
 */
public class ConformanceMessagingEvent: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceMessagingEvent" }
	}
	
	/// Consequence | Currency | Notification.
	public var category: String?
	
	/// Event type.
	public var code: Coding?
	
	/// Endpoint-specific event documentation.
	public var documentation: String?
	
	/// Resource that's focus of message.
	public var focus: String?
	
	/// sender | receiver.
	public var mode: String?
	
	/// Profile that describes the request.
	public var request: Reference?
	
	/// Profile that describes the response.
	public var response: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: Coding, focus: String, mode: String, request: Reference, response: Reference) {
		self.init(json: nil)
		self.code = code
		self.focus = focus
		self.mode = mode
		self.request = request
		self.response = response
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["focus"] {
				presentKeys.insert("focus")
				if let val = exist as? String {
					self.focus = val
				}
				else {
					errors.append(FHIRJSONError(key: "focus", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "focus"))
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "mode"))
			}
			if let exist: AnyObject = js["request"] {
				presentKeys.insert("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "request", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "request"))
			}
			if let exist: AnyObject = js["response"] {
				presentKeys.insert("response")
				if let val = exist as? FHIRJSON {
					self.response = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "response", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "response"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let focus = self.focus {
			json["focus"] = focus.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let response = self.response {
			json["response"] = response.asJSON()
		}
		
		return json
	}
}


/**
 *  If the endpoint is a RESTful one.
 *
 *  A definition of the restful capabilities of the solution, if any.
 */
public class ConformanceRest: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceRest" }
	}
	
	/// Compartments served/used by system.
	public var compartment: [NSURL]?
	
	/// General description of implementation.
	public var documentation: String?
	
	/// What operations are supported?.
	public var interaction: [ConformanceRestInteraction]?
	
	/// client | server.
	public var mode: String?
	
	/// Definition of an operation or a custom query.
	public var operation: [ConformanceRestOperation]?
	
	/// Resource served on the REST interface.
	public var resource: [ConformanceRestResource]?
	
	/// Search params for searching all resources.
	public var searchParam: [ConformanceRestResourceSearchParam]?
	
	/// Information about security of implementation.
	public var security: ConformanceRestSecurity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: String) {
		self.init(json: nil)
		self.mode = mode
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["compartment"] {
				presentKeys.insert("compartment")
				if let val = exist as? [String] {
					self.compartment = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "compartment", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["interaction"] {
				presentKeys.insert("interaction")
				if let val = exist as? [FHIRJSON] {
					self.interaction = ConformanceRestInteraction.from(val, owner: self) as? [ConformanceRestInteraction]
				}
				else {
					errors.append(FHIRJSONError(key: "interaction", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "mode"))
			}
			if let exist: AnyObject = js["operation"] {
				presentKeys.insert("operation")
				if let val = exist as? [FHIRJSON] {
					self.operation = ConformanceRestOperation.from(val, owner: self) as? [ConformanceRestOperation]
				}
				else {
					errors.append(FHIRJSONError(key: "operation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? [FHIRJSON] {
					self.resource = ConformanceRestResource.from(val, owner: self) as? [ConformanceRestResource]
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["searchParam"] {
				presentKeys.insert("searchParam")
				if let val = exist as? [FHIRJSON] {
					self.searchParam = ConformanceRestResourceSearchParam.from(val, owner: self) as? [ConformanceRestResourceSearchParam]
				}
				else {
					errors.append(FHIRJSONError(key: "searchParam", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["security"] {
				presentKeys.insert("security")
				if let val = exist as? FHIRJSON {
					self.security = ConformanceRestSecurity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "security", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let compartment = self.compartment {
			var arr = [AnyObject]()
			for val in compartment {
				arr.append(val.asJSON())
			}
			json["compartment"] = arr
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let interaction = self.interaction {
			json["interaction"] = ConformanceRestInteraction.asJSONArray(interaction)
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let operation = self.operation {
			json["operation"] = ConformanceRestOperation.asJSONArray(operation)
		}
		if let resource = self.resource {
			json["resource"] = ConformanceRestResource.asJSONArray(resource)
		}
		if let searchParam = self.searchParam {
			json["searchParam"] = ConformanceRestResourceSearchParam.asJSONArray(searchParam)
		}
		if let security = self.security {
			json["security"] = security.asJSON()
		}
		
		return json
	}
}


/**
 *  What operations are supported?.
 *
 *  A specification of restful operations supported by the system.
 */
public class ConformanceRestInteraction: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceRestInteraction" }
	}
	
	/// transaction | batch | search-system | history-system.
	public var code: String?
	
	/// Anything special about operation behavior.
	public var documentation: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		
		return json
	}
}


/**
 *  Definition of an operation or a custom query.
 *
 *  Definition of an operation or a named query and with its parameters and their meaning and type.
 */
public class ConformanceRestOperation: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceRestOperation" }
	}
	
	/// The defined operation/query.
	public var definition: Reference?
	
	/// Name by which the operation/query is invoked.
	public var name: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(definition: Reference, name: String) {
		self.init(json: nil)
		self.definition = definition
		self.name = name
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? FHIRJSON {
					self.definition = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "definition"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		
		return json
	}
}


/**
 *  Resource served on the REST interface.
 *
 *  A specification of the restful capabilities of the solution for a specific resource type.
 */
public class ConformanceRestResource: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceRestResource" }
	}
	
	/// If allows/uses conditional create.
	public var conditionalCreate: Bool?
	
	/// not-supported | single | multiple - how conditional delete is supported.
	public var conditionalDelete: String?
	
	/// not-supported | modified-since | not-match | full-support.
	public var conditionalRead: String?
	
	/// If allows/uses conditional update.
	public var conditionalUpdate: Bool?
	
	/// Additional information about the use of the resource type.
	public var documentation: String?
	
	/// What operations are supported?.
	public var interaction: [ConformanceRestResourceInteraction]?
	
	/// Base System profile for all uses of resource.
	public var profile: Reference?
	
	/// Whether vRead can return past versions.
	public var readHistory: Bool?
	
	/// _include values supported by the server.
	public var searchInclude: [String]?
	
	/// Search params supported by implementation.
	public var searchParam: [ConformanceRestResourceSearchParam]?
	
	/// _revinclude values supported by the server.
	public var searchRevInclude: [String]?
	
	/// A resource type that is supported.
	public var type: String?
	
	/// If update can commit to a new identity.
	public var updateCreate: Bool?
	
	/// no-version | versioned | versioned-update.
	public var versioning: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(interaction: [ConformanceRestResourceInteraction], type: String) {
		self.init(json: nil)
		self.interaction = interaction
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["conditionalCreate"] {
				presentKeys.insert("conditionalCreate")
				if let val = exist as? Bool {
					self.conditionalCreate = val
				}
				else {
					errors.append(FHIRJSONError(key: "conditionalCreate", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["conditionalDelete"] {
				presentKeys.insert("conditionalDelete")
				if let val = exist as? String {
					self.conditionalDelete = val
				}
				else {
					errors.append(FHIRJSONError(key: "conditionalDelete", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["conditionalRead"] {
				presentKeys.insert("conditionalRead")
				if let val = exist as? String {
					self.conditionalRead = val
				}
				else {
					errors.append(FHIRJSONError(key: "conditionalRead", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["conditionalUpdate"] {
				presentKeys.insert("conditionalUpdate")
				if let val = exist as? Bool {
					self.conditionalUpdate = val
				}
				else {
					errors.append(FHIRJSONError(key: "conditionalUpdate", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["interaction"] {
				presentKeys.insert("interaction")
				if let val = exist as? [FHIRJSON] {
					self.interaction = ConformanceRestResourceInteraction.from(val, owner: self) as? [ConformanceRestResourceInteraction]
				}
				else {
					errors.append(FHIRJSONError(key: "interaction", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "interaction"))
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["readHistory"] {
				presentKeys.insert("readHistory")
				if let val = exist as? Bool {
					self.readHistory = val
				}
				else {
					errors.append(FHIRJSONError(key: "readHistory", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["searchInclude"] {
				presentKeys.insert("searchInclude")
				if let val = exist as? [String] {
					self.searchInclude = val
				}
				else {
					errors.append(FHIRJSONError(key: "searchInclude", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["searchParam"] {
				presentKeys.insert("searchParam")
				if let val = exist as? [FHIRJSON] {
					self.searchParam = ConformanceRestResourceSearchParam.from(val, owner: self) as? [ConformanceRestResourceSearchParam]
				}
				else {
					errors.append(FHIRJSONError(key: "searchParam", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["searchRevInclude"] {
				presentKeys.insert("searchRevInclude")
				if let val = exist as? [String] {
					self.searchRevInclude = val
				}
				else {
					errors.append(FHIRJSONError(key: "searchRevInclude", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["updateCreate"] {
				presentKeys.insert("updateCreate")
				if let val = exist as? Bool {
					self.updateCreate = val
				}
				else {
					errors.append(FHIRJSONError(key: "updateCreate", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["versioning"] {
				presentKeys.insert("versioning")
				if let val = exist as? String {
					self.versioning = val
				}
				else {
					errors.append(FHIRJSONError(key: "versioning", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let conditionalCreate = self.conditionalCreate {
			json["conditionalCreate"] = conditionalCreate.asJSON()
		}
		if let conditionalDelete = self.conditionalDelete {
			json["conditionalDelete"] = conditionalDelete.asJSON()
		}
		if let conditionalRead = self.conditionalRead {
			json["conditionalRead"] = conditionalRead.asJSON()
		}
		if let conditionalUpdate = self.conditionalUpdate {
			json["conditionalUpdate"] = conditionalUpdate.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let interaction = self.interaction {
			json["interaction"] = ConformanceRestResourceInteraction.asJSONArray(interaction)
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let readHistory = self.readHistory {
			json["readHistory"] = readHistory.asJSON()
		}
		if let searchInclude = self.searchInclude {
			var arr = [AnyObject]()
			for val in searchInclude {
				arr.append(val.asJSON())
			}
			json["searchInclude"] = arr
		}
		if let searchParam = self.searchParam {
			json["searchParam"] = ConformanceRestResourceSearchParam.asJSONArray(searchParam)
		}
		if let searchRevInclude = self.searchRevInclude {
			var arr = [AnyObject]()
			for val in searchRevInclude {
				arr.append(val.asJSON())
			}
			json["searchRevInclude"] = arr
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let updateCreate = self.updateCreate {
			json["updateCreate"] = updateCreate.asJSON()
		}
		if let versioning = self.versioning {
			json["versioning"] = versioning.asJSON()
		}
		
		return json
	}
}


/**
 *  What operations are supported?.
 *
 *  Identifies a restful operation supported by the solution.
 */
public class ConformanceRestResourceInteraction: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceRestResourceInteraction" }
	}
	
	/// read | vread | update | delete | history-instance | history-type | create | search-type.
	public var code: String?
	
	/// Anything special about operation behavior.
	public var documentation: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		
		return json
	}
}


/**
 *  Search params supported by implementation.
 *
 *  Search parameters for implementations to support and/or make use of - either references to ones defined in the
 *  specification, or additional ones defined for/by the implementation.
 */
public class ConformanceRestResourceSearchParam: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceRestResourceSearchParam" }
	}
	
	/// Chained names supported.
	public var chain: [String]?
	
	/// Source of definition for parameter.
	public var definition: NSURL?
	
	/// Server-specific usage.
	public var documentation: String?
	
	/// missing | exact | contains | not | text | in | not-in | below | above | type.
	public var modifier: [String]?
	
	/// Name of search parameter.
	public var name: String?
	
	/// Types of resource (if a resource reference).
	public var target: [String]?
	
	/// number | date | string | token | reference | composite | quantity | uri.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, type: String) {
		self.init(json: nil)
		self.name = name
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["chain"] {
				presentKeys.insert("chain")
				if let val = exist as? [String] {
					self.chain = val
				}
				else {
					errors.append(FHIRJSONError(key: "chain", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? String {
					self.definition = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? [String] {
					self.modifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? [String] {
					self.target = val
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let chain = self.chain {
			var arr = [AnyObject]()
			for val in chain {
				arr.append(val.asJSON())
			}
			json["chain"] = arr
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let modifier = self.modifier {
			var arr = [AnyObject]()
			for val in modifier {
				arr.append(val.asJSON())
			}
			json["modifier"] = arr
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let target = self.target {
			var arr = [AnyObject]()
			for val in target {
				arr.append(val.asJSON())
			}
			json["target"] = arr
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Information about security of implementation.
 *
 *  Information about security implementation from an interface perspective - what a client needs to know.
 */
public class ConformanceRestSecurity: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceRestSecurity" }
	}
	
	/// Certificates associated with security profiles.
	public var certificate: [ConformanceRestSecurityCertificate]?
	
	/// Adds CORS Headers (http://enable-cors.org/).
	public var cors: Bool?
	
	/// General description of how security works.
	public var description_fhir: String?
	
	/// OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates.
	public var service: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["certificate"] {
				presentKeys.insert("certificate")
				if let val = exist as? [FHIRJSON] {
					self.certificate = ConformanceRestSecurityCertificate.from(val, owner: self) as? [ConformanceRestSecurityCertificate]
				}
				else {
					errors.append(FHIRJSONError(key: "certificate", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["cors"] {
				presentKeys.insert("cors")
				if let val = exist as? Bool {
					self.cors = val
				}
				else {
					errors.append(FHIRJSONError(key: "cors", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? [FHIRJSON] {
					self.service = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let certificate = self.certificate {
			json["certificate"] = ConformanceRestSecurityCertificate.asJSONArray(certificate)
		}
		if let cors = self.cors {
			json["cors"] = cors.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let service = self.service {
			json["service"] = CodeableConcept.asJSONArray(service)
		}
		
		return json
	}
}


/**
 *  Certificates associated with security profiles.
 */
public class ConformanceRestSecurityCertificate: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceRestSecurityCertificate" }
	}
	
	/// Actual certificate.
	public var blob: Base64Binary?
	
	/// Mime type for certificate.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["blob"] {
				presentKeys.insert("blob")
				if let val = exist as? String {
					self.blob = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "blob", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
 *  Software that is covered by this conformance statement.
 *
 *  Software that is covered by this conformance statement.  It is used when the conformance statement describes the
 *  capabilities of a particular software version, independent of an installation.
 */
public class ConformanceSoftware: BackboneElement {
	override public class var resourceName: String {
		get { return "ConformanceSoftware" }
	}
	
	/// A name the software is known by.
	public var name: String?
	
	/// Date this version released.
	public var releaseDate: DateTime?
	
	/// Version covered by this statement.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init(json: nil)
		self.name = name
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["releaseDate"] {
				presentKeys.insert("releaseDate")
				if let val = exist as? String {
					self.releaseDate = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "releaseDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
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

