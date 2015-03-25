//
//  AuditEvent.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/AuditEvent) on 2015-03-25.
//  2015, SMART Platforms.
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["event"] as? FHIRJSON {
				self.event = AuditEventEvent(json: val, owner: self)
			}
			if let val = js["object"] as? [FHIRJSON] {
				self.object = AuditEventObject.from(val, owner: self) as? [AuditEventObject]
			}
			if let val = js["participant"] as? [FHIRJSON] {
				self.participant = AuditEventParticipant.from(val, owner: self) as? [AuditEventParticipant]
			}
			if let val = js["source"] as? FHIRJSON {
				self.source = AuditEventSource(json: val, owner: self)
			}
		}
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
	
	/// More specific type/id for the event
	public var subtype: [CodeableConcept]?
	
	/// Type/identifier of event
	public var type: CodeableConcept?
	
	public convenience init(dateTime: Instant?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != dateTime {
			self.dateTime = dateTime
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? String {
				self.action = val
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = Instant(string: val)
			}
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["outcomeDesc"] as? String {
				self.outcomeDesc = val
			}
			if let val = js["subtype"] as? [FHIRJSON] {
				self.subtype = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
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
	
	/// Functional application role of Object
	public var role: String?
	
	/// Policy-defined sensitivity for the object
	public var sensitivity: CodeableConcept?
	
	/// Object type being audited
	public var type: String?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["detail"] as? [FHIRJSON] {
				self.detail = AuditEventObjectDetail.from(val, owner: self) as? [AuditEventObjectDetail]
			}
			if let val = js["identifier"] as? FHIRJSON {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["lifecycle"] as? String {
				self.lifecycle = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["query"] as? String {
				self.query = Base64Binary(string: val)
			}
			if let val = js["reference"] as? FHIRJSON {
				self.reference = Reference(json: val, owner: self)
			}
			if let val = js["role"] as? String {
				self.role = val
			}
			if let val = js["sensitivity"] as? FHIRJSON {
				self.sensitivity = CodeableConcept(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
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
	
	public convenience init(type: String?, value: Base64Binary?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
		if nil != value {
			self.value = value
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["value"] as? String {
				self.value = Base64Binary(string: val)
			}
		}
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
	
	/// Direct reference to resource
	public var reference: Reference?
	
	/// Whether user is initiator
	public var requestor: Bool?
	
	/// User roles (e.g. local RBAC codes)
	public var role: [CodeableConcept]?
	
	/// Unique identifier for the user
	public var userId: String?
	
	public convenience init(requestor: Bool?) {
		self.init(json: nil)
		if nil != requestor {
			self.requestor = requestor
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["altId"] as? String {
				self.altId = val
			}
			if let val = js["location"] as? FHIRJSON {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["media"] as? FHIRJSON {
				self.media = Coding(json: val, owner: self)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["network"] as? FHIRJSON {
				self.network = AuditEventParticipantNetwork(json: val, owner: self)
			}
			if let val = js["policy"] as? [String] {
				self.policy = NSURL.from(val)
			}
			if let val = js["reference"] as? FHIRJSON {
				self.reference = Reference(json: val, owner: self)
			}
			if let val = js["requestor"] as? Bool {
				self.requestor = val
			}
			if let val = js["role"] as? [FHIRJSON] {
				self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["userId"] as? String {
				self.userId = val
			}
		}
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
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
	
	public convenience init(identifier: String?) {
		self.init(json: nil)
		if nil != identifier {
			self.identifier = identifier
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["site"] as? String {
				self.site = val
			}
			if let val = js["type"] as? [FHIRJSON] {
				self.type = Coding.from(val, owner: self) as? [Coding]
			}
		}
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

