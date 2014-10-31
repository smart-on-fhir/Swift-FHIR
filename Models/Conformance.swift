//
//  Conformance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (conformance.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A conformance statement.
 *
 *  Scope and Usage Conformance statements are used in one of three ways:
 *  
 *  Describe an actual implementation In this scenario, the conformance statement describes the capabilities of a
 *  deployed and configured solution available at a particular access point or set of access points. The statement
 *  describes exactly how to interface with that deployed solution and thus provides for a degree of self-configuration
 *  of software solutions.
 *  
 *  This is the type of profile that FHIR restful solutions are expected to make available on invocation of the
 *  conformance operation. It is also the type of statement that forms a basis for the testing, certification or
 *  commissioning of specific software installations.
 *  
 *  A conformance statement is identified as being an implementation statement through the presence of the
 *  implementation element.
 *  
 *  Describe software solution capabilities In this scenario, the conformance statement describes generic capabilities
 *  of a software application or component solution. The solution might be available for purchase or other acquisition
 *  and might be deployed and configured at any number of independent sites. Because it is not dependent on any
 *  particular implementation, the profile cannot provide specific details such as endpoint addresses. It may also need
 *  to document various configurations in which the application can be set up or describe the degree of customizability
 *  associated with the solution.
 *  
 *  This type of statement may be used as a marketing tool by software and system developers to formally describe their
 *  capabilities. It can also be used as the basis for conformance testing of software solutions independent of a
 *  particular installation.
 *  
 *  A conformance statement is identified as being a software solution statement through the presence of the software
 *  element.
 *  
 *  Describe a desired solution In this scenario, the conformance statement describes the capabilities of a desired
 *  system. It might be used as part of an architectural design process to document needed system capabilities, or might
 *  be used as part of an RFP process to formally document the requirements of a requested solution and to document the
 *  criteria by which proposals will be evaluated.
 *  
 *  A conformance statement is identified as being a requirements statement through the presence of the proposal
 *  element.
 *  
 *  
 *  
 *  These three types of profiles can be used together. A requirements statement can be compared against the solution
 *  statements proffered by respondents to an RFP. A solution statement for a software package forms the starting point
 *  for the implementation statement associated with a particular installation of that software package.
 */
public class Conformance: FHIRResource
{
	override public class var resourceName: String {
		get { return "Conformance" }
	}
	
	/// True if application accepts unknown elements
	public var acceptUnknown: Bool?
	
	/// Publication Date
	public var date: NSDate?
	
	/// Human description of the conformance statement
	public var description: String?
	
	/// Document definition
	public var document: [ConformanceDocument]?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// FHIR Version
	public var fhirVersion: String?
	
	/// formats supported (xml | json | mime type)
	public var format: [String]?
	
	/// Logical id to reference this statement
	public var identifier: String?
	
	/// If this describes a specific instance
	public var implementation: ConformanceImplementation?
	
	/// If messaging is supported
	public var messaging: [ConformanceMessaging]?
	
	/// Informal name for this conformance statement
	public var name: String?
	
	/// Profiles supported by the system
	public var profile: [FHIRReference<Profile>]?
	
	/// Publishing Organization
	public var publisher: String?
	
	/// If the endpoint is a RESTful one
	public var rest: [ConformanceRest]?
	
	/// Software that is covered by this conformance statement
	public var software: ConformanceSoftware?
	
	/// draft | active | retired
	public var status: String?
	
	/// Contacts for Organization
	public var telecom: [Contact]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Logical id for this version of the statement
	public var version: String?
	
