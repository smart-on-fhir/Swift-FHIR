//
//  Conformance.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Conformance) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A conformance statement.
 *
 *  A conformance statement is a set of requirements for a desired implementation or a description of how a target
 *  application fulfills those requirements in a particular implementation.
 */
public class Conformance: DomainResource
{
	override public class var resourceName: String {
		get { return "Conformance" }
	}
	
	/// True if application accepts unknown elements
	public var acceptUnknown: Bool?
	
	/// Contact details of the publisher
	public var contact: [ConformanceContact]?
	
	/// Use and/or Publishing restrictions
	public var copyright: String?
	
	/// Publication Date(/time)
	public var date: DateTime?
	
	/// Human description of the conformance statement
	public var description_fhir: String?
	
	/// Document definition
	public var document: [ConformanceDocument]?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// FHIR Version
	public var fhirVersion: String?
	
	/// formats supported (xml | json | mime type)
	public var format: [String]?
	
	/// If this describes a specific instance
	public var implementation: ConformanceImplementation?
	
	/// If messaging is supported
	public var messaging: [ConformanceMessaging]?
	
	/// Informal name for this conformance statement
	public var name: String?
	
	/// Profiles supported by the system
	public var profile: [Reference]?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Why is this needed?
	public var requirements: String?
	
	/// If the endpoint is a RESTful one
	public var rest: [ConformanceRest]?
	
	/// Software that is covered by this conformance statement
	public var software: ConformanceSoftware?
	
	/// draft | active | retired
	public var status: String?
	
	/// Logical uri to reference this statement
	public var url: NSURL?
	
