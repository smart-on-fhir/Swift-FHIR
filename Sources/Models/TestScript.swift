//
//  TestScript.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/TestScript) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Describes a set of tests.

A structured set of tests against a FHIR server implementation to determine compliance against the FHIR specification.
*/
open class TestScript: DomainResource {
	override open class var resourceType: String {
		get { return "TestScript" }
	}
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the test script.
	public var description_fhir: FHIRString?
	
	/// An abstract server representing a destination or receiver in a message exchange.
	public var destination: [TestScriptDestination]?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Fixture in the test script - by reference (uri).
	public var fixture: [TestScriptFixture]?
	
	/// Additional identifier for the test script.
	public var identifier: Identifier?
	
	/// Intended jurisdiction for test script (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Required capability that is assumed to function correctly on the FHIR server being tested.
	public var metadata: TestScriptMetadata?
	
	/// Name for this test script (computer friendly).
	public var name: FHIRString?
	
	/// An abstract server representing a client or sender in a message exchange.
	public var origin: [TestScriptOrigin]?
	
	/// Reference of the validation profile.
	public var profile: [Reference]?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this test script is defined.
	public var purpose: FHIRString?
	
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
	
	/// Name for this test script (human friendly).
	public var title: FHIRString?
	
	/// Logical URI to reference this test script (globally unique).
	public var url: FHIRURL?
	
	/// Context the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Placeholder for evaluated elements.
	public var variable: [TestScriptVariable]?
	