	public convenience init(acceptUnknown: Bool?, date: NSDate?, fhirVersion: String?, format: [String]?, publisher: String?) {
		self.init(json: nil)
		if nil != acceptUnknown {
			self.acceptUnknown = acceptUnknown
		}
		if nil != date {
			self.date = date
		}
		if nil != fhirVersion {
			self.fhirVersion = fhirVersion
		}
		if nil != format {
			self.format = format
		}
		if nil != publisher {
			self.publisher = publisher
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["acceptUnknown"] as? Int {
				self.acceptUnknown = (1 == val)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["document"] as? [NSDictionary] {
				self.document = ConformanceDocument.from(val) as? [ConformanceDocument]
			}
			if let val = js["experimental"] as? Int {
				self.experimental = (1 == val)
			}
			if let val = js["fhirVersion"] as? String {
				self.fhirVersion = val
			}
			if let val = js["format"] as? [String] {
				self.format = val
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["implementation"] as? NSDictionary {
				self.implementation = ConformanceImplementation(json: val)
			}
			if let val = js["messaging"] as? [NSDictionary] {
				self.messaging = ConformanceMessaging.from(val) as? [ConformanceMessaging]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["profile"] as? [NSDictionary] {
				self.profile = FHIRReference.from(val, owner: self)
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["rest"] as? [NSDictionary] {
				self.rest = ConformanceRest.from(val) as? [ConformanceRest]
			}
			if let val = js["software"] as? NSDictionary {
				self.software = ConformanceSoftware(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
}


/**
 *  Software that is covered by this conformance statement.
 *
 *  Software that is covered by this conformance statement.  It is used when the profile describes the capabilities of a
 *  particular software version, independent of an installation.
 */
public class ConformanceSoftware: FHIRElement
{	
	/// A name the software is known by
	public var name: String?
	
	/// Date this version released
	public var releaseDate: NSDate?
	
	/// Version covered by this statement
	public var version: String?
	
	public convenience init(name: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["releaseDate"] as? String {
				self.releaseDate = NSDate(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
}


/**
 *  If this describes a specific instance.
 *
 *  Identifies a specific implementation instance that is described by the conformance statement - i.e. a particular
 *  installation, rather than the capabilities of a software program.
 */
public class ConformanceImplementation: FHIRElement
{	
	/// Describes this specific instance
	public var description: String?
	
	/// Base URL for the installation
	public var url: NSURL?
	
	public convenience init(description: String?) {
		self.init(json: nil)
		if nil != description {
			self.description = description
		}
	}	

	public required init(json: NSDictionary?) {
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
	/// How documents are accepted in /Mailbox
	public var documentMailbox: [NSURL]?
	
	/// General description of implementation
	public var documentation: String?
	
	/// client | server
	public var mode: String?
	
	/// What operations are supported?
	public var operation: [ConformanceRestOperation]?
	
	/// Definition of a named query
	public var query: [ConformanceRestQuery]?
	
	/// Resource served on the REST interface
	public var resource: [ConformanceRestResource]?
	
	/// Information about security of implementation
	public var security: ConformanceRestSecurity?
	
	public convenience init(mode: String?, resource: [ConformanceRestResource]?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
		if nil != resource {
			self.resource = resource
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["documentMailbox"] as? [String] {
				self.documentMailbox = NSURL.from(val)
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["operation"] as? [NSDictionary] {
				self.operation = ConformanceRestOperation.from(val) as? [ConformanceRestOperation]
			}
			if let val = js["query"] as? [NSDictionary] {
				self.query = ConformanceRestQuery.from(val) as? [ConformanceRestQuery]
			}
			if let val = js["resource"] as? [NSDictionary] {
				self.resource = ConformanceRestResource.from(val) as? [ConformanceRestResource]
			}
			if let val = js["security"] as? NSDictionary {
				self.security = ConformanceRestSecurity(json: val)
			}
		}
	}
}


/**
 *  Information about security of implementation.
 */
public class ConformanceRestSecurity: FHIRElement
{	
	/// Certificates associated with security profiles
	public var certificate: [ConformanceRestSecurityCertificate]?
	
	/// Adds CORS Headers (http://enable-cors.org/)
	public var cors: Bool?
	
	/// General description of how security works
	public var description: String?
	
	/// OAuth | OAuth2 | NTLM | Basic | Kerberos
	public var service: [CodeableConcept]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["certificate"] as? [NSDictionary] {
				self.certificate = ConformanceRestSecurityCertificate.from(val) as? [ConformanceRestSecurityCertificate]
			}
			if let val = js["cors"] as? Int {
				self.cors = (1 == val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["service"] as? [NSDictionary] {
				self.service = CodeableConcept.from(val) as? [CodeableConcept]
			}
		}
	}
}


/**
 *  Certificates associated with security profiles.
 */
public class ConformanceRestSecurityCertificate: FHIRElement
{	
	/// Actual certificate
	public var blob: String?
	
	/// Mime type for certificate
	public var type: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["blob"] as? String {
				self.blob = val
			}
			if let val = js["type"] as? String {
				self.type = val
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
	/// What operations are supported?
	public var operation: [ConformanceRestResourceOperation]?
	
	/// What structural features are supported
	public var profile: FHIRReference<Profile>?
	
	/// Whether vRead can return past versions
	public var readHistory: Bool?
	
	/// _include values supported by the server
	public var searchInclude: [String]?
	
	/// Additional search params defined
	public var searchParam: [ConformanceRestResourceSearchParam]?
	
	/// A resource type that is supported
	public var type: String?
	
	/// If allows/uses update to a new location
	public var updateCreate: Bool?
	
	public convenience init(operation: [ConformanceRestResourceOperation]?, type: String?) {
		self.init(json: nil)
		if nil != operation {
			self.operation = operation
		}
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["operation"] as? [NSDictionary] {
				self.operation = ConformanceRestResourceOperation.from(val) as? [ConformanceRestResourceOperation]
			}
			if let val = js["profile"] as? NSDictionary {
				self.profile = FHIRReference(json: val, owner: self)
			}
			if let val = js["readHistory"] as? Int {
				self.readHistory = (1 == val)
			}
			if let val = js["searchInclude"] as? [String] {
				self.searchInclude = val
			}
			if let val = js["searchParam"] as? [NSDictionary] {
				self.searchParam = ConformanceRestResourceSearchParam.from(val) as? [ConformanceRestResourceSearchParam]
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["updateCreate"] as? Int {
				self.updateCreate = (1 == val)
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
	/// read | vread | update | delete | history-instance | validate | history-type | create | search-type
	public var code: String?
	
	/// Anything special about operation behavior
	public var documentation: String?
	
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}	

	public required init(json: NSDictionary?) {
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
	/// Chained names supported
	public var chain: [String]?
	
	/// Source of definition for parameter
	public var definition: NSURL?
	
	/// Server-specific usage
	public var documentation: String?
	
	/// Name of search parameter
	public var name: String?
	
	/// Types of resource (if a resource reference)
	public var target: [String]?
	
	/// number | date | string | token | reference | composite | quantity
	public var type: String?
	
	public convenience init(name: String?, type: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["chain"] as? [String] {
				self.chain = val
			}
			if let val = js["definition"] as? String {
				self.definition = NSURL(json: val)
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["target"] as? [String] {
				self.target = val
			}
			if let val = js["type"] as? String {
				self.type = val
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
	/// transaction | search-system | history-system
	public var code: String?
	
	/// Anything special about operation behavior
	public var documentation: String?
	
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}	

	public required init(json: NSDictionary?) {
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
	/// Where query is defined
	public var definition: NSURL?
	
	/// Additional usage guidance
	public var documentation: String?
	
	/// Special named queries (_query=)
	public var name: String?
	
	/// Parameter for the named query
	public var parameter: [ConformanceRestQueryParameter]?
	
	public convenience init(definition: NSURL?, name: String?) {
		self.init(json: nil)
		if nil != definition {
			self.definition = definition
		}
		if nil != name {
			self.name = name
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["definition"] as? String {
				self.definition = NSURL(json: val)
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["name"] as? String {
				self.name = val
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

}


/**
 *  If messaging is supported.
 *
 *  A description of the messaging capabilities of the solution.
 */
public class ConformanceMessaging: FHIRElement
{	
	/// Messaging interface behavior details
	public var documentation: String?
	
	/// Actual endpoint being described
	public var endpoint: NSURL?
	
	/// Declare support for this event
	public var event: [ConformanceMessagingEvent]?
	
	/// Reliable Message Cache Length
	public var reliableCache: Int?
	
	public convenience init(event: [ConformanceMessagingEvent]?) {
		self.init(json: nil)
		if nil != event {
			self.event = event
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(json: val)
			}
			if let val = js["event"] as? [NSDictionary] {
				self.event = ConformanceMessagingEvent.from(val) as? [ConformanceMessagingEvent]
			}
			if let val = js["reliableCache"] as? Int {
				self.reliableCache = val
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
	/// Consequence | Currency | Notification
	public var category: String?
	
	/// Event type
	public var code: Coding?
	
	/// Endpoint-specific event documentation
	public var documentation: String?
	
	/// Resource that's focus of message
	public var focus: String?
	
	/// sender | receiver
	public var mode: String?
	
	/// http | ftp | mllp +
	public var protokol: [Coding]?
	
	/// Profile that describes the request
	public var request: FHIRReference<Profile>?
	
	/// Profile that describes the response
	public var response: FHIRReference<Profile>?
	
	public convenience init(code: Coding?, focus: String?, mode: String?, request: FHIRReference<Profile>?, response: FHIRReference<Profile>?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != focus {
			self.focus = focus
		}
		if nil != mode {
			self.mode = mode
		}
		if nil != request {
			self.request = request
		}
		if nil != response {
			self.response = response
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["category"] as? String {
				self.category = val
			}
			if let val = js["code"] as? NSDictionary {
				self.code = Coding(json: val)
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["focus"] as? String {
				self.focus = val
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["protocol"] as? [NSDictionary] {
				self.protokol = Coding.from(val) as? [Coding]
			}
			if let val = js["request"] as? NSDictionary {
				self.request = FHIRReference(json: val, owner: self)
			}
			if let val = js["response"] as? NSDictionary {
				self.response = FHIRReference(json: val, owner: self)
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
	/// Description of document support
	public var documentation: String?
	
	/// producer | consumer
	public var mode: String?
	
	/// Constraint on a resource used in the document
	public var profile: FHIRReference<Profile>?
	
	public convenience init(mode: String?, profile: FHIRReference<Profile>?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
		if nil != profile {
			self.profile = profile
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["profile"] as? NSDictionary {
				self.profile = FHIRReference(json: val, owner: self)
			}
		}
	}
}

