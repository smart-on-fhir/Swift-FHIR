//
//  TestScript.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/TestScript) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Describes a set of tests.
 *
 *  TestScript is a resource that specifies a suite of tests against a FHIR server implementation to determine
 *  compliance against the FHIR specification.
 */
open class TestScript: DomainResource {
	override open class var resourceType: String {
		get { return "TestScript" }
	}
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the test script.
	public var description_fhir: String?
	
	/// An abstract server representing a destination or receiver in a message exchange.
	public var destination: [TestScriptDestination]?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Fixture in the test script - by reference (uri).
	public var fixture: [TestScriptFixture]?
	
	/// Additional identifier for the test script.
	public var identifier: Identifier?
	
	/// Intended jurisdiction for test script (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Required capability that is assumed to function correctly on the FHIR server being tested.
	public var metadata: TestScriptMetadata?
	
	/// Name for this test script (Computer friendly).
	public var name: String?
	
	/// An abstract server representing a client or sender in a message exchange.
	public var origin: [TestScriptOrigin]?
	
	/// Reference of the validation profile.
	public var profile: [Reference]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this test script is defined.
	public var purpose: String?
	
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
	
	/// Name for this test script (Human friendly).
	public var title: String?
	
	/// Logical uri to reference this test script (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Placeholder for evaluated elements.
	public var variable: [TestScriptVariable]?
	
