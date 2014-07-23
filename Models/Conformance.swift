//
//  Conformance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
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
public class Conformance: FHIRResource
{
	override public class var resourceName: String {
		get { return "Conformance" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Logical id to reference this statement */
	public var identifier: String?
	
	/** Logical id for this version of the statement */
	public var version: String?
	
	/** Informal name for this conformance statement */
	public var name: String?
	
	/** Publishing Organization */
	public var publisher: String?
	
	/** Contacts for Organization */
	public var telecom: [Contact]?
	
	/** Human description of the conformance statement */
	public var description: String?
	
	/** draft | active | retired */
	public var status: String?
	
	/** If for testing purposes, not real usage */
	public var experimental: Bool?
	
	/** Publication Date */
	public var date: NSDate?
	
	/** Software that is covered by this conformance statement */
	public var software: ConformanceSoftware?
	
	/** If this describes a specific instance */
	public var implementation: ConformanceImplementation?
	
	/** FHIR Version */
	public var fhirVersion: String?
	
	/** True if application accepts unknown elements */
	public var acceptUnknown: Bool?
	
	/** formats supported (xml | json | mime type) */
	public var format: [String]?
	
	/** Profiles supported by the system */
	public var profile: [FHIRElement]? {
		get { return resolveReferences("profile") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "profile")
			}
		}
	}
	
	/** If the endpoint is a RESTful one */
	public var rest: [ConformanceRest]?
	
	/** If messaging is supported */
	public var messaging: [ConformanceMessaging]?
	
	/** Document definition */
	public var document: [ConformanceDocument]?
	
	public convenience init(publisher: String?, date: NSDate?, fhirVersion: String?, acceptUnknown: Bool?, format: [String]?) {
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
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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
	}
}


/**
 *  Software that is covered by this conformance statement.
 *
 *  Software that is covered by this conformance statement.  It is used when the profile describes the
 *  capabilities of a particular software version, independent of an installation.
 */
public class ConformanceSoftware: FHIRElement
{	
	/** A name the software is known by */
	public var name: String?
	
	/** Version covered by this statement */
	public var version: String?
	
	/** Date this version released */
	public var releaseDate: NSDate?
	
