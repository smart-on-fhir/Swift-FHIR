//
//  Conformance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (conformance.profile.json) on 2015-01-23.
//  2015, SMART Platforms.
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
	public var date: DateTime?
	
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
	
	public convenience init(acceptUnknown: Bool?, date: DateTime?, fhirVersion: String?, format: [String]?, publisher: String?) {
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["acceptUnknown"] as? Bool {
				self.acceptUnknown = val
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["document"] as? [JSONDictionary] {
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
			if let val = js["implementation"] as? JSONDictionary {
				self.implementation = ConformanceImplementation(json: val, owner: self)
			}
			if let val = js["messaging"] as? [JSONDictionary] {
				self.messaging = ConformanceMessaging.from(val, owner: self) as? [ConformanceMessaging]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["profile"] as? [JSONDictionary] {
				self.profile = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["rest"] as? [JSONDictionary] {
				self.rest = ConformanceRest.from(val, owner: self) as? [ConformanceRest]
			}
			if let val = js["software"] as? JSONDictionary {
				self.software = ConformanceSoftware(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let acceptUnknown = self.acceptUnknown {
			json["acceptUnknown"] = acceptUnknown.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description = self.description {
			json["description"] = description.asJSON()
		}
		if let document = self.document {
			json["document"] = ConformanceDocument.asJSONArray(document)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fhirVersion = self.fhirVersion {
			json["fhirVersion"] = fhirVersion.asJSON()
		}
		if let format = self.format {
			var arr = [AnyObject]()
			for val in format {
				arr.append(val.asJSON())
			}
			json["format"] = arr
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let implementation = self.implementation {
			json["implementation"] = implementation.asJSON()
		}
		if let messaging = self.messaging {
			json["messaging"] = ConformanceMessaging.asJSONArray(messaging)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = Reference.asJSONArray(profile)
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let rest = self.rest {
			json["rest"] = ConformanceRest.asJSONArray(rest)
		}
		if let software = self.software {
			json["software"] = software.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["profile"] as? JSONDictionary {
				self.profile = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let description = self.description {
			json["description"] = description.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(string: val)
			}
			if let val = js["event"] as? [JSONDictionary] {
				self.event = ConformanceMessagingEvent.from(val, owner: self) as? [ConformanceMessagingEvent]
			}
			if let val = js["reliableCache"] as? Int {
				self.reliableCache = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.asJSON()
		}
		if let event = self.event {
			json["event"] = ConformanceMessagingEvent.asJSONArray(event)
		}
		if let reliableCache = self.reliableCache {
			json["reliableCache"] = reliableCache.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["category"] as? String {
				self.category = val
			}
			if let val = js["code"] as? JSONDictionary {
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
			if let val = js["protocol"] as? [JSONDictionary] {
				self.protokol = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["request"] as? JSONDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? JSONDictionary {
				self.response = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let focus = self.focus {
			json["focus"] = focus.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let protokol = self.protokol {
			json["protocol"] = Coding.asJSONArray(protokol)
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let response = self.response {
			json["response"] = response.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["documentMailbox"] as? [String] {
				self.documentMailbox = NSURL.from(val)
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["interaction"] as? [JSONDictionary] {
				self.interaction = ConformanceRestInteraction.from(val, owner: self) as? [ConformanceRestInteraction]
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["operation"] as? [JSONDictionary] {
				self.operation = ConformanceRestOperation.from(val, owner: self) as? [ConformanceRestOperation]
			}
			if let val = js["resource"] as? [JSONDictionary] {
				self.resource = ConformanceRestResource.from(val, owner: self) as? [ConformanceRestResource]
			}
			if let val = js["security"] as? JSONDictionary {
				self.security = ConformanceRestSecurity(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let documentMailbox = self.documentMailbox {
			var arr = [AnyObject]()
			for val in documentMailbox {
				arr.append(val.asJSON())
			}
			json["documentMailbox"] = arr
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let interaction = self.interaction {
			json["interaction"] = ConformanceRestInteraction.asJSONArray(interaction)
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let operation = self.operation {
			json["operation"] = ConformanceRestOperation.asJSONArray(operation)
		}
		if let resource = self.resource {
			json["resource"] = ConformanceRestResource.asJSONArray(resource)
		}
		if let security = self.security {
			json["security"] = security.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		
		return json
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
	
	/// The defined operation/query
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["definition"] as? JSONDictionary {
				self.definition = Reference(json: val, owner: self)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["interaction"] as? [JSONDictionary] {
				self.interaction = ConformanceRestResourceInteraction.from(val, owner: self) as? [ConformanceRestResourceInteraction]
			}
			if let val = js["profile"] as? JSONDictionary {
				self.profile = Reference(json: val, owner: self)
			}
			if let val = js["readHistory"] as? Bool {
				self.readHistory = val
			}
			if let val = js["searchInclude"] as? [String] {
				self.searchInclude = val
			}
			if let val = js["searchParam"] as? [JSONDictionary] {
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let interaction = self.interaction {
			json["interaction"] = ConformanceRestResourceInteraction.asJSONArray(interaction)
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let readHistory = self.readHistory {
			json["readHistory"] = readHistory.asJSON()
		}
		if let searchInclude = self.searchInclude {
			var arr = [AnyObject]()
			for val in searchInclude {
				arr.append(val.asJSON())
			}
			json["searchInclude"] = arr
		}
		if let searchParam = self.searchParam {
			json["searchParam"] = ConformanceRestResourceSearchParam.asJSONArray(searchParam)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let updateCreate = self.updateCreate {
			json["updateCreate"] = updateCreate.asJSON()
		}
		if let versioning = self.versioning {
			json["versioning"] = versioning.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["chain"] as? [String] {
				self.chain = val
			}
			if let val = js["definition"] as? String {
				self.definition = NSURL(string: val)
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let chain = self.chain {
			var arr = [AnyObject]()
			for val in chain {
				arr.append(val.asJSON())
			}
			json["chain"] = arr
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let target = self.target {
			var arr = [AnyObject]()
			for val in target {
				arr.append(val.asJSON())
			}
			json["target"] = arr
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["certificate"] as? [JSONDictionary] {
				self.certificate = ConformanceRestSecurityCertificate.from(val, owner: self) as? [ConformanceRestSecurityCertificate]
			}
			if let val = js["cors"] as? Bool {
				self.cors = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["service"] as? [JSONDictionary] {
				self.service = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let certificate = self.certificate {
			json["certificate"] = ConformanceRestSecurityCertificate.asJSONArray(certificate)
		}
		if let cors = self.cors {
			json["cors"] = cors.asJSON()
		}
		if let description = self.description {
			json["description"] = description.asJSON()
		}
		if let service = self.service {
			json["service"] = CodeableConcept.asJSONArray(service)
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["blob"] as? String {
				self.blob = Base64Binary(string: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let blob = self.blob {
			json["blob"] = blob.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
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
	public var releaseDate: DateTime?
	
	/// Version covered by this statement
	public var version: String?
	
	public convenience init(name: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["releaseDate"] as? String {
				self.releaseDate = DateTime(string: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let releaseDate = self.releaseDate {
			json["releaseDate"] = releaseDate.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

