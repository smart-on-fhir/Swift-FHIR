//
//  CommunicationRequest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (communicationrequest.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Communication Request.
 *
 *  A request to convey information. E.g., the CDS system proposes that an alert be sent to a responsible provider, the
 *  CDS system proposes that the public health agency be notified about a reportable condition.
 */
public class CommunicationRequest: FHIRResource
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
	
	/// proposed | planned | requested | received | accepted | in progress | completed | suspended | rejected | failed
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
			if let val = js["orderedOn"] as? String {
				self.orderedOn = DateTime(string: val)
			}
			if let val = js["payload"] as? [JSONDictionary] {
				self.payload = CommunicationRequestPayload.from(val, owner: self) as? [CommunicationRequestPayload]
			}
			if let val = js["priority"] as? JSONDictionary {
				self.priority = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reason"] as? [JSONDictionary] {
				self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["recipient"] as? [JSONDictionary] {
				self.recipient = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["requester"] as? JSONDictionary {
				self.requester = Reference(json: val, owner: self)
			}
			if let val = js["scheduledTime"] as? String {
				self.scheduledTime = DateTime(string: val)
			}
			if let val = js["sender"] as? JSONDictionary {
				self.sender = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
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
}

