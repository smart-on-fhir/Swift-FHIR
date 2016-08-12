//
//  Communication.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Communication) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A record of information transmitted from a sender to a receiver.
 *
 *  An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public
 *  health agency was notified about a reportable condition.
 */
public class Communication: DomainResource {
	override public class var resourceName: String {
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
	
	/// in-progress | completed | suspended | rejected | failed.
	public var status: String?
	
	/// Focus of message.
	public var subject: Reference?
	
	/// Focal resources.
	public var topic: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["basedOn"] {
				presentKeys.insert("basedOn")
				if let val = exist as? [FHIRJSON] {
					self.basedOn = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basedOn", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["medium"] {
				presentKeys.insert("medium")
				if let val = exist as? [FHIRJSON] {
					self.medium = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "medium", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parent"] {
				presentKeys.insert("parent")
				if let val = exist as? [FHIRJSON] {
					self.parent = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "parent", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["payload"] {
				presentKeys.insert("payload")
				if let val = exist as? [FHIRJSON] {
					self.payload = CommunicationPayload.from(val, owner: self) as? [CommunicationPayload]
				}
				else {
					errors.append(FHIRJSONError(key: "payload", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["received"] {
				presentKeys.insert("received")
				if let val = exist as? String {
					self.received = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "received", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["recipient"] {
				presentKeys.insert("recipient")
				if let val = exist as? [FHIRJSON] {
					self.recipient = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "recipient", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sender"] {
				presentKeys.insert("sender")
				if let val = exist as? FHIRJSON {
					self.sender = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "sender", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sent"] {
				presentKeys.insert("sent")
				if let val = exist as? String {
					self.sent = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "sent", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["topic"] {
				presentKeys.insert("topic")
				if let val = exist as? [FHIRJSON] {
					self.topic = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "topic", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let basedOn = self.basedOn {
			json["basedOn"] = Reference.asJSONArray(basedOn)
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let medium = self.medium {
			json["medium"] = CodeableConcept.asJSONArray(medium)
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
		}
		if let parent = self.parent {
			json["parent"] = Reference.asJSONArray(parent)
		}
		if let payload = self.payload {
			json["payload"] = CommunicationPayload.asJSONArray(payload)
		}
		if let reason = self.reason {
			json["reason"] = CodeableConcept.asJSONArray(reason)
		}
		if let received = self.received {
			json["received"] = received.asJSON()
		}
		if let recipient = self.recipient {
			json["recipient"] = Reference.asJSONArray(recipient)
		}
		if let sender = self.sender {
			json["sender"] = sender.asJSON()
		}
		if let sent = self.sent {
			json["sent"] = sent.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = Reference.asJSONArray(topic)
		}
		
		return json
	}
}


/**
 *  Message payload.
 *
 *  Text, attachment(s), or resource(s) that was communicated to the recipient.
 */
public class CommunicationPayload: BackboneElement {
	override public class var resourceName: String {
		get { return "CommunicationPayload" }
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["contentAttachment"] {
				presentKeys.insert("contentAttachment")
				if let val = exist as? FHIRJSON {
					self.contentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contentAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contentReference"] {
				presentKeys.insert("contentReference")
				if let val = exist as? FHIRJSON {
					self.contentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contentReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contentString"] {
				presentKeys.insert("contentString")
				if let val = exist as? String {
					self.contentString = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentString", wants: String.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.contentString && nil == self.contentAttachment && nil == self.contentReference {
				errors.append(FHIRJSONError(key: "content*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

