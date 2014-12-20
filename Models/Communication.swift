//
//  Communication.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (communication.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Communication.
 *
 *  An occurrence of information being transmitted. E.g., an alert that was sent to a responsible provider, a public
 *  health agency was notified about a reportable condition.
 */
public class Communication: FHIRResource
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
	public var received: NSDate?
	
	/// Message recipient
	public var recipient: [Reference]?
	
	/// Message sender
	public var sender: Reference?
	
	/// When sent
	public var sent: NSDate?
	
	/// in progress | completed | suspended | rejected | failed
	public var status: String?
	
	/// Focus of message
	public var subject: Reference?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["category"] as? NSDictionary {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["medium"] as? [NSDictionary] {
				self.medium = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["payload"] as? [NSDictionary] {
				self.payload = CommunicationPayload.from(val, owner: self) as? [CommunicationPayload]
			}
			if let val = js["reason"] as? [NSDictionary] {
				self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["received"] as? String {
				self.received = NSDate(json: val)
			}
			if let val = js["recipient"] as? [NSDictionary] {
				self.recipient = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["sender"] as? NSDictionary {
				self.sender = Reference(json: val, owner: self)
			}
			if let val = js["sent"] as? String {
				self.sent = NSDate(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentAttachment"] as? NSDictionary {
				self.contentAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["contentReference"] as? NSDictionary {
				self.contentReference = Reference(json: val, owner: self)
			}
			if let val = js["contentString"] as? String {
				self.contentString = val
			}
		}
	}
}

