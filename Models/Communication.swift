//
//  Communication.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Communication) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Communication.
 *
 *  An occurrence of information being transmitted. E.g., an alert that was sent to a responsible provider, a public
 *  health agency was notified about a reportable condition.
 */
public class Communication: DomainResource
{
	override public class var resourceName: String {
		get { return "Communication" }
	}
	
	/// Message category
	public var category: CodeableConcept?
	
	/// Encounter leading to message
	public var encounter: Reference?
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// Communication medium
	public var medium: [CodeableConcept]?
	
	/// Message payload
	public var payload: [CommunicationPayload]?
	
	/// Indication for message
	public var reason: [CodeableConcept]?
	
	/// When received
	public var received: DateTime?
	
	/// Message recipient
	public var recipient: [Reference]?
	
	/// Message sender
	public var sender: Reference?
	
	/// When sent
	public var sent: DateTime?
	
	/// in-progress | completed | suspended | rejected | failed
	public var status: String?
	
	/// Focus of message
	public var subject: Reference?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["category"] as? JSONDictionary {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["medium"] as? [JSONDictionary] {
				self.medium = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["payload"] as? [JSONDictionary] {
				self.payload = CommunicationPayload.from(val, owner: self) as? [CommunicationPayload]
			}
			if let val = js["reason"] as? [JSONDictionary] {
				self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["received"] as? String {
				self.received = DateTime(string: val)
			}
			if let val = js["recipient"] as? [JSONDictionary] {
				self.recipient = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["sender"] as? JSONDictionary {
				self.sender = Reference(json: val, owner: self)
			}
			if let val = js["sent"] as? String {
				self.sent = DateTime(string: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let medium = self.medium {
			json["medium"] = CodeableConcept.asJSONArray(medium)
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
		
		return json
	}
}


/**
 *  Message payload.
 *
 *  Text, attachment(s), or resource(s) to be communicated to the recipient.
 */
public class CommunicationPayload: FHIRElement
{
	override public class var resourceName: String {
		get { return "CommunicationPayload" }
	}
	
	/// Message part content
	public var contentAttachment: Attachment?
	
	/// Message part content
	public var contentReference: Reference?
	
	/// Message part content
	public var contentString: String?
	
	public convenience init(contentAttachment: Attachment?, contentReference: Reference?, contentString: String?) {
		self.init(json: nil)
		if nil != contentAttachment {
			self.contentAttachment = contentAttachment
		}
		if nil != contentReference {
			self.contentReference = contentReference
		}
		if nil != contentString {
			self.contentString = contentString
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentAttachment"] as? JSONDictionary {
				self.contentAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["contentReference"] as? JSONDictionary {
				self.contentReference = Reference(json: val, owner: self)
			}
			if let val = js["contentString"] as? String {
				self.contentString = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

