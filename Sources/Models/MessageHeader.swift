//
//  MessageHeader.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/MessageHeader) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A resource that describes a message that is exchanged between systems.
 *
 *  The header for a message exchange that is either requesting or responding to an action.  The reference(s) that are
 *  the subject of the action as well as other information related to the action are typically transmitted in a bundle
 *  in which the MessageHeader resource instance is the first resource in the bundle.
 */
public class MessageHeader: DomainResource {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(event: Coding, source: MessageHeaderSource, timestamp: Instant) {
		self.init(json: nil)
		self.event = event
		self.source = source
		self.timestamp = timestamp
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["data"] {
				presentKeys.insert("data")
				if let val = exist as? [FHIRJSON] {
					self.data = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "data", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? [FHIRJSON] {
					self.destination = MessageHeaderDestination.from(val, owner: self) as? [MessageHeaderDestination]
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["enterer"] {
				presentKeys.insert("enterer")
				if let val = exist as? FHIRJSON {
					self.enterer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "enterer", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["event"] {
				presentKeys.insert("event")
				if let val = exist as? FHIRJSON {
					self.event = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "event", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "event"))
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["receiver"] {
				presentKeys.insert("receiver")
				if let val = exist as? FHIRJSON {
					self.receiver = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "receiver", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["response"] {
				presentKeys.insert("response")
				if let val = exist as? FHIRJSON {
					self.response = MessageHeaderResponse(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "response", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["responsible"] {
				presentKeys.insert("responsible")
				if let val = exist as? FHIRJSON {
					self.responsible = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "responsible", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? FHIRJSON {
					self.source = MessageHeaderSource(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "source"))
			}
			if let exist: AnyObject = js["timestamp"] {
				presentKeys.insert("timestamp")
				if let val = exist as? String {
					self.timestamp = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "timestamp", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "timestamp"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let data = self.data {
			json["data"] = Reference.asJSONArray(data)
		}
		if let destination = self.destination {
			json["destination"] = MessageHeaderDestination.asJSONArray(destination)
		}
		if let enterer = self.enterer {
			json["enterer"] = enterer.asJSON()
		}
		if let event = self.event {
			json["event"] = event.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let receiver = self.receiver {
			json["receiver"] = receiver.asJSON()
		}
		if let response = self.response {
			json["response"] = response.asJSON()
		}
		if let responsible = self.responsible {
			json["responsible"] = responsible.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let timestamp = self.timestamp {
			json["timestamp"] = timestamp.asJSON()
		}
		
		return json
	}
}


/**
 *  Message Destination Application(s).
 *
 *  The destination application which the message is intended for.
 */
public class MessageHeaderDestination: BackboneElement {
	override public class var resourceName: String {
		get { return "MessageHeaderDestination" }
	}
	
	/// Actual destination address or id.
	public var endpoint: NSURL?
	
	/// Name of system.
	public var name: String?
	
	/// Particular delivery destination within the destination.
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(endpoint: NSURL) {
		self.init(json: nil)
		self.endpoint = endpoint
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["endpoint"] {
				presentKeys.insert("endpoint")
				if let val = exist as? String {
					self.endpoint = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "endpoint", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "endpoint"))
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
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}


/**
 *  If this is a reply to prior message.
 *
 *  Information about the message that this message is a response to.  Only present if this message is a response.
 */
public class MessageHeaderResponse: BackboneElement {
	override public class var resourceName: String {
		get { return "MessageHeaderResponse" }
	}
	
	/// ok | transient-error | fatal-error.
	public var code: String?
	
	/// Specific list of hints/warnings/errors.
	public var details: Reference?
	
	/// Id of original message.
	public var identifier: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, identifier: String) {
		self.init(json: nil)
		self.code = code
		self.identifier = identifier
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
			if let exist: AnyObject = js["details"] {
				presentKeys.insert("details")
				if let val = exist as? FHIRJSON {
					self.details = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "details", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let details = self.details {
			json["details"] = details.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		
		return json
	}
}


/**
 *  Message Source Application.
 *
 *  The source application from which this message originated.
 */
public class MessageHeaderSource: BackboneElement {
	override public class var resourceName: String {
		get { return "MessageHeaderSource" }
	}
	
	/// Human contact for problems.
	public var contact: ContactPoint?
	
	/// Actual message source address or id.
	public var endpoint: NSURL?
	
	/// Name of system.
	public var name: String?
	
	/// Name of software running the system.
	public var software: String?
	
	/// Version of software running.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(endpoint: NSURL) {
		self.init(json: nil)
		self.endpoint = endpoint
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? FHIRJSON {
					self.contact = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["endpoint"] {
				presentKeys.insert("endpoint")
				if let val = exist as? String {
					self.endpoint = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "endpoint", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "endpoint"))
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
			if let exist: AnyObject = js["software"] {
				presentKeys.insert("software")
				if let val = exist as? String {
					self.software = val
				}
				else {
					errors.append(FHIRJSONError(key: "software", wants: String.self, has: exist.dynamicType))
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
		
		if let contact = self.contact {
			json["contact"] = contact.asJSON()
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

