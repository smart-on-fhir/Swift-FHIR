//
//  MessageHeader.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MessageHeader) on 2019-03-01.
//  2019, SMART Health IT.
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
	
	/// Link to the definition for this message.
	public var definition: FHIRURL?
	
	/// Message destination application(s).
	public var destination: [MessageHeaderDestination]?
	
	/// The source of the data entry.
	public var enterer: Reference?
	
	/// Code for the event this message represents or link to event definition.
	public var eventCoding: Coding?
	
	/// Code for the event this message represents or link to event definition.
	public var eventUri: FHIRURL?
	
	/// The actual content of the message.
	public var focus: [Reference]?
	
	/// Cause of event.
	public var reason: CodeableConcept?
	
	/// If this is a reply to prior message.
	public var response: MessageHeaderResponse?
	
	/// Final responsibility for event.
	public var responsible: Reference?
	
	/// Real world sender of the message.
	public var sender: Reference?
	
	/// Message source application.
	public var source: MessageHeaderSource?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(event: Any, source: MessageHeaderSource) {
		self.init()
		if let value = event as? Coding {
			self.eventCoding = value
		}
		else if let value = event as? FHIRURL {
			self.eventUri = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: event))” for property “\(event)” is invalid, ignoring")
		}
		self.source = source
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		author = createInstance(type: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		definition = createInstance(type: FHIRURL.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		destination = createInstances(of: MessageHeaderDestination.self, for: "destination", in: json, context: &instCtx, owner: self) ?? destination
		enterer = createInstance(type: Reference.self, for: "enterer", in: json, context: &instCtx, owner: self) ?? enterer
		eventCoding = createInstance(type: Coding.self, for: "eventCoding", in: json, context: &instCtx, owner: self) ?? eventCoding
		eventUri = createInstance(type: FHIRURL.self, for: "eventUri", in: json, context: &instCtx, owner: self) ?? eventUri
		focus = createInstances(of: Reference.self, for: "focus", in: json, context: &instCtx, owner: self) ?? focus
		reason = createInstance(type: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		response = createInstance(type: MessageHeaderResponse.self, for: "response", in: json, context: &instCtx, owner: self) ?? response
		responsible = createInstance(type: Reference.self, for: "responsible", in: json, context: &instCtx, owner: self) ?? responsible
		sender = createInstance(type: Reference.self, for: "sender", in: json, context: &instCtx, owner: self) ?? sender
		source = createInstance(type: MessageHeaderSource.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		if nil == source && !instCtx.containsKey("source") {
			instCtx.addError(FHIRValidationError(missing: "source"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.eventCoding && nil == self.eventUri {
			instCtx.addError(FHIRValidationError(missing: "event[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		arrayDecorate(json: &json, withKey: "destination", using: self.destination, errors: &errors)
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.eventCoding?.decorate(json: &json, withKey: "eventCoding", errors: &errors)
		self.eventUri?.decorate(json: &json, withKey: "eventUri", errors: &errors)
		arrayDecorate(json: &json, withKey: "focus", using: self.focus, errors: &errors)
		self.reason?.decorate(json: &json, withKey: "reason", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.responsible?.decorate(json: &json, withKey: "responsible", errors: &errors)
		self.sender?.decorate(json: &json, withKey: "sender", errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		if nil == self.source {
			errors.append(FHIRValidationError(missing: "source"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.eventCoding && nil == self.eventUri {
			errors.append(FHIRValidationError(missing: "event[x]"))
		}
	}
}


/**
Message destination application(s).

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
	
	/// Intended "real-world" recipient for the data.
	public var receiver: Reference?
	
	/// Particular delivery destination within the destination.
	public var target: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(endpoint: FHIRURL) {
		self.init()
		self.endpoint = endpoint
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		endpoint = createInstance(type: FHIRURL.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		if nil == endpoint && !instCtx.containsKey("endpoint") {
			instCtx.addError(FHIRValidationError(missing: "endpoint"))
		}
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		receiver = createInstance(type: Reference.self, for: "receiver", in: json, context: &instCtx, owner: self) ?? receiver
		target = createInstance(type: Reference.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.endpoint?.decorate(json: &json, withKey: "endpoint", errors: &errors)
		if nil == self.endpoint {
			errors.append(FHIRValidationError(missing: "endpoint"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.receiver?.decorate(json: &json, withKey: "receiver", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createEnum(type: ResponseType.self, for: "code", in: json, context: &instCtx) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		details = createInstance(type: Reference.self, for: "details", in: json, context: &instCtx, owner: self) ?? details
		identifier = createInstance(type: FHIRString.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		if nil == identifier && !instCtx.containsKey("identifier") {
			instCtx.addError(FHIRValidationError(missing: "identifier"))
		}
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
Message source application.

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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contact = createInstance(type: ContactPoint.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		endpoint = createInstance(type: FHIRURL.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		if nil == endpoint && !instCtx.containsKey("endpoint") {
			instCtx.addError(FHIRValidationError(missing: "endpoint"))
		}
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		software = createInstance(type: FHIRString.self, for: "software", in: json, context: &instCtx, owner: self) ?? software
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
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

