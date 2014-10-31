//
//  SecurityEvent.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (securityevent.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Event record kept for security purposes.
 *
 *  Scope and Usage The security event is based on the ATNA Audit record definitions, originally from RFC 3881, and now
 *  managed by DICOM (see DICOM Part 15 Annex A5). This resource is managed collaboratively between HL7, DICOM, and IHE
 *  for the MHD/mHealth initiatives.
 *  
 *  The primary purpose of this resource is the maintenance of audit log information. However, it can also be used for
 *  simple event-based notification or even general indexing of resources stored in a variety of repositories.
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
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["event"] as? NSDictionary {
				self.event = SecurityEventEvent(json: val)
			}
			if let val = js["object"] as? [NSDictionary] {
				self.object = SecurityEventObject.from(val) as? [SecurityEventObject]
			}
			if let val = js["participant"] as? [NSDictionary] {
				self.participant = SecurityEventParticipant.from(val) as? [SecurityEventParticipant]
			}
			if let val = js["source"] as? NSDictionary {
				self.source = SecurityEventSource(json: val)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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
	/// Type of action performed during the event
	public var action: String?
	
	/// Time when the event occurred on source
	public var dateTime: NSDate?
	
	/// Whether the event succeeded or failed
	public var outcome: String?
	
	/// Description of the event outcome
	public var outcomeDesc: String?
	
	/// More specific type/id for the event
	public var subtype: [CodeableConcept]?
	
	/// Type/identifier of event
	public var type: CodeableConcept?
	
	public convenience init(dateTime: NSDate?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != dateTime {
			self.dateTime = dateTime
		}
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? String {
				self.action = val
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = NSDate(json: val)
			}
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["outcomeDesc"] as? String {
				self.outcomeDesc = val
			}
			if let val = js["subtype"] as? [NSDictionary] {
				self.subtype = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
		}
	}
}


/**
 *  A person, a hardware device or software process.
 */
public class SecurityEventParticipant: FHIRElement
{	
	/// Alternative User id e.g. authentication
	public var altId: String?
	
	/// Type of media
	public var media: Coding?
	
	/// Human-meaningful name for the user
	public var name: String?
	
	/// Logical network location for application activity
	public var network: SecurityEventParticipantNetwork?
	
	/// Direct reference to resource
	public var reference: FHIRReference<Practitioner>?
	
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["altId"] as? String {
				self.altId = val
			}
			if let val = js["media"] as? NSDictionary {
				self.media = Coding(json: val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["network"] as? NSDictionary {
				self.network = SecurityEventParticipantNetwork(json: val)
			}
			if let val = js["reference"] as? NSDictionary {
				self.reference = FHIRReference(json: val, owner: self)
			}
			if let val = js["requestor"] as? Int {
				self.requestor = (1 == val)
			}
			if let val = js["role"] as? [NSDictionary] {
				self.role = CodeableConcept.from(val) as? [CodeableConcept]
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
	/// Identifier for the network access point of the user device
	public var identifier: String?
	
	/// The type of network access point
	public var type: String?
	

	public required init(json: NSDictionary?) {
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["site"] as? String {
				self.site = val
			}
			if let val = js["type"] as? [NSDictionary] {
				self.type = Coding.from(val) as? [Coding]
			}
		}
	}
}


/**
 *  Specific instances of data or objects that have been accessed.
 */
public class SecurityEventObject: FHIRElement
{	
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
	public var query: String?
	
	/// Specific instance of resource (e.g. versioned)
	public var reference: FHIRReference<FHIRResource>?
	
	/// Functional application role of Object
	public var role: String?
	
	/// Policy-defined sensitivity for the object
	public var sensitivity: CodeableConcept?
	
	/// Object type being audited
	public var type: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["detail"] as? [NSDictionary] {
				self.detail = SecurityEventObjectDetail.from(val) as? [SecurityEventObjectDetail]
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["lifecycle"] as? String {
				self.lifecycle = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["query"] as? String {
				self.query = val
			}
			if let val = js["reference"] as? NSDictionary {
				self.reference = FHIRReference(json: val, owner: self)
			}
			if let val = js["role"] as? String {
				self.role = val
			}
			if let val = js["sensitivity"] as? NSDictionary {
				self.sensitivity = CodeableConcept(json: val)
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
	/// Name of the property
	public var type: String?
	
	/// Property value
	public var value: String?
	
	public convenience init(type: String?, value: String?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
		if nil != value {
			self.value = value
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
	}
}

