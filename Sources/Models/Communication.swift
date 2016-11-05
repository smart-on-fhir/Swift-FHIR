//
//  Communication.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Communication) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A record of information transmitted from a sender to a receiver.

An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public health
agency was notified about a reportable condition.
*/
open class Communication: DomainResource {
	override open class var resourceType: String {
		get { return "Communication" }
	}
	
	/// Request fulfilled by this communication.
	public var basedOn: [Reference]?
	
	/// Message category.
	public var category: CodeableConcept?
	
	/// Encounter or episode leading to message.
	public var context: Reference?
	
	/// Unique identifier.
	public var identifier: [Identifier]?
	
	/// A channel of communication.
	public var medium: [CodeableConcept]?
	
	/// Comments made about the communication.
	public var note: [Annotation]?
	
	/// Part of this action.
	public var parent: [Reference]?
	
	/// Message payload.
	public var payload: [CommunicationPayload]?
	
	/// Indication for message.
	public var reason: [CodeableConcept]?
	
	/// When received.
	public var received: DateTime?
	
	/// Message recipient.
	public var recipient: [Reference]?
	
	/// Message sender.
	public var sender: Reference?
	
	/// When sent.
	public var sent: DateTime?
	
	/// The status of the transmission.
	public var status: CommunicationStatus?
	
	/// Focus of message.
	public var subject: Reference?
	
	/// Focal resources.
	public var topic: [Reference]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["basedOn"] {
			presentKeys.insert("basedOn")
			if let val = exist as? [FHIRJSON] {
				do {
					self.basedOn = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "basedOn"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "basedOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? FHIRJSON {
				do {
					self.category = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? FHIRJSON {
				do {
					self.context = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "context"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["medium"] {
			presentKeys.insert("medium")
			if let val = exist as? [FHIRJSON] {
				do {
					self.medium = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "medium"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "medium", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["payload"] {
			presentKeys.insert("payload")
			if let val = exist as? [FHIRJSON] {
				do {
					self.payload = try CommunicationPayload.instantiate(fromArray: val, owner: self) as? [CommunicationPayload]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "payload"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "payload", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reason = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["received"] {
			presentKeys.insert("received")
			if let val = exist as? String {
				self.received = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "received", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["recipient"] {
			presentKeys.insert("recipient")
			if let val = exist as? [FHIRJSON] {
				do {
					self.recipient = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "recipient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "recipient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["sender"] {
			presentKeys.insert("sender")
			if let val = exist as? FHIRJSON {
				do {
					self.sender = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "sender"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "sender", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sent"] {
			presentKeys.insert("sent")
			if let val = exist as? String {
				self.sent = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "sent", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = CommunicationStatus(rawValue: val) {
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
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["topic"] {
			presentKeys.insert("topic")
			if let val = exist as? [FHIRJSON] {
				do {
					self.topic = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "topic"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "topic", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let medium = self.medium {
			json["medium"] = medium.map() { $0.asJSON(errors: &errors) }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let parent = self.parent {
			json["parent"] = parent.map() { $0.asJSON(errors: &errors) }
		}
		if let payload = self.payload {
			json["payload"] = payload.map() { $0.asJSON(errors: &errors) }
		}
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON(errors: &errors) }
		}
		if let received = self.received {
			json["received"] = received.asJSON()
		}
		if let recipient = self.recipient {
			json["recipient"] = recipient.map() { $0.asJSON(errors: &errors) }
		}
		if let sender = self.sender {
			json["sender"] = sender.asJSON(errors: &errors)
		}
		if let sent = self.sent {
			json["sent"] = sent.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let topic = self.topic {
			json["topic"] = topic.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Message payload.

Text, attachment(s), or resource(s) that was communicated to the recipient.
*/
open class CommunicationPayload: BackboneElement {
	override open class var resourceType: String {
		get { return "CommunicationPayload" }
	}
	
	/// Message part content.
	public var contentAttachment: Attachment?
	
	/// Message part content.
	public var contentReference: Reference?
	
	/// Message part content.
	public var contentString: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Any) {
		self.init()
		if let value = content as? String {
			self.contentString = value
		}
		else if let value = content as? Attachment {
			self.contentAttachment = value
		}
		else if let value = content as? Reference {
			self.contentReference = value
		}
		else {
			fhir_warn("Type “\(type(of: content))” for property “\(content)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contentAttachment"] {
			presentKeys.insert("contentAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.contentAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contentAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contentAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["contentReference"] {
			presentKeys.insert("contentReference")
			if let val = exist as? FHIRJSON {
				do {
					self.contentReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contentReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contentReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["contentString"] {
			presentKeys.insert("contentString")
			if let val = exist as? String {
				self.contentString = val
			}
			else {
				errors.append(FHIRValidationError(key: "contentString", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.contentString && nil == self.contentAttachment && nil == self.contentReference {
			errors.append(FHIRValidationError(missing: "content[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON(errors: &errors)
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON(errors: &errors)
		}
		if let contentString = self.contentString {
			json["contentString"] = contentString.asJSON()
		}
		
		return json
	}
}

