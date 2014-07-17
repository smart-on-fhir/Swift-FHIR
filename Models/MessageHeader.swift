//
//  MessageHeader.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A resource that describes a message that is exchanged between systems.
 *
 *  Scope and Usage The MessageHeader resource is defined in order to support Messaging using FHIR resources. The
 *  principle usage of the MessageHeader resource is when messages are exchanged. However, as a resource that can
 *  be used with the RESTful framework, the MessageHeader resource has the normal resource end-point ([base-
 *  url]/Message), which is used to manage a set of static messages resources. This could be used to make an
 *  archive of past messages available. Creating or updating Message resources in this fashion does not represent
 *  the actual occurrence of any event, nor can it trigger any logic associated with the actual event. It is just
 *  for managing a set of message resources.
 */
class MessageHeader: FHIRResource
{
	override class var resourceName: String {
		get { return "MessageHeader" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Id of this message */
	var identifier: String?
	
	/*! Time that the message was sent */
	var timestamp: Int?
	
	/*! Code for the event this message represents */
	var event: Coding?
	
	/*! If this is a reply to prior message */
	var response: MessageHeaderResponse?
	
	/*! Message Source Application */
	var source: MessageHeaderSource?
	
	/*! Message Destination Application(s) */
	var destination: [MessageHeaderDestination]?
	
	/*! The source of the data entry */
	var enterer: ResourceReference?
	
	/*! The source of the decision */
	var author: ResourceReference?
	
	/*! Intended "real-world" recipient for the data */
	var receiver: ResourceReference?
	
	/*! Final responsibility for event */
	var responsible: ResourceReference?
	
	/*! Cause of event */
	var reason: CodeableConcept?
	
	/*! The actual content of the message */
	var data: [ResourceReference]?
	
	convenience init(identifier: String?, timestamp: Int?, event: Coding?, source: MessageHeaderSource?) {
		self.init(json: nil)
		if identifier {
			self.identifier = identifier
		}
		if timestamp {
			self.timestamp = timestamp
		}
		if event {
			self.event = event
		}
		if source {
			self.source = source
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["timestamp"] as? Int {
				self.timestamp = val
			}
			if let val = js["event"] as? NSDictionary {
				self.event = Coding(json: val)
			}
			if let val = js["response"] as? NSDictionary {
				self.response = MessageHeaderResponse(json: val)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = MessageHeaderSource(json: val)
			}
			if let val = js["destination"] as? [NSDictionary] {
				self.destination = MessageHeaderDestination.from(val) as? [MessageHeaderDestination]
			}
			if let val = js["enterer"] as? NSDictionary {
				self.enterer = ResourceReference(json: val)
			}
			if let val = js["author"] as? NSDictionary {
				self.author = ResourceReference(json: val)
			}
			if let val = js["receiver"] as? NSDictionary {
				self.receiver = ResourceReference(json: val)
			}
			if let val = js["responsible"] as? NSDictionary {
				self.responsible = ResourceReference(json: val)
			}
			if let val = js["reason"] as? NSDictionary {
				self.reason = CodeableConcept(json: val)
			}
			if let val = js["data"] as? [NSDictionary] {
				self.data = ResourceReference.from(val) as? [ResourceReference]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  If this is a reply to prior message.
 *
 *  Information about the message that this message is a response to.  Only present if this message is a response.
 */
class MessageHeaderResponse: FHIRElement
{	
	/*! Id of original message */
	var identifier: String?
	
	/*! ok | transient-error | fatal-error */
	var code: String?
	
	/*! Specific list of hints/warnings/errors */
	var details: ResourceReference?
	
	convenience init(identifier: String?, code: String?) {
		self.init(json: nil)
		if identifier {
			self.identifier = identifier
		}
		if code {
			self.code = code
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["details"] as? NSDictionary {
				self.details = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Message Source Application.
 *
 *  The source application from which this message originated.
 */
class MessageHeaderSource: FHIRElement
{	
	/*! Name of system */
	var name: String?
	
	/*! Name of software running the system */
	var software: String?
	
	/*! Version of software running */
	var version: String?
	
	/*! Human contact for problems */
	var contact: Contact?
	
	/*! Actual message source address or id */
	var endpoint: NSURL?
	
	convenience init(software: String?, endpoint: NSURL?) {
		self.init(json: nil)
		if software {
			self.software = software
		}
		if endpoint {
			self.endpoint = endpoint
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["software"] as? String {
				self.software = val
			}
			if let val = js["version"] as? String {
				self.version = val
			}
			if let val = js["contact"] as? NSDictionary {
				self.contact = Contact(json: val)
			}
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Message Destination Application(s).
 *
 *  The destination application which the message is intended for.
 */
class MessageHeaderDestination: FHIRElement
{	
	/*! Name of system */
	var name: String?
	
	/*! Particular delivery destination within the destination */
	var target: ResourceReference?
	
	/*! Actual destination address or id */
	var endpoint: NSURL?
	
	convenience init(endpoint: NSURL?) {
		self.init(json: nil)
		if endpoint {
			self.endpoint = endpoint
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["target"] as? NSDictionary {
				self.target = ResourceReference(json: val)
			}
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(json: val)
			}
		}
		super.init(json: json)
	}
}
