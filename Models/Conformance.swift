//
//  Conformance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A conformance statement.
 *
 *  Scope and Usage Conformance statements are used in one of three ways:
 *  
 *  Describe an actual implementation In this scenario, the conformance statement describes the capabilities of a
 *  deployed and configured solution available at a particular access point or set of access points. The statement
 *  describes exactly how to interface with that deployed solution and thus provides for a degree of self-
 *  configuration of software solutions.
 *  
 *  This is the type of profile that FHIR restful solutions are expected to make available on invocation of the
 *  conformance operation. It is also the type of statement that forms a basis for the testing, certification or
 *  commissioning of specific software installations.
 *  
 *  A conformance statement is identified as being an implementation statement through the presence of the
 *  implementation element.
 *  
 *  Describe software solution capabilities In this scenario, the conformance statement describes generic
 *  capabilities of a software application or component solution. The solution might be available for purchase or
 *  other acquisition and might be deployed and configured at any number of independent sites. Because it is not
 *  dependent on any particular implementation, the profile cannot provide specific details such as endpoint
 *  addresses. It may also need to document various configurations in which the application can be set up or
 *  describe the degree of customizability associated with the solution.
 *  
 *  This type of statement may be used as a marketing tool by software and system developers to formally describe
 *  their capabilities. It can also be used as the basis for conformance testing of software solutions independent
 *  of a particular installation.
 *  
 *  A conformance statement is identified as being a software solution statement through the presence of the
 *  software element.
 *  
 *  Describe a desired solution In this scenario, the conformance statement describes the capabilities of a
 *  desired system. It might be used as part of an architectural design process to document needed system
 *  capabilities, or might be used as part of an RFP process to formally document the requirements of a requested
 *  solution and to document the criteria by which proposals will be evaluated.
 *  
 *  A conformance statement is identified as being a requirements statement through the presence of the proposal
 *  element.
 *  
 *  
 *  
 *  These three types of profiles can be used together. A requirements statement can be compared against the
 *  solution statements proffered by respondents to an RFP. A solution statement for a software package forms the
 *  starting point for the implementation statement associated with a particular installation of that software
 *  package.
 */
