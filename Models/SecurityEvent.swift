//
//  SecurityEvent.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (securityevent.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Event record kept for security purposes.
 *
 *  A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion
 *  attempts and monitoring for inappropriate usage.
 */
public class SecurityEvent: FHIRResource
{
	override public class var resourceName: String {
		get { return "SecurityEvent" }
	}
	
	/// What was done
	public var event: SecurityEventEvent?
	
	/// Specific instances of data or objects that have been accessed
	public var object: [SecurityEventObject]?
	
	/// A person, a hardware device or software process
	public var participant: [SecurityEventParticipant]?
	
	/// Application systems and processes
	public var source: SecurityEventSource?
	
	public convenience init(event: SecurityEventEvent?, participant: [SecurityEventParticipant]?, source: SecurityEventSource?) {
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["event"] as? JSONDictionary {
				self.event = SecurityEventEvent(json: val, owner: self)
			}
			if let val = js["object"] as? [JSONDictionary] {
				self.object = SecurityEventObject.from(val, owner: self) as? [SecurityEventObject]
			}
			if let val = js["participant"] as? [JSONDictionary] {
				self.participant = SecurityEventParticipant.from(val, owner: self) as? [SecurityEventParticipant]
			}
			if let val = js["source"] as? JSONDictionary {
				self.source = SecurityEventSource(json: val, owner: self)
			}
		}
	}
}


/**
 *  What was done.
 *
 *  Identifies the name, action type, time, and disposition of the audited event.
 */
public class SecurityEventEvent: FHIRElement
{
	override public class var resourceName: String {
		get { return "SecurityEventEvent" }
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
	
	public required init(json: JSONDictionary?) {
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
			if let val = js["subtype"] as? [JSONDictionary] {
				self.subtype = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Specific instances of data or objects that have been accessed.
 */
public class SecurityEventObject: FHIRElement
{
	override public class var resourceName: String {
		get { return "SecurityEventObject" }
	}
	
	/// Descriptive text
	public var description: String?
	
	/// Additional Information about the Object
	public var detail: [SecurityEventObjectDetail]?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["detail"] as? [JSONDictionary] {
				self.detail = SecurityEventObjectDetail.from(val, owner: self) as? [SecurityEventObjectDetail]
			}
			if let val = js["identifier"] as? JSONDictionary {
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
			if let val = js["reference"] as? JSONDictionary {
				self.reference = Reference(json: val, owner: self)
			}
			if let val = js["role"] as? String {
				self.role = val
			}
			if let val = js["sensitivity"] as? JSONDictionary {
				self.sensitivity = CodeableConcept(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}


/**
 *  Additional Information about the Object.
 */
public class SecurityEventObjectDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "SecurityEventObjectDetail" }
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
	
	public required init(json: JSONDictionary?) {
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
}


/**
 *  A person, a hardware device or software process.
 */
public class SecurityEventParticipant: FHIRElement
{
	override public class var resourceName: String {
		get { return "SecurityEventParticipant" }
	}
	
	/// Alternative User id e.g. authentication
	public var altId: String?
	
	/// Type of media
	public var media: Coding?
	
	/// Human-meaningful name for the user
	public var name: String?
	
	/// Logical network location for application activity
	public var network: SecurityEventParticipantNetwork?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["altId"] as? String {
				self.altId = val
			}
			if let val = js["media"] as? JSONDictionary {
				self.media = Coding(json: val, owner: self)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["network"] as? JSONDictionary {
				self.network = SecurityEventParticipantNetwork(json: val, owner: self)
			}
			if let val = js["reference"] as? JSONDictionary {
				self.reference = Reference(json: val, owner: self)
			}
			if let val = js["requestor"] as? Bool {
				self.requestor = val
			}
			if let val = js["role"] as? [JSONDictionary] {
				self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["userId"] as? String {
				self.userId = val
			}
		}
	}
}


/**
 *  Logical network location for application activity.
 *
 *  Logical network location for application activity, if the activity has a network location.
 */
public class SecurityEventParticipantNetwork: FHIRElement
{
	override public class var resourceName: String {
		get { return "SecurityEventParticipantNetwork" }
	}
	
	/// Identifier for the network access point of the user device
	public var identifier: String?
	
	/// The type of network access point
	public var type: String?
	
	public required init(json: JSONDictionary?) {
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
}


/**
 *  Application systems and processes.
 */
public class SecurityEventSource: FHIRElement
{
	override public class var resourceName: String {
		get { return "SecurityEventSource" }
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["site"] as? String {
				self.site = val
			}
			if let val = js["type"] as? [JSONDictionary] {
				self.type = Coding.from(val, owner: self) as? [Coding]
			}
		}
	}
}

