//
//  TestScript.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/TestScript) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Describes a set of tests.
 *
 *  TestScript is a resource that specifies a suite of tests against a FHIR server implementation to determine
 *  compliance against the FHIR specification.
 */
public class TestScript: DomainResource {
	override public class var resourceName: String {
		get { return "TestScript" }
	}
	
	/// Contact details of the publisher.
	public var contact: [TestScriptContact]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date for this version of the TestScript.
	public var date: DateTime?
	
	/// Natural language description of the TestScript.
	public var description_fhir: String?
	
	/// An abstract server representing a destination or receiver in a message exchange.
	public var destination: [TestScriptDestination]?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Fixture in the test script - by reference (uri).
	public var fixture: [TestScriptFixture]?
	
	/// External identifier.
	public var identifier: Identifier?
	
	/// Required capability that is assumed to function correctly on the FHIR server being tested.
	public var metadata: TestScriptMetadata?
	
	/// Informal name for this TestScript.
	public var name: String?
	
	/// An abstract server representing a client or sender in a message exchange.
	public var origin: [TestScriptOrigin]?
	
	/// Reference of the validation profile.
	public var profile: [Reference]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Scope and Usage this Test Script is for.
	public var requirements: String?
	
	/// Assert rule used within the test script.
	public var rule: [TestScriptRule]?
	
	/// Assert ruleset used within the test script.
	public var ruleset: [TestScriptRuleset]?
	
	/// A series of required setup operations before tests are executed.
	public var setup: TestScriptSetup?
	
	/// draft | active | retired.
	public var status: String?
	
	/// A series of required clean up steps.
	public var teardown: TestScriptTeardown?
	
	/// A test in this script.
	public var test: [TestScriptTest]?
	
	/// Absolute URL used to reference this TestScript.
	public var url: NSURL?
	
	/// Content intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Placeholder for evaluated elements.
	public var variable: [TestScriptVariable]?
	
