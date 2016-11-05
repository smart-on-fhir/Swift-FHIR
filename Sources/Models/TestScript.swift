//
//  TestScript.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/TestScript) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Describes a set of tests.

TestScript is a resource that specifies a suite of tests against a FHIR server implementation to determine compliance
against the FHIR specification.
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
	
	/// The status of this test script. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, status: PublicationStatus, url: URL) {
		self.init()
		self.name = name
		self.status = status
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["copyright"] {
			presentKeys.insert("copyright")
			if let val = exist as? String {
				self.copyright = val
			}
			else {
				errors.append(FHIRValidationError(key: "copyright", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["destination"] {
			presentKeys.insert("destination")
			if let val = exist as? [FHIRJSON] {
				do {
					self.destination = try TestScriptDestination.instantiate(fromArray: val, owner: self) as? [TestScriptDestination]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "destination"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "destination", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixture"] {
			presentKeys.insert("fixture")
			if let val = exist as? [FHIRJSON] {
				do {
					self.fixture = try TestScriptFixture.instantiate(fromArray: val, owner: self) as? [TestScriptFixture]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixture"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixture", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["metadata"] {
			presentKeys.insert("metadata")
			if let val = exist as? FHIRJSON {
				do {
					self.metadata = try TestScriptMetadata(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "metadata"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "metadata", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["origin"] {
			presentKeys.insert("origin")
			if let val = exist as? [FHIRJSON] {
				do {
					self.origin = try TestScriptOrigin.instantiate(fromArray: val, owner: self) as? [TestScriptOrigin]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "origin"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "origin", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? [FHIRJSON] {
				do {
					self.profile = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = val
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = val
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["rule"] {
			presentKeys.insert("rule")
			if let val = exist as? [FHIRJSON] {
				do {
					self.rule = try TestScriptRule.instantiate(fromArray: val, owner: self) as? [TestScriptRule]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rule"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["ruleset"] {
			presentKeys.insert("ruleset")
			if let val = exist as? [FHIRJSON] {
				do {
					self.ruleset = try TestScriptRuleset.instantiate(fromArray: val, owner: self) as? [TestScriptRuleset]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "ruleset"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "ruleset", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["setup"] {
			presentKeys.insert("setup")
			if let val = exist as? FHIRJSON {
				do {
					self.setup = try TestScriptSetup(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "setup"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "setup", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = PublicationStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["teardown"] {
			presentKeys.insert("teardown")
			if let val = exist as? FHIRJSON {
				do {
					self.teardown = try TestScriptTeardown(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "teardown"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "teardown", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["test"] {
			presentKeys.insert("test")
			if let val = exist as? [FHIRJSON] {
				do {
					self.test = try TestScriptTest.instantiate(fromArray: val, owner: self) as? [TestScriptTest]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "test"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "test", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = val
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "useContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["variable"] {
			presentKeys.insert("variable")
			if let val = exist as? [FHIRJSON] {
				do {
					self.variable = try TestScriptVariable.instantiate(fromArray: val, owner: self) as? [TestScriptVariable]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "variable"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "variable", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = val
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
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
			json["destination"] = destination.map() { $0.asJSON(errors: &errors) }
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fixture = self.fixture {
			json["fixture"] = fixture.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let metadata = self.metadata {
			json["metadata"] = metadata.asJSON(errors: &errors)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let origin = self.origin {
			json["origin"] = origin.map() { $0.asJSON(errors: &errors) }
		}
		if let profile = self.profile {
			json["profile"] = profile.map() { $0.asJSON(errors: &errors) }
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON(errors: &errors) }
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.map() { $0.asJSON(errors: &errors) }
		}
		if let setup = self.setup {
			json["setup"] = setup.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let teardown = self.teardown {
			json["teardown"] = teardown.asJSON(errors: &errors)
		}
		if let test = self.test {
			json["test"] = test.map() { $0.asJSON(errors: &errors) }
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let variable = self.variable {
			json["variable"] = variable.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
An abstract server representing a destination or receiver in a message exchange.

An abstract server used in operations within this test script in the destination element.
*/
open class TestScriptDestination: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptDestination" }
	}
	
	/// The index of the abstract destination server starting at 1.
	public var index: Int?
	
	/// FHIR-Server | FHIR-SDC-FormManager | FHIR-SDC-FormReceiver | FHIR-SDC-FormProcessor.
	public var profile: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(index: Int, profile: Coding) {
		self.init()
		self.index = index
		self.profile = profile
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["index"] {
			presentKeys.insert("index")
			if let val = exist as? Int {
				self.index = val
			}
			else {
				errors.append(FHIRValidationError(key: "index", wants: Int.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "index"))
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? FHIRJSON {
				do {
					self.profile = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "profile"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let index = self.index {
			json["index"] = index.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Fixture in the test script - by reference (uri).

Fixture in the test script - by reference (uri). All fixtures are required for the test script to execute.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["autocreate"] {
			presentKeys.insert("autocreate")
			if let val = exist as? Bool {
				self.autocreate = val
			}
			else {
				errors.append(FHIRValidationError(key: "autocreate", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["autodelete"] {
			presentKeys.insert("autodelete")
			if let val = exist as? Bool {
				self.autodelete = val
			}
			else {
				errors.append(FHIRValidationError(key: "autodelete", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? FHIRJSON {
				do {
					self.resource = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let autocreate = self.autocreate {
			json["autocreate"] = autocreate.asJSON()
		}
		if let autodelete = self.autodelete {
			json["autodelete"] = autodelete.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Required capability that is assumed to function correctly on the FHIR server being tested.

The required capability must exist and are assumed to function correctly on the FHIR server being tested.
*/
open class TestScriptMetadata: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptMetadata" }
	}
	
	/// Capabilities  that are assumed to function correctly on the FHIR server being tested.
	public var capability: [TestScriptMetadataCapability]?
	
	/// Links to the FHIR specification.
	public var link: [TestScriptMetadataLink]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(capability: [TestScriptMetadataCapability]) {
		self.init()
		self.capability = capability
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["capability"] {
			presentKeys.insert("capability")
			if let val = exist as? [FHIRJSON] {
				do {
					self.capability = try TestScriptMetadataCapability.instantiate(fromArray: val, owner: self) as? [TestScriptMetadataCapability]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "capability"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "capability", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "capability"))
		}
		if let exist = json["link"] {
			presentKeys.insert("link")
			if let val = exist as? [FHIRJSON] {
				do {
					self.link = try TestScriptMetadataLink.instantiate(fromArray: val, owner: self) as? [TestScriptMetadataLink]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "link"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "link", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let capability = self.capability {
			json["capability"] = capability.map() { $0.asJSON(errors: &errors) }
		}
		if let link = self.link {
			json["link"] = link.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Capabilities  that are assumed to function correctly on the FHIR server being tested.

Capabilities that must exist and are assumed to function correctly on the FHIR server being tested.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(capabilities: Reference) {
		self.init()
		self.capabilities = capabilities
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["capabilities"] {
			presentKeys.insert("capabilities")
			if let val = exist as? FHIRJSON {
				do {
					self.capabilities = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "capabilities"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "capabilities", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "capabilities"))
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["destination"] {
			presentKeys.insert("destination")
			if let val = exist as? Int {
				self.destination = val
			}
			else {
				errors.append(FHIRValidationError(key: "destination", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["link"] {
			presentKeys.insert("link")
			if let val = exist as? [String] {
				self.link = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "link", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["origin"] {
			presentKeys.insert("origin")
			if let val = exist as? [Int] {
				self.origin = val
			}
			else {
				errors.append(FHIRValidationError(key: "origin", wants: Array<Int>.self, has: type(of: exist)))
			}
		}
		if let exist = json["required"] {
			presentKeys.insert("required")
			if let val = exist as? Bool {
				self.required = val
			}
			else {
				errors.append(FHIRValidationError(key: "required", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["validated"] {
			presentKeys.insert("validated")
			if let val = exist as? Bool {
				self.validated = val
			}
			else {
				errors.append(FHIRValidationError(key: "validated", wants: Bool.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let capabilities = self.capabilities {
			json["capabilities"] = capabilities.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON()
		}
		if let link = self.link {
			json["link"] = link.map() { $0.asJSON() }
		}
		if let origin = self.origin {
			json["origin"] = origin.map() { $0.asJSON() }
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
Links to the FHIR specification.

A link to the FHIR specification that this test is covering.
*/
open class TestScriptMetadataLink: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptMetadataLink" }
	}
	
	/// Short description.
	public var description_fhir: String?
	
	/// URL to the specification.
	public var url: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(url: URL) {
		self.init()
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
An abstract server representing a client or sender in a message exchange.

An abstract server used in operations within this test script in the origin element.
*/
open class TestScriptOrigin: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptOrigin" }
	}
	
	/// The index of the abstract origin server starting at 1.
	public var index: Int?
	
	/// FHIR-Client | FHIR-SDC-FormFiller.
	public var profile: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(index: Int, profile: Coding) {
		self.init()
		self.index = index
		self.profile = profile
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["index"] {
			presentKeys.insert("index")
			if let val = exist as? Int {
				self.index = val
			}
			else {
				errors.append(FHIRValidationError(key: "index", wants: Int.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "index"))
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? FHIRJSON {
				do {
					self.profile = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "profile"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let index = self.index {
			json["index"] = index.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Assert rule used within the test script.

Assert rule to be used in one or more asserts within the test script.
*/
open class TestScriptRule: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptRule" }
	}
	
	/// Rule parameter template.
	public var param: [TestScriptRuleParam]?
	
	/// Assert rule resource reference.
	public var resource: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(resource: Reference) {
		self.init()
		self.resource = resource
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["param"] {
			presentKeys.insert("param")
			if let val = exist as? [FHIRJSON] {
				do {
					self.param = try TestScriptRuleParam.instantiate(fromArray: val, owner: self) as? [TestScriptRuleParam]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "param"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "param", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? FHIRJSON {
				do {
					self.resource = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "resource"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let param = self.param {
			json["param"] = param.map() { $0.asJSON(errors: &errors) }
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Rule parameter template.

Each rule template can take one or more parameters for rule evaluation.
*/
open class TestScriptRuleParam: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptRuleParam" }
	}
	
	/// Parameter name matching external assert rule parameter.
	public var name: String?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? String {
				self.value = val
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
Assert ruleset used within the test script.

Contains one or more rules.  Offers a way to group rules so assertions could reference the group of rules and have them
all applied.
*/
open class TestScriptRuleset: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptRuleset" }
	}
	
	/// Assert ruleset resource reference.
	public var resource: Reference?
	
	/// The referenced rule within the ruleset.
	public var rule: [TestScriptRulesetRule]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(resource: Reference, rule: [TestScriptRulesetRule]) {
		self.init()
		self.resource = resource
		self.rule = rule
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? FHIRJSON {
				do {
					self.resource = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "resource"))
		}
		if let exist = json["rule"] {
			presentKeys.insert("rule")
			if let val = exist as? [FHIRJSON] {
				do {
					self.rule = try TestScriptRulesetRule.instantiate(fromArray: val, owner: self) as? [TestScriptRulesetRule]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rule"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "rule"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let resource = self.resource {
			json["resource"] = resource.asJSON(errors: &errors)
		}
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
The referenced rule within the ruleset.

The referenced rule within the external ruleset template.
*/
open class TestScriptRulesetRule: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptRulesetRule" }
	}
	
	/// Ruleset rule parameter template.
	public var param: [TestScriptRulesetRuleParam]?
	
	/// Id of referenced rule within the ruleset.
	public var ruleId: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(ruleId: String) {
		self.init()
		self.ruleId = ruleId
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["param"] {
			presentKeys.insert("param")
			if let val = exist as? [FHIRJSON] {
				do {
					self.param = try TestScriptRulesetRuleParam.instantiate(fromArray: val, owner: self) as? [TestScriptRulesetRuleParam]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "param"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "param", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["ruleId"] {
			presentKeys.insert("ruleId")
			if let val = exist as? String {
				self.ruleId = val
			}
			else {
				errors.append(FHIRValidationError(key: "ruleId", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "ruleId"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let param = self.param {
			json["param"] = param.map() { $0.asJSON(errors: &errors) }
		}
		if let ruleId = self.ruleId {
			json["ruleId"] = ruleId.asJSON()
		}
		
		return json
	}
}


/**
Ruleset rule parameter template.

Each rule template can take one or more parameters for rule evaluation.
*/
open class TestScriptRulesetRuleParam: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptRulesetRuleParam" }
	}
	
	/// Parameter name matching external assert ruleset rule parameter.
	public var name: String?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? String {
				self.value = val
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
A series of required setup operations before tests are executed.
*/
open class TestScriptSetup: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetup" }
	}
	
	/// A setup operation or assert to perform.
	public var action: [TestScriptSetupAction]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestScriptSetupAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try TestScriptSetupAction.instantiate(fromArray: val, owner: self) as? [TestScriptSetupAction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "action"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
A setup operation or assert to perform.

Action would contain either an operation or an assertion.
*/
open class TestScriptSetupAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetupAction" }
	}
	
	/// The assertion to perform.
	public var assert: TestScriptSetupActionAssert?
	
	/// The setup operation to perform.
	public var operation: TestScriptSetupActionOperation?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["assert"] {
			presentKeys.insert("assert")
			if let val = exist as? FHIRJSON {
				do {
					self.assert = try TestScriptSetupActionAssert(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "assert"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "assert", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["operation"] {
			presentKeys.insert("operation")
			if let val = exist as? FHIRJSON {
				do {
					self.operation = try TestScriptSetupActionOperation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let assert = self.assert {
			json["assert"] = assert.asJSON(errors: &errors)
		}
		if let operation = self.operation {
			json["operation"] = operation.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
The assertion to perform.

Evaluates the results of previous operations to determine if the server under test behaves appropriately.
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
	
	/// The content-type or mime-type to use for RESTful operation in the 'Content-Type' header.
	public var contentType: ContentType?
	
	/// Tracking/reporting assertion description.
	public var description_fhir: String?
	
	/// The direction to use for the assertion.
	public var direction: AssertionDirectionType?
	
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
	
	/// The operator type defines the conditional behavior of the assert. If not defined, the default is equals.
	public var operator_fhir: AssertionOperatorType?
	
	/// XPath or JSONPath expression.
	public var path: String?
	
	/// Request URL comparison value.
	public var requestURL: String?
	
	/// Resource type.
	public var resource: String?
	
	/// None
	public var response: AssertionResponseTypes?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["compareToSourceExpression"] {
			presentKeys.insert("compareToSourceExpression")
			if let val = exist as? String {
				self.compareToSourceExpression = val
			}
			else {
				errors.append(FHIRValidationError(key: "compareToSourceExpression", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["compareToSourceId"] {
			presentKeys.insert("compareToSourceId")
			if let val = exist as? String {
				self.compareToSourceId = val
			}
			else {
				errors.append(FHIRValidationError(key: "compareToSourceId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["compareToSourcePath"] {
			presentKeys.insert("compareToSourcePath")
			if let val = exist as? String {
				self.compareToSourcePath = val
			}
			else {
				errors.append(FHIRValidationError(key: "compareToSourcePath", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["contentType"] {
			presentKeys.insert("contentType")
			if let val = exist as? String {
				if let enumval = ContentType(rawValue: val) {
					self.contentType = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "contentType", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contentType", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["direction"] {
			presentKeys.insert("direction")
			if let val = exist as? String {
				if let enumval = AssertionDirectionType(rawValue: val) {
					self.direction = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "direction", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "direction", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["expression"] {
			presentKeys.insert("expression")
			if let val = exist as? String {
				self.expression = val
			}
			else {
				errors.append(FHIRValidationError(key: "expression", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["headerField"] {
			presentKeys.insert("headerField")
			if let val = exist as? String {
				self.headerField = val
			}
			else {
				errors.append(FHIRValidationError(key: "headerField", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["label"] {
			presentKeys.insert("label")
			if let val = exist as? String {
				self.label = val
			}
			else {
				errors.append(FHIRValidationError(key: "label", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["minimumId"] {
			presentKeys.insert("minimumId")
			if let val = exist as? String {
				self.minimumId = val
			}
			else {
				errors.append(FHIRValidationError(key: "minimumId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["navigationLinks"] {
			presentKeys.insert("navigationLinks")
			if let val = exist as? Bool {
				self.navigationLinks = val
			}
			else {
				errors.append(FHIRValidationError(key: "navigationLinks", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["operator"] {
			presentKeys.insert("operator")
			if let val = exist as? String {
				if let enumval = AssertionOperatorType(rawValue: val) {
					self.operator_fhir = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "operator", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operator", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["path"] {
			presentKeys.insert("path")
			if let val = exist as? String {
				self.path = val
			}
			else {
				errors.append(FHIRValidationError(key: "path", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestURL"] {
			presentKeys.insert("requestURL")
			if let val = exist as? String {
				self.requestURL = val
			}
			else {
				errors.append(FHIRValidationError(key: "requestURL", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? String {
				self.resource = val
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["response"] {
			presentKeys.insert("response")
			if let val = exist as? String {
				if let enumval = AssertionResponseTypes(rawValue: val) {
					self.response = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "response", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "response", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["responseCode"] {
			presentKeys.insert("responseCode")
			if let val = exist as? String {
				self.responseCode = val
			}
			else {
				errors.append(FHIRValidationError(key: "responseCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["rule"] {
			presentKeys.insert("rule")
			if let val = exist as? FHIRJSON {
				do {
					self.rule = try TestScriptSetupActionAssertRule(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rule"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rule", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["ruleset"] {
			presentKeys.insert("ruleset")
			if let val = exist as? FHIRJSON {
				do {
					self.ruleset = try TestScriptSetupActionAssertRuleset(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "ruleset"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "ruleset", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sourceId"] {
			presentKeys.insert("sourceId")
			if let val = exist as? String {
				self.sourceId = val
			}
			else {
				errors.append(FHIRValidationError(key: "sourceId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["validateProfileId"] {
			presentKeys.insert("validateProfileId")
			if let val = exist as? String {
				self.validateProfileId = val
			}
			else {
				errors.append(FHIRValidationError(key: "validateProfileId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? String {
				self.value = val
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["warningOnly"] {
			presentKeys.insert("warningOnly")
			if let val = exist as? Bool {
				self.warningOnly = val
			}
			else {
				errors.append(FHIRValidationError(key: "warningOnly", wants: Bool.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
			json["contentType"] = contentType.rawValue
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let direction = self.direction {
			json["direction"] = direction.rawValue
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
			json["operator"] = operator_fhir.rawValue
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
			json["response"] = response.rawValue
		}
		if let responseCode = self.responseCode {
			json["responseCode"] = responseCode.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = rule.asJSON(errors: &errors)
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON(errors: &errors)
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
The reference to a TestScript.rule.

The TestScript.rule this assert will evaluate.
*/
open class TestScriptSetupActionAssertRule: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetupActionAssertRule" }
	}
	
	/// Rule parameter template.
	public var param: [TestScriptSetupActionAssertRuleParam]?
	
	/// Id of the TestScript.rule.
	public var ruleId: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(ruleId: String) {
		self.init()
		self.ruleId = ruleId
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["param"] {
			presentKeys.insert("param")
			if let val = exist as? [FHIRJSON] {
				do {
					self.param = try TestScriptSetupActionAssertRuleParam.instantiate(fromArray: val, owner: self) as? [TestScriptSetupActionAssertRuleParam]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "param"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "param", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["ruleId"] {
			presentKeys.insert("ruleId")
			if let val = exist as? String {
				self.ruleId = val
			}
			else {
				errors.append(FHIRValidationError(key: "ruleId", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "ruleId"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let param = self.param {
			json["param"] = param.map() { $0.asJSON(errors: &errors) }
		}
		if let ruleId = self.ruleId {
			json["ruleId"] = ruleId.asJSON()
		}
		
		return json
	}
}


/**
Rule parameter template.

Each rule template can take one or more parameters for rule evaluation.
*/
open class TestScriptSetupActionAssertRuleParam: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetupActionAssertRuleParam" }
	}
	
	/// Parameter name matching external assert rule parameter.
	public var name: String?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, value: String) {
		self.init()
		self.name = name
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? String {
				self.value = val
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "value"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
The reference to a TestScript.ruleset.

The TestScript.ruleset this assert will evaluate.
*/
open class TestScriptSetupActionAssertRuleset: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetupActionAssertRuleset" }
	}
	
	/// The referenced rule within the ruleset.
	public var rule: [TestScriptSetupActionAssertRulesetRule]?
	
	/// Id of the TestScript.ruleset.
	public var rulesetId: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(rulesetId: String) {
		self.init()
		self.rulesetId = rulesetId
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["rule"] {
			presentKeys.insert("rule")
			if let val = exist as? [FHIRJSON] {
				do {
					self.rule = try TestScriptSetupActionAssertRulesetRule.instantiate(fromArray: val, owner: self) as? [TestScriptSetupActionAssertRulesetRule]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rule"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["rulesetId"] {
			presentKeys.insert("rulesetId")
			if let val = exist as? String {
				self.rulesetId = val
			}
			else {
				errors.append(FHIRValidationError(key: "rulesetId", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "rulesetId"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON(errors: &errors) }
		}
		if let rulesetId = self.rulesetId {
			json["rulesetId"] = rulesetId.asJSON()
		}
		
		return json
	}
}


/**
The referenced rule within the ruleset.

The referenced rule within the external ruleset template.
*/
open class TestScriptSetupActionAssertRulesetRule: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetupActionAssertRulesetRule" }
	}
	
	/// Rule parameter template.
	public var param: [TestScriptSetupActionAssertRulesetRuleParam]?
	
	/// Id of referenced rule within the ruleset.
	public var ruleId: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(ruleId: String) {
		self.init()
		self.ruleId = ruleId
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["param"] {
			presentKeys.insert("param")
			if let val = exist as? [FHIRJSON] {
				do {
					self.param = try TestScriptSetupActionAssertRulesetRuleParam.instantiate(fromArray: val, owner: self) as? [TestScriptSetupActionAssertRulesetRuleParam]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "param"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "param", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["ruleId"] {
			presentKeys.insert("ruleId")
			if let val = exist as? String {
				self.ruleId = val
			}
			else {
				errors.append(FHIRValidationError(key: "ruleId", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "ruleId"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let param = self.param {
			json["param"] = param.map() { $0.asJSON(errors: &errors) }
		}
		if let ruleId = self.ruleId {
			json["ruleId"] = ruleId.asJSON()
		}
		
		return json
	}
}


/**
Rule parameter template.

Each rule template can take one or more parameters for rule evaluation.
*/
open class TestScriptSetupActionAssertRulesetRuleParam: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetupActionAssertRulesetRuleParam" }
	}
	
	/// Parameter name matching external assert ruleset rule parameter.
	public var name: String?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, value: String) {
		self.init()
		self.name = name
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? String {
				self.value = val
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "value"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
The setup operation to perform.

The operation to perform.
*/
open class TestScriptSetupActionOperation: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetupActionOperation" }
	}
	
	/// The content-type or mime-type to use for RESTful operation in the 'Accept' header.
	public var accept: ContentType?
	
	/// The content-type or mime-type to use for RESTful operation in the 'Content-Type' header.
	public var contentType: ContentType?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["accept"] {
			presentKeys.insert("accept")
			if let val = exist as? String {
				if let enumval = ContentType(rawValue: val) {
					self.accept = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "accept", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "accept", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["contentType"] {
			presentKeys.insert("contentType")
			if let val = exist as? String {
				if let enumval = ContentType(rawValue: val) {
					self.contentType = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "contentType", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contentType", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["destination"] {
			presentKeys.insert("destination")
			if let val = exist as? Int {
				self.destination = val
			}
			else {
				errors.append(FHIRValidationError(key: "destination", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["encodeRequestUrl"] {
			presentKeys.insert("encodeRequestUrl")
			if let val = exist as? Bool {
				self.encodeRequestUrl = val
			}
			else {
				errors.append(FHIRValidationError(key: "encodeRequestUrl", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["label"] {
			presentKeys.insert("label")
			if let val = exist as? String {
				self.label = val
			}
			else {
				errors.append(FHIRValidationError(key: "label", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["origin"] {
			presentKeys.insert("origin")
			if let val = exist as? Int {
				self.origin = val
			}
			else {
				errors.append(FHIRValidationError(key: "origin", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["params"] {
			presentKeys.insert("params")
			if let val = exist as? String {
				self.params = val
			}
			else {
				errors.append(FHIRValidationError(key: "params", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestHeader"] {
			presentKeys.insert("requestHeader")
			if let val = exist as? [FHIRJSON] {
				do {
					self.requestHeader = try TestScriptSetupActionOperationRequestHeader.instantiate(fromArray: val, owner: self) as? [TestScriptSetupActionOperationRequestHeader]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestHeader"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestHeader", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestId"] {
			presentKeys.insert("requestId")
			if let val = exist as? String {
				self.requestId = val
			}
			else {
				errors.append(FHIRValidationError(key: "requestId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? String {
				self.resource = val
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["responseId"] {
			presentKeys.insert("responseId")
			if let val = exist as? String {
				self.responseId = val
			}
			else {
				errors.append(FHIRValidationError(key: "responseId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["sourceId"] {
			presentKeys.insert("sourceId")
			if let val = exist as? String {
				self.sourceId = val
			}
			else {
				errors.append(FHIRValidationError(key: "sourceId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["targetId"] {
			presentKeys.insert("targetId")
			if let val = exist as? String {
				self.targetId = val
			}
			else {
				errors.append(FHIRValidationError(key: "targetId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = val
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let accept = self.accept {
			json["accept"] = accept.rawValue
		}
		if let contentType = self.contentType {
			json["contentType"] = contentType.rawValue
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
			json["requestHeader"] = requestHeader.map() { $0.asJSON(errors: &errors) }
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
			json["type"] = type.asJSON(errors: &errors)
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
Each operation can have one ore more header elements.

Header elements would be used to set HTTP headers.
*/
open class TestScriptSetupActionOperationRequestHeader: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetupActionOperationRequestHeader" }
	}
	
	/// HTTP header field name.
	public var field: String?
	
	/// HTTP headerfield value.
	public var value: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(field: String, value: String) {
		self.init()
		self.field = field
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["field"] {
			presentKeys.insert("field")
			if let val = exist as? String {
				self.field = val
			}
			else {
				errors.append(FHIRValidationError(key: "field", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "field"))
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? String {
				self.value = val
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "value"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
A series of required clean up steps.

A series of operations required to clean up after the all the tests are executed (successfully or otherwise).
*/
open class TestScriptTeardown: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptTeardown" }
	}
	
	/// One or more teardown operations to perform.
	public var action: [TestScriptTeardownAction]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestScriptTeardownAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try TestScriptTeardownAction.instantiate(fromArray: val, owner: self) as? [TestScriptTeardownAction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "action"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
One or more teardown operations to perform.

The teardown action will only contain an operation.
*/
open class TestScriptTeardownAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptTeardownAction" }
	}
	
	/// The teardown operation to perform.
	public var operation: TestScriptSetupActionOperation?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(operation: TestScriptSetupActionOperation) {
		self.init()
		self.operation = operation
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["operation"] {
			presentKeys.insert("operation")
			if let val = exist as? FHIRJSON {
				do {
					self.operation = try TestScriptSetupActionOperation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "operation"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let operation = self.operation {
			json["operation"] = operation.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
A test in this script.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestScriptTestAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try TestScriptTestAction.instantiate(fromArray: val, owner: self) as? [TestScriptTestAction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "action"))
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
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
A test operation or assert to perform.

Action would contain either an operation or an assertion.
*/
open class TestScriptTestAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptTestAction" }
	}
	
	/// The setup assertion to perform.
	public var assert: TestScriptSetupActionAssert?
	
	/// The setup operation to perform.
	public var operation: TestScriptSetupActionOperation?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["assert"] {
			presentKeys.insert("assert")
			if let val = exist as? FHIRJSON {
				do {
					self.assert = try TestScriptSetupActionAssert(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "assert"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "assert", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["operation"] {
			presentKeys.insert("operation")
			if let val = exist as? FHIRJSON {
				do {
					self.operation = try TestScriptSetupActionOperation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let assert = self.assert {
			json["assert"] = assert.asJSON(errors: &errors)
		}
		if let operation = self.operation {
			json["operation"] = operation.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Placeholder for evaluated elements.

Variable is set based either on element value in response body or on header field value in the response headers.
*/
open class TestScriptVariable: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptVariable" }
	}
	
	/// Default, hard-coded, or user-defined value for this variable.
	public var defaultValue: String?
	
	/// Natural language description of the variable.
	public var description_fhir: String?
	
	/// The fhirpath expression against the fixture body.
	public var expression: String?
	
	/// HTTP header field name for source.
	public var headerField: String?
	
	/// Hint help text for default value to enter.
	public var hint: String?
	
	/// Descriptive name for this variable.
	public var name: String?
	
	/// XPath or JSONPath against the fixture body.
	public var path: String?
	
	/// Fixture Id of source expression or headerField within this variable.
	public var sourceId: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["defaultValue"] {
			presentKeys.insert("defaultValue")
			if let val = exist as? String {
				self.defaultValue = val
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValue", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["expression"] {
			presentKeys.insert("expression")
			if let val = exist as? String {
				self.expression = val
			}
			else {
				errors.append(FHIRValidationError(key: "expression", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["headerField"] {
			presentKeys.insert("headerField")
			if let val = exist as? String {
				self.headerField = val
			}
			else {
				errors.append(FHIRValidationError(key: "headerField", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["hint"] {
			presentKeys.insert("hint")
			if let val = exist as? String {
				self.hint = val
			}
			else {
				errors.append(FHIRValidationError(key: "hint", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["path"] {
			presentKeys.insert("path")
			if let val = exist as? String {
				self.path = val
			}
			else {
				errors.append(FHIRValidationError(key: "path", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["sourceId"] {
			presentKeys.insert("sourceId")
			if let val = exist as? String {
				self.sourceId = val
			}
			else {
				errors.append(FHIRValidationError(key: "sourceId", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let defaultValue = self.defaultValue {
			json["defaultValue"] = defaultValue.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let expression = self.expression {
			json["expression"] = expression.asJSON()
		}
		if let headerField = self.headerField {
			json["headerField"] = headerField.asJSON()
		}
		if let hint = self.hint {
			json["hint"] = hint.asJSON()
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