	/// Business version of the test script.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, status: String, url: URL) {
		self.init(json: nil)
		self.name = name
		self.status = status
		self.url = url
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? [FHIRJSON] {
					self.destination = TestScriptDestination.instantiate(fromArray: val, owner: self) as? [TestScriptDestination]
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["fixture"] {
				presentKeys.insert("fixture")
				if let val = exist as? [FHIRJSON] {
					self.fixture = TestScriptFixture.instantiate(fromArray: val, owner: self) as? [TestScriptFixture]
				}
				else {
					errors.append(FHIRJSONError(key: "fixture", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["jurisdiction"] {
				presentKeys.insert("jurisdiction")
				if let val = exist as? [FHIRJSON] {
					self.jurisdiction = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["metadata"] {
				presentKeys.insert("metadata")
				if let val = exist as? FHIRJSON {
					self.metadata = TestScriptMetadata(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "metadata", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist = js["origin"] {
				presentKeys.insert("origin")
				if let val = exist as? [FHIRJSON] {
					self.origin = TestScriptOrigin.instantiate(fromArray: val, owner: self) as? [TestScriptOrigin]
				}
				else {
					errors.append(FHIRJSONError(key: "origin", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? [FHIRJSON] {
					self.profile = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? String {
					self.purpose = val
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = TestScriptRule.instantiate(fromArray: val, owner: self) as? [TestScriptRule]
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? [FHIRJSON] {
					self.ruleset = TestScriptRuleset.instantiate(fromArray: val, owner: self) as? [TestScriptRuleset]
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["setup"] {
				presentKeys.insert("setup")
				if let val = exist as? FHIRJSON {
					self.setup = TestScriptSetup(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "setup", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["teardown"] {
				presentKeys.insert("teardown")
				if let val = exist as? FHIRJSON {
					self.teardown = TestScriptTeardown(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "teardown", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["test"] {
				presentKeys.insert("test")
				if let val = exist as? [FHIRJSON] {
					self.test = TestScriptTest.instantiate(fromArray: val, owner: self) as? [TestScriptTest]
				}
				else {
					errors.append(FHIRJSONError(key: "test", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
			if let exist = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["variable"] {
				presentKeys.insert("variable")
				if let val = exist as? [FHIRJSON] {
					self.variable = TestScriptVariable.instantiate(fromArray: val, owner: self) as? [TestScriptVariable]
				}
				else {
					errors.append(FHIRJSONError(key: "variable", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
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
			json["destination"] = destination.map() { $0.asJSON() }
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fixture = self.fixture {
			json["fixture"] = fixture.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON() }
		}
		if let metadata = self.metadata {
			json["metadata"] = metadata.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let origin = self.origin {
			json["origin"] = origin.map() { $0.asJSON() }
		}
		if let profile = self.profile {
			json["profile"] = profile.map() { $0.asJSON() }
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON() }
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.map() { $0.asJSON() }
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
			json["test"] = test.map() { $0.asJSON() }
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON() }
		}
		if let variable = self.variable {
			json["variable"] = variable.map() { $0.asJSON() }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  An abstract server representing a destination or receiver in a message exchange.
 *
 *  An abstract server used in operations within this test script in the destination element.
 */
open class TestScriptDestination: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["index"] {
				presentKeys.insert("index")
				if let val = exist as? Int {
					self.index = val
				}
				else {
					errors.append(FHIRJSONError(key: "index", wants: Int.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "index"))
			}
			if let exist = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "profile"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptFixture: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["autocreate"] {
				presentKeys.insert("autocreate")
				if let val = exist as? Bool {
					self.autocreate = val
				}
				else {
					errors.append(FHIRJSONError(key: "autocreate", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["autodelete"] {
				presentKeys.insert("autodelete")
				if let val = exist as? Bool {
					self.autodelete = val
				}
				else {
					errors.append(FHIRJSONError(key: "autodelete", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptMetadata: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["capability"] {
				presentKeys.insert("capability")
				if let val = exist as? [FHIRJSON] {
					self.capability = TestScriptMetadataCapability.instantiate(fromArray: val, owner: self) as? [TestScriptMetadataCapability]
				}
				else {
					errors.append(FHIRJSONError(key: "capability", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "capability"))
			}
			if let exist = js["link"] {
				presentKeys.insert("link")
				if let val = exist as? [FHIRJSON] {
					self.link = TestScriptMetadataLink.instantiate(fromArray: val, owner: self) as? [TestScriptMetadataLink]
				}
				else {
					errors.append(FHIRJSONError(key: "link", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let capability = self.capability {
			json["capability"] = capability.map() { $0.asJSON() }
		}
		if let link = self.link {
			json["link"] = link.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Capabilities  that are assumed to function correctly on the FHIR server being tested.
 *
 *  Capabilities that must exist and are assumed to function correctly on the FHIR server being tested.
 */
open class TestScriptMetadataCapability: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptMetadataCapability" }
	}
	
	/// Required Capability Statement.
	public var capabilities: Reference?
	
	/// The expected capabilities of the server.
	public var description_fhir: String?
	
	/// Which server these requirements apply to.
	public var destination: Int?
	
	/// Links to the FHIR specification.
	public var link: [URL]?
	
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
	public convenience init(capabilities: Reference) {
		self.init(json: nil)
		self.capabilities = capabilities
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["capabilities"] {
				presentKeys.insert("capabilities")
				if let val = exist as? FHIRJSON {
					self.capabilities = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "capabilities", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "capabilities"))
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? Int {
					self.destination = val
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["link"] {
				presentKeys.insert("link")
				if let val = exist as? [String] {
					self.link = URL.instantiate(fromArray: val)
				}
				else {
					errors.append(FHIRJSONError(key: "link", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["origin"] {
				presentKeys.insert("origin")
				if let val = exist as? [Int] {
					self.origin = val
				}
				else {
					errors.append(FHIRJSONError(key: "origin", wants: Array<Int>.self, has: type(of: exist)))
				}
			}
			if let exist = js["required"] {
				presentKeys.insert("required")
				if let val = exist as? Bool {
					self.required = val
				}
				else {
					errors.append(FHIRJSONError(key: "required", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["validated"] {
				presentKeys.insert("validated")
				if let val = exist as? Bool {
					self.validated = val
				}
				else {
					errors.append(FHIRJSONError(key: "validated", wants: Bool.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let capabilities = self.capabilities {
			json["capabilities"] = capabilities.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON()
		}
		if let link = self.link {
			var arr = [Any]()
			for val in link {
				arr.append(val.asJSON())
			}
			json["link"] = arr
		}
		if let origin = self.origin {
			var arr = [Any]()
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
open class TestScriptMetadataLink: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptMetadataLink" }
	}
	
	/// Short description.
	public var description_fhir: String?
	
	/// URL to the specification.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(url: URL) {
		self.init(json: nil)
		self.url = url
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptOrigin: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["index"] {
				presentKeys.insert("index")
				if let val = exist as? Int {
					self.index = val
				}
				else {
					errors.append(FHIRJSONError(key: "index", wants: Int.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "index"))
			}
			if let exist = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "profile"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptRule: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["param"] {
				presentKeys.insert("param")
				if let val = exist as? [FHIRJSON] {
					self.param = TestScriptRuleParam.instantiate(fromArray: val, owner: self) as? [TestScriptRuleParam]
				}
				else {
					errors.append(FHIRJSONError(key: "param", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "resource"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let param = self.param {
			json["param"] = param.map() { $0.asJSON() }
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
open class TestScriptRuleParam: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptRuleset: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "resource"))
			}
			if let exist = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = TestScriptRulesetRule.instantiate(fromArray: val, owner: self) as? [TestScriptRulesetRule]
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "rule"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  The referenced rule within the ruleset.
 *
 *  The referenced rule within the external ruleset template.
 */
open class TestScriptRulesetRule: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["param"] {
				presentKeys.insert("param")
				if let val = exist as? [FHIRJSON] {
					self.param = TestScriptRulesetRuleParam.instantiate(fromArray: val, owner: self) as? [TestScriptRulesetRuleParam]
				}
				else {
					errors.append(FHIRJSONError(key: "param", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["ruleId"] {
				presentKeys.insert("ruleId")
				if let val = exist as? String {
					self.ruleId = val
				}
				else {
					errors.append(FHIRJSONError(key: "ruleId", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "ruleId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let param = self.param {
			json["param"] = param.map() { $0.asJSON() }
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
open class TestScriptRulesetRuleParam: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptSetup: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = TestScriptSetupAction.instantiate(fromArray: val, owner: self) as? [TestScriptSetupAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  A setup operation or assert to perform.
 *
 *  Action would contain either an operation or an assertion.
 */
open class TestScriptSetupAction: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["assert"] {
				presentKeys.insert("assert")
				if let val = exist as? FHIRJSON {
					self.assert = TestScriptSetupActionAssert(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "assert", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["operation"] {
				presentKeys.insert("operation")
				if let val = exist as? FHIRJSON {
					self.operation = TestScriptSetupActionOperation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptSetupActionAssert: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetupActionAssert" }
	}
	
	/// The fhirpath expression to evaluate against the source fixture.
	public var compareToSourceExpression: String?
	
	/// Id of the source fixture to be evaluated.
	public var compareToSourceId: String?
	
	/// XPath or JSONPath expression to evaluate against the source fixture.
	public var compareToSourcePath: String?
	
	/// xml | json | ttl | none.
	public var contentType: String?
	
	/// Tracking/reporting assertion description.
	public var description_fhir: String?
	
	/// response | request.
	public var direction: String?
	
	/// The fhirpath expression to be evaluated.
	public var expression: String?
	
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["compareToSourceExpression"] {
				presentKeys.insert("compareToSourceExpression")
				if let val = exist as? String {
					self.compareToSourceExpression = val
				}
				else {
					errors.append(FHIRJSONError(key: "compareToSourceExpression", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["compareToSourceId"] {
				presentKeys.insert("compareToSourceId")
				if let val = exist as? String {
					self.compareToSourceId = val
				}
				else {
					errors.append(FHIRJSONError(key: "compareToSourceId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["compareToSourcePath"] {
				presentKeys.insert("compareToSourcePath")
				if let val = exist as? String {
					self.compareToSourcePath = val
				}
				else {
					errors.append(FHIRJSONError(key: "compareToSourcePath", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["contentType"] {
				presentKeys.insert("contentType")
				if let val = exist as? String {
					self.contentType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentType", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["direction"] {
				presentKeys.insert("direction")
				if let val = exist as? String {
					self.direction = val
				}
				else {
					errors.append(FHIRJSONError(key: "direction", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["expression"] {
				presentKeys.insert("expression")
				if let val = exist as? String {
					self.expression = val
				}
				else {
					errors.append(FHIRJSONError(key: "expression", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["headerField"] {
				presentKeys.insert("headerField")
				if let val = exist as? String {
					self.headerField = val
				}
				else {
					errors.append(FHIRJSONError(key: "headerField", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["label"] {
				presentKeys.insert("label")
				if let val = exist as? String {
					self.label = val
				}
				else {
					errors.append(FHIRJSONError(key: "label", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["minimumId"] {
				presentKeys.insert("minimumId")
				if let val = exist as? String {
					self.minimumId = val
				}
				else {
					errors.append(FHIRJSONError(key: "minimumId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["navigationLinks"] {
				presentKeys.insert("navigationLinks")
				if let val = exist as? Bool {
					self.navigationLinks = val
				}
				else {
					errors.append(FHIRJSONError(key: "navigationLinks", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["operator"] {
				presentKeys.insert("operator")
				if let val = exist as? String {
					self.operator_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "operator", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestURL"] {
				presentKeys.insert("requestURL")
				if let val = exist as? String {
					self.requestURL = val
				}
				else {
					errors.append(FHIRJSONError(key: "requestURL", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? String {
					self.resource = val
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["response"] {
				presentKeys.insert("response")
				if let val = exist as? String {
					self.response = val
				}
				else {
					errors.append(FHIRJSONError(key: "response", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["responseCode"] {
				presentKeys.insert("responseCode")
				if let val = exist as? String {
					self.responseCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "responseCode", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? FHIRJSON {
					self.rule = TestScriptSetupActionAssertRule(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = TestScriptSetupActionAssertRuleset(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["sourceId"] {
				presentKeys.insert("sourceId")
				if let val = exist as? String {
					self.sourceId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sourceId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["validateProfileId"] {
				presentKeys.insert("validateProfileId")
				if let val = exist as? String {
					self.validateProfileId = val
				}
				else {
					errors.append(FHIRJSONError(key: "validateProfileId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["warningOnly"] {
				presentKeys.insert("warningOnly")
				if let val = exist as? Bool {
					self.warningOnly = val
				}
				else {
					errors.append(FHIRJSONError(key: "warningOnly", wants: Bool.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let compareToSourceExpression = self.compareToSourceExpression {
			json["compareToSourceExpression"] = compareToSourceExpression.asJSON()
		}
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
		if let expression = self.expression {
			json["expression"] = expression.asJSON()
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
open class TestScriptSetupActionAssertRule: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["param"] {
				presentKeys.insert("param")
				if let val = exist as? [FHIRJSON] {
					self.param = TestScriptSetupActionAssertRuleParam.instantiate(fromArray: val, owner: self) as? [TestScriptSetupActionAssertRuleParam]
				}
				else {
					errors.append(FHIRJSONError(key: "param", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["ruleId"] {
				presentKeys.insert("ruleId")
				if let val = exist as? String {
					self.ruleId = val
				}
				else {
					errors.append(FHIRJSONError(key: "ruleId", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "ruleId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let param = self.param {
			json["param"] = param.map() { $0.asJSON() }
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
open class TestScriptSetupActionAssertRuleParam: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptSetupActionAssertRuleset: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = TestScriptSetupActionAssertRulesetRule.instantiate(fromArray: val, owner: self) as? [TestScriptSetupActionAssertRulesetRule]
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["rulesetId"] {
				presentKeys.insert("rulesetId")
				if let val = exist as? String {
					self.rulesetId = val
				}
				else {
					errors.append(FHIRJSONError(key: "rulesetId", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "rulesetId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON() }
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
open class TestScriptSetupActionAssertRulesetRule: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["param"] {
				presentKeys.insert("param")
				if let val = exist as? [FHIRJSON] {
					self.param = TestScriptSetupActionAssertRulesetRuleParam.instantiate(fromArray: val, owner: self) as? [TestScriptSetupActionAssertRulesetRuleParam]
				}
				else {
					errors.append(FHIRJSONError(key: "param", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["ruleId"] {
				presentKeys.insert("ruleId")
				if let val = exist as? String {
					self.ruleId = val
				}
				else {
					errors.append(FHIRJSONError(key: "ruleId", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "ruleId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let param = self.param {
			json["param"] = param.map() { $0.asJSON() }
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
open class TestScriptSetupActionAssertRulesetRuleParam: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptSetupActionOperation: BackboneElement {
	override open class var resourceType: String {
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
	
	/// Fixture Id of mapped request.
	public var requestId: String?
	
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["accept"] {
				presentKeys.insert("accept")
				if let val = exist as? String {
					self.accept = val
				}
				else {
					errors.append(FHIRJSONError(key: "accept", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["contentType"] {
				presentKeys.insert("contentType")
				if let val = exist as? String {
					self.contentType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentType", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? Int {
					self.destination = val
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["encodeRequestUrl"] {
				presentKeys.insert("encodeRequestUrl")
				if let val = exist as? Bool {
					self.encodeRequestUrl = val
				}
				else {
					errors.append(FHIRJSONError(key: "encodeRequestUrl", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["label"] {
				presentKeys.insert("label")
				if let val = exist as? String {
					self.label = val
				}
				else {
					errors.append(FHIRJSONError(key: "label", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["origin"] {
				presentKeys.insert("origin")
				if let val = exist as? Int {
					self.origin = val
				}
				else {
					errors.append(FHIRJSONError(key: "origin", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["params"] {
				presentKeys.insert("params")
				if let val = exist as? String {
					self.params = val
				}
				else {
					errors.append(FHIRJSONError(key: "params", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestHeader"] {
				presentKeys.insert("requestHeader")
				if let val = exist as? [FHIRJSON] {
					self.requestHeader = TestScriptSetupActionOperationRequestHeader.instantiate(fromArray: val, owner: self) as? [TestScriptSetupActionOperationRequestHeader]
				}
				else {
					errors.append(FHIRJSONError(key: "requestHeader", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestId"] {
				presentKeys.insert("requestId")
				if let val = exist as? String {
					self.requestId = val
				}
				else {
					errors.append(FHIRJSONError(key: "requestId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? String {
					self.resource = val
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["responseId"] {
				presentKeys.insert("responseId")
				if let val = exist as? String {
					self.responseId = val
				}
				else {
					errors.append(FHIRJSONError(key: "responseId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["sourceId"] {
				presentKeys.insert("sourceId")
				if let val = exist as? String {
					self.sourceId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sourceId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["targetId"] {
				presentKeys.insert("targetId")
				if let val = exist as? String {
					self.targetId = val
				}
				else {
					errors.append(FHIRJSONError(key: "targetId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = val
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
			json["requestHeader"] = requestHeader.map() { $0.asJSON() }
		}
		if let requestId = self.requestId {
			json["requestId"] = requestId.asJSON()
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
open class TestScriptSetupActionOperationRequestHeader: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["field"] {
				presentKeys.insert("field")
				if let val = exist as? String {
					self.field = val
				}
				else {
					errors.append(FHIRJSONError(key: "field", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "field"))
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptTeardown: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = TestScriptTeardownAction.instantiate(fromArray: val, owner: self) as? [TestScriptTeardownAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  One or more teardown operations to perform.
 *
 *  The teardown action will only contain an operation.
 */
open class TestScriptTeardownAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptTeardownAction" }
	}
	
	/// The teardown operation to perform.
	public var operation: TestScriptSetupActionOperation?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(operation: TestScriptSetupActionOperation) {
		self.init(json: nil)
		self.operation = operation
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["operation"] {
				presentKeys.insert("operation")
				if let val = exist as? FHIRJSON {
					self.operation = TestScriptSetupActionOperation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "operation"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptTest: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = TestScriptTestAction.instantiate(fromArray: val, owner: self) as? [TestScriptTestAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
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
open class TestScriptTestAction: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["assert"] {
				presentKeys.insert("assert")
				if let val = exist as? FHIRJSON {
					self.assert = TestScriptSetupActionAssert(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "assert", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["operation"] {
				presentKeys.insert("operation")
				if let val = exist as? FHIRJSON {
					self.operation = TestScriptSetupActionOperation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class TestScriptVariable: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptVariable" }
	}
	
	/// Default, hard-coded, or user-defined value for this variable.
	public var defaultValue: String?
	
	/// The fhirpath expression against the fixture body.
	public var expression: String?
	
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["defaultValue"] {
				presentKeys.insert("defaultValue")
				if let val = exist as? String {
					self.defaultValue = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValue", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["expression"] {
				presentKeys.insert("expression")
				if let val = exist as? String {
					self.expression = val
				}
				else {
					errors.append(FHIRJSONError(key: "expression", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["headerField"] {
				presentKeys.insert("headerField")
				if let val = exist as? String {
					self.headerField = val
				}
				else {
					errors.append(FHIRJSONError(key: "headerField", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["sourceId"] {
				presentKeys.insert("sourceId")
				if let val = exist as? String {
					self.sourceId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sourceId", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let defaultValue = self.defaultValue {
			json["defaultValue"] = defaultValue.asJSON()
		}
		if let expression = self.expression {
			json["expression"] = expression.asJSON()
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

