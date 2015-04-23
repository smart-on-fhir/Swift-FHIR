//
//  CommunicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/CommunicationRequest) on 2015-04-23.
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
			if let exist: AnyObject = js["orderedOn"] {
				presentKeys.addObject("orderedOn")
				if let val = exist as? String {
					self.orderedOn = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"orderedOn\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["payload"] {
				presentKeys.addObject("payload")
				if let val = exist as? [FHIRJSON] {
					self.payload = CommunicationRequestPayload.from(val, owner: self) as? [CommunicationRequestPayload]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"payload\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["priority"] {
				presentKeys.addObject("priority")
				if let val = exist as? FHIRJSON {
					self.priority = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"priority\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["recipient"] {
				presentKeys.addObject("recipient")
				if let val = exist as? [FHIRJSON] {
					self.recipient = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"recipient\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requester"] {
				presentKeys.addObject("requester")
				if let val = exist as? FHIRJSON {
					self.requester = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requester\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["scheduledTime"] {
				presentKeys.addObject("scheduledTime")
				if let val = exist as? String {
					self.scheduledTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"scheduledTime\" to be `String`, but is \(exist.dynamicType)"))
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

