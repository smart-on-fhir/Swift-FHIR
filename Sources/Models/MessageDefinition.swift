//
//  MessageDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/MessageDefinition) on 2017-02-23.
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
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Resource(s) that are the subject of the event.
	public var focus: [MessageDefinitionFocus]?
	
	/// Additional identifier for the message definition.
	public var identifier: Identifier?
	
	/// Intended jurisdiction for message definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this message definition (Computer friendly).
	public var name: FHIRString?
	
	/// Protocol/workflow this is part of.
	public var parent: [Reference]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this message definition is defined.
	public var purpose: FHIRString?
	
	/// Takes the place of.
	public var replaces: [Reference]?
	
	/// Is a response required?.
	public var responseRequired: FHIRBool?
	
	/// The status of this message definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this message definition (Human friendly).
	public var title: FHIRString?
	
	/// Logical uri to reference this message definition (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		allowedResponse = try createInstances(of: MessageDefinitionAllowedResponse.self, for: "allowedResponse", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? allowedResponse
		base = try createInstance(type: Reference.self, for: "base", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? base
		category = createEnum(type: MessageSignificanceCategory.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors) ?? category
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		if nil == date && !presentKeys.contains("date") {
			errors.append(FHIRValidationError(missing: "date"))
		}
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		event = try createInstance(type: Coding.self, for: "event", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? event
		if nil == event && !presentKeys.contains("event") {
			errors.append(FHIRValidationError(missing: "event"))
		}
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		focus = try createInstances(of: MessageDefinitionFocus.self, for: "focus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? focus
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		parent = try createInstances(of: Reference.self, for: "parent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parent
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		replaces = try createInstances(of: Reference.self, for: "replaces", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? replaces
		responseRequired = try createInstance(type: FHIRBool.self, for: "responseRequired", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? responseRequired
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		message = try createInstance(type: Reference.self, for: "message", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? message
		if nil == message && !presentKeys.contains("message") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "message"))
		}
		situation = try createInstance(type: FHIRString.self, for: "situation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? situation
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		max = try createInstance(type: FHIRString.self, for: "max", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? max
		min = try createInstance(type: FHIRInteger.self, for: "min", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? min
		profile = try createInstance(type: Reference.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		
		return errors.isEmpty ? nil : errors
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

