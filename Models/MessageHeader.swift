//
//  MessageHeader.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	override var resourceName: String {
		get { return "MessageHeader" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Id of this message */
	var identifier: String

	/*! Time that the message was sent */
	var timestamp: Int

	/*! Code for the event this message represents */
	var event: Coding

	/*! If this is a reply to prior message */
	var response: MessageHeaderResponse?

	/*! Message Source Application */
	var source: MessageHeaderSource

	/*! Message Destination Application(s) */
	var destination: MessageHeaderDestination[]?

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
	var data: ResourceReference[]?

	init(identifier: String, timestamp: Int, event: Coding, source: MessageHeaderSource) {
		self.identifier = identifier
		self.timestamp = timestamp
		self.event = event
		self.source = source
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
	var identifier: String

	/*! ok | transient-error | fatal-error */
	var code: String

	/*! Specific list of hints/warnings/errors */
	var details: ResourceReference?

	init(identifier: String, code: String) {
		self.identifier = identifier
		self.code = code
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
	var software: String

	/*! Version of software running */
	var version: String?

	/*! Human contact for problems */
	var contact: Contact?

	/*! Actual message source address or id */
	var endpoint: NSURL

	init(software: String, endpoint: NSURL) {
		self.software = software
		self.endpoint = endpoint
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
	var endpoint: NSURL

	init(endpoint: NSURL) {
		self.endpoint = endpoint
	}
}
