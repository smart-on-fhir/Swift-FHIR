//
//  MessageHeader.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (messageheader.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A resource that describes a message that is exchanged between systems.
 *
 *  Scope and Usage The MessageHeader resource is defined in order to support Messaging using FHIR resources. The
 *  principle usage of the MessageHeader resource is when messages are exchanged. However, as a resource that can be
 *  used with the RESTful framework, the MessageHeader resource has the normal resource end-point ([base-url]/Message),
 *  which is used to manage a set of static messages resources. This could be used to make an archive of past messages
 *  available. Creating or updating Message resources in this fashion does not represent the actual occurrence of any
 *  event, nor can it trigger any logic associated with the actual event. It is just for managing a set of message
 *  resources.
 */
public class MessageHeader: FHIRResource
{
	override public class var resourceName: String {
		get { return "MessageHeader" }
	}
	
	/// The source of the decision
	public var author: FHIRReference<Practitioner>?
	
	/// The actual content of the message
	public var data: [FHIRReference<FHIRResource>]?
	
	/// Message Destination Application(s)
	public var destination: [MessageHeaderDestination]?
	
	/// The source of the data entry
	public var enterer: FHIRReference<Practitioner>?
	
	/// Code for the event this message represents
	public var event: Coding?
	
	/// Id of this message
	public var identifier: String?
	
	/// Cause of event
	public var reason: CodeableConcept?
	
	/// Intended "real-world" recipient for the data
	public var receiver: FHIRReference<Practitioner>?
	
	/// If this is a reply to prior message
	public var response: MessageHeaderResponse?
	
	/// Final responsibility for event
	public var responsible: FHIRReference<Practitioner>?
	
	/// Message Source Application
	public var source: MessageHeaderSource?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
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
				self.author = FHIRReference(json: val, owner: self)
			}
			if let val = js["data"] as? [NSDictionary] {
				self.data = FHIRReference.from(val, owner: self)
			}
			if let val = js["destination"] as? [NSDictionary] {
				self.destination = MessageHeaderDestination.from(val) as? [MessageHeaderDestination]
			}
			if let val = js["enterer"] as? NSDictionary {
				self.enterer = FHIRReference(json: val, owner: self)
			}
			if let val = js["event"] as? NSDictionary {
				self.event = Coding(json: val)
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["reason"] as? NSDictionary {
				self.reason = CodeableConcept(json: val)
			}
			if let val = js["receiver"] as? NSDictionary {
				self.receiver = FHIRReference(json: val, owner: self)
			}
			if let val = js["response"] as? NSDictionary {
				self.response = MessageHeaderResponse(json: val)
			}
			if let val = js["responsible"] as? NSDictionary {
				self.responsible = FHIRReference(json: val, owner: self)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = MessageHeaderSource(json: val)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["timestamp"] as? String {
				self.timestamp = NSDate(json: val)
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
	/// ok | transient-error | fatal-error
	public var code: String?
	
	/// Specific list of hints/warnings/errors
	public var details: FHIRReference<OperationOutcome>?
	
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
				self.details = FHIRReference(json: val, owner: self)
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
	/// Human contact for problems
	public var contact: Contact?
	
	/// Actual message source address or id
	public var endpoint: NSURL?
	
	/// Name of system
	public var name: String?
	
	/// Name of software running the system
	public var software: String?
	
	/// Version of software running
	public var version: String?
	
	public convenience init(endpoint: NSURL?, software: String?) {
		self.init(json: nil)
		if nil != endpoint {
			self.endpoint = endpoint
		}
		if nil != software {
			self.software = software
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contact"] as? NSDictionary {
				self.contact = Contact(json: val)
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


/**
 *  Message Destination Application(s).
 *
 *  The destination application which the message is intended for.
 */
public class MessageHeaderDestination: FHIRElement
{	
	/// Actual destination address or id
	public var endpoint: NSURL?
	
	/// Name of system
	public var name: String?
	
	/// Particular delivery destination within the destination
	public var target: FHIRReference<Device>?
	
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
				self.target = FHIRReference(json: val, owner: self)
			}
		}
	}
}