	/// Logical id for this version of the TestScript.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, status: String, url: NSURL) {
		self.init(json: nil)
		self.name = name
		self.status = status
		self.url = url
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = TestScriptContact.from(val, owner: self) as? [TestScriptContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? [FHIRJSON] {
					self.destination = TestScriptDestination.from(val, owner: self) as? [TestScriptDestination]
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixture"] {
				presentKeys.insert("fixture")
				if let val = exist as? [FHIRJSON] {
					self.fixture = TestScriptFixture.from(val, owner: self) as? [TestScriptFixture]
				}
				else {
					errors.append(FHIRJSONError(key: "fixture", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["metadata"] {
				presentKeys.insert("metadata")
				if let val = exist as? FHIRJSON {
					self.metadata = TestScriptMetadata(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "metadata", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["origin"] {
				presentKeys.insert("origin")
				if let val = exist as? [FHIRJSON] {
					self.origin = TestScriptOrigin.from(val, owner: self) as? [TestScriptOrigin]
				}
				else {
					errors.append(FHIRJSONError(key: "origin", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? [FHIRJSON] {
					self.profile = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.insert("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(FHIRJSONError(key: "requirements", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = TestScriptRule.from(val, owner: self) as? [TestScriptRule]
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? [FHIRJSON] {
					self.ruleset = TestScriptRuleset.from(val, owner: self) as? [TestScriptRuleset]
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["setup"] {
				presentKeys.insert("setup")
				if let val = exist as? FHIRJSON {
					self.setup = TestScriptSetup(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "setup", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["teardown"] {
				presentKeys.insert("teardown")
				if let val = exist as? FHIRJSON {
					self.teardown = TestScriptTeardown(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "teardown", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["test"] {
				presentKeys.insert("test")
				if let val = exist as? [FHIRJSON] {
					self.test = TestScriptTest.from(val, owner: self) as? [TestScriptTest]
				}
				else {
					errors.append(FHIRJSONError(key: "test", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
			if let exist: AnyObject = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["variable"] {
				presentKeys.insert("variable")
				if let val = exist as? [FHIRJSON] {
					self.variable = TestScriptVariable.from(val, owner: self) as? [TestScriptVariable]
				}
				else {
					errors.append(FHIRJSONError(key: "variable", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = TestScriptContact.asJSONArray(contact)
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
		if let destination = self.destination {
			json["destination"] = TestScriptDestination.asJSONArray(destination)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fixture = self.fixture {
			json["fixture"] = TestScriptFixture.asJSONArray(fixture)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let metadata = self.metadata {
			json["metadata"] = metadata.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let origin = self.origin {
			json["origin"] = TestScriptOrigin.asJSONArray(origin)
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
		if let rule = self.rule {
			json["rule"] = TestScriptRule.asJSONArray(rule)
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = TestScriptRuleset.asJSONArray(ruleset)
		}
		if let setup = self.setup {
			json["setup"] = setup.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let teardown = self.teardown {
			json["teardown"] = teardown.asJSON()
		}
		if let test = self.test {
			json["test"] = TestScriptTest.asJSONArray(test)
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = CodeableConcept.asJSONArray(useContext)
		}
		if let variable = self.variable {
			json["variable"] = TestScriptVariable.asJSONArray(variable)
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
public class TestScriptContact: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptContact" }
	}
	
	/// Name of an individual to contact.
	public var name: String?
	
	/// Contact details for individual or publisher.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
 *  An abstract server representing a destination or receiver in a message exchange.
 *
 *  An abstract server used in operations within this test script in the destination element.
 */
public class TestScriptDestination: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptDestination" }
	}
	
	/// The index of the abstract destination server starting at 1.
	public var index: Int?
	
	/// FHIR-Server | FHIR-SDC-FormManager | FHIR-SDC-FormReceiver | FHIR-SDC-FormProcessor.
	public var profile: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(index: Int, profile: Coding) {
		self.init(json: nil)
		self.index = index
		self.profile = profile
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["index"] {
				presentKeys.insert("index")
				if let val = exist as? Int {
					self.index = val
				}
				else {
					errors.append(FHIRJSONError(key: "index", wants: Int.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "index"))
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "profile"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let index = self.index {
			json["index"] = index.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		
		return json
	}
}


/**
 *  Fixture in the test script - by reference (uri).
 *
 *  Fixture in the test script - by reference (uri). All fixtures are required for the test script to execute.
 */
public class TestScriptFixture: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptFixture" }
	}
	
	/// Whether or not to implicitly create the fixture during setup.
	public var autocreate: Bool?
	
	/// Whether or not to implicitly delete the fixture during teardown.
	public var autodelete: Bool?
	
	/// Reference of the resource.
	public var resource: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["autocreate"] {
				presentKeys.insert("autocreate")
				if let val = exist as? Bool {
					self.autocreate = val
				}
				else {
					errors.append(FHIRJSONError(key: "autocreate", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["autodelete"] {
				presentKeys.insert("autodelete")
				if let val = exist as? Bool {
					self.autodelete = val
				}
				else {
					errors.append(FHIRJSONError(key: "autodelete", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let autocreate = self.autocreate {
			json["autocreate"] = autocreate.asJSON()
		}
		if let autodelete = self.autodelete {
			json["autodelete"] = autodelete.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		
		return json
	}
}


/**
 *  Required capability that is assumed to function correctly on the FHIR server being tested.
 *
 *  The required capability must exist and are assumed to function correctly on the FHIR server being tested.
 */
public class TestScriptMetadata: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptMetadata" }
	}
	
	/// Capabilities  that are assumed to function correctly on the FHIR server being tested.
	public var capability: [TestScriptMetadataCapability]?
	
	/// Links to the FHIR specification.
	public var link: [TestScriptMetadataLink]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(capability: [TestScriptMetadataCapability]) {
		self.init(json: nil)
		self.capability = capability
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["capability"] {
				presentKeys.insert("capability")
				if let val = exist as? [FHIRJSON] {
					self.capability = TestScriptMetadataCapability.from(val, owner: self) as? [TestScriptMetadataCapability]
				}
				else {
					errors.append(FHIRJSONError(key: "capability", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "capability"))
			}
			if let exist: AnyObject = js["link"] {
				presentKeys.insert("link")
				if let val = exist as? [FHIRJSON] {
					self.link = TestScriptMetadataLink.from(val, owner: self) as? [TestScriptMetadataLink]
				}
				else {
					errors.append(FHIRJSONError(key: "link", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let capability = self.capability {
			json["capability"] = TestScriptMetadataCapability.asJSONArray(capability)
		}
		if let link = self.link {
			json["link"] = TestScriptMetadataLink.asJSONArray(link)
		}
		
		return json
	}
}


/**
 *  Capabilities  that are assumed to function correctly on the FHIR server being tested.
 *
 *  Capabilities that must exist and are assumed to function correctly on the FHIR server being tested.
 */
public class TestScriptMetadataCapability: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptMetadataCapability" }
	}
	
	/// Required Conformance.
	public var conformance: Reference?
	
	/// The expected capabilities of the server.
	public var description_fhir: String?
	
	/// Which server these requirements apply to.
	public var destination: Int?
	
	/// Links to the FHIR specification.
	public var link: [NSURL]?
	
	/// Which origin server these requirements apply to.
	public var origin: [Int]?
	
	/// Are the capabilities required?.
	public var required: Bool?
	
	/// Are the capabilities validated?.
	public var validated: Bool?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(conformance: Reference) {
		self.init(json: nil)
		self.conformance = conformance
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["conformance"] {
				presentKeys.insert("conformance")
				if let val = exist as? FHIRJSON {
					self.conformance = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "conformance", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "conformance"))
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? Int {
					self.destination = val
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["link"] {
				presentKeys.insert("link")
				if let val = exist as? [String] {
					self.link = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "link", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["origin"] {
				presentKeys.insert("origin")
				if let val = exist as? [Int] {
					self.origin = val
				}
				else {
					errors.append(FHIRJSONError(key: "origin", wants: Array<Int>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["required"] {
				presentKeys.insert("required")
				if let val = exist as? Bool {
					self.required = val
				}
				else {
					errors.append(FHIRJSONError(key: "required", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["validated"] {
				presentKeys.insert("validated")
				if let val = exist as? Bool {
					self.validated = val
				}
				else {
					errors.append(FHIRJSONError(key: "validated", wants: Bool.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let conformance = self.conformance {
			json["conformance"] = conformance.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON()
		}
		if let link = self.link {
			var arr = [AnyObject]()
			for val in link {
				arr.append(val.asJSON())
			}
			json["link"] = arr
		}
		if let origin = self.origin {
			var arr = [AnyObject]()
			for val in origin {
				arr.append(val.asJSON())
			}
			json["origin"] = arr
		}
		if let required = self.required {
			json["required"] = required.asJSON()
		}
		if let validated = self.validated {
			json["validated"] = validated.asJSON()
		}
		
		return json
	}
}


/**
 *  Links to the FHIR specification.
 *
 *  A link to the FHIR specification that this test is covering.
 */
public class TestScriptMetadataLink: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptMetadataLink" }
	}
	
	/// Short description.
	public var description_fhir: String?
	
	/// URL to the specification.
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(url: NSURL) {
		self.init(json: nil)
		self.url = url
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
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
 *  An abstract server representing a client or sender in a message exchange.
 *
 *  An abstract server used in operations within this test script in the origin element.
 */
public class TestScriptOrigin: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptOrigin" }
	}
	
	/// The index of the abstract origin server starting at 1.
	public var index: Int?
	
	/// FHIR-Client | FHIR-SDC-FormFiller.
	public var profile: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(index: Int, profile: Coding) {
		self.init(json: nil)
		self.index = index
		self.profile = profile
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["index"] {
				presentKeys.insert("index")
				if let val = exist as? Int {
					self.index = val
				}
				else {
					errors.append(FHIRJSONError(key: "index", wants: Int.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "index"))
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "profile"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let index = self.index {
			json["index"] = index.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		
		return json
	}
}


/**
 *  Assert rule used within the test script.
 *
 *  Assert rule to be used in one or more asserts within the test script.
 */
public class TestScriptRule: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptRule" }
	}
	
	/// Rule parameter template.
	public var param: [TestScriptRuleParam]?
	
	/// Assert rule resource reference.
	public var resource: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(resource: Reference) {
		self.init(json: nil)
		self.resource = resource
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["param"] {
				presentKeys.insert("param")
				if let val = exist as? [FHIRJSON] {
					self.param = TestScriptRuleParam.from(val, owner: self) as? [TestScriptRuleParam]
				}
				else {
					errors.append(FHIRJSONError(key: "param", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "resource"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let param = self.param {
			json["param"] = TestScriptRuleParam.asJSONArray(param)
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		
		return json
	}
}


/**
 *  Rule parameter template.
 *
 *  Each rule template can take one or more parameters for rule evaluation.
 */
public class TestScriptRuleParam: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptRuleParam" }
	}
	
	/// Parameter name matching external assert rule parameter.
	public var name: String?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init(json: nil)
		self.name = name
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
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
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Assert ruleset used within the test script.
 *
 *  Contains one or more rules.  Offers a way to group rules so assertions could reference the group of rules and have
 *  them all applied.
 */
public class TestScriptRuleset: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptRuleset" }
	}
	
	/// Assert ruleset resource reference.
	public var resource: Reference?
	
	/// The referenced rule within the ruleset.
	public var rule: [TestScriptRulesetRule]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(resource: Reference, rule: [TestScriptRulesetRule]) {
		self.init(json: nil)
		self.resource = resource
		self.rule = rule
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "resource"))
			}
			if let exist: AnyObject = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = TestScriptRulesetRule.from(val, owner: self) as? [TestScriptRulesetRule]
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "rule"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = TestScriptRulesetRule.asJSONArray(rule)
		}
		
		return json
	}
}


/**
 *  The referenced rule within the ruleset.
 *
 *  The referenced rule within the external ruleset template.
 */
public class TestScriptRulesetRule: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptRulesetRule" }
	}
	
	/// Ruleset rule parameter template.
	public var param: [TestScriptRulesetRuleParam]?
	
	/// Id of referenced rule within the ruleset.
	public var ruleId: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(ruleId: String) {
		self.init(json: nil)
		self.ruleId = ruleId
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["param"] {
				presentKeys.insert("param")
				if let val = exist as? [FHIRJSON] {
					self.param = TestScriptRulesetRuleParam.from(val, owner: self) as? [TestScriptRulesetRuleParam]
				}
				else {
					errors.append(FHIRJSONError(key: "param", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ruleId"] {
				presentKeys.insert("ruleId")
				if let val = exist as? String {
					self.ruleId = val
				}
				else {
					errors.append(FHIRJSONError(key: "ruleId", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "ruleId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let param = self.param {
			json["param"] = TestScriptRulesetRuleParam.asJSONArray(param)
		}
		if let ruleId = self.ruleId {
			json["ruleId"] = ruleId.asJSON()
		}
		
		return json
	}
}


/**
 *  Ruleset rule parameter template.
 *
 *  Each rule template can take one or more parameters for rule evaluation.
 */
public class TestScriptRulesetRuleParam: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptRulesetRuleParam" }
	}
	
	/// Parameter name matching external assert ruleset rule parameter.
	public var name: String?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init(json: nil)
		self.name = name
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
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
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  A series of required setup operations before tests are executed.
 */
public class TestScriptSetup: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptSetup" }
	}
	
	/// A setup operation or assert to perform.
	public var action: [TestScriptSetupAction]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestScriptSetupAction]) {
		self.init(json: nil)
		self.action = action
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = TestScriptSetupAction.from(val, owner: self) as? [TestScriptSetupAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = TestScriptSetupAction.asJSONArray(action)
		}
		
		return json
	}
}


/**
 *  A setup operation or assert to perform.
 *
 *  Action would contain either an operation or an assertion.
 */
public class TestScriptSetupAction: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptSetupAction" }
	}
	
	/// The assertion to perform.
	public var assert: TestScriptSetupActionAssert?
	
	/// The setup operation to perform.
	public var operation: TestScriptSetupActionOperation?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["assert"] {
				presentKeys.insert("assert")
				if let val = exist as? FHIRJSON {
					self.assert = TestScriptSetupActionAssert(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "assert", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["operation"] {
				presentKeys.insert("operation")
				if let val = exist as? FHIRJSON {
					self.operation = TestScriptSetupActionOperation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "operation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let assert = self.assert {
			json["assert"] = assert.asJSON()
		}
		if let operation = self.operation {
			json["operation"] = operation.asJSON()
		}
		
		return json
	}
}


/**
 *  The assertion to perform.
 *
 *  Evaluates the results of previous operations to determine if the server under test behaves appropriately.
 */
public class TestScriptSetupActionAssert: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptSetupActionAssert" }
	}
	
	/// Id of fixture used to compare the "sourceId/path" evaluations to.
	public var compareToSourceId: String?
	
	/// XPath or JSONPath expression against fixture used to compare the "sourceId/path" evaluations to.
	public var compareToSourcePath: String?
	
	/// xml | json | ttl | none.
	public var contentType: String?
	
	/// Tracking/reporting assertion description.
	public var description_fhir: String?
	
	/// response | request.
	public var direction: String?
	
	/// HTTP header field name.
	public var headerField: String?
	
	/// Tracking/logging assertion label.
	public var label: String?
	
	/// Fixture Id of minimum content resource.
	public var minimumId: String?
	
	/// Perform validation on navigation links?.
	public var navigationLinks: Bool?
	
	/// equals | notEquals | in | notIn | greaterThan | lessThan | empty | notEmpty | contains | notContains.
	public var operator_fhir: String?
	
	/// XPath or JSONPath expression.
	public var path: String?
	
	/// Request URL comparison value.
	public var requestURL: String?
	
	/// Resource type.
	public var resource: String?
	
	/// okay | created | noContent | notModified | bad | forbidden | notFound | methodNotAllowed | conflict | gone | preconditionFailed | unprocessable.
	public var response: String?
	
	/// HTTP response code to test.
	public var responseCode: String?
	
	/// The reference to a TestScript.rule.
	public var rule: TestScriptSetupActionAssertRule?
	
	/// The reference to a TestScript.ruleset.
	public var ruleset: TestScriptSetupActionAssertRuleset?
	
	/// Fixture Id of source expression or headerField.
	public var sourceId: String?
	
	/// Profile Id of validation profile reference.
	public var validateProfileId: String?
	
	/// The value to compare to.
	public var value: String?
	
	/// Will this assert produce a warning only on error?.
	public var warningOnly: Bool?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["compareToSourceId"] {
				presentKeys.insert("compareToSourceId")
				if let val = exist as? String {
					self.compareToSourceId = val
				}
				else {
					errors.append(FHIRJSONError(key: "compareToSourceId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["compareToSourcePath"] {
				presentKeys.insert("compareToSourcePath")
				if let val = exist as? String {
					self.compareToSourcePath = val
				}
				else {
					errors.append(FHIRJSONError(key: "compareToSourcePath", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contentType"] {
				presentKeys.insert("contentType")
				if let val = exist as? String {
					self.contentType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentType", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["direction"] {
				presentKeys.insert("direction")
				if let val = exist as? String {
					self.direction = val
				}
				else {
					errors.append(FHIRJSONError(key: "direction", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["headerField"] {
				presentKeys.insert("headerField")
				if let val = exist as? String {
					self.headerField = val
				}
				else {
					errors.append(FHIRJSONError(key: "headerField", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["label"] {
				presentKeys.insert("label")
				if let val = exist as? String {
					self.label = val
				}
				else {
					errors.append(FHIRJSONError(key: "label", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["minimumId"] {
				presentKeys.insert("minimumId")
				if let val = exist as? String {
					self.minimumId = val
				}
				else {
					errors.append(FHIRJSONError(key: "minimumId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["navigationLinks"] {
				presentKeys.insert("navigationLinks")
				if let val = exist as? Bool {
					self.navigationLinks = val
				}
				else {
					errors.append(FHIRJSONError(key: "navigationLinks", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["operator"] {
				presentKeys.insert("operator")
				if let val = exist as? String {
					self.operator_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "operator", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestURL"] {
				presentKeys.insert("requestURL")
				if let val = exist as? String {
					self.requestURL = val
				}
				else {
					errors.append(FHIRJSONError(key: "requestURL", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? String {
					self.resource = val
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["response"] {
				presentKeys.insert("response")
				if let val = exist as? String {
					self.response = val
				}
				else {
					errors.append(FHIRJSONError(key: "response", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["responseCode"] {
				presentKeys.insert("responseCode")
				if let val = exist as? String {
					self.responseCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "responseCode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? FHIRJSON {
					self.rule = TestScriptSetupActionAssertRule(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = TestScriptSetupActionAssertRuleset(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sourceId"] {
				presentKeys.insert("sourceId")
				if let val = exist as? String {
					self.sourceId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sourceId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["validateProfileId"] {
				presentKeys.insert("validateProfileId")
				if let val = exist as? String {
					self.validateProfileId = val
				}
				else {
					errors.append(FHIRJSONError(key: "validateProfileId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["warningOnly"] {
				presentKeys.insert("warningOnly")
				if let val = exist as? Bool {
					self.warningOnly = val
				}
				else {
					errors.append(FHIRJSONError(key: "warningOnly", wants: Bool.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let compareToSourceId = self.compareToSourceId {
			json["compareToSourceId"] = compareToSourceId.asJSON()
		}
		if let compareToSourcePath = self.compareToSourcePath {
			json["compareToSourcePath"] = compareToSourcePath.asJSON()
		}
		if let contentType = self.contentType {
			json["contentType"] = contentType.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let direction = self.direction {
			json["direction"] = direction.asJSON()
		}
		if let headerField = self.headerField {
			json["headerField"] = headerField.asJSON()
		}
		if let label = self.label {
			json["label"] = label.asJSON()
		}
		if let minimumId = self.minimumId {
			json["minimumId"] = minimumId.asJSON()
		}
		if let navigationLinks = self.navigationLinks {
			json["navigationLinks"] = navigationLinks.asJSON()
		}
		if let operator_fhir = self.operator_fhir {
			json["operator"] = operator_fhir.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let requestURL = self.requestURL {
			json["requestURL"] = requestURL.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let response = self.response {
			json["response"] = response.asJSON()
		}
		if let responseCode = self.responseCode {
			json["responseCode"] = responseCode.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = rule.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let sourceId = self.sourceId {
			json["sourceId"] = sourceId.asJSON()
		}
		if let validateProfileId = self.validateProfileId {
			json["validateProfileId"] = validateProfileId.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		if let warningOnly = self.warningOnly {
			json["warningOnly"] = warningOnly.asJSON()
		}
		
		return json
	}
}


/**
 *  The reference to a TestScript.rule.
 *
 *  The TestScript.rule this assert will evaluate.
 */
public class TestScriptSetupActionAssertRule: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptSetupActionAssertRule" }
	}
	
	/// Rule parameter template.
	public var param: [TestScriptSetupActionAssertRuleParam]?
	
	/// Id of the TestScript.rule.
	public var ruleId: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(ruleId: String) {
		self.init(json: nil)
		self.ruleId = ruleId
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["param"] {
				presentKeys.insert("param")
				if let val = exist as? [FHIRJSON] {
					self.param = TestScriptSetupActionAssertRuleParam.from(val, owner: self) as? [TestScriptSetupActionAssertRuleParam]
				}
				else {
					errors.append(FHIRJSONError(key: "param", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ruleId"] {
				presentKeys.insert("ruleId")
				if let val = exist as? String {
					self.ruleId = val
				}
				else {
					errors.append(FHIRJSONError(key: "ruleId", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "ruleId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let param = self.param {
			json["param"] = TestScriptSetupActionAssertRuleParam.asJSONArray(param)
		}
		if let ruleId = self.ruleId {
			json["ruleId"] = ruleId.asJSON()
		}
		
		return json
	}
}


/**
 *  Rule parameter template.
 *
 *  Each rule template can take one or more parameters for rule evaluation.
 */
public class TestScriptSetupActionAssertRuleParam: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptSetupActionAssertRuleParam" }
	}
	
	/// Parameter name matching external assert rule parameter.
	public var name: String?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, value: String) {
		self.init(json: nil)
		self.name = name
		self.value = value
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  The reference to a TestScript.ruleset.
 *
 *  The TestScript.ruleset this assert will evaluate.
 */
public class TestScriptSetupActionAssertRuleset: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptSetupActionAssertRuleset" }
	}
	
	/// The referenced rule within the ruleset.
	public var rule: [TestScriptSetupActionAssertRulesetRule]?
	
	/// Id of the TestScript.ruleset.
	public var rulesetId: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(rulesetId: String) {
		self.init(json: nil)
		self.rulesetId = rulesetId
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = TestScriptSetupActionAssertRulesetRule.from(val, owner: self) as? [TestScriptSetupActionAssertRulesetRule]
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rulesetId"] {
				presentKeys.insert("rulesetId")
				if let val = exist as? String {
					self.rulesetId = val
				}
				else {
					errors.append(FHIRJSONError(key: "rulesetId", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "rulesetId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let rule = self.rule {
			json["rule"] = TestScriptSetupActionAssertRulesetRule.asJSONArray(rule)
		}
		if let rulesetId = self.rulesetId {
			json["rulesetId"] = rulesetId.asJSON()
		}
		
		return json
	}
}


/**
 *  The referenced rule within the ruleset.
 *
 *  The referenced rule within the external ruleset template.
 */
public class TestScriptSetupActionAssertRulesetRule: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptSetupActionAssertRulesetRule" }
	}
	
	/// Rule parameter template.
	public var param: [TestScriptSetupActionAssertRulesetRuleParam]?
	
	/// Id of referenced rule within the ruleset.
	public var ruleId: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(ruleId: String) {
		self.init(json: nil)
		self.ruleId = ruleId
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["param"] {
				presentKeys.insert("param")
				if let val = exist as? [FHIRJSON] {
					self.param = TestScriptSetupActionAssertRulesetRuleParam.from(val, owner: self) as? [TestScriptSetupActionAssertRulesetRuleParam]
				}
				else {
					errors.append(FHIRJSONError(key: "param", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ruleId"] {
				presentKeys.insert("ruleId")
				if let val = exist as? String {
					self.ruleId = val
				}
				else {
					errors.append(FHIRJSONError(key: "ruleId", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "ruleId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let param = self.param {
			json["param"] = TestScriptSetupActionAssertRulesetRuleParam.asJSONArray(param)
		}
		if let ruleId = self.ruleId {
			json["ruleId"] = ruleId.asJSON()
		}
		
		return json
	}
}


/**
 *  Rule parameter template.
 *
 *  Each rule template can take one or more parameters for rule evaluation.
 */
public class TestScriptSetupActionAssertRulesetRuleParam: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptSetupActionAssertRulesetRuleParam" }
	}
	
	/// Parameter name matching external assert ruleset rule parameter.
	public var name: String?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, value: String) {
		self.init(json: nil)
		self.name = name
		self.value = value
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  The setup operation to perform.
 *
 *  The operation to perform.
 */
public class TestScriptSetupActionOperation: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptSetupActionOperation" }
	}
	
	/// xml | json | ttl | none.
	public var accept: String?
	
	/// xml | json | ttl | none.
	public var contentType: String?
	
	/// Tracking/reporting operation description.
	public var description_fhir: String?
	
	/// Server responding to the request.
	public var destination: Int?
	
	/// Whether or not to send the request url in encoded format.
	public var encodeRequestUrl: Bool?
	
	/// Tracking/logging operation label.
	public var label: String?
	
	/// Server initiating the request.
	public var origin: Int?
	
	/// Explicitly defined path parameters.
	public var params: String?
	
	/// Each operation can have one ore more header elements.
	public var requestHeader: [TestScriptSetupActionOperationRequestHeader]?
	
	/// Resource type.
	public var resource: String?
	
	/// Fixture Id of mapped response.
	public var responseId: String?
	
	/// Fixture Id of body for PUT and POST requests.
	public var sourceId: String?
	
	/// Id of fixture used for extracting the [id],  [type], and [vid] for GET requests.
	public var targetId: String?
	
	/// The operation code type that will be executed.
	public var type: Coding?
	
	/// Request URL.
	public var url: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["accept"] {
				presentKeys.insert("accept")
				if let val = exist as? String {
					self.accept = val
				}
				else {
					errors.append(FHIRJSONError(key: "accept", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contentType"] {
				presentKeys.insert("contentType")
				if let val = exist as? String {
					self.contentType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentType", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? Int {
					self.destination = val
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["encodeRequestUrl"] {
				presentKeys.insert("encodeRequestUrl")
				if let val = exist as? Bool {
					self.encodeRequestUrl = val
				}
				else {
					errors.append(FHIRJSONError(key: "encodeRequestUrl", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["label"] {
				presentKeys.insert("label")
				if let val = exist as? String {
					self.label = val
				}
				else {
					errors.append(FHIRJSONError(key: "label", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["origin"] {
				presentKeys.insert("origin")
				if let val = exist as? Int {
					self.origin = val
				}
				else {
					errors.append(FHIRJSONError(key: "origin", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["params"] {
				presentKeys.insert("params")
				if let val = exist as? String {
					self.params = val
				}
				else {
					errors.append(FHIRJSONError(key: "params", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestHeader"] {
				presentKeys.insert("requestHeader")
				if let val = exist as? [FHIRJSON] {
					self.requestHeader = TestScriptSetupActionOperationRequestHeader.from(val, owner: self) as? [TestScriptSetupActionOperationRequestHeader]
				}
				else {
					errors.append(FHIRJSONError(key: "requestHeader", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? String {
					self.resource = val
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["responseId"] {
				presentKeys.insert("responseId")
				if let val = exist as? String {
					self.responseId = val
				}
				else {
					errors.append(FHIRJSONError(key: "responseId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sourceId"] {
				presentKeys.insert("sourceId")
				if let val = exist as? String {
					self.sourceId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sourceId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["targetId"] {
				presentKeys.insert("targetId")
				if let val = exist as? String {
					self.targetId = val
				}
				else {
					errors.append(FHIRJSONError(key: "targetId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = val
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let accept = self.accept {
			json["accept"] = accept.asJSON()
		}
		if let contentType = self.contentType {
			json["contentType"] = contentType.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON()
		}
		if let encodeRequestUrl = self.encodeRequestUrl {
			json["encodeRequestUrl"] = encodeRequestUrl.asJSON()
		}
		if let label = self.label {
			json["label"] = label.asJSON()
		}
		if let origin = self.origin {
			json["origin"] = origin.asJSON()
		}
		if let params = self.params {
			json["params"] = params.asJSON()
		}
		if let requestHeader = self.requestHeader {
			json["requestHeader"] = TestScriptSetupActionOperationRequestHeader.asJSONArray(requestHeader)
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let responseId = self.responseId {
			json["responseId"] = responseId.asJSON()
		}
		if let sourceId = self.sourceId {
			json["sourceId"] = sourceId.asJSON()
		}
		if let targetId = self.targetId {
			json["targetId"] = targetId.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
 *  Each operation can have one ore more header elements.
 *
 *  Header elements would be used to set HTTP headers.
 */
public class TestScriptSetupActionOperationRequestHeader: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptSetupActionOperationRequestHeader" }
	}
	
	/// HTTP header field name.
	public var field: String?
	
	/// HTTP headerfield value.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(field: String, value: String) {
		self.init(json: nil)
		self.field = field
		self.value = value
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["field"] {
				presentKeys.insert("field")
				if let val = exist as? String {
					self.field = val
				}
				else {
					errors.append(FHIRJSONError(key: "field", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "field"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let field = self.field {
			json["field"] = field.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  A series of required clean up steps.
 *
 *  A series of operations required to clean up after the all the tests are executed (successfully or otherwise).
 */
public class TestScriptTeardown: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptTeardown" }
	}
	
	/// One or more teardown operations to perform.
	public var action: [TestScriptTeardownAction]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestScriptTeardownAction]) {
		self.init(json: nil)
		self.action = action
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = TestScriptTeardownAction.from(val, owner: self) as? [TestScriptTeardownAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = TestScriptTeardownAction.asJSONArray(action)
		}
		
		return json
	}
}


/**
 *  One or more teardown operations to perform.
 *
 *  The teardown action will only contain an operation.
 */
public class TestScriptTeardownAction: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptTeardownAction" }
	}
	
	/// The teardown operation to perform.
	public var operation: TestScriptSetupActionOperation?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["operation"] {
				presentKeys.insert("operation")
				if let val = exist as? FHIRJSON {
					self.operation = TestScriptSetupActionOperation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "operation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let operation = self.operation {
			json["operation"] = operation.asJSON()
		}
		
		return json
	}
}


/**
 *  A test in this script.
 */
public class TestScriptTest: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptTest" }
	}
	
	/// A test operation or assert to perform.
	public var action: [TestScriptTestAction]?
	
	/// Tracking/reporting short description of the test.
	public var description_fhir: String?
	
	/// Tracking/logging name of this test.
	public var name: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestScriptTestAction]) {
		self.init(json: nil)
		self.action = action
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = TestScriptTestAction.from(val, owner: self) as? [TestScriptTestAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = TestScriptTestAction.asJSONArray(action)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		
		return json
	}
}


/**
 *  A test operation or assert to perform.
 *
 *  Action would contain either an operation or an assertion.
 */
public class TestScriptTestAction: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptTestAction" }
	}
	
	/// The setup assertion to perform.
	public var assert: TestScriptSetupActionAssert?
	
	/// The setup operation to perform.
	public var operation: TestScriptSetupActionOperation?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["assert"] {
				presentKeys.insert("assert")
				if let val = exist as? FHIRJSON {
					self.assert = TestScriptSetupActionAssert(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "assert", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["operation"] {
				presentKeys.insert("operation")
				if let val = exist as? FHIRJSON {
					self.operation = TestScriptSetupActionOperation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "operation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let assert = self.assert {
			json["assert"] = assert.asJSON()
		}
		if let operation = self.operation {
			json["operation"] = operation.asJSON()
		}
		
		return json
	}
}


/**
 *  Placeholder for evaluated elements.
 *
 *  Variable is set based either on element value in response body or on header field value in the response headers.
 */
public class TestScriptVariable: BackboneElement {
	override public class var resourceName: String {
		get { return "TestScriptVariable" }
	}
	
	/// Default, hard-coded, or user-defined value for this variable.
	public var defaultValue: String?
	
	/// HTTP header field name for source.
	public var headerField: String?
	
	/// Descriptive name for this variable.
	public var name: String?
	
	/// XPath or JSONPath against the fixture body.
	public var path: String?
	
	/// Fixture Id of source expression or headerField within this variable.
	public var sourceId: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init(json: nil)
		self.name = name
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["defaultValue"] {
				presentKeys.insert("defaultValue")
				if let val = exist as? String {
					self.defaultValue = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValue", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["headerField"] {
				presentKeys.insert("headerField")
				if let val = exist as? String {
					self.headerField = val
				}
				else {
					errors.append(FHIRJSONError(key: "headerField", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sourceId"] {
				presentKeys.insert("sourceId")
				if let val = exist as? String {
					self.sourceId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sourceId", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let defaultValue = self.defaultValue {
			json["defaultValue"] = defaultValue.asJSON()
		}
		if let headerField = self.headerField {
			json["headerField"] = headerField.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let sourceId = self.sourceId {
			json["sourceId"] = sourceId.asJSON()
		}
		
		return json
	}
}

