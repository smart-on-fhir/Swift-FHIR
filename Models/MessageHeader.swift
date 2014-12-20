//
//  MessageHeader.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (messageheader.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A resource that describes a message that is exchanged between systems.
 *
 *  The header for a message exchange that is either requesting or responding to an action.  The Reference(s) that are
 *  the subject of the action as well as other Information related to the action are typically transmitted in a bundle
 *  in which the MessageHeader resource instance is the first resource in the bundle.
 */
public class MessageHeader: FHIRResource
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
	public var timestamp: NSDate?
	
	public convenience init(event: Coding?, identifier: String?, source: MessageHeaderSource?, timestamp: NSDate?) {
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? NSDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["data"] as? [NSDictionary] {
				self.data = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["destination"] as? [NSDictionary] {
				self.destination = MessageHeaderDestination.from(val, owner: self) as? [MessageHeaderDestination]
			}
			if let val = js["enterer"] as? NSDictionary {
				self.enterer = Reference(json: val, owner: self)
			}
			if let val = js["event"] as? NSDictionary {
				self.event = Coding(json: val, owner: self)
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["reason"] as? NSDictionary {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["receiver"] as? NSDictionary {
				self.receiver = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? NSDictionary {
				self.response = MessageHeaderResponse(json: val, owner: self)
			}
			if let val = js["responsible"] as? NSDictionary {
				self.responsible = Reference(json: val, owner: self)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = MessageHeaderSource(json: val, owner: self)
			}
			if let val = js["timestamp"] as? String {
				self.timestamp = NSDate(json: val)
			}
		}
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(json: val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["target"] as? NSDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["details"] as? NSDictionary {
				self.details = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
		}
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contact"] as? NSDictionary {
				self.contact = ContactPoint(json: val, owner: self)
			}
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(json: val)
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
}

