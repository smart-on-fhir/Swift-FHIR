//
//  MessageHeader.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/MessageHeader) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A resource that describes a message that is exchanged between systems.
 *
 *  The header for a message exchange that is either requesting or responding to an action.  The Reference(s) that are
 *  the subject of the action as well as other Information related to the action are typically transmitted in a bundle
 *  in which the MessageHeader resource instance is the first resource in the bundle.
 */
public class MessageHeader: DomainResource
{
	override public class var resourceName: String {
		get { return "MessageHeader" }
	}
	
	/// The source of the decision
	public var author: Reference?
	
	/// The actual content of the message
	public var data: [Reference]?
	
	/// Message Destination Application(s)
	public var destination: [MessageHeaderDestination]?
	
	/// The source of the data entry
	public var enterer: Reference?
	
	/// Code for the event this message represents
	public var event: Coding?
	
	/// Id of this message
	public var identifier: String?
	
	/// Cause of event
	public var reason: CodeableConcept?
	
	/// Intended "real-world" recipient for the data
	public var receiver: Reference?
	
	/// If this is a reply to prior message
	public var response: MessageHeaderResponse?
	
	/// Final responsibility for event
	public var responsible: Reference?
	
	/// Message Source Application
	public var source: MessageHeaderSource?
	
	/// Time that the message was sent
	public var timestamp: Instant?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(event: Coding?, identifier: String?, source: MessageHeaderSource?, timestamp: Instant?) {
		self.init(json: nil)
		if nil != event {
			self.event = event
		}
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != source {
			self.source = source
		}
		if nil != timestamp {
			self.timestamp = timestamp
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.addObject("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"author\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["data"] {
				presentKeys.addObject("data")
				if let val = exist as? [FHIRJSON] {
					self.data = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"data\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["destination"] {
				presentKeys.addObject("destination")
				if let val = exist as? [FHIRJSON] {
					self.destination = MessageHeaderDestination.from(val, owner: self) as? [MessageHeaderDestination]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"destination\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["enterer"] {
				presentKeys.addObject("enterer")
				if let val = exist as? FHIRJSON {
					self.enterer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"enterer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["event"] {
				presentKeys.addObject("event")
				if let val = exist as? FHIRJSON {
					self.event = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"event\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"event\" but it is missing"))
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"identifier\" but it is missing"))
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.addObject("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reason\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["receiver"] {
				presentKeys.addObject("receiver")
				if let val = exist as? FHIRJSON {
					self.receiver = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"receiver\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["response"] {
				presentKeys.addObject("response")
				if let val = exist as? FHIRJSON {
					self.response = MessageHeaderResponse(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"response\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["responsible"] {
				presentKeys.addObject("responsible")
				if let val = exist as? FHIRJSON {
					self.responsible = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"responsible\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.addObject("source")
				if let val = exist as? FHIRJSON {
					self.source = MessageHeaderSource(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"source\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"source\" but it is missing"))
			}
			if let exist: AnyObject = js["timestamp"] {
				presentKeys.addObject("timestamp")
				if let val = exist as? String {
					self.timestamp = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"timestamp\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"timestamp\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let data = self.data {
			json["data"] = Reference.asJSONArray(data)
		}
		if let destination = self.destination {
			json["destination"] = MessageHeaderDestination.asJSONArray(destination)
		}
		if let enterer = self.enterer {
			json["enterer"] = enterer.asJSON()
		}
		if let event = self.event {
			json["event"] = event.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let receiver = self.receiver {
			json["receiver"] = receiver.asJSON()
		}
		if let response = self.response {
			json["response"] = response.asJSON()
		}
		if let responsible = self.responsible {
			json["responsible"] = responsible.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let timestamp = self.timestamp {
			json["timestamp"] = timestamp.asJSON()
		}
		
		return json
	}
}


/**
 *  Message Destination Application(s).
 *
 *  The destination application which the message is intended for.
 */
public class MessageHeaderDestination: FHIRElement
{
	override public class var resourceName: String {
		get { return "MessageHeaderDestination" }
	}
	
	/// Actual destination address or id
	public var endpoint: NSURL?
	
	/// Name of system
	public var name: String?
	
	/// Particular delivery destination within the destination
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(endpoint: NSURL?) {
		self.init(json: nil)
		if nil != endpoint {
			self.endpoint = endpoint
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["endpoint"] {
				presentKeys.addObject("endpoint")
				if let val = exist as? String {
					self.endpoint = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"endpoint\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"endpoint\" but it is missing"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}


/**
 *  If this is a reply to prior message.
 *
 *  Information about the message that this message is a response to.  Only present if this message is a response.
 */
public class MessageHeaderResponse: FHIRElement
{
	override public class var resourceName: String {
		get { return "MessageHeaderResponse" }
	}
	
	/// ok | transient-error | fatal-error
	public var code: String?
	
	/// Specific list of hints/warnings/errors
	public var details: Reference?
	
	/// Id of original message
	public var identifier: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: String?, identifier: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != identifier {
			self.identifier = identifier
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["details"] {
				presentKeys.addObject("details")
				if let val = exist as? FHIRJSON {
					self.details = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"details\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"identifier\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let details = self.details {
			json["details"] = details.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		
		return json
	}
}


/**
 *  Message Source Application.
 *
 *  The source application from which this message originated.
 */
public class MessageHeaderSource: FHIRElement
{
	override public class var resourceName: String {
		get { return "MessageHeaderSource" }
	}
	
	/// Human contact for problems
	public var contact: ContactPoint?
	
	/// Actual message source address or id
	public var endpoint: NSURL?
	
	/// Name of system
	public var name: String?
	
	/// Name of software running the system
	public var software: String?
	
	/// Version of software running
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(endpoint: NSURL?) {
		self.init(json: nil)
		if nil != endpoint {
			self.endpoint = endpoint
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? FHIRJSON {
					self.contact = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["endpoint"] {
				presentKeys.addObject("endpoint")
				if let val = exist as? String {
					self.endpoint = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"endpoint\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"endpoint\" but it is missing"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["software"] {
				presentKeys.addObject("software")
				if let val = exist as? String {
					self.software = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"software\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = contact.asJSON()
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let software = self.software {
			json["software"] = software.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

