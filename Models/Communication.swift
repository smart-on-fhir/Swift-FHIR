//
//  Communication.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Communication) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A record of information transmitted from a sender to a receiver.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.addObject("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"category\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.addObject("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"encounter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["medium"] {
				presentKeys.addObject("medium")
				if let val = exist as? [FHIRJSON] {
					self.medium = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"medium\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["payload"] {
				presentKeys.addObject("payload")
				if let val = exist as? [FHIRJSON] {
					self.payload = CommunicationPayload.from(val, owner: self) as? [CommunicationPayload]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"payload\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.addObject("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reason\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["received"] {
				presentKeys.addObject("received")
				if let val = exist as? String {
					self.received = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"received\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["recipient"] {
				presentKeys.addObject("recipient")
				if let val = exist as? [FHIRJSON] {
					self.recipient = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"recipient\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sender"] {
				presentKeys.addObject("sender")
				if let val = exist as? FHIRJSON {
					self.sender = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sender\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sent"] {
				presentKeys.addObject("sent")
				if let val = exist as? String {
					self.sent = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sent\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
 *  Text, attachment(s), or resource(s) that was communicated to the recipient.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["contentAttachment"] {
				presentKeys.addObject("contentAttachment")
				if let val = exist as? FHIRJSON {
					self.contentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contentAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contentReference"] {
				presentKeys.addObject("contentReference")
				if let val = exist as? FHIRJSON {
					self.contentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contentReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contentString"] {
				presentKeys.addObject("contentString")
				if let val = exist as? String {
					self.contentString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contentString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.contentString && nil == self.contentAttachment && nil == self.contentReference {
				errors.append(fhir_generateJSONError("\(self) expects at least one of nonoptional JSON property \"content[x]\" but none was found"))
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