	public convenience init(name: String?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  If this describes a specific instance.
 *
 *  Identifies a specific implementation instance that is described by the conformance statement - i.e. a
 *  particular installation, rather than the capabilities of a software program.
 */
public class ConformanceImplementation: FHIRElement
{	
	/** Describes this specific instance */
	public var description: String?
	
	/** Base URL for the installation */
	public var url: NSURL?
	
	public convenience init(description: String?) {
		self.init(json: nil)
		if description {
			self.description = description
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
		}
	}
}


/**
 *  If the endpoint is a RESTful one.
 *
 *  A definition of the restful capabilities of the solution, if any.
 */
public class ConformanceRest: FHIRElement
{	
	/** client | server */
	public var mode: String?
	
	/** General description of implementation */
	public var documentation: String?
	
	/** Information about security of implementation */
	public var security: ConformanceRestSecurity?
	
	/** Resource served on the REST interface */
	public var resource: [ConformanceRestResource]?
	
	/** What operations are supported? */
	public var operation: [ConformanceRestOperation]?
	
	/** Definition of a named query */
	public var query: [ConformanceRestQuery]?
	
	/** How documents are accepted in /Mailbox */
	public var documentMailbox: [NSURL]?
	
	public convenience init(mode: String?, resource: [ConformanceRestResource]?) {
		self.init(json: nil)
		if mode {
			self.mode = mode
		}
		if resource {
			self.resource = resource
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Information about security of implementation.
 */
public class ConformanceRestSecurity: FHIRElement
{	
	/** Adds CORS Headers (http://enable-cors.org/) */
	public var cors: Bool?
	
	/** OAuth | OAuth2 | NTLM | Basic | Kerberos */
	public var service: [CodeableConcept]?
	
	/** General description of how security works */
	public var description: String?
	
	/** Certificates associated with security profiles */
	public var certificate: [ConformanceRestSecurityCertificate]?
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Certificates associated with security profiles.
 */
public class ConformanceRestSecurityCertificate: FHIRElement
{	
	/** Mime type for certificate */
	public var type: String?
	
	/** Actual certificate */
	public var blob: String?
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["blob"] as? String {
				self.blob = val
			}
		}
	}
}


/**
 *  Resource served on the REST interface.
 *
 *  A specification of the restful capabilities of the solution for a specific resource type.
 */
public class ConformanceRestResource: FHIRElement
{	
	/** A resource type that is supported */
	public var type: String?
	
	/** What structural features are supported */
	public var profile: FHIRElement? {
		get { return resolveReference("profile") }
		set {
			if newValue {
				didSetReference(newValue!, name: "profile")
			}
		}
	}
	
	/** What operations are supported? */
	public var operation: [ConformanceRestResourceOperation]?
	
	/** Whether vRead can return past versions */
	public var readHistory: Bool?
	
	/** If allows/uses update to a new location */
	public var updateCreate: Bool?
	
	/** _include values supported by the server */
	public var searchInclude: [String]?
	
	/** Additional search params defined */
	public var searchParam: [ConformanceRestResourceSearchParam]?
	
	public convenience init(type: String?, operation: [ConformanceRestResourceOperation]?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
		if operation {
			self.operation = operation
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  What operations are supported?.
 *
 *  Identifies a restful operation supported by the solution.
 */
public class ConformanceRestResourceOperation: FHIRElement
{	
	/** read | vread | update | delete | history-instance | validate | history-type | create | search-type */
	public var code: String?
	
	/** Anything special about operation behavior */
	public var documentation: String?
	
	public convenience init(code: String?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
		}
	}
}


/**
 *  Additional search params defined.
 *
 *  Additional search parameters for implementations to support and/or make use of.
 */
public class ConformanceRestResourceSearchParam: FHIRElement
{	
	/** Name of search parameter */
	public var name: String?
	
	/** Source of definition for parameter */
	public var definition: NSURL?
	
	/** number | date | string | token | reference | composite | quantity */
	public var type: String?
	
	/** Server-specific usage */
	public var documentation: String?
	
	/** Types of resource (if a resource reference) */
	public var target: [String]?
	
	/** Chained names supported */
	public var chain: [String]?
	
	public convenience init(name: String?, type: String?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
		if type {
			self.type = type
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  What operations are supported?.
 *
 *  A specification of restful operations supported by the system.
 */
public class ConformanceRestOperation: FHIRElement
{	
	/** transaction | search-system | history-system */
	public var code: String?
	
	/** Anything special about operation behavior */
	public var documentation: String?
	
	public convenience init(code: String?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
		}
	}
}


/**
 *  Definition of a named query.
 *
 *  Definition of a named query and its parameters and their meaning.
 */
public class ConformanceRestQuery: FHIRElement
{	
	/** Special named queries (_query=) */
	public var name: String?
	
	/** Where query is defined */
	public var definition: NSURL?
	
	/** Additional usage guidance */
	public var documentation: String?
	
	/** Parameter for the named query */
	public var parameter: [ConformanceRestQueryParameter]?
	
	public convenience init(name: String?, definition: NSURL?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
		if definition {
			self.definition = definition
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Parameter for the named query.
 *
 *  Identifies which of the parameters for the named query are supported.
 */
public class ConformanceRestQueryParameter: FHIRElement
{	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
		}
	}
}


/**
 *  If messaging is supported.
 *
 *  A description of the messaging capabilities of the solution.
 */
public class ConformanceMessaging: FHIRElement
{	
	/** Actual endpoint being described */
	public var endpoint: NSURL?
	
	/** Reliable Message Cache Length */
	public var reliableCache: Int?
	
	/** Messaging interface behavior details */
	public var documentation: String?
	
	/** Declare support for this event */
	public var event: [ConformanceMessagingEvent]?
	
	public convenience init(event: [ConformanceMessagingEvent]?) {
		self.init(json: nil)
		if event {
			self.event = event
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Declare support for this event.
 *
 *  A description of the solution's support for an event at this end point.
 */
public class ConformanceMessagingEvent: FHIRElement
{	
	/** Event type */
	public var code: Coding?
	
	/** Consequence | Currency | Notification */
	public var category: String?
	
	/** sender | receiver */
	public var mode: String?
	
	/** http | ftp | mllp + */
	public var proto: [Coding]?
	
	/** Resource that's focus of message */
	public var focus: String?
	
	/** Profile that describes the request */
	public var request: FHIRElement? {
		get { return resolveReference("request") }
		set {
			if newValue {
				didSetReference(newValue!, name: "request")
			}
		}
	}
	
	/** Profile that describes the response */
	public var response: FHIRElement? {
		get { return resolveReference("response") }
		set {
			if newValue {
				didSetReference(newValue!, name: "response")
			}
		}
	}
	
	/** Endpoint-specific event documentation */
	public var documentation: String?
	
	public convenience init(code: Coding?, mode: String?, focus: String?, request: ResourceReference?, response: ResourceReference?) {
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
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Document definition.
 *
 *  A document definition.
 */
public class ConformanceDocument: FHIRElement
{	
	/** producer | consumer */
	public var mode: String?
	
	/** Description of document support */
	public var documentation: String?
	
	/** Constraint on a resource used in the document */
	public var profile: FHIRElement? {
		get { return resolveReference("profile") }
		set {
			if newValue {
				didSetReference(newValue!, name: "profile")
			}
		}
	}
	
	public convenience init(mode: String?, profile: ResourceReference?) {
		self.init(json: nil)
		if mode {
			self.mode = mode
		}
		if profile {
			self.profile = profile
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}

