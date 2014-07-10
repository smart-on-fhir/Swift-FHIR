//
//  Conformance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-10.
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
	override class var resourceName: String {
		get { return "Conformance" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: [FHIRResource]?
	
	/*! Logical id to reference this statement */
	var identifier: String?
	
	/*! Logical id for this version of the statement */
	var version: String?
	
	/*! Informal name for this conformance statement */
	var name: String?
	
	/*! Publishing Organization */
	var publisher: String?
	
	/*! Contacts for Organization */
	var telecom: [Contact]?
	
	/*! Human description of the conformance statement */
	var description: String?
	
	/*! draft | active | retired */
	var status: String?
	
	/*! If for testing purposes, not real usage */
	var experimental: Bool?
	
	/*! Publication Date */
	var date: NSDate?
	
	/*! Software that is covered by this conformance statement */
	var software: ConformanceSoftware?
	
	/*! If this describes a specific instance */
	var implementation: ConformanceImplementation?
	
	/*! FHIR Version */
	var fhirVersion: String?
	
	/*! True if application accepts unknown elements */
	var acceptUnknown: Bool?
	
	/*! formats supported (xml | json | mime type) */
	var format: [String]?
	
	/*! Profiles supported by the system */
	var profile: [ResourceReference]?
	
	/*! If the endpoint is a RESTful one */
	var rest: [ConformanceRest]?
	
	/*! If messaging is supported */
	var messaging: [ConformanceMessaging]?
	
	/*! Document definition */
	var document: [ConformanceDocument]?
	
	convenience init(publisher: String?, date: NSDate?, fhirVersion: String?, acceptUnknown: Bool?, format: [String]?) {
		self.init(json: nil)
		if publisher {
			self.publisher = publisher
		}
		if date {
			self.date = date
		}
		if fhirVersion {
			self.fhirVersion = fhirVersion
		}
		if acceptUnknown {
			self.acceptUnknown = acceptUnknown
		}
		if format {
			self.format = format
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? [NSDictionary] {
				self.contained = FHIRResource.from(val) as? [FHIRResource]
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["version"] as? String {
				self.version = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["experimental"] as? Int {
				self.experimental = (1 == val)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["software"] as? NSDictionary {
				self.software = ConformanceSoftware(json: val)
			}
			if let val = js["implementation"] as? NSDictionary {
				self.implementation = ConformanceImplementation(json: val)
			}
			if let val = js["fhirVersion"] as? String {
				self.fhirVersion = val
			}
			if let val = js["acceptUnknown"] as? Int {
				self.acceptUnknown = (1 == val)
			}
			if let val = js["format"] as? [String] {
				self.format = val
			}
			if let val = js["profile"] as? [NSDictionary] {
				self.profile = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["rest"] as? [NSDictionary] {
				self.rest = ConformanceRest.from(val) as? [ConformanceRest]
			}
			if let val = js["messaging"] as? [NSDictionary] {
				self.messaging = ConformanceMessaging.from(val) as? [ConformanceMessaging]
			}
			if let val = js["document"] as? [NSDictionary] {
				self.document = ConformanceDocument.from(val) as? [ConformanceDocument]
			}
		}
		super.init(json: json)
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
	var name: String?
	
	/*! Version covered by this statement */
	var version: String?
	
	/*! Date this version released */
	var releaseDate: NSDate?
	
	convenience init(name: String?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["version"] as? String {
				self.version = val
			}
			if let val = js["releaseDate"] as? String {
				self.releaseDate = NSDate(json: val)
			}
		}
		super.init(json: json)
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
	var description: String?
	
	/*! Base URL for the installation */
	var url: NSURL?
	
	convenience init(description: String?) {
		self.init(json: nil)
		if description {
			self.description = description
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
		}
		super.init(json: json)
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
	var mode: String?
	
	/*! General description of implementation */
	var documentation: String?
	
	/*! Information about security of implementation */
	var security: ConformanceRestSecurity?
	
	/*! Resource served on the REST interface */
	var resource: [ConformanceRestResource]?
	
	/*! What operations are supported? */
	var operation: [ConformanceRestOperation]?
	
	/*! Definition of a named query */
	var query: [ConformanceRestQuery]?
	
	/*! How documents are accepted in /Mailbox */
	var documentMailbox: [NSURL]?
	
	convenience init(mode: String?, resource: [ConformanceRestResource]?) {
		self.init(json: nil)
		if mode {
			self.mode = mode
		}
		if resource {
			self.resource = resource
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["security"] as? NSDictionary {
				self.security = ConformanceRestSecurity(json: val)
			}
			if let val = js["resource"] as? [NSDictionary] {
				self.resource = ConformanceRestResource.from(val) as? [ConformanceRestResource]
			}
			if let val = js["operation"] as? [NSDictionary] {
				self.operation = ConformanceRestOperation.from(val) as? [ConformanceRestOperation]
			}
			if let val = js["query"] as? [NSDictionary] {
				self.query = ConformanceRestQuery.from(val) as? [ConformanceRestQuery]
			}
			if let val = js["documentMailbox"] as? [String] {
				self.documentMailbox = NSURL.from(val)
			}
		}
		super.init(json: json)
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
	var service: [CodeableConcept]?
	
	/*! General description of how security works */
	var description: String?
	
	/*! Certificates associated with security profiles */
	var certificate: [ConformanceRestSecurityCertificate]?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["cors"] as? Int {
				self.cors = (1 == val)
			}
			if let val = js["service"] as? [NSDictionary] {
				self.service = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["certificate"] as? [NSDictionary] {
				self.certificate = ConformanceRestSecurityCertificate.from(val) as? [ConformanceRestSecurityCertificate]
			}
		}
		super.init(json: json)
	}
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
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["blob"] as? String {
				self.blob = val
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Resource served on the REST interface.
 *
 *  A specification of the restful capabilities of the solution for a specific resource type.
 */
class ConformanceRestResource: FHIRElement
{	
	/*! A resource type that is supported */
	var type: String?
	
	/*! What structural features are supported */
	var profile: ResourceReference?
	
	/*! What operations are supported? */
	var operation: [ConformanceRestResourceOperation]?
	
	/*! Whether vRead can return past versions */
	var readHistory: Bool?
	
	/*! If allows/uses update to a new location */
	var updateCreate: Bool?
	
	/*! _include values supported by the server */
	var searchInclude: [String]?
	
	/*! Additional search params defined */
	var searchParam: [ConformanceRestResourceSearchParam]?
	
	convenience init(type: String?, operation: [ConformanceRestResourceOperation]?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
		if operation {
			self.operation = operation
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["profile"] as? NSDictionary {
				self.profile = ResourceReference(json: val)
			}
			if let val = js["operation"] as? [NSDictionary] {
				self.operation = ConformanceRestResourceOperation.from(val) as? [ConformanceRestResourceOperation]
			}
			if let val = js["readHistory"] as? Int {
				self.readHistory = (1 == val)
			}
			if let val = js["updateCreate"] as? Int {
				self.updateCreate = (1 == val)
			}
			if let val = js["searchInclude"] as? [String] {
				self.searchInclude = val
			}
			if let val = js["searchParam"] as? [NSDictionary] {
				self.searchParam = ConformanceRestResourceSearchParam.from(val) as? [ConformanceRestResourceSearchParam]
			}
		}
		super.init(json: json)
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
	var code: String?
	
	/*! Anything special about operation behavior */
	var documentation: String?
	
	convenience init(code: String?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
		}
		super.init(json: json)
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
	var name: String?
	
	/*! Source of definition for parameter */
	var definition: NSURL?
	
	/*! number | date | string | token | reference | composite | quantity */
	var type: String?
	
	/*! Server-specific usage */
	var documentation: String?
	
	/*! Types of resource (if a resource reference) */
	var target: [String]?
	
	/*! Chained names supported */
	var chain: [String]?
	
	convenience init(name: String?, type: String?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
		if type {
			self.type = type
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["definition"] as? String {
				self.definition = NSURL(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["target"] as? [String] {
				self.target = val
			}
			if let val = js["chain"] as? [String] {
				self.chain = val
			}
		}
		super.init(json: json)
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
	var code: String?
	
	/*! Anything special about operation behavior */
	var documentation: String?
	
	convenience init(code: String?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
		}
		super.init(json: json)
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
	var name: String?
	
	/*! Where query is defined */
	var definition: NSURL?
	
	/*! Additional usage guidance */
	var documentation: String?
	
	/*! Parameter for the named query */
	var parameter: [ConformanceRestQueryParameter]?
	
	convenience init(name: String?, definition: NSURL?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
		if definition {
			self.definition = definition
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["definition"] as? String {
				self.definition = NSURL(json: val)
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["parameter"] as? [NSDictionary] {
				self.parameter = ConformanceRestQueryParameter.from(val) as? [ConformanceRestQueryParameter]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Parameter for the named query.
 *
 *  Identifies which of the parameters for the named query are supported.
 */
class ConformanceRestQueryParameter: FHIRElement
{	
	
	init(json: NSDictionary?) {
		if let js = json {
		}
		super.init(json: json)
	}
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
	var event: [ConformanceMessagingEvent]?
	
	convenience init(event: [ConformanceMessagingEvent]?) {
		self.init(json: nil)
		if event {
			self.event = event
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(json: val)
			}
			if let val = js["reliableCache"] as? Int {
				self.reliableCache = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["event"] as? [NSDictionary] {
				self.event = ConformanceMessagingEvent.from(val) as? [ConformanceMessagingEvent]
			}
		}
		super.init(json: json)
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
	var code: Coding?
	
	/*! Consequence | Currency | Notification */
	var category: String?
	
	/*! sender | receiver */
	var mode: String?
	
	/*! http | ftp | mllp + */
	var proto: [Coding]?
	
	/*! Resource that's focus of message */
	var focus: String?
	
	/*! Profile that describes the request */
	var request: ResourceReference?
	
	/*! Profile that describes the response */
	var response: ResourceReference?
	
	/*! Endpoint-specific event documentation */
	var documentation: String?
	
	convenience init(code: Coding?, mode: String?, focus: String?, request: ResourceReference?, response: ResourceReference?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
		if mode {
			self.mode = mode
		}
		if focus {
			self.focus = focus
		}
		if request {
			self.request = request
		}
		if response {
			self.response = response
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = Coding(json: val)
			}
			if let val = js["category"] as? String {
				self.category = val
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["proto"] as? [NSDictionary] {
				self.proto = Coding.from(val) as? [Coding]
			}
			if let val = js["focus"] as? String {
				self.focus = val
			}
			if let val = js["request"] as? NSDictionary {
				self.request = ResourceReference(json: val)
			}
			if let val = js["response"] as? NSDictionary {
				self.response = ResourceReference(json: val)
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
		}
		super.init(json: json)
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
	var mode: String?
	
	/*! Description of document support */
	var documentation: String?
	
	/*! Constraint on a resource used in the document */
	var profile: ResourceReference?
	
	convenience init(mode: String?, profile: ResourceReference?) {
		self.init(json: nil)
		if mode {
			self.mode = mode
		}
		if profile {
			self.profile = profile
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["profile"] as? NSDictionary {
				self.profile = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}
