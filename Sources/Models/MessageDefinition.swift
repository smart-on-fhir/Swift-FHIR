//
//  MessageDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/MessageDefinition) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A resource that defines a type of message that can be exchanged between systems.

Defines the characteristics of a message that can be shared between systems, including the type of event that initiates
the message, the content to be transmitted and what response(s), if any, are permitted.
*/
open class MessageDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "MessageDefinition" }
	}
	
	/// Responses to this message.
	public var allowedResponse: [MessageDefinitionAllowedResponse]?
	
	/// Definition this one is based on.
	public var base: Reference?
	
	/// The impact of the content of the message.
	public var category: MessageSignificanceCategory?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the message definition.
	public var description_fhir: FHIRString?
	
	/// Event type.
	public var event: Coding?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Resource(s) that are the subject of the event.
	public var focus: [MessageDefinitionFocus]?
	
	/// Additional identifier for the message definition.
	public var identifier: Identifier?
	
	/// Intended jurisdiction for message definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this message definition (computer friendly).
	public var name: FHIRString?
	
	/// Protocol/workflow this is part of.
	public var parent: [Reference]?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this message definition is defined.
	public var purpose: FHIRString?
	
	/// Takes the place of.
	public var replaces: [Reference]?
	
	/// Is a response required?.
	public var responseRequired: FHIRBool?
	
	/// The status of this message definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this message definition (human friendly).
	public var title: FHIRString?
	
	/// Logical URI to reference this message definition (globally unique).
	public var url: FHIRURL?
	
	/// Context the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the message definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime, event: Coding, status: PublicationStatus) {
		self.init()
		self.date = date
		self.event = event
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		allowedResponse = createInstances(of: MessageDefinitionAllowedResponse.self, for: "allowedResponse", in: json, context: &instCtx, owner: self) ?? allowedResponse
		base = createInstance(type: Reference.self, for: "base", in: json, context: &instCtx, owner: self) ?? base
		category = createEnum(type: MessageSignificanceCategory.self, for: "category", in: json, context: &instCtx) ?? category
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		if nil == date && !instCtx.containsKey("date") {
			instCtx.addError(FHIRValidationError(missing: "date"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		event = createInstance(type: Coding.self, for: "event", in: json, context: &instCtx, owner: self) ?? event
		if nil == event && !instCtx.containsKey("event") {
			instCtx.addError(FHIRValidationError(missing: "event"))
		}
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		focus = createInstances(of: MessageDefinitionFocus.self, for: "focus", in: json, context: &instCtx, owner: self) ?? focus
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		parent = createInstances(of: Reference.self, for: "parent", in: json, context: &instCtx, owner: self) ?? parent
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		replaces = createInstances(of: Reference.self, for: "replaces", in: json, context: &instCtx, owner: self) ?? replaces
		responseRequired = createInstance(type: FHIRBool.self, for: "responseRequired", in: json, context: &instCtx, owner: self) ?? responseRequired
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "allowedResponse", using: self.allowedResponse, errors: &errors)
		self.base?.decorate(json: &json, withKey: "base", errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		if nil == self.date {
			errors.append(FHIRValidationError(missing: "date"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.event?.decorate(json: &json, withKey: "event", errors: &errors)
		if nil == self.event {
			errors.append(FHIRValidationError(missing: "event"))
		}
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "focus", using: self.focus, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "parent", using: self.parent, errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "replaces", using: self.replaces, errors: &errors)
		self.responseRequired?.decorate(json: &json, withKey: "responseRequired", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Responses to this message.

Indicates what types of messages may be sent as an application-level response to this message.
*/
open class MessageDefinitionAllowedResponse: BackboneElement {
	override open class var resourceType: String {
		get { return "MessageDefinitionAllowedResponse" }
	}
	
	/// Reference to allowed message definition response.
	public var message: Reference?
	
	/// When should this response be used.
	public var situation: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(message: Reference) {
		self.init()
		self.message = message
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		message = createInstance(type: Reference.self, for: "message", in: json, context: &instCtx, owner: self) ?? message
		if nil == message && !instCtx.containsKey("message") {
			instCtx.addError(FHIRValidationError(missing: "message"))
		}
		situation = createInstance(type: FHIRString.self, for: "situation", in: json, context: &instCtx, owner: self) ?? situation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.message?.decorate(json: &json, withKey: "message", errors: &errors)
		if nil == self.message {
			errors.append(FHIRValidationError(missing: "message"))
		}
		self.situation?.decorate(json: &json, withKey: "situation", errors: &errors)
	}
}


/**
Resource(s) that are the subject of the event.

Identifies the resource (or resources) that are being addressed by the event.  For example, the Encounter for an admit
message or two Account records for a merge.
*/
open class MessageDefinitionFocus: BackboneElement {
	override open class var resourceType: String {
		get { return "MessageDefinitionFocus" }
	}
	
	/// Type of resource.
	public var code: FHIRString?
	
	/// Maximum number of focuses of this type.
	public var max: FHIRString?
	
	/// Minimum number of focuses of this type.
	public var min: FHIRInteger?
	
	/// Profile that must be adhered to by focus.
	public var profile: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		max = createInstance(type: FHIRString.self, for: "max", in: json, context: &instCtx, owner: self) ?? max
		min = createInstance(type: FHIRInteger.self, for: "min", in: json, context: &instCtx, owner: self) ?? min
		profile = createInstance(type: Reference.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.max?.decorate(json: &json, withKey: "max", errors: &errors)
		self.min?.decorate(json: &json, withKey: "min", errors: &errors)
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
	}
}

