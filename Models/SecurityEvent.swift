//
//  SecurityEvent.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-18.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Event record kept for security purposes.
 *
 *  Scope and Usage The security event is based on the ATNA Audit record definitions, originally from RFC 3881,
 *  and now managed by DICOM (see DICOM Part 15 Annex A5). This resource is managed collaboratively between HL7,
 *  DICOM, and IHE for the MHD/mHealth initiatives.
 *  
 *  The primary purpose of this resource is the maintenance of audit log information. However, it can also be used
 *  for simple event-based notification or even general indexing of resources stored in a variety of repositories.
 */
class SecurityEvent: FHIRResource
{
	override class var resourceName: String {
		get { return "SecurityEvent" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! What was done */
	var event: SecurityEventEvent?
	
	/*! A person, a hardware device or software process */
	var participant: [SecurityEventParticipant]?
	
	/*! Application systems and processes */
	var source: SecurityEventSource?
	
	/*! Specific instances of data or objects that have been accessed */
	var object: [SecurityEventObject]?
	
	convenience init(event: SecurityEventEvent?, participant: [SecurityEventParticipant]?, source: SecurityEventSource?) {
		self.init(json: nil)
		if event {
			self.event = event
		}
		if participant {
			self.participant = participant
		}
		if source {
			self.source = source
		}
	}	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["event"] as? NSDictionary {
				self.event = SecurityEventEvent(json: val)
			}
			if let val = js["participant"] as? [NSDictionary] {
				self.participant = SecurityEventParticipant.from(val) as? [SecurityEventParticipant]
			}
			if let val = js["source"] as? NSDictionary {
				self.source = SecurityEventSource(json: val)
			}
			if let val = js["object"] as? [NSDictionary] {
				self.object = SecurityEventObject.from(val) as? [SecurityEventObject]
			}
		}
	}
}


/*!
 *  What was done.
 *
 *  Identifies the name, action type, time, and disposition of the audited event.
 */
class SecurityEventEvent: FHIRElement
{	
	/*! Type/identifier of event */
	var type: CodeableConcept?
	
	/*! More specific type/id for the event */
	var subtype: [CodeableConcept]?
	
	/*! Type of action performed during the event */
	var action: String?
	
	/*! Time when the event occurred on source */
	var dateTime: Int?
	
	/*! Whether the event succeeded or failed */
	var outcome: String?
	
	/*! Description of the event outcome */
	var outcomeDesc: String?
	
	convenience init(type: CodeableConcept?, dateTime: Int?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
		if dateTime {
			self.dateTime = dateTime
		}
	}	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["subtype"] as? [NSDictionary] {
				self.subtype = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["action"] as? String {
				self.action = val
			}
			if let val = js["dateTime"] as? Int {
				self.dateTime = val
			}
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["outcomeDesc"] as? String {
				self.outcomeDesc = val
			}
		}
	}
}


/*!
 *  A person, a hardware device or software process.
 */
class SecurityEventParticipant: FHIRElement
{	
	/*! User roles (e.g. local RBAC codes) */
	var role: [CodeableConcept]?
	
	/*! Direct reference to resource */
	var reference: FHIRElement? {
		get { return resolveReference("reference") }
		set {
			if newValue {
				didSetReference(newValue!, name: "reference")
			}
		}
	}
	
	/*! Unique identifier for the user */
	var userId: String?
	
	/*! Alternative User id e.g. authentication */
	var altId: String?
	
	/*! Human-meaningful name for the user */
	var name: String?
	
	/*! Whether user is initiator */
	var requestor: Bool?
	
	/*! Type of media */
	var media: Coding?
	
	/*! Logical network location for application activity */
	var network: SecurityEventParticipantNetwork?
	
	convenience init(requestor: Bool?) {
		self.init(json: nil)
		if requestor {
			self.requestor = requestor
		}
	}	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["role"] as? [NSDictionary] {
				self.role = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["reference"] as? NSDictionary {
				self.reference = ResourceReference(json: val)
			}
			if let val = js["userId"] as? String {
				self.userId = val
			}
			if let val = js["altId"] as? String {
				self.altId = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["requestor"] as? Int {
				self.requestor = (1 == val)
			}
			if let val = js["media"] as? NSDictionary {
				self.media = Coding(json: val)
			}
			if let val = js["network"] as? NSDictionary {
				self.network = SecurityEventParticipantNetwork(json: val)
			}
		}
	}
}


/*!
 *  Logical network location for application activity.
 *
 *  Logical network location for application activity, if the activity has a network location.
 */
class SecurityEventParticipantNetwork: FHIRElement
{	
	/*! Identifier for the network access point of the user device */
	var identifier: String?
	
	/*! The type of network access point */
	var type: String?
	
	
	init(json: NSDictionary?) {
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


/*!
 *  Application systems and processes.
 */
class SecurityEventSource: FHIRElement
{	
	/*! Logical source location within the enterprise */
	var site: String?
	
	/*! The id of source where event originated */
	var identifier: String?
	
	/*! The type of source where event originated */
	var type: [Coding]?
	
	convenience init(identifier: String?) {
		self.init(json: nil)
		if identifier {
			self.identifier = identifier
		}
	}	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["site"] as? String {
				self.site = val
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["type"] as? [NSDictionary] {
				self.type = Coding.from(val) as? [Coding]
			}
		}
	}
}


/*!
 *  Specific instances of data or objects that have been accessed.
 */
class SecurityEventObject: FHIRElement
{	
	/*! Specific instance of object (e.g. versioned) */
	var identifier: Identifier?
	
	/*! Specific instance of resource (e.g. versioned) */
	var reference: FHIRElement? {
		get { return resolveReference("reference") }
		set {
			if newValue {
				didSetReference(newValue!, name: "reference")
			}
		}
	}
	
	/*! Object type being audited */
	var type: String?
	
	/*! Functional application role of Object */
	var role: String?
	
	/*! Life-cycle stage for the object */
	var lifecycle: String?
	
	/*! Policy-defined sensitivity for the object */
	var sensitivity: CodeableConcept?
	
	/*! Instance-specific descriptor for Object */
	var name: String?
	
	/*! Descriptive text */
	var description: String?
	
	/*! Actual query for object */
	var query: String?
	
	/*! Additional Information about the Object */
	var detail: [SecurityEventObjectDetail]?
	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["reference"] as? NSDictionary {
				self.reference = ResourceReference(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["role"] as? String {
				self.role = val
			}
			if let val = js["lifecycle"] as? String {
				self.lifecycle = val
			}
			if let val = js["sensitivity"] as? NSDictionary {
				self.sensitivity = CodeableConcept(json: val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["query"] as? String {
				self.query = val
			}
			if let val = js["detail"] as? [NSDictionary] {
				self.detail = SecurityEventObjectDetail.from(val) as? [SecurityEventObjectDetail]
			}
		}
	}
}


/*!
 *  Additional Information about the Object.
 */
class SecurityEventObjectDetail: FHIRElement
{	
	/*! Name of the property */
	var type: String?
	
	/*! Property value */
	var value: String?
	
	convenience init(type: String?, value: String?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
		if value {
			self.value = value
		}
	}	
	
	init(json: NSDictionary?) {
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