class Conformance: FHIRResource
{
	override var resourceName: String {
		get { return "Conformance" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Logical id to reference this statement */
	var identifier: String?

	/*! Logical id for this version of the statement */
	var version: String?

	/*! Informal name for this conformance statement */
	var name: String?

	/*! Publishing Organization */
	var publisher: String

	/*! Contacts for Organization */
	var telecom: Contact[]?

	/*! Human description of the conformance statement */
	var description: String?

	/*! draft | active | retired */
	var status: String?

	/*! If for testing purposes, not real usage */
	var experimental: Bool?

	/*! Publication Date */
	var date: NSDate

	/*! Software that is covered by this conformance statement */
	var software: ConformanceSoftware?

	/*! If this describes a specific instance */
	var implementation: ConformanceImplementation?

	/*! FHIR Version */
	var fhirVersion: String

	/*! True if application accepts unknown elements */
	var acceptUnknown: Bool

	/*! formats supported (xml | json | mime type) */
	var format: String[]

	/*! Profiles supported by the system */
	var profile: ResourceReference[]?

	/*! If the endpoint is a RESTful one */
	var rest: ConformanceRest[]?

	/*! If messaging is supported */
	var messaging: ConformanceMessaging[]?

	/*! Document definition */
	var document: ConformanceDocument[]?

	init(publisher: String, date: NSDate, fhirVersion: String, acceptUnknown: Bool, format: String[]) {
		self.publisher = publisher
		self.date = date
		self.fhirVersion = fhirVersion
		self.acceptUnknown = acceptUnknown
		self.format = format
	}
}


/*!
 *  Software that is covered by this conformance statement.
 *
 *  Software that is covered by this conformance statement.  It is used when the profile describes the
 *  capabilities of a particular software version, independent of an installation.
 */
class ConformanceSoftware: FHIRElement
{
	/*! A name the software is known by */
	var name: String

	/*! Version covered by this statement */
	var version: String?

	/*! Date this version released */
	var releaseDate: NSDate?

	init(name: String) {
		self.name = name
	}
}


/*!
 *  If this describes a specific instance.
 *
 *  Identifies a specific implementation instance that is described by the conformance statement - i.e. a
 *  particular installation, rather than the capabilities of a software program.
 */
class ConformanceImplementation: FHIRElement
{
	/*! Describes this specific instance */
	var description: String

	/*! Base URL for the installation */
	var url: NSURL?

	init(description: String) {
		self.description = description
	}
}


/*!
 *  If the endpoint is a RESTful one.
 *
 *  A definition of the restful capabilities of the solution, if any.
 */
class ConformanceRest: FHIRElement
{
	/*! client | server */
	var mode: String

	/*! General description of implementation */
	var documentation: String?

	/*! Information about security of implementation */
	var security: ConformanceRestSecurity?

	/*! Resource served on the REST interface */
	var resource: ConformanceRestResource[]

	/*! What operations are supported? */
	var operation: ConformanceRestOperation[]?

	/*! Definition of a named query */
	var query: ConformanceRestQuery[]?

	/*! How documents are accepted in /Mailbox */
	var documentMailbox: NSURL[]?

	init(mode: String, resource: ConformanceRestResource[]) {
		self.mode = mode
		self.resource = resource
	}
}


/*!
 *  Information about security of implementation.
 */
class ConformanceRestSecurity: FHIRElement
{
	/*! Adds CORS Headers (http://enable-cors.org/) */
	var cors: Bool?

	/*! OAuth | OAuth2 | NTLM | Basic | Kerberos */
	var service: CodeableConcept[]?

	/*! General description of how security works */
	var description: String?

	/*! Certificates associated with security profiles */
	var certificate: ConformanceRestSecurityCertificate[]?

}


/*!
 *  Certificates associated with security profiles.
 */
class ConformanceRestSecurityCertificate: FHIRElement
{
	/*! Mime type for certificate */
	var type: String?

	/*! Actual certificate */
	var blob: String?

}


/*!
 *  Resource served on the REST interface.
 *
 *  A specification of the restful capabilities of the solution for a specific resource type.
 */
class ConformanceRestResource: FHIRElement
{
	/*! A resource type that is supported */
	var type: String

	/*! What structural features are supported */
	var profile: ResourceReference?

	/*! What operations are supported? */
	var operation: ConformanceRestResourceOperation[]

	/*! Whether vRead can return past versions */
	var readHistory: Bool?

	/*! If allows/uses update to a new location */
	var updateCreate: Bool?

	/*! _include values supported by the server */
	var searchInclude: String[]?

	/*! Additional search params defined */
	var searchParam: ConformanceRestResourceSearchParam[]?

	init(type: String, operation: ConformanceRestResourceOperation[]) {
		self.type = type
		self.operation = operation
	}
}


/*!
 *  What operations are supported?.
 *
 *  Identifies a restful operation supported by the solution.
 */
class ConformanceRestResourceOperation: FHIRElement
{
	/*! read | vread | update | delete | history-instance | validate | history-type | create | search-type */
	var code: String

	/*! Anything special about operation behavior */
	var documentation: String?

	init(code: String) {
		self.code = code
	}
}


/*!
 *  Additional search params defined.
 *
 *  Additional search parameters for implementations to support and/or make use of.
 */
class ConformanceRestResourceSearchParam: FHIRElement
{
	/*! Name of search parameter */
	var name: String

	/*! Source of definition for parameter */
	var definition: NSURL?

	/*! number | date | string | token | reference | composite | quantity */
	var type: String

	/*! Server-specific usage */
	var documentation: String?

	/*! Types of resource (if a resource reference) */
	var target: String[]?

	/*! Chained names supported */
	var chain: String[]?

	init(name: String, type: String) {
		self.name = name
		self.type = type
	}
}


/*!
 *  What operations are supported?.
 *
 *  A specification of restful operations supported by the system.
 */
class ConformanceRestOperation: FHIRElement
{
	/*! transaction | search-system | history-system */
	var code: String

	/*! Anything special about operation behavior */
	var documentation: String?

	init(code: String) {
		self.code = code
	}
}


/*!
 *  Definition of a named query.
 *
 *  Definition of a named query and its parameters and their meaning.
 */
class ConformanceRestQuery: FHIRElement
{
	/*! Special named queries (_query=) */
	var name: String

	/*! Where query is defined */
	var definition: NSURL

	/*! Additional usage guidance */
	var documentation: String?

	/*! Parameter for the named query */
	var parameter: ConformanceRestQueryParameter[]?

	init(name: String, definition: NSURL) {
		self.name = name
		self.definition = definition
	}
}


/*!
 *  Parameter for the named query.
 *
 *  Identifies which of the parameters for the named query are supported.
 */
class ConformanceRestQueryParameter: FHIRElement
{
}


/*!
 *  If messaging is supported.
 *
 *  A description of the messaging capabilities of the solution.
 */
class ConformanceMessaging: FHIRElement
{
	/*! Actual endpoint being described */
	var endpoint: NSURL?

	/*! Reliable Message Cache Length */
	var reliableCache: Int?

	/*! Messaging interface behavior details */
	var documentation: String?

	/*! Declare support for this event */
	var event: ConformanceMessagingEvent[]

	init(event: ConformanceMessagingEvent[]) {
		self.event = event
	}
}


/*!
 *  Declare support for this event.
 *
 *  A description of the solution's support for an event at this end point.
 */
class ConformanceMessagingEvent: FHIRElement
{
	/*! Event type */
	var code: Coding

	/*! Consequence | Currency | Notification */
	var category: String?

	/*! sender | receiver */
	var mode: String

	/*! http | ftp | mllp + */
	var proto: Coding[]?

	/*! Resource that's focus of message */
	var focus: String

	/*! Profile that describes the request */
	var request: ResourceReference

	/*! Profile that describes the response */
	var response: ResourceReference

	/*! Endpoint-specific event documentation */
	var documentation: String?

	init(code: Coding, mode: String, focus: String, request: ResourceReference, response: ResourceReference) {
		self.code = code
		self.mode = mode
		self.focus = focus
		self.request = request
		self.response = response
	}
}


/*!
 *  Document definition.
 *
 *  A document definition.
 */
class ConformanceDocument: FHIRElement
{
	/*! producer | consumer */
	var mode: String

	/*! Description of document support */
	var documentation: String?

	/*! Constraint on a resource used in the document */
	var profile: ResourceReference

	init(mode: String, profile: ResourceReference) {
		self.mode = mode
		self.profile = profile
	}
}
