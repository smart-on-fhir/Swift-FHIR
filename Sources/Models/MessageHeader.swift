//
//  MessageHeader.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/MessageHeader) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
A resource that describes a message that is exchanged between systems.

The header for a message exchange that is either requesting or responding to an action.  The reference(s) that are the
subject of the action as well as other information related to the action are typically transmitted in a bundle in which
the MessageHeader resource instance is the first resource in the bundle.
*/
open class MessageHeader: DomainResource {
	override open class var resourceType: String {
		get { return "MessageHeader" }
	}
	
	/// The source of the decision.
	public var author: Reference?
	
	/// Message Destination Application(s).
	public var destination: [MessageHeaderDestination]?
	
	/// The source of the data entry.
	public var enterer: Reference?
	
	/// Code for the event this message represents.
	public var event: Coding?
	
	/// The actual content of the message.
	public var focus: [Reference]?
	
	/// Cause of event.
	public var reason: CodeableConcept?
	
	/// Intended "real-world" recipient for the data.
	public var receiver: Reference?
	
	/// If this is a reply to prior message.
	public var response: MessageHeaderResponse?
	
	/// Final responsibility for event.
	public var responsible: Reference?
	
	/// Real world sender of the message.
	public var sender: Reference?
	
	/// Message Source Application.
	public var source: MessageHeaderSource?
	
	/// Time that the message was sent.
	public var timestamp: Instant?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(event: Coding, source: MessageHeaderSource, timestamp: Instant) {
		self.init()
		self.event = event
		self.source = source
		self.timestamp = timestamp
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		author = try createInstance(type: Reference.self, for: "author", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? author
		destination = try createInstances(of: MessageHeaderDestination.self, for: "destination", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? destination
		enterer = try createInstance(type: Reference.self, for: "enterer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? enterer
		event = try createInstance(type: Coding.self, for: "event", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? event
		if nil == event && !presentKeys.contains("event") {
			errors.append(FHIRValidationError(missing: "event"))
		}
		focus = try createInstances(of: Reference.self, for: "focus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? focus
		reason = try createInstance(type: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		receiver = try createInstance(type: Reference.self, for: "receiver", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? receiver
		response = try createInstance(type: MessageHeaderResponse.self, for: "response", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? response
		responsible = try createInstance(type: Reference.self, for: "responsible", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? responsible
		sender = try createInstance(type: Reference.self, for: "sender", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sender
		source = try createInstance(type: MessageHeaderSource.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		if nil == source && !presentKeys.contains("source") {
			errors.append(FHIRValidationError(missing: "source"))
		}
		timestamp = try createInstance(type: Instant.self, for: "timestamp", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timestamp
		if nil == timestamp && !presentKeys.contains("timestamp") {
			errors.append(FHIRValidationError(missing: "timestamp"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		arrayDecorate(json: &json, withKey: "destination", using: self.destination, errors: &errors)
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.event?.decorate(json: &json, withKey: "event", errors: &errors)
		if nil == self.event {
			errors.append(FHIRValidationError(missing: "event"))
		}
		arrayDecorate(json: &json, withKey: "focus", using: self.focus, errors: &errors)
		self.reason?.decorate(json: &json, withKey: "reason", errors: &errors)
		self.receiver?.decorate(json: &json, withKey: "receiver", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.responsible?.decorate(json: &json, withKey: "responsible", errors: &errors)
		self.sender?.decorate(json: &json, withKey: "sender", errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		if nil == self.source {
			errors.append(FHIRValidationError(missing: "source"))
		}
		self.timestamp?.decorate(json: &json, withKey: "timestamp", errors: &errors)
		if nil == self.timestamp {
			errors.append(FHIRValidationError(missing: "timestamp"))
		}
	}
}


/**
Message Destination Application(s).

The destination application which the message is intended for.
*/
open class MessageHeaderDestination: BackboneElement {
	override open class var resourceType: String {
		get { return "MessageHeaderDestination" }
	}
	
	/// Actual destination address or id.
	public var endpoint: FHIRURL?
	
	/// Name of system.
	public var name: FHIRString?
	
	/// Particular delivery destination within the destination.
	public var target: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(endpoint: FHIRURL) {
		self.init()
		self.endpoint = endpoint
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		endpoint = try createInstance(type: FHIRURL.self, for: "endpoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? endpoint
		if nil == endpoint && !presentKeys.contains("endpoint") {
			errors.append(FHIRValidationError(missing: "endpoint"))
		}
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		target = try createInstance(type: Reference.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.endpoint?.decorate(json: &json, withKey: "endpoint", errors: &errors)
		if nil == self.endpoint {
			errors.append(FHIRValidationError(missing: "endpoint"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.target?.decorate(json: &json, withKey: "target", errors: &errors)
	}
}


/**
If this is a reply to prior message.

Information about the message that this message is a response to.  Only present if this message is a response.
*/
open class MessageHeaderResponse: BackboneElement {
	override open class var resourceType: String {
		get { return "MessageHeaderResponse" }
	}
	
	/// Code that identifies the type of response to the message - whether it was successful or not, and whether it
	/// should be resent or not.
	public var code: ResponseType?
	
	/// Specific list of hints/warnings/errors.
	public var details: Reference?
	
	/// Id of original message.
	public var identifier: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: ResponseType, identifier: FHIRString) {
		self.init()
		self.code = code
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = createEnum(type: ResponseType.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		details = try createInstance(type: Reference.self, for: "details", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? details
		identifier = try createInstance(type: FHIRString.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.details?.decorate(json: &json, withKey: "details", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
	}
}


/**
Message Source Application.

The source application from which this message originated.
*/
open class MessageHeaderSource: BackboneElement {
	override open class var resourceType: String {
		get { return "MessageHeaderSource" }
	}
	
	/// Human contact for problems.
	public var contact: ContactPoint?
	
	/// Actual message source address or id.
	public var endpoint: FHIRURL?
	
	/// Name of system.
	public var name: FHIRString?
	
	/// Name of software running the system.
	public var software: FHIRString?
	
	/// Version of software running.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(endpoint: FHIRURL) {
		self.init()
		self.endpoint = endpoint
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		contact = try createInstance(type: ContactPoint.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		endpoint = try createInstance(type: FHIRURL.self, for: "endpoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? endpoint
		if nil == endpoint && !presentKeys.contains("endpoint") {
			errors.append(FHIRValidationError(missing: "endpoint"))
		}
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		software = try createInstance(type: FHIRString.self, for: "software", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? software
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.contact?.decorate(json: &json, withKey: "contact", errors: &errors)
		self.endpoint?.decorate(json: &json, withKey: "endpoint", errors: &errors)
		if nil == self.endpoint {
			errors.append(FHIRValidationError(missing: "endpoint"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.software?.decorate(json: &json, withKey: "software", errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}

