//
//  MessageHeader.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/MessageHeader) on 2016-12-06.
//  2016, SMART Health IT.
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
	
	/// The actual content of the message.
	public var data: [Reference]?
	
	/// Message Destination Application(s).
	public var destination: [MessageHeaderDestination]?
	
	/// The source of the data entry.
	public var enterer: Reference?
	
	/// Code for the event this message represents.
	public var event: Coding?
	
	/// Cause of event.
	public var reason: CodeableConcept?
	
	/// Intended "real-world" recipient for the data.
	public var receiver: Reference?
	
	/// If this is a reply to prior message.
	public var response: MessageHeaderResponse?
	
	/// Final responsibility for event.
	public var responsible: Reference?
	
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
		if let exist = json["author"] {
			presentKeys.insert("author")
			if let val = exist as? FHIRJSON {
				do {
					self.author = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "author"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "author", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["data"] {
			presentKeys.insert("data")
			if let val = exist as? [FHIRJSON] {
				do {
					self.data = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "data"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "data", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["destination"] {
			presentKeys.insert("destination")
			if let val = exist as? [FHIRJSON] {
				do {
					self.destination = try MessageHeaderDestination.instantiate(fromArray: val, owner: self) as? [MessageHeaderDestination]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "destination"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "destination", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["enterer"] {
			presentKeys.insert("enterer")
			if let val = exist as? FHIRJSON {
				do {
					self.enterer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "enterer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "enterer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["event"] {
			presentKeys.insert("event")
			if let val = exist as? FHIRJSON {
				do {
					self.event = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "event"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "event", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "event"))
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? FHIRJSON {
				do {
					self.reason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["receiver"] {
			presentKeys.insert("receiver")
			if let val = exist as? FHIRJSON {
				do {
					self.receiver = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "receiver"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "receiver", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["response"] {
			presentKeys.insert("response")
			if let val = exist as? FHIRJSON {
				do {
					self.response = try MessageHeaderResponse(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "response"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "response", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["responsible"] {
			presentKeys.insert("responsible")
			if let val = exist as? FHIRJSON {
				do {
					self.responsible = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "responsible"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "responsible", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["source"] {
			presentKeys.insert("source")
			if let val = exist as? FHIRJSON {
				do {
					self.source = try MessageHeaderSource(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "source"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "source", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "source"))
		}
		if let exist = json["timestamp"] {
			presentKeys.insert("timestamp")
			if let val = exist as? String {
				self.timestamp = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "timestamp", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "timestamp"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let author = self.author {
			json["author"] = author.asJSON(errors: &errors)
		}
		if let data = self.data {
			json["data"] = data.map() { $0.asJSON(errors: &errors) }
		}
		if let destination = self.destination {
			json["destination"] = destination.map() { $0.asJSON(errors: &errors) }
		}
		if let enterer = self.enterer {
			json["enterer"] = enterer.asJSON(errors: &errors)
		}
		if let event = self.event {
			json["event"] = event.asJSON(errors: &errors)
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON(errors: &errors)
		}
		if let receiver = self.receiver {
			json["receiver"] = receiver.asJSON(errors: &errors)
		}
		if let response = self.response {
			json["response"] = response.asJSON(errors: &errors)
		}
		if let responsible = self.responsible {
			json["responsible"] = responsible.asJSON(errors: &errors)
		}
		if let source = self.source {
			json["source"] = source.asJSON(errors: &errors)
		}
		if let timestamp = self.timestamp {
			json["timestamp"] = timestamp.asJSON()
		}
		
		return json
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
	public var endpoint: URL?
	
	/// Name of system.
	public var name: String?
	
	/// Particular delivery destination within the destination.
	public var target: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(endpoint: URL) {
		self.init()
		self.endpoint = endpoint
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["endpoint"] {
			presentKeys.insert("endpoint")
			if let val = exist as? String {
				self.endpoint = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "endpoint", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "endpoint"))
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? FHIRJSON {
				do {
					self.target = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "target"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON(errors: &errors)
		}
		
		return json
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
	public var identifier: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: ResponseType, identifier: String) {
		self.init()
		self.code = code
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				if let enumval = ResponseType(rawValue: val) {
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
		if let exist = json["details"] {
			presentKeys.insert("details")
			if let val = exist as? FHIRJSON {
				do {
					self.details = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "details"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "details", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? String {
				self.identifier = val
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.rawValue
		}
		if let details = self.details {
			json["details"] = details.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		
		return json
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
	public var endpoint: URL?
	
	/// Name of system.
	public var name: String?
	
	/// Name of software running the system.
	public var software: String?
	
	/// Version of software running.
	public var version: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(endpoint: URL) {
		self.init()
		self.endpoint = endpoint
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? FHIRJSON {
				do {
					self.contact = try ContactPoint(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["endpoint"] {
			presentKeys.insert("endpoint")
			if let val = exist as? String {
				self.endpoint = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "endpoint", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "endpoint"))
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["software"] {
			presentKeys.insert("software")
			if let val = exist as? String {
				self.software = val
			}
			else {
				errors.append(FHIRValidationError(key: "software", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = val
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contact = self.contact {
			json["contact"] = contact.asJSON(errors: &errors)
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let software = self.software {
			json["software"] = software.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

