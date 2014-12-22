//
//  Conformance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (conformance.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A conformance statement.
 *
 *  A conformance statement is a set of requirements for a desired implementation or a description of how a target
 *  application fulfills those requirements in a particular implementation.
 */
public class Conformance: FHIRResource
{
	override public class var resourceName: String {
		get { return "Conformance" }
	}
	
	/// True if application accepts unknown elements
	public var acceptUnknown: Bool?
	
	/// Publication Date(/time)
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
	public var profile: [Reference]?
	
	/// Publishing Organization
	public var publisher: String?
	
	/// If the endpoint is a RESTful one
	public var rest: [ConformanceRest]?
	
	/// Software that is covered by this conformance statement
	public var software: ConformanceSoftware?
	
	/// draft | active | retired
	public var status: String?
	
	/// Contacts for Organization
	public var telecom: [ContactPoint]?
	
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
			if let val = js["acceptUnknown"] as? Bool {
				self.acceptUnknown = val
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["document"] as? [NSDictionary] {
				self.document = ConformanceDocument.from(val, owner: self) as? [ConformanceDocument]
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
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
				self.implementation = ConformanceImplementation(json: val, owner: self)
			}
			if let val = js["messaging"] as? [NSDictionary] {
				self.messaging = ConformanceMessaging.from(val, owner: self) as? [ConformanceMessaging]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["profile"] as? [NSDictionary] {
				self.profile = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["rest"] as? [NSDictionary] {
				self.rest = ConformanceRest.from(val, owner: self) as? [ConformanceRest]
			}
			if let val = js["software"] as? NSDictionary {
				self.software = ConformanceSoftware(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["version"] as? String {
				self.version = val
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
	override public class var resourceName: String {
		get { return "ConformanceDocument" }
	}
	
	/// Description of document support
	public var documentation: String?
	
	/// producer | consumer
	public var mode: String?
	
	/// Constraint on a resource used in the document
	public var profile: Reference?
	
	public convenience init(mode: String?, profile: Reference?) {
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
				self.profile = Reference(json: val, owner: self)
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
	override public class var resourceName: String {
		get { return "ConformanceImplementation" }
	}
	
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
 *  If messaging is supported.
 *
 *  A description of the messaging capabilities of the solution.
 */
public class ConformanceMessaging: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConformanceMessaging" }
	}
	
	/// Messaging interface behavior details
	public var documentation: String?
	
	/// Actual endpoint being described
	public var endpoint: NSURL?
	
	/// Declare support for this event
	public var event: [ConformanceMessagingEvent]?
	
	/// Reliable Message Cache Length (min)
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
				self.event = ConformanceMessagingEvent.from(val, owner: self) as? [ConformanceMessagingEvent]
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
	override public class var resourceName: String {
		get { return "ConformanceMessagingEvent" }
	}
	
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
	public var request: Reference?
	
	/// Profile that describes the response
	public var response: Reference?
	
	public convenience init(code: Coding?, focus: String?, mode: String?, request: Reference?, response: Reference?) {
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
				self.code = Coding(json: val, owner: self)
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
				self.protokol = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["request"] as? NSDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? NSDictionary {
				self.response = Reference(json: val, owner: self)
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
	override public class var resourceName: String {
		get { return "ConformanceRest" }
	}
	
	/// How documents are accepted in /Mailbox
	public var documentMailbox: [NSURL]?
	
	/// General description of implementation
	public var documentation: String?
	
	/// What operations are supported?
	public var interaction: [ConformanceRestInteraction]?
	
	/// client | server
	public var mode: String?
	
	/// Definition of an operation or a custom query
	public var operation: [ConformanceRestOperation]?
	
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
			if let val = js["interaction"] as? [NSDictionary] {
				self.interaction = ConformanceRestInteraction.from(val, owner: self) as? [ConformanceRestInteraction]
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["operation"] as? [NSDictionary] {
				self.operation = ConformanceRestOperation.from(val, owner: self) as? [ConformanceRestOperation]
			}
			if let val = js["resource"] as? [NSDictionary] {
				self.resource = ConformanceRestResource.from(val, owner: self) as? [ConformanceRestResource]
			}
			if let val = js["security"] as? NSDictionary {
				self.security = ConformanceRestSecurity(json: val, owner: self)
			}
		}
	}
}


/**
 *  What operations are supported?.
 *
 *  A specification of restful operations supported by the system.
 */
public class ConformanceRestInteraction: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConformanceRestInteraction" }
	}
	
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
 *  Definition of an operation or a custom query.
 *
 *  Definition of an operation or a named query and with its parameters and their meaning and type.
 */
public class ConformanceRestOperation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConformanceRestOperation" }
	}
	
	/// The the operation/query is defined
	public var definition: Reference?
	
	/// Name by which the operation/query is invoked
	public var name: String?
	
	public convenience init(definition: Reference?, name: String?) {
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
			if let val = js["definition"] as? NSDictionary {
				self.definition = Reference(json: val, owner: self)
			}
			if let val = js["name"] as? String {
				self.name = val
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
	override public class var resourceName: String {
		get { return "ConformanceRestResource" }
	}
	
	/// What operations are supported?
	public var interaction: [ConformanceRestResourceInteraction]?
	
	/// What structural features are supported
	public var profile: Reference?
	
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
	
	/// no-version | versioned | versioned-update
	public var versioning: String?
	
	public convenience init(interaction: [ConformanceRestResourceInteraction]?, type: String?) {
		self.init(json: nil)
		if nil != interaction {
			self.interaction = interaction
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["interaction"] as? [NSDictionary] {
				self.interaction = ConformanceRestResourceInteraction.from(val, owner: self) as? [ConformanceRestResourceInteraction]
			}
			if let val = js["profile"] as? NSDictionary {
				self.profile = Reference(json: val, owner: self)
			}
			if let val = js["readHistory"] as? Bool {
				self.readHistory = val
			}
			if let val = js["searchInclude"] as? [String] {
				self.searchInclude = val
			}
			if let val = js["searchParam"] as? [NSDictionary] {
				self.searchParam = ConformanceRestResourceSearchParam.from(val, owner: self) as? [ConformanceRestResourceSearchParam]
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["updateCreate"] as? Bool {
				self.updateCreate = val
			}
			if let val = js["versioning"] as? String {
				self.versioning = val
			}
		}
	}
}


/**
 *  What operations are supported?.
 *
 *  Identifies a restful operation supported by the solution.
 */
public class ConformanceRestResourceInteraction: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConformanceRestResourceInteraction" }
	}
	
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
	override public class var resourceName: String {
		get { return "ConformanceRestResourceSearchParam" }
	}
	
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
 *  Information about security of implementation.
 */
public class ConformanceRestSecurity: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConformanceRestSecurity" }
	}
	
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
				self.certificate = ConformanceRestSecurityCertificate.from(val, owner: self) as? [ConformanceRestSecurityCertificate]
			}
			if let val = js["cors"] as? Bool {
				self.cors = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["service"] as? [NSDictionary] {
				self.service = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
}


/**
 *  Certificates associated with security profiles.
 */
public class ConformanceRestSecurityCertificate: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConformanceRestSecurityCertificate" }
	}
	
	/// Actual certificate
	public var blob: Base64Binary?
	
	/// Mime type for certificate
	public var type: String?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["blob"] as? String {
				self.blob = Base64Binary(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
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
	override public class var resourceName: String {
		get { return "ConformanceSoftware" }
	}
	
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

