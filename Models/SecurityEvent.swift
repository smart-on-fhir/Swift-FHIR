//
//  SecurityEvent.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	override var resourceName: String {
		get { return "SecurityEvent" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! What was done */
	var event: SecurityEventEvent

	/*! A person, a hardware device or software process */
	var participant: SecurityEventParticipant[]

	/*! Application systems and processes */
	var source: SecurityEventSource

	/*! Specific instances of data or objects that have been accessed */
	var object: SecurityEventObject[]?

	init(event: SecurityEventEvent, participant: SecurityEventParticipant[], source: SecurityEventSource) {
		self.event = event
		self.participant = participant
		self.source = source
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
	var type: CodeableConcept

	/*! More specific type/id for the event */
	var subtype: CodeableConcept[]?

	/*! Type of action performed during the event */
	var action: String?

	/*! Time when the event occurred on source */
	var dateTime: Int

	/*! Whether the event succeeded or failed */
	var outcome: String?

	/*! Description of the event outcome */
	var outcomeDesc: String?

	init(type: CodeableConcept, dateTime: Int) {
		self.type = type
		self.dateTime = dateTime
	}
}


/*!
 *  A person, a hardware device or software process.
 */
class SecurityEventParticipant: FHIRElement
{
	/*! User roles (e.g. local RBAC codes) */
	var role: CodeableConcept[]?

	/*! Direct reference to resource */
	var reference: ResourceReference?

	/*! Unique identifier for the user */
	var userId: String?

	/*! Alternative User id e.g. authentication */
	var altId: String?

	/*! Human-meaningful name for the user */
	var name: String?

	/*! Whether user is initiator */
	var requestor: Bool

	/*! Type of media */
	var media: Coding?

	/*! Logical network location for application activity */
	var network: SecurityEventParticipantNetwork?

	init(requestor: Bool) {
		self.requestor = requestor
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

}


/*!
 *  Application systems and processes.
 */
class SecurityEventSource: FHIRElement
{
	/*! Logical source location within the enterprise */
	var site: String?

	/*! The id of source where event originated */
	var identifier: String

	/*! The type of source where event originated */
	var type: Coding[]?

	init(identifier: String) {
		self.identifier = identifier
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
	var reference: ResourceReference?

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
	var detail: SecurityEventObjectDetail[]?

}


/*!
 *  Additional Information about the Object.
 */
class SecurityEventObjectDetail: FHIRElement
{
	/*! Name of the property */
	var type: String

	/*! Property value */
	var value: String

	init(type: String, value: String) {
		self.type = type
		self.value = value
	}
}
