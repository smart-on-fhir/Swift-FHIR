//
//  CommunicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/CommunicationRequest) on 2016-08-17.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["medium"] {
				presentKeys.insert("medium")
				if let val = exist as? [FHIRJSON] {
					self.medium = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "medium", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["payload"] {
				presentKeys.insert("payload")
				if let val = exist as? [FHIRJSON] {
					self.payload = CommunicationRequestPayload.instantiate(fromArray: val, owner: self) as? [CommunicationRequestPayload]
				}
				else {
					errors.append(FHIRJSONError(key: "payload", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? FHIRJSON {
					self.priority = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["recipient"] {
				presentKeys.insert("recipient")
				if let val = exist as? [FHIRJSON] {
					self.recipient = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "recipient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestedOn"] {
				presentKeys.insert("requestedOn")
				if let val = exist as? String {
					self.requestedOn = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "requestedOn", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["requester"] {
				presentKeys.insert("requester")
				if let val = exist as? FHIRJSON {
					self.requester = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requester", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["scheduledDateTime"] {
				presentKeys.insert("scheduledDateTime")
				if let val = exist as? String {
					self.scheduledDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["scheduledPeriod"] {
				presentKeys.insert("scheduledPeriod")
				if let val = exist as? FHIRJSON {
					self.scheduledPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledPeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["sender"] {
				presentKeys.insert("sender")
				if let val = exist as? FHIRJSON {
					self.sender = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "sender", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let medium = self.medium {
			json["medium"] = medium.map() { $0.asJSON() }
		}
		if let payload = self.payload {
			json["payload"] = payload.map() { $0.asJSON() }
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON() }
		}
		if let recipient = self.recipient {
			json["recipient"] = recipient.map() { $0.asJSON() }
		}
		if let requestedOn = self.requestedOn {
			json["requestedOn"] = requestedOn.asJSON()
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON()
		}
		if let scheduledDateTime = self.scheduledDateTime {
			json["scheduledDateTime"] = scheduledDateTime.asJSON()
		}
		if let scheduledPeriod = self.scheduledPeriod {
			json["scheduledPeriod"] = scheduledPeriod.asJSON()
		}
		if let sender = self.sender {
			json["sender"] = sender.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(contentAttachment: Attachment, contentReference: Reference, contentString: String) {
		self.init(json: nil)
		self.contentAttachment = contentAttachment
		self.contentReference = contentReference
		self.contentString = contentString
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["contentAttachment"] {
				presentKeys.insert("contentAttachment")
				if let val = exist as? FHIRJSON {
					self.contentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contentAttachment", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["contentReference"] {
				presentKeys.insert("contentReference")
				if let val = exist as? FHIRJSON {
					self.contentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contentReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["contentString"] {
				presentKeys.insert("contentString")
				if let val = exist as? String {
					self.contentString = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentString", wants: String.self, has: type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.contentString && nil == self.contentAttachment && nil == self.contentReference {
				errors.append(FHIRJSONError(key: "content*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON()
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON()
		}
		if let contentString = self.contentString {
			json["contentString"] = contentString.asJSON()
		}
		
		return json
	}
}

