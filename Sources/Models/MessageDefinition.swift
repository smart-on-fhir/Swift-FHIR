//
//  MessageDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/MessageDefinition) on 2016-12-06.
//  2016, SMART Health IT.
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
	public var copyright: String?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the message definition.
	public var description_fhir: String?
	
	/// Event type.
	public var event: Coding?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Resource(s) that are the subject of the event.
	public var focus: [MessageDefinitionFocus]?
	
	/// Intended jurisdiction for message definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this message definition (Computer friendly).
	public var name: String?
	
	/// Protocol/workflow this is part of.
	public var parent: [Reference]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this message definition is defined.
	public var purpose: String?
	
	/// Takes the place of.
	public var replaces: [Reference]?
	
	/// Is a response required?.
	public var responseRequired: Bool?
	
	/// The status of this message definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this message definition (Human friendly).
	public var title: String?
	
	/// Logical uri to reference this message definition (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the message definition.
	public var version: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime, event: Coding, status: PublicationStatus) {
		self.init()
		self.date = date
		self.event = event
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["allowedResponse"] {
			presentKeys.insert("allowedResponse")
			if let val = exist as? [FHIRJSON] {
				do {
					self.allowedResponse = try MessageDefinitionAllowedResponse.instantiate(fromArray: val, owner: self) as? [MessageDefinitionAllowedResponse]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "allowedResponse"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "allowedResponse", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["base"] {
			presentKeys.insert("base")
			if let val = exist as? FHIRJSON {
				do {
					self.base = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "base"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "base", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? String {
				if let enumval = MessageSignificanceCategory(rawValue: val) {
					self.category = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "category", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["copyright"] {
			presentKeys.insert("copyright")
			if let val = exist as? String {
				self.copyright = val
			}
			else {
				errors.append(FHIRValidationError(key: "copyright", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "date"))
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
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
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["focus"] {
			presentKeys.insert("focus")
			if let val = exist as? [FHIRJSON] {
				do {
					self.focus = try MessageDefinitionFocus.instantiate(fromArray: val, owner: self) as? [MessageDefinitionFocus]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "focus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "focus", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
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
		if let exist = json["parent"] {
			presentKeys.insert("parent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.parent = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "parent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "parent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = val
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = val
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["replaces"] {
			presentKeys.insert("replaces")
			if let val = exist as? [FHIRJSON] {
				do {
					self.replaces = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "replaces"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "replaces", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["responseRequired"] {
			presentKeys.insert("responseRequired")
			if let val = exist as? Bool {
				self.responseRequired = val
			}
			else {
				errors.append(FHIRValidationError(key: "responseRequired", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = PublicationStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = val
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "useContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		
		if let allowedResponse = self.allowedResponse {
			json["allowedResponse"] = allowedResponse.map() { $0.asJSON(errors: &errors) }
		}
		if let base = self.base {
			json["base"] = base.asJSON(errors: &errors)
		}
		if let category = self.category {
			json["category"] = category.rawValue
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let event = self.event {
			json["event"] = event.asJSON(errors: &errors)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let focus = self.focus {
			json["focus"] = focus.map() { $0.asJSON(errors: &errors) }
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let parent = self.parent {
			json["parent"] = parent.map() { $0.asJSON(errors: &errors) }
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let replaces = self.replaces {
			json["replaces"] = replaces.map() { $0.asJSON(errors: &errors) }
		}
		if let responseRequired = self.responseRequired {
			json["responseRequired"] = responseRequired.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
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
	
	/// MessageDefinition for response.
	public var message: Reference?
	
	/// When should this response be used.
	public var situation: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(message: Reference) {
		self.init()
		self.message = message
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["message"] {
			presentKeys.insert("message")
			if let val = exist as? FHIRJSON {
				do {
					self.message = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "message"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "message", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "message"))
		}
		if let exist = json["situation"] {
			presentKeys.insert("situation")
			if let val = exist as? String {
				self.situation = val
			}
			else {
				errors.append(FHIRValidationError(key: "situation", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let message = self.message {
			json["message"] = message.asJSON(errors: &errors)
		}
		if let situation = self.situation {
			json["situation"] = situation.asJSON()
		}
		
		return json
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
	public var code: String?
	
	/// Maximum number of focuses of this type.
	public var max: String?
	
	/// Minimum number of focuses of this type.
	public var min: UInt?
	
	/// Profile that must be adhered to by focus.
	public var profile: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = val
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["max"] {
			presentKeys.insert("max")
			if let val = exist as? String {
				self.max = val
			}
			else {
				errors.append(FHIRValidationError(key: "max", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["min"] {
			presentKeys.insert("min")
			if let val = exist as? UInt {
				self.min = val
			}
			else {
				errors.append(FHIRValidationError(key: "min", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? FHIRJSON {
				do {
					self.profile = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let max = self.max {
			json["max"] = max.asJSON()
		}
		if let min = self.min {
			json["min"] = min.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON(errors: &errors)
		}
		
		return json
	}
}

