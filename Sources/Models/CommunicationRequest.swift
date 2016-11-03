//
//  CommunicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/CommunicationRequest) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A request for information to be sent to a receiver.
 *
 *  A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider, the
 *  CDS system proposes that the public health agency be notified about a reportable condition.
 */
open class CommunicationRequest: DomainResource {
	override open class var resourceType: String {
		get { return "CommunicationRequest" }
	}
	
	/// Message category.
	public var category: CodeableConcept?
	
	/// Encounter leading to message.
	public var encounter: Reference?
	
	/// Unique identifier.
	public var identifier: [Identifier]?
	
	/// A channel of communication.
	public var medium: [CodeableConcept]?
	
	/// Message payload.
	public var payload: [CommunicationRequestPayload]?
	
	/// Message urgency.
	public var priority: CodeableConcept?
	
	/// Indication for message.
	public var reason: [CodeableConcept]?
	
	/// Message recipient.
	public var recipient: [Reference]?
	
	/// When ordered or proposed.
	public var requestedOn: DateTime?
	
	/// An individual who requested a communication.
	public var requester: Reference?
	
	/// When scheduled.
	public var scheduledDateTime: DateTime?
	
	/// When scheduled.
	public var scheduledPeriod: Period?
	
	/// Message sender.
	public var sender: Reference?
	
	/// proposed | planned | requested | received | accepted | in-progress | completed | suspended | rejected | failed.
	public var status: String?
	
	/// Focus of message.
	public var subject: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
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
		if let exist = json["encounter"] {
			presentKeys.insert("encounter")
			if let val = exist as? FHIRJSON {
				do {
					self.encounter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "encounter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["payload"] {
			presentKeys.insert("payload")
			if let val = exist as? [FHIRJSON] {
				do {
					self.payload = try CommunicationRequestPayload.instantiate(fromArray: val, owner: self) as? [CommunicationRequestPayload]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "payload"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "payload", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["priority"] {
			presentKeys.insert("priority")
			if let val = exist as? FHIRJSON {
				do {
					self.priority = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "priority"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "priority", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["requestedOn"] {
			presentKeys.insert("requestedOn")
			if let val = exist as? String {
				self.requestedOn = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "requestedOn", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["requester"] {
			presentKeys.insert("requester")
			if let val = exist as? FHIRJSON {
				do {
					self.requester = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requester"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requester", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["scheduledDateTime"] {
			presentKeys.insert("scheduledDateTime")
			if let val = exist as? String {
				self.scheduledDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "scheduledDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["scheduledPeriod"] {
			presentKeys.insert("scheduledPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.scheduledPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "scheduledPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "scheduledPeriod", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let medium = self.medium {
			json["medium"] = medium.map() { $0.asJSON(errors: &errors) }
		}
		if let payload = self.payload {
			json["payload"] = payload.map() { $0.asJSON(errors: &errors) }
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON(errors: &errors)
		}
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON(errors: &errors) }
		}
		if let recipient = self.recipient {
			json["recipient"] = recipient.map() { $0.asJSON(errors: &errors) }
		}
		if let requestedOn = self.requestedOn {
			json["requestedOn"] = requestedOn.asJSON()
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON(errors: &errors)
		}
		if let scheduledDateTime = self.scheduledDateTime {
			json["scheduledDateTime"] = scheduledDateTime.asJSON()
		}
		if let scheduledPeriod = self.scheduledPeriod {
			json["scheduledPeriod"] = scheduledPeriod.asJSON(errors: &errors)
		}
		if let sender = self.sender {
			json["sender"] = sender.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Message payload.
 *
 *  Text, attachment(s), or resource(s) to be communicated to the recipient.
 */
open class CommunicationRequestPayload: BackboneElement {
	override open class var resourceType: String {
		get { return "CommunicationRequestPayload" }
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

