//
//  AuditEvent.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/AuditEvent) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Event record kept for security purposes.
 *
 *  A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion
 *  attempts and monitoring for inappropriate usage.
 */
public class AuditEvent: DomainResource
{
	override public class var resourceName: String {
		get { return "AuditEvent" }
	}
	
	/// What was done
	public var event: AuditEventEvent?
	
	/// Specific instances of data or objects that have been accessed
	public var object: [AuditEventObject]?
	
	/// A person, a hardware device or software process
	public var participant: [AuditEventParticipant]?
	
	/// Application systems and processes
	public var source: AuditEventSource?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(event: AuditEventEvent?, participant: [AuditEventParticipant]?, source: AuditEventSource?) {
		self.init(json: nil)
		if nil != event {
			self.event = event
		}
		if nil != participant {
			self.participant = participant
		}
		if nil != source {
			self.source = source
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["event"] {
				presentKeys.insert("event")
				if let val = exist as? FHIRJSON {
					self.event = AuditEventEvent(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "event", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "event"))
			}
			if let exist: AnyObject = js["object"] {
				presentKeys.insert("object")
				if let val = exist as? [FHIRJSON] {
					self.object = AuditEventObject.from(val, owner: self) as? [AuditEventObject]
				}
				else {
					errors.append(FHIRJSONError(key: "object", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["participant"] {
				presentKeys.insert("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = AuditEventParticipant.from(val, owner: self) as? [AuditEventParticipant]
				}
				else {
					errors.append(FHIRJSONError(key: "participant", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "participant"))
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? FHIRJSON {
					self.source = AuditEventSource(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "source"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let event = self.event {
			json["event"] = event.asJSON()
		}
		if let object = self.object {
			json["object"] = AuditEventObject.asJSONArray(object)
		}
		if let participant = self.participant {
			json["participant"] = AuditEventParticipant.asJSONArray(participant)
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		
		return json
	}
}


/**
 *  What was done.
 *
 *  Identifies the name, action type, time, and disposition of the audited event.
 */
public class AuditEventEvent: FHIRElement
{
	override public class var resourceName: String {
		get { return "AuditEventEvent" }
	}
	
	/// Type of action performed during the event
	public var action: String?
	
	/// Time when the event occurred on source
	public var dateTime: Instant?
	
	/// Whether the event succeeded or failed
	public var outcome: String?
	
	/// Description of the event outcome
	public var outcomeDesc: String?
	
	/// The purposeOfUse of the event
	public var purposeOfEvent: [Coding]?
	
	/// More specific type/id for the event
	public var subtype: [CodeableConcept]?
	
	/// Type/identifier of event
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(dateTime: Instant?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != dateTime {
			self.dateTime = dateTime
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? String {
					self.action = val
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dateTime"] {
				presentKeys.insert("dateTime")
				if let val = exist as? String {
					self.dateTime = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "dateTime"))
			}
			if let exist: AnyObject = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? String {
					self.outcome = val
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["outcomeDesc"] {
				presentKeys.insert("outcomeDesc")
				if let val = exist as? String {
					self.outcomeDesc = val
				}
				else {
					errors.append(FHIRJSONError(key: "outcomeDesc", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["purposeOfEvent"] {
				presentKeys.insert("purposeOfEvent")
				if let val = exist as? [FHIRJSON] {
					self.purposeOfEvent = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "purposeOfEvent", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subtype"] {
				presentKeys.insert("subtype")
				if let val = exist as? [FHIRJSON] {
					self.subtype = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "subtype", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.asJSON()
		}
		if let dateTime = self.dateTime {
			json["dateTime"] = dateTime.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let outcomeDesc = self.outcomeDesc {
			json["outcomeDesc"] = outcomeDesc.asJSON()
		}
		if let purposeOfEvent = self.purposeOfEvent {
			json["purposeOfEvent"] = Coding.asJSONArray(purposeOfEvent)
		}
		if let subtype = self.subtype {
			json["subtype"] = CodeableConcept.asJSONArray(subtype)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Specific instances of data or objects that have been accessed.
 */
public class AuditEventObject: FHIRElement
{
	override public class var resourceName: String {
		get { return "AuditEventObject" }
	}
	
	/// Descriptive text
	public var description_fhir: String?
	
	/// Additional Information about the Object
	public var detail: [AuditEventObjectDetail]?
	
	/// Specific instance of object (e.g. versioned)
	public var identifier: Identifier?
	
	/// Life-cycle stage for the object
	public var lifecycle: String?
	
	/// Instance-specific descriptor for Object
	public var name: String?
	
	/// Actual query for object
	public var query: Base64Binary?
	
	/// Specific instance of resource (e.g. versioned)
	public var reference: Reference?
	
	/// What role the Object played
	public var role: String?
	
	/// Policy-defined sensitivity for the object
	public var sensitivity: CodeableConcept?
	
	/// Type of object involved
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = AuditEventObjectDetail.from(val, owner: self) as? [AuditEventObjectDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lifecycle"] {
				presentKeys.insert("lifecycle")
				if let val = exist as? String {
					self.lifecycle = val
				}
				else {
					errors.append(FHIRJSONError(key: "lifecycle", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["query"] {
				presentKeys.insert("query")
				if let val = exist as? String {
					self.query = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "query", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? FHIRJSON {
					self.reference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? String {
					self.role = val
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sensitivity"] {
				presentKeys.insert("sensitivity")
				if let val = exist as? FHIRJSON {
					self.sensitivity = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "sensitivity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = AuditEventObjectDetail.asJSONArray(detail)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let lifecycle = self.lifecycle {
			json["lifecycle"] = lifecycle.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let query = self.query {
			json["query"] = query.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		if let sensitivity = self.sensitivity {
			json["sensitivity"] = sensitivity.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Additional Information about the Object.
 */
public class AuditEventObjectDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "AuditEventObjectDetail" }
	}
	
	/// Name of the property
	public var type: String?
	
	/// Property value
	public var value: Base64Binary?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String?, value: Base64Binary?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
		if nil != value {
			self.value = value
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  A person, a hardware device or software process.
 */
public class AuditEventParticipant: FHIRElement
{
	override public class var resourceName: String {
		get { return "AuditEventParticipant" }
	}
	
	/// Alternative User id e.g. authentication
	public var altId: String?
	
	/// Where
	public var location: Reference?
	
	/// Type of media
	public var media: Coding?
	
	/// Human-meaningful name for the user
	public var name: String?
	
	/// Logical network location for application activity
	public var network: AuditEventParticipantNetwork?
	
	/// Policy that authorized event
	public var policy: [NSURL]?
	
	/// Participant purposeOfUse
	public var purposeOfUse: [Coding]?
	
	/// Direct reference to resource
	public var reference: Reference?
	
	/// Whether user is initiator
	public var requestor: Bool?
	
	/// User roles (e.g. local RBAC codes)
	public var role: [CodeableConcept]?
	
	/// Unique identifier for the user
	public var userId: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(requestor: Bool?) {
		self.init(json: nil)
		if nil != requestor {
			self.requestor = requestor
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["altId"] {
				presentKeys.insert("altId")
				if let val = exist as? String {
					self.altId = val
				}
				else {
					errors.append(FHIRJSONError(key: "altId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["media"] {
				presentKeys.insert("media")
				if let val = exist as? FHIRJSON {
					self.media = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "media", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["network"] {
				presentKeys.insert("network")
				if let val = exist as? FHIRJSON {
					self.network = AuditEventParticipantNetwork(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "network", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["policy"] {
				presentKeys.insert("policy")
				if let val = exist as? [String] {
					self.policy = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "policy", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["purposeOfUse"] {
				presentKeys.insert("purposeOfUse")
				if let val = exist as? [FHIRJSON] {
					self.purposeOfUse = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "purposeOfUse", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? FHIRJSON {
					self.reference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestor"] {
				presentKeys.insert("requestor")
				if let val = exist as? Bool {
					self.requestor = val
				}
				else {
					errors.append(FHIRJSONError(key: "requestor", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "requestor"))
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? [FHIRJSON] {
					self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["userId"] {
				presentKeys.insert("userId")
				if let val = exist as? String {
					self.userId = val
				}
				else {
					errors.append(FHIRJSONError(key: "userId", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let altId = self.altId {
			json["altId"] = altId.asJSON()
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let media = self.media {
			json["media"] = media.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let network = self.network {
			json["network"] = network.asJSON()
		}
		if let policy = self.policy {
			var arr = [AnyObject]()
			for val in policy {
				arr.append(val.asJSON())
			}
			json["policy"] = arr
		}
		if let purposeOfUse = self.purposeOfUse {
			json["purposeOfUse"] = Coding.asJSONArray(purposeOfUse)
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let requestor = self.requestor {
			json["requestor"] = requestor.asJSON()
		}
		if let role = self.role {
			json["role"] = CodeableConcept.asJSONArray(role)
		}
		if let userId = self.userId {
			json["userId"] = userId.asJSON()
		}
		
		return json
	}
}


/**
 *  Logical network location for application activity.
 *
 *  Logical network location for application activity, if the activity has a network location.
 */
public class AuditEventParticipantNetwork: FHIRElement
{
	override public class var resourceName: String {
		get { return "AuditEventParticipantNetwork" }
	}
	
	/// Identifier for the network access point of the user device
	public var identifier: String?
	
	/// The type of network access point
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Application systems and processes.
 */
public class AuditEventSource: FHIRElement
{
	override public class var resourceName: String {
		get { return "AuditEventSource" }
	}
	
	/// The id of source where event originated
	public var identifier: String?
	
	/// Logical source location within the enterprise
	public var site: String?
	
	/// The type of source where event originated
	public var type: [Coding]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: String?) {
		self.init(json: nil)
		if nil != identifier {
			self.identifier = identifier
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["site"] {
				presentKeys.insert("site")
				if let val = exist as? String {
					self.site = val
				}
				else {
					errors.append(FHIRJSONError(key: "site", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		if let type = self.type {
			json["type"] = Coding.asJSONArray(type)
		}
		
		return json
	}
}

