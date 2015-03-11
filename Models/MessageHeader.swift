//
//  MessageHeader.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/MessageHeader) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A resource that describes a message that is exchanged between systems.
 *
 *  The header for a message exchange that is either requesting or responding to an action.  The Reference(s) that are
 *  the subject of the action as well as other Information related to the action are typically transmitted in a bundle
 *  in which the MessageHeader resource instance is the first resource in the bundle.
 */
public class MessageHeader: DomainResource
{
	override public class var resourceName: String {
		get { return "MessageHeader" }
	}
	
	/// The source of the decision
	public var author: Reference?
	
	/// The actual content of the message
	public var data: [Reference]?
	
	/// Message Destination Application(s)
	public var destination: [MessageHeaderDestination]?
	
	/// The source of the data entry
	public var enterer: Reference?
	
	/// Code for the event this message represents
	public var event: Coding?
	
	/// Id of this message
	public var identifier: String?
	
	/// Cause of event
	public var reason: CodeableConcept?
	
	/// Intended "real-world" recipient for the data
	public var receiver: Reference?
	
	/// If this is a reply to prior message
	public var response: MessageHeaderResponse?
	
	/// Final responsibility for event
	public var responsible: Reference?
	
	/// Message Source Application
	public var source: MessageHeaderSource?
	
	/// Time that the message was sent
	public var timestamp: Instant?
	
	public convenience init(event: Coding?, identifier: String?, source: MessageHeaderSource?, timestamp: Instant?) {
		self.init(json: nil)
		if nil != event {
			self.event = event
		}
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != source {
			self.source = source
		}
		if nil != timestamp {
			self.timestamp = timestamp
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? JSONDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["data"] as? [JSONDictionary] {
				self.data = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["destination"] as? [JSONDictionary] {
				self.destination = MessageHeaderDestination.from(val, owner: self) as? [MessageHeaderDestination]
			}
			if let val = js["enterer"] as? JSONDictionary {
				self.enterer = Reference(json: val, owner: self)
			}
			if let val = js["event"] as? JSONDictionary {
				self.event = Coding(json: val, owner: self)
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["reason"] as? JSONDictionary {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["receiver"] as? JSONDictionary {
				self.receiver = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? JSONDictionary {
				self.response = MessageHeaderResponse(json: val, owner: self)
			}
			if let val = js["responsible"] as? JSONDictionary {
				self.responsible = Reference(json: val, owner: self)
			}
			if let val = js["source"] as? JSONDictionary {
				self.source = MessageHeaderSource(json: val, owner: self)
			}
			if let val = js["timestamp"] as? String {
				self.timestamp = Instant(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
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
public class MessageHeaderDestination: FHIRElement
{
	override public class var resourceName: String {
		get { return "MessageHeaderDestination" }
	}
	
	/// Actual destination address or id
	public var endpoint: NSURL?
	
	/// Name of system
	public var name: String?
	
	/// Particular delivery destination within the destination
	public var target: Reference?
	
	public convenience init(endpoint: NSURL?) {
		self.init(json: nil)
		if nil != endpoint {
			self.endpoint = endpoint
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(string: val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
public class MessageHeaderResponse: FHIRElement
{
	override public class var resourceName: String {
		get { return "MessageHeaderResponse" }
	}
	
	/// ok | transient-error | fatal-error
	public var code: String?
	
	/// Specific list of hints/warnings/errors
	public var details: Reference?
	
	/// Id of original message
	public var identifier: String?
	
	public convenience init(code: String?, identifier: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != identifier {
			self.identifier = identifier
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["details"] as? JSONDictionary {
				self.details = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
public class MessageHeaderSource: FHIRElement
{
	override public class var resourceName: String {
		get { return "MessageHeaderSource" }
	}
	
	/// Human contact for problems
	public var contact: ContactPoint?
	
	/// Actual message source address or id
	public var endpoint: NSURL?
	
	/// Name of system
	public var name: String?
	
	/// Name of software running the system
	public var software: String?
	
	/// Version of software running
	public var version: String?
	
	public convenience init(endpoint: NSURL?) {
		self.init(json: nil)
		if nil != endpoint {
			self.endpoint = endpoint
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contact"] as? JSONDictionary {
				self.contact = ContactPoint(json: val, owner: self)
			}
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(string: val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["software"] as? String {
				self.software = val
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