	/// Logical id for this version of the statement
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(acceptUnknown: Bool?, date: DateTime?, fhirVersion: String?, format: [String]?) {
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
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["acceptUnknown"] {
				presentKeys.addObject("acceptUnknown")
				if let val = exist as? Bool {
					self.acceptUnknown = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"acceptUnknown\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"acceptUnknown\" but it is missing"))
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ConformanceContact.from(val, owner: self) as? [ConformanceContact]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.addObject("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"copyright\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"date\" but it is missing"))
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["document"] {
				presentKeys.addObject("document")
				if let val = exist as? [FHIRJSON] {
					self.document = ConformanceDocument.from(val, owner: self) as? [ConformanceDocument]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"document\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.addObject("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"experimental\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fhirVersion"] {
				presentKeys.addObject("fhirVersion")
				if let val = exist as? String {
					self.fhirVersion = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fhirVersion\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"fhirVersion\" but it is missing"))
			}
			if let exist: AnyObject = js["format"] {
				presentKeys.addObject("format")
				if let val = exist as? [String] {
					self.format = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"format\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"format\" but it is missing"))
			}
			if let exist: AnyObject = js["implementation"] {
				presentKeys.addObject("implementation")
				if let val = exist as? FHIRJSON {
					self.implementation = ConformanceImplementation(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"implementation\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["messaging"] {
				presentKeys.addObject("messaging")
				if let val = exist as? [FHIRJSON] {
					self.messaging = ConformanceMessaging.from(val, owner: self) as? [ConformanceMessaging]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"messaging\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.addObject("profile")
				if let val = exist as? [FHIRJSON] {
					self.profile = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"profile\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.addObject("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"publisher\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.addObject("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requirements\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["rest"] {
				presentKeys.addObject("rest")
				if let val = exist as? [FHIRJSON] {
					self.rest = ConformanceRest.from(val, owner: self) as? [ConformanceRest]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"rest\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["software"] {
				presentKeys.addObject("software")
				if let val = exist as? FHIRJSON {
					self.software = ConformanceSoftware(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"software\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let acceptUnknown = self.acceptUnknown {
			json["acceptUnknown"] = acceptUnknown.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = ConformanceContact.asJSONArray(contact)
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
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
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
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
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class ConformanceContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConformanceContact" }
	}
	
	/// Name of a individual to contact
	public var name: String?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(mode: String?, profile: Reference?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
		if nil != profile {
			self.profile = profile
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.addObject("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"documentation\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.addObject("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mode\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"mode\" but it is missing"))
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.addObject("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"profile\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"profile\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	public var description_fhir: String?
	
	/// Base URL for the installation
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(description_fhir: String?) {
		self.init(json: nil)
		if nil != description_fhir {
			self.description_fhir = description_fhir
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"description\" but it is missing"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
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
	public var reliableCache: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(event: [ConformanceMessagingEvent]?) {
		self.init(json: nil)
		if nil != event {
			self.event = event
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.addObject("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"documentation\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["endpoint"] {
				presentKeys.addObject("endpoint")
				if let val = exist as? String {
					self.endpoint = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"endpoint\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["event"] {
				presentKeys.addObject("event")
				if let val = exist as? [FHIRJSON] {
					self.event = ConformanceMessagingEvent.from(val, owner: self) as? [ConformanceMessagingEvent]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"event\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"event\" but it is missing"))
			}
			if let exist: AnyObject = js["reliableCache"] {
				presentKeys.addObject("reliableCache")
				if let val = exist as? UInt {
					self.reliableCache = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reliableCache\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	public var protocol_fhir: [Coding]?
	
	/// Profile that describes the request
	public var request: Reference?
	
	/// Profile that describes the response
	public var response: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.addObject("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"category\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.addObject("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"documentation\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["focus"] {
				presentKeys.addObject("focus")
				if let val = exist as? String {
					self.focus = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"focus\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"focus\" but it is missing"))
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.addObject("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mode\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"mode\" but it is missing"))
			}
			if let exist: AnyObject = js["protocol"] {
				presentKeys.addObject("protocol")
				if let val = exist as? [FHIRJSON] {
					self.protocol_fhir = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"protocol\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["request"] {
				presentKeys.addObject("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"request\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"request\" but it is missing"))
			}
			if let exist: AnyObject = js["response"] {
				presentKeys.addObject("response")
				if let val = exist as? FHIRJSON {
					self.response = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"response\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"response\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
		if let protocol_fhir = self.protocol_fhir {
			json["protocol"] = Coding.asJSONArray(protocol_fhir)
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
	
	/// Compartments served/used by system
	public var compartment: [NSURL]?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(mode: String?, resource: [ConformanceRestResource]?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
		if nil != resource {
			self.resource = resource
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["compartment"] {
				presentKeys.addObject("compartment")
				if let val = exist as? [String] {
					self.compartment = NSURL.from(val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"compartment\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["documentMailbox"] {
				presentKeys.addObject("documentMailbox")
				if let val = exist as? [String] {
					self.documentMailbox = NSURL.from(val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"documentMailbox\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.addObject("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"documentation\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["interaction"] {
				presentKeys.addObject("interaction")
				if let val = exist as? [FHIRJSON] {
					self.interaction = ConformanceRestInteraction.from(val, owner: self) as? [ConformanceRestInteraction]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"interaction\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.addObject("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mode\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"mode\" but it is missing"))
			}
			if let exist: AnyObject = js["operation"] {
				presentKeys.addObject("operation")
				if let val = exist as? [FHIRJSON] {
					self.operation = ConformanceRestOperation.from(val, owner: self) as? [ConformanceRestOperation]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"operation\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["resource"] {
				presentKeys.addObject("resource")
				if let val = exist as? [FHIRJSON] {
					self.resource = ConformanceRestResource.from(val, owner: self) as? [ConformanceRestResource]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"resource\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"resource\" but it is missing"))
			}
			if let exist: AnyObject = js["security"] {
				presentKeys.addObject("security")
				if let val = exist as? FHIRJSON {
					self.security = ConformanceRestSecurity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"security\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let compartment = self.compartment {
			var arr = [AnyObject]()
			for val in compartment {
				arr.append(val.asJSON())
			}
			json["compartment"] = arr
		}
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.addObject("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"documentation\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(definition: Reference?, name: String?) {
		self.init(json: nil)
		if nil != definition {
			self.definition = definition
		}
		if nil != name {
			self.name = name
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["definition"] {
				presentKeys.addObject("definition")
				if let val = exist as? FHIRJSON {
					self.definition = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"definition\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"definition\" but it is missing"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"name\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	/// If allows/uses conditional create
	public var conditionalCreate: Bool?
	
	/// If allows/uses conditional delete
	public var conditionalDelete: Bool?
	
	/// If allows/uses conditional update
	public var conditionalUpdate: Bool?
	
	/// What operations are supported?
	public var interaction: [ConformanceRestResourceInteraction]?
	
	/// What structural features are supported
	public var profile: Reference?
	
	/// Whether vRead can return past versions
	public var readHistory: Bool?
	
	/// _include values supported by the server
	public var searchInclude: [String]?
	
	/// Search params supported by implementation
	public var searchParam: [ConformanceRestResourceSearchParam]?
	
	/// A resource type that is supported
	public var type: String?
	
	/// If update can commit to a new identity
	public var updateCreate: Bool?
	
	/// no-version | versioned | versioned-update
	public var versioning: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(interaction: [ConformanceRestResourceInteraction]?, type: String?) {
		self.init(json: nil)
		if nil != interaction {
			self.interaction = interaction
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["conditionalCreate"] {
				presentKeys.addObject("conditionalCreate")
				if let val = exist as? Bool {
					self.conditionalCreate = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"conditionalCreate\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["conditionalDelete"] {
				presentKeys.addObject("conditionalDelete")
				if let val = exist as? Bool {
					self.conditionalDelete = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"conditionalDelete\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["conditionalUpdate"] {
				presentKeys.addObject("conditionalUpdate")
				if let val = exist as? Bool {
					self.conditionalUpdate = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"conditionalUpdate\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["interaction"] {
				presentKeys.addObject("interaction")
				if let val = exist as? [FHIRJSON] {
					self.interaction = ConformanceRestResourceInteraction.from(val, owner: self) as? [ConformanceRestResourceInteraction]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"interaction\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"interaction\" but it is missing"))
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.addObject("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"profile\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["readHistory"] {
				presentKeys.addObject("readHistory")
				if let val = exist as? Bool {
					self.readHistory = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"readHistory\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["searchInclude"] {
				presentKeys.addObject("searchInclude")
				if let val = exist as? [String] {
					self.searchInclude = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"searchInclude\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["searchParam"] {
				presentKeys.addObject("searchParam")
				if let val = exist as? [FHIRJSON] {
					self.searchParam = ConformanceRestResourceSearchParam.from(val, owner: self) as? [ConformanceRestResourceSearchParam]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"searchParam\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["updateCreate"] {
				presentKeys.addObject("updateCreate")
				if let val = exist as? Bool {
					self.updateCreate = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"updateCreate\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["versioning"] {
				presentKeys.addObject("versioning")
				if let val = exist as? String {
					self.versioning = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"versioning\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let conditionalCreate = self.conditionalCreate {
			json["conditionalCreate"] = conditionalCreate.asJSON()
		}
		if let conditionalDelete = self.conditionalDelete {
			json["conditionalDelete"] = conditionalDelete.asJSON()
		}
		if let conditionalUpdate = self.conditionalUpdate {
			json["conditionalUpdate"] = conditionalUpdate.asJSON()
		}
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.addObject("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"documentation\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  Search params supported by implementation.
 *
 *  Search parameters for implementations to support and/or make use of - either references to ones defined in the
 *  specification, or additional ones defined for/by the implementation.
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
	
	/// number | date | string | token | reference | composite | quantity | uri
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(name: String?, type: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["chain"] {
				presentKeys.addObject("chain")
				if let val = exist as? [String] {
					self.chain = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"chain\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["definition"] {
				presentKeys.addObject("definition")
				if let val = exist as? String {
					self.definition = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"definition\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.addObject("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"documentation\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"name\" but it is missing"))
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? [String] {
					self.target = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *
 *  Information about security implementation from an interface perspective - what a client needs to know.
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
	public var description_fhir: String?
	
	/// OAuth | OAuth2 | NTLM | Basic | Kerberos
	public var service: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["certificate"] {
				presentKeys.addObject("certificate")
				if let val = exist as? [FHIRJSON] {
					self.certificate = ConformanceRestSecurityCertificate.from(val, owner: self) as? [ConformanceRestSecurityCertificate]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"certificate\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["cors"] {
				presentKeys.addObject("cors")
				if let val = exist as? Bool {
					self.cors = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"cors\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.addObject("service")
				if let val = exist as? [FHIRJSON] {
					self.service = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"service\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let certificate = self.certificate {
			json["certificate"] = ConformanceRestSecurityCertificate.asJSONArray(certificate)
		}
		if let cors = self.cors {
			json["cors"] = cors.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["blob"] {
				presentKeys.addObject("blob")
				if let val = exist as? String {
					self.blob = Base64Binary(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"blob\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  Software that is covered by this conformance statement.  It is used when the conformance statement describes the
 *  capabilities of a particular software version, independent of an installation.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(name: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"name\" but it is missing"))
			}
			if let exist: AnyObject = js["releaseDate"] {
				presentKeys.addObject("releaseDate")
				if let val = exist as? String {
					self.releaseDate = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"releaseDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