	/// Business version of the test script.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, status: PublicationStatus, url: FHIRURL) {
		self.init()
		self.name = name
		self.status = status
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		destination = createInstances(of: TestScriptDestination.self, for: "destination", in: json, context: &instCtx, owner: self) ?? destination
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		fixture = createInstances(of: TestScriptFixture.self, for: "fixture", in: json, context: &instCtx, owner: self) ?? fixture
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		metadata = createInstance(type: TestScriptMetadata.self, for: "metadata", in: json, context: &instCtx, owner: self) ?? metadata
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		origin = createInstances(of: TestScriptOrigin.self, for: "origin", in: json, context: &instCtx, owner: self) ?? origin
		profile = createInstances(of: Reference.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		rule = createInstances(of: TestScriptRule.self, for: "rule", in: json, context: &instCtx, owner: self) ?? rule
		ruleset = createInstances(of: TestScriptRuleset.self, for: "ruleset", in: json, context: &instCtx, owner: self) ?? ruleset
		setup = createInstance(type: TestScriptSetup.self, for: "setup", in: json, context: &instCtx, owner: self) ?? setup
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		teardown = createInstance(type: TestScriptTeardown.self, for: "teardown", in: json, context: &instCtx, owner: self) ?? teardown
		test = createInstances(of: TestScriptTest.self, for: "test", in: json, context: &instCtx, owner: self) ?? test
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		if nil == url && !instCtx.containsKey("url") {
			instCtx.addError(FHIRValidationError(missing: "url"))
		}
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		variable = createInstances(of: TestScriptVariable.self, for: "variable", in: json, context: &instCtx, owner: self) ?? variable
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "destination", using: self.destination, errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "fixture", using: self.fixture, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.metadata?.decorate(json: &json, withKey: "metadata", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		arrayDecorate(json: &json, withKey: "origin", using: self.origin, errors: &errors)
		arrayDecorate(json: &json, withKey: "profile", using: self.profile, errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "rule", using: self.rule, errors: &errors)
		arrayDecorate(json: &json, withKey: "ruleset", using: self.ruleset, errors: &errors)
		self.setup?.decorate(json: &json, withKey: "setup", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.teardown?.decorate(json: &json, withKey: "teardown", errors: &errors)
		arrayDecorate(json: &json, withKey: "test", using: self.test, errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		arrayDecorate(json: &json, withKey: "variable", using: self.variable, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
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
	public var index: FHIRInteger?
	
	/// FHIR-Server | FHIR-SDC-FormManager | FHIR-SDC-FormReceiver | FHIR-SDC-FormProcessor.
	public var profile: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(index: FHIRInteger, profile: Coding) {
		self.init()
		self.index = index
		self.profile = profile
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		index = createInstance(type: FHIRInteger.self, for: "index", in: json, context: &instCtx, owner: self) ?? index
		if nil == index && !instCtx.containsKey("index") {
			instCtx.addError(FHIRValidationError(missing: "index"))
		}
		profile = createInstance(type: Coding.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		if nil == profile && !instCtx.containsKey("profile") {
			instCtx.addError(FHIRValidationError(missing: "profile"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.index?.decorate(json: &json, withKey: "index", errors: &errors)
		if nil == self.index {
			errors.append(FHIRValidationError(missing: "index"))
		}
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		if nil == self.profile {
			errors.append(FHIRValidationError(missing: "profile"))
		}
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
	public var autocreate: FHIRBool?
	
	/// Whether or not to implicitly delete the fixture during teardown.
	public var autodelete: FHIRBool?
	
	/// Reference of the resource.
	public var resource: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		autocreate = createInstance(type: FHIRBool.self, for: "autocreate", in: json, context: &instCtx, owner: self) ?? autocreate
		autodelete = createInstance(type: FHIRBool.self, for: "autodelete", in: json, context: &instCtx, owner: self) ?? autodelete
		resource = createInstance(type: Reference.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.autocreate?.decorate(json: &json, withKey: "autocreate", errors: &errors)
		self.autodelete?.decorate(json: &json, withKey: "autodelete", errors: &errors)
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		capability = createInstances(of: TestScriptMetadataCapability.self, for: "capability", in: json, context: &instCtx, owner: self) ?? capability
		if (nil == capability || capability!.isEmpty) && !instCtx.containsKey("capability") {
			instCtx.addError(FHIRValidationError(missing: "capability"))
		}
		link = createInstances(of: TestScriptMetadataLink.self, for: "link", in: json, context: &instCtx, owner: self) ?? link
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "capability", using: self.capability, errors: &errors)
		if nil == capability || self.capability!.isEmpty {
			errors.append(FHIRValidationError(missing: "capability"))
		}
		arrayDecorate(json: &json, withKey: "link", using: self.link, errors: &errors)
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
	public var description_fhir: FHIRString?
	
	/// Which server these requirements apply to.
	public var destination: FHIRInteger?
	
	/// Links to the FHIR specification.
	public var link: [FHIRURL]?
	
	/// Which origin server these requirements apply to.
	public var origin: [FHIRInteger]?
	
	/// Are the capabilities required?.
	public var required: FHIRBool?
	
	/// Are the capabilities validated?.
	public var validated: FHIRBool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(capabilities: Reference) {
		self.init()
		self.capabilities = capabilities
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		capabilities = createInstance(type: Reference.self, for: "capabilities", in: json, context: &instCtx, owner: self) ?? capabilities
		if nil == capabilities && !instCtx.containsKey("capabilities") {
			instCtx.addError(FHIRValidationError(missing: "capabilities"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		destination = createInstance(type: FHIRInteger.self, for: "destination", in: json, context: &instCtx, owner: self) ?? destination
		link = createInstances(of: FHIRURL.self, for: "link", in: json, context: &instCtx, owner: self) ?? link
		origin = createInstances(of: FHIRInteger.self, for: "origin", in: json, context: &instCtx, owner: self) ?? origin
		required = createInstance(type: FHIRBool.self, for: "required", in: json, context: &instCtx, owner: self) ?? required
		validated = createInstance(type: FHIRBool.self, for: "validated", in: json, context: &instCtx, owner: self) ?? validated
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.capabilities?.decorate(json: &json, withKey: "capabilities", errors: &errors)
		if nil == self.capabilities {
			errors.append(FHIRValidationError(missing: "capabilities"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.destination?.decorate(json: &json, withKey: "destination", errors: &errors)
		arrayDecorate(json: &json, withKey: "link", using: self.link, errors: &errors)
		arrayDecorate(json: &json, withKey: "origin", using: self.origin, errors: &errors)
		self.required?.decorate(json: &json, withKey: "required", errors: &errors)
		self.validated?.decorate(json: &json, withKey: "validated", errors: &errors)
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
	public var description_fhir: FHIRString?
	
	/// URL to the specification.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(url: FHIRURL) {
		self.init()
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		if nil == url && !instCtx.containsKey("url") {
			instCtx.addError(FHIRValidationError(missing: "url"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
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
	public var index: FHIRInteger?
	
	/// FHIR-Client | FHIR-SDC-FormFiller.
	public var profile: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(index: FHIRInteger, profile: Coding) {
		self.init()
		self.index = index
		self.profile = profile
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		index = createInstance(type: FHIRInteger.self, for: "index", in: json, context: &instCtx, owner: self) ?? index
		if nil == index && !instCtx.containsKey("index") {
			instCtx.addError(FHIRValidationError(missing: "index"))
		}
		profile = createInstance(type: Coding.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		if nil == profile && !instCtx.containsKey("profile") {
			instCtx.addError(FHIRValidationError(missing: "profile"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.index?.decorate(json: &json, withKey: "index", errors: &errors)
		if nil == self.index {
			errors.append(FHIRValidationError(missing: "index"))
		}
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		if nil == self.profile {
			errors.append(FHIRValidationError(missing: "profile"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		param = createInstances(of: TestScriptRuleParam.self, for: "param", in: json, context: &instCtx, owner: self) ?? param
		resource = createInstance(type: Reference.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		if nil == resource && !instCtx.containsKey("resource") {
			instCtx.addError(FHIRValidationError(missing: "resource"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "param", using: self.param, errors: &errors)
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
		if nil == self.resource {
			errors.append(FHIRValidationError(missing: "resource"))
		}
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
	public var name: FHIRString?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		resource = createInstance(type: Reference.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		if nil == resource && !instCtx.containsKey("resource") {
			instCtx.addError(FHIRValidationError(missing: "resource"))
		}
		rule = createInstances(of: TestScriptRulesetRule.self, for: "rule", in: json, context: &instCtx, owner: self) ?? rule
		if (nil == rule || rule!.isEmpty) && !instCtx.containsKey("rule") {
			instCtx.addError(FHIRValidationError(missing: "rule"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
		if nil == self.resource {
			errors.append(FHIRValidationError(missing: "resource"))
		}
		arrayDecorate(json: &json, withKey: "rule", using: self.rule, errors: &errors)
		if nil == rule || self.rule!.isEmpty {
			errors.append(FHIRValidationError(missing: "rule"))
		}
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
	public var ruleId: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(ruleId: FHIRString) {
		self.init()
		self.ruleId = ruleId
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		param = createInstances(of: TestScriptRulesetRuleParam.self, for: "param", in: json, context: &instCtx, owner: self) ?? param
		ruleId = createInstance(type: FHIRString.self, for: "ruleId", in: json, context: &instCtx, owner: self) ?? ruleId
		if nil == ruleId && !instCtx.containsKey("ruleId") {
			instCtx.addError(FHIRValidationError(missing: "ruleId"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "param", using: self.param, errors: &errors)
		self.ruleId?.decorate(json: &json, withKey: "ruleId", errors: &errors)
		if nil == self.ruleId {
			errors.append(FHIRValidationError(missing: "ruleId"))
		}
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
	public var name: FHIRString?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: TestScriptSetupAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		if (nil == action || action!.isEmpty) && !instCtx.containsKey("action") {
			instCtx.addError(FHIRValidationError(missing: "action"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		if nil == action || self.action!.isEmpty {
			errors.append(FHIRValidationError(missing: "action"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		assert = createInstance(type: TestScriptSetupActionAssert.self, for: "assert", in: json, context: &instCtx, owner: self) ?? assert
		operation = createInstance(type: TestScriptSetupActionOperation.self, for: "operation", in: json, context: &instCtx, owner: self) ?? operation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assert?.decorate(json: &json, withKey: "assert", errors: &errors)
		self.operation?.decorate(json: &json, withKey: "operation", errors: &errors)
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
	
	/// The fluentpath expression to evaluate against the source fixture.
	public var compareToSourceExpression: FHIRString?
	
	/// Id of the source fixture to be evaluated.
	public var compareToSourceId: FHIRString?
	
	/// XPath or JSONPath expression to evaluate against the source fixture.
	public var compareToSourcePath: FHIRString?
	
	/// The content-type or mime-type to use for RESTful operation in the 'Content-Type' header.
	public var contentType: ContentType?
	
	/// Tracking/reporting assertion description.
	public var description_fhir: FHIRString?
	
	/// The direction to use for the assertion.
	public var direction: AssertionDirectionType?
	
	/// The fluentpath expression to be evaluated.
	public var expression: FHIRString?
	
	/// HTTP header field name.
	public var headerField: FHIRString?
	
	/// Tracking/logging assertion label.
	public var label: FHIRString?
	
	/// Fixture Id of minimum content resource.
	public var minimumId: FHIRString?
	
	/// Perform validation on navigation links?.
	public var navigationLinks: FHIRBool?
	
	/// The operator type defines the conditional behavior of the assert. If not defined, the default is equals.
	public var operator_fhir: AssertionOperatorType?
	
	/// XPath or JSONPath expression.
	public var path: FHIRString?
	
	/// The request method or HTTP operation code to compare against that used by the client system under test.
	public var requestMethod: TestScriptRequestMethodCode?
	
	/// Request URL comparison value.
	public var requestURL: FHIRString?
	
	/// Resource type.
	public var resource: FHIRString?
	
	/// None
	public var response: AssertionResponseTypes?
	
	/// HTTP response code to test.
	public var responseCode: FHIRString?
	
	/// The reference to a TestScript.rule.
	public var rule: TestScriptSetupActionAssertRule?
	
	/// The reference to a TestScript.ruleset.
	public var ruleset: TestScriptSetupActionAssertRuleset?
	
	/// Fixture Id of source expression or headerField.
	public var sourceId: FHIRString?
	
	/// Profile Id of validation profile reference.
	public var validateProfileId: FHIRString?
	
	/// The value to compare to.
	public var value: FHIRString?
	
	/// Will this assert produce a warning only on error?.
	public var warningOnly: FHIRBool?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		compareToSourceExpression = createInstance(type: FHIRString.self, for: "compareToSourceExpression", in: json, context: &instCtx, owner: self) ?? compareToSourceExpression
		compareToSourceId = createInstance(type: FHIRString.self, for: "compareToSourceId", in: json, context: &instCtx, owner: self) ?? compareToSourceId
		compareToSourcePath = createInstance(type: FHIRString.self, for: "compareToSourcePath", in: json, context: &instCtx, owner: self) ?? compareToSourcePath
		contentType = createEnum(type: ContentType.self, for: "contentType", in: json, context: &instCtx) ?? contentType
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		direction = createEnum(type: AssertionDirectionType.self, for: "direction", in: json, context: &instCtx) ?? direction
		expression = createInstance(type: FHIRString.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		headerField = createInstance(type: FHIRString.self, for: "headerField", in: json, context: &instCtx, owner: self) ?? headerField
		label = createInstance(type: FHIRString.self, for: "label", in: json, context: &instCtx, owner: self) ?? label
		minimumId = createInstance(type: FHIRString.self, for: "minimumId", in: json, context: &instCtx, owner: self) ?? minimumId
		navigationLinks = createInstance(type: FHIRBool.self, for: "navigationLinks", in: json, context: &instCtx, owner: self) ?? navigationLinks
		operator_fhir = createEnum(type: AssertionOperatorType.self, for: "operator", in: json, context: &instCtx) ?? operator_fhir
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
		requestMethod = createEnum(type: TestScriptRequestMethodCode.self, for: "requestMethod", in: json, context: &instCtx) ?? requestMethod
		requestURL = createInstance(type: FHIRString.self, for: "requestURL", in: json, context: &instCtx, owner: self) ?? requestURL
		resource = createInstance(type: FHIRString.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		response = createEnum(type: AssertionResponseTypes.self, for: "response", in: json, context: &instCtx) ?? response
		responseCode = createInstance(type: FHIRString.self, for: "responseCode", in: json, context: &instCtx, owner: self) ?? responseCode
		rule = createInstance(type: TestScriptSetupActionAssertRule.self, for: "rule", in: json, context: &instCtx, owner: self) ?? rule
		ruleset = createInstance(type: TestScriptSetupActionAssertRuleset.self, for: "ruleset", in: json, context: &instCtx, owner: self) ?? ruleset
		sourceId = createInstance(type: FHIRString.self, for: "sourceId", in: json, context: &instCtx, owner: self) ?? sourceId
		validateProfileId = createInstance(type: FHIRString.self, for: "validateProfileId", in: json, context: &instCtx, owner: self) ?? validateProfileId
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		warningOnly = createInstance(type: FHIRBool.self, for: "warningOnly", in: json, context: &instCtx, owner: self) ?? warningOnly
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.compareToSourceExpression?.decorate(json: &json, withKey: "compareToSourceExpression", errors: &errors)
		self.compareToSourceId?.decorate(json: &json, withKey: "compareToSourceId", errors: &errors)
		self.compareToSourcePath?.decorate(json: &json, withKey: "compareToSourcePath", errors: &errors)
		self.contentType?.decorate(json: &json, withKey: "contentType", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.direction?.decorate(json: &json, withKey: "direction", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.headerField?.decorate(json: &json, withKey: "headerField", errors: &errors)
		self.label?.decorate(json: &json, withKey: "label", errors: &errors)
		self.minimumId?.decorate(json: &json, withKey: "minimumId", errors: &errors)
		self.navigationLinks?.decorate(json: &json, withKey: "navigationLinks", errors: &errors)
		self.operator_fhir?.decorate(json: &json, withKey: "operator", errors: &errors)
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		self.requestMethod?.decorate(json: &json, withKey: "requestMethod", errors: &errors)
		self.requestURL?.decorate(json: &json, withKey: "requestURL", errors: &errors)
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.responseCode?.decorate(json: &json, withKey: "responseCode", errors: &errors)
		self.rule?.decorate(json: &json, withKey: "rule", errors: &errors)
		self.ruleset?.decorate(json: &json, withKey: "ruleset", errors: &errors)
		self.sourceId?.decorate(json: &json, withKey: "sourceId", errors: &errors)
		self.validateProfileId?.decorate(json: &json, withKey: "validateProfileId", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		self.warningOnly?.decorate(json: &json, withKey: "warningOnly", errors: &errors)
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
	public var ruleId: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(ruleId: FHIRString) {
		self.init()
		self.ruleId = ruleId
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		param = createInstances(of: TestScriptSetupActionAssertRuleParam.self, for: "param", in: json, context: &instCtx, owner: self) ?? param
		ruleId = createInstance(type: FHIRString.self, for: "ruleId", in: json, context: &instCtx, owner: self) ?? ruleId
		if nil == ruleId && !instCtx.containsKey("ruleId") {
			instCtx.addError(FHIRValidationError(missing: "ruleId"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "param", using: self.param, errors: &errors)
		self.ruleId?.decorate(json: &json, withKey: "ruleId", errors: &errors)
		if nil == self.ruleId {
			errors.append(FHIRValidationError(missing: "ruleId"))
		}
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
	public var name: FHIRString?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, value: FHIRString) {
		self.init()
		self.name = name
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
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
	public var rulesetId: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(rulesetId: FHIRString) {
		self.init()
		self.rulesetId = rulesetId
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		rule = createInstances(of: TestScriptSetupActionAssertRulesetRule.self, for: "rule", in: json, context: &instCtx, owner: self) ?? rule
		rulesetId = createInstance(type: FHIRString.self, for: "rulesetId", in: json, context: &instCtx, owner: self) ?? rulesetId
		if nil == rulesetId && !instCtx.containsKey("rulesetId") {
			instCtx.addError(FHIRValidationError(missing: "rulesetId"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "rule", using: self.rule, errors: &errors)
		self.rulesetId?.decorate(json: &json, withKey: "rulesetId", errors: &errors)
		if nil == self.rulesetId {
			errors.append(FHIRValidationError(missing: "rulesetId"))
		}
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
	public var ruleId: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(ruleId: FHIRString) {
		self.init()
		self.ruleId = ruleId
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		param = createInstances(of: TestScriptSetupActionAssertRulesetRuleParam.self, for: "param", in: json, context: &instCtx, owner: self) ?? param
		ruleId = createInstance(type: FHIRString.self, for: "ruleId", in: json, context: &instCtx, owner: self) ?? ruleId
		if nil == ruleId && !instCtx.containsKey("ruleId") {
			instCtx.addError(FHIRValidationError(missing: "ruleId"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "param", using: self.param, errors: &errors)
		self.ruleId?.decorate(json: &json, withKey: "ruleId", errors: &errors)
		if nil == self.ruleId {
			errors.append(FHIRValidationError(missing: "ruleId"))
		}
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
	public var name: FHIRString?
	
	/// Parameter value defined either explicitly or dynamically.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, value: FHIRString) {
		self.init()
		self.name = name
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
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
	public var description_fhir: FHIRString?
	
	/// Server responding to the request.
	public var destination: FHIRInteger?
	
	/// Whether or not to send the request url in encoded format.
	public var encodeRequestUrl: FHIRBool?
	
	/// Tracking/logging operation label.
	public var label: FHIRString?
	
	/// Server initiating the request.
	public var origin: FHIRInteger?
	
	/// Explicitly defined path parameters.
	public var params: FHIRString?
	
	/// Each operation can have one or more header elements.
	public var requestHeader: [TestScriptSetupActionOperationRequestHeader]?
	
	/// Fixture Id of mapped request.
	public var requestId: FHIRString?
	
	/// Resource type.
	public var resource: FHIRString?
	
	/// Fixture Id of mapped response.
	public var responseId: FHIRString?
	
	/// Fixture Id of body for PUT and POST requests.
	public var sourceId: FHIRString?
	
	/// Id of fixture used for extracting the [id],  [type], and [vid] for GET requests.
	public var targetId: FHIRString?
	
	/// The operation code type that will be executed.
	public var type: Coding?
	
	/// Request URL.
	public var url: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		accept = createEnum(type: ContentType.self, for: "accept", in: json, context: &instCtx) ?? accept
		contentType = createEnum(type: ContentType.self, for: "contentType", in: json, context: &instCtx) ?? contentType
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		destination = createInstance(type: FHIRInteger.self, for: "destination", in: json, context: &instCtx, owner: self) ?? destination
		encodeRequestUrl = createInstance(type: FHIRBool.self, for: "encodeRequestUrl", in: json, context: &instCtx, owner: self) ?? encodeRequestUrl
		label = createInstance(type: FHIRString.self, for: "label", in: json, context: &instCtx, owner: self) ?? label
		origin = createInstance(type: FHIRInteger.self, for: "origin", in: json, context: &instCtx, owner: self) ?? origin
		params = createInstance(type: FHIRString.self, for: "params", in: json, context: &instCtx, owner: self) ?? params
		requestHeader = createInstances(of: TestScriptSetupActionOperationRequestHeader.self, for: "requestHeader", in: json, context: &instCtx, owner: self) ?? requestHeader
		requestId = createInstance(type: FHIRString.self, for: "requestId", in: json, context: &instCtx, owner: self) ?? requestId
		resource = createInstance(type: FHIRString.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		responseId = createInstance(type: FHIRString.self, for: "responseId", in: json, context: &instCtx, owner: self) ?? responseId
		sourceId = createInstance(type: FHIRString.self, for: "sourceId", in: json, context: &instCtx, owner: self) ?? sourceId
		targetId = createInstance(type: FHIRString.self, for: "targetId", in: json, context: &instCtx, owner: self) ?? targetId
		type = createInstance(type: Coding.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		url = createInstance(type: FHIRString.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.accept?.decorate(json: &json, withKey: "accept", errors: &errors)
		self.contentType?.decorate(json: &json, withKey: "contentType", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.destination?.decorate(json: &json, withKey: "destination", errors: &errors)
		self.encodeRequestUrl?.decorate(json: &json, withKey: "encodeRequestUrl", errors: &errors)
		self.label?.decorate(json: &json, withKey: "label", errors: &errors)
		self.origin?.decorate(json: &json, withKey: "origin", errors: &errors)
		self.params?.decorate(json: &json, withKey: "params", errors: &errors)
		arrayDecorate(json: &json, withKey: "requestHeader", using: self.requestHeader, errors: &errors)
		self.requestId?.decorate(json: &json, withKey: "requestId", errors: &errors)
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
		self.responseId?.decorate(json: &json, withKey: "responseId", errors: &errors)
		self.sourceId?.decorate(json: &json, withKey: "sourceId", errors: &errors)
		self.targetId?.decorate(json: &json, withKey: "targetId", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
	}
}


/**
Each operation can have one or more header elements.

Header elements would be used to set HTTP headers.
*/
open class TestScriptSetupActionOperationRequestHeader: BackboneElement {
	override open class var resourceType: String {
		get { return "TestScriptSetupActionOperationRequestHeader" }
	}
	
	/// HTTP header field name.
	public var field: FHIRString?
	
	/// HTTP headerfield value.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(field: FHIRString, value: FHIRString) {
		self.init()
		self.field = field
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		field = createInstance(type: FHIRString.self, for: "field", in: json, context: &instCtx, owner: self) ?? field
		if nil == field && !instCtx.containsKey("field") {
			instCtx.addError(FHIRValidationError(missing: "field"))
		}
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.field?.decorate(json: &json, withKey: "field", errors: &errors)
		if nil == self.field {
			errors.append(FHIRValidationError(missing: "field"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: TestScriptTeardownAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		if (nil == action || action!.isEmpty) && !instCtx.containsKey("action") {
			instCtx.addError(FHIRValidationError(missing: "action"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		if nil == action || self.action!.isEmpty {
			errors.append(FHIRValidationError(missing: "action"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		operation = createInstance(type: TestScriptSetupActionOperation.self, for: "operation", in: json, context: &instCtx, owner: self) ?? operation
		if nil == operation && !instCtx.containsKey("operation") {
			instCtx.addError(FHIRValidationError(missing: "operation"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.operation?.decorate(json: &json, withKey: "operation", errors: &errors)
		if nil == self.operation {
			errors.append(FHIRValidationError(missing: "operation"))
		}
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
	public var description_fhir: FHIRString?
	
	/// Tracking/logging name of this test.
	public var name: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestScriptTestAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: TestScriptTestAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		if (nil == action || action!.isEmpty) && !instCtx.containsKey("action") {
			instCtx.addError(FHIRValidationError(missing: "action"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		if nil == action || self.action!.isEmpty {
			errors.append(FHIRValidationError(missing: "action"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		assert = createInstance(type: TestScriptSetupActionAssert.self, for: "assert", in: json, context: &instCtx, owner: self) ?? assert
		operation = createInstance(type: TestScriptSetupActionOperation.self, for: "operation", in: json, context: &instCtx, owner: self) ?? operation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assert?.decorate(json: &json, withKey: "assert", errors: &errors)
		self.operation?.decorate(json: &json, withKey: "operation", errors: &errors)
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
	public var defaultValue: FHIRString?
	
	/// Natural language description of the variable.
	public var description_fhir: FHIRString?
	
	/// The fluentpath expression against the fixture body.
	public var expression: FHIRString?
	
	/// HTTP header field name for source.
	public var headerField: FHIRString?
	
	/// Hint help text for default value to enter.
	public var hint: FHIRString?
	
	/// Descriptive name for this variable.
	public var name: FHIRString?
	
	/// XPath or JSONPath against the fixture body.
	public var path: FHIRString?
	
	/// Fixture Id of source expression or headerField within this variable.
	public var sourceId: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		defaultValue = createInstance(type: FHIRString.self, for: "defaultValue", in: json, context: &instCtx, owner: self) ?? defaultValue
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		expression = createInstance(type: FHIRString.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		headerField = createInstance(type: FHIRString.self, for: "headerField", in: json, context: &instCtx, owner: self) ?? headerField
		hint = createInstance(type: FHIRString.self, for: "hint", in: json, context: &instCtx, owner: self) ?? hint
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
		sourceId = createInstance(type: FHIRString.self, for: "sourceId", in: json, context: &instCtx, owner: self) ?? sourceId
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.defaultValue?.decorate(json: &json, withKey: "defaultValue", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.headerField?.decorate(json: &json, withKey: "headerField", errors: &errors)
		self.hint?.decorate(json: &json, withKey: "hint", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		self.sourceId?.decorate(json: &json, withKey: "sourceId", errors: &errors)
	}
}

