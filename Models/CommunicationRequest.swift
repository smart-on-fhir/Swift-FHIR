//
//  CommunicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/CommunicationRequest) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A request for information to be sent to a receiver.
 *
 *  A request to convey information. E.g., the CDS system proposes that an alert be sent to a responsible provider, the
 *  CDS system proposes that the public health agency be notified about a reportable condition.
 */
public class CommunicationRequest: DomainResource
{
	override public class var resourceName: String {
		get { return "CommunicationRequest" }
	}
	
	/// Message category
	public var category: CodeableConcept?
	
	/// Encounter leading to message
	public var encounter: Reference?
	
	/// Unique identifier
	public var identifier: [Identifier]?
	
	/// Communication medium
	public var medium: [CodeableConcept]?
	
	/// When ordered or proposed
	public var orderedOn: DateTime?
	
	/// Message payload
	public var payload: [CommunicationRequestPayload]?
	
	/// Message urgency
	public var priority: CodeableConcept?
	
	/// Indication for message
	public var reason: [CodeableConcept]?
	
	/// Message recipient
	public var recipient: [Reference]?
	
	/// Requester of communication
	public var requester: Reference?
	
	/// When scheduled
	public var scheduledTime: DateTime?
	
	/// Message sender
	public var sender: Reference?
	
	/// proposed | planned | requested | received | accepted | in-progress | completed | suspended | rejected | failed
	public var status: String?
	
	/// Focus of message
	public var subject: Reference?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["category"] as? FHIRJSON {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["encounter"] as? FHIRJSON {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["medium"] as? [FHIRJSON] {
				self.medium = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["orderedOn"] as? String {
				self.orderedOn = DateTime(string: val)
			}
			if let val = js["payload"] as? [FHIRJSON] {
				self.payload = CommunicationRequestPayload.from(val, owner: self) as? [CommunicationRequestPayload]
			}
			if let val = js["priority"] as? FHIRJSON {
				self.priority = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reason"] as? [FHIRJSON] {
				self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["recipient"] as? [FHIRJSON] {
				self.recipient = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["requester"] as? FHIRJSON {
				self.requester = Reference(json: val, owner: self)
			}
			if let val = js["scheduledTime"] as? String {
				self.scheduledTime = DateTime(string: val)
			}
			if let val = js["sender"] as? FHIRJSON {
				self.sender = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? FHIRJSON {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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
		if let orderedOn = self.orderedOn {
			json["orderedOn"] = orderedOn.asJSON()
		}
		if let payload = self.payload {
			json["payload"] = CommunicationRequestPayload.asJSONArray(payload)
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = CodeableConcept.asJSONArray(reason)
		}
		if let recipient = self.recipient {
			json["recipient"] = Reference.asJSONArray(recipient)
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON()
		}
		if let scheduledTime = self.scheduledTime {
			json["scheduledTime"] = scheduledTime.asJSON()
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
public class CommunicationRequestPayload: FHIRElement
{
	override public class var resourceName: String {
		get { return "CommunicationRequestPayload" }
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentAttachment"] as? FHIRJSON {
				self.contentAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["contentReference"] as? FHIRJSON {
				self.contentReference = Reference(json: val, owner: self)
			}
			if let val = js["contentString"] as? String {
				self.contentString = val
			}
		}
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

