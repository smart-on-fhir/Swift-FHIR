//
//  ImplementationGuide.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ImplementationGuide) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A set of rules about how FHIR is used.

A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR
resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish
a computable definition of all the parts.
*/
open class ImplementationGuide: DomainResource {
	override open class var resourceType: String {
		get { return "ImplementationGuide" }
	}
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Information needed to build the IG.
	public var definition: ImplementationGuideDefinition?
	
	/// Another Implementation guide this depends on.
	public var dependsOn: [ImplementationGuideDependsOn]?
	
	/// Natural language description of the implementation guide.
	public var description_fhir: FHIRString?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// FHIR Version(s) this Implementation Guide targets.
	public var fhirVersion: [FHIRString]?
	
	/// Profiles that apply globally.
	public var global: [ImplementationGuideGlobal]?
	
	/// Intended jurisdiction for implementation guide (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// SPDX license code for this IG (or not-open-source).
	public var license: FHIRString?
	
	/// Information about an assembled IG.
	public var manifest: ImplementationGuideManifest?
	
	/// Name for this implementation guide (computer friendly).
	public var name: FHIRString?
	
	/// NPM Package name for IG.
	public var packageId: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// The status of this implementation guide. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this implementation guide (human friendly).
	public var title: FHIRString?
	
	/// Canonical identifier for this implementation guide, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the implementation guide.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(fhirVersion: [FHIRString], name: FHIRString, packageId: FHIRString, status: PublicationStatus, url: FHIRURL) {
		self.init()
		self.fhirVersion = fhirVersion
		self.name = name
		self.packageId = packageId
		self.status = status
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		definition = createInstance(type: ImplementationGuideDefinition.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		dependsOn = createInstances(of: ImplementationGuideDependsOn.self, for: "dependsOn", in: json, context: &instCtx, owner: self) ?? dependsOn
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		fhirVersion = createInstances(of: FHIRString.self, for: "fhirVersion", in: json, context: &instCtx, owner: self) ?? fhirVersion
		if (nil == fhirVersion || fhirVersion!.isEmpty) && !instCtx.containsKey("fhirVersion") {
			instCtx.addError(FHIRValidationError(missing: "fhirVersion"))
		}
		global = createInstances(of: ImplementationGuideGlobal.self, for: "global", in: json, context: &instCtx, owner: self) ?? global
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		license = createInstance(type: FHIRString.self, for: "license", in: json, context: &instCtx, owner: self) ?? license
		manifest = createInstance(type: ImplementationGuideManifest.self, for: "manifest", in: json, context: &instCtx, owner: self) ?? manifest
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		packageId = createInstance(type: FHIRString.self, for: "packageId", in: json, context: &instCtx, owner: self) ?? packageId
		if nil == packageId && !instCtx.containsKey("packageId") {
			instCtx.addError(FHIRValidationError(missing: "packageId"))
		}
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		if nil == url && !instCtx.containsKey("url") {
			instCtx.addError(FHIRValidationError(missing: "url"))
		}
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		arrayDecorate(json: &json, withKey: "dependsOn", using: self.dependsOn, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "fhirVersion", using: self.fhirVersion, errors: &errors)
		if nil == fhirVersion || self.fhirVersion!.isEmpty {
			errors.append(FHIRValidationError(missing: "fhirVersion"))
		}
		arrayDecorate(json: &json, withKey: "global", using: self.global, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.license?.decorate(json: &json, withKey: "license", errors: &errors)
		self.manifest?.decorate(json: &json, withKey: "manifest", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.packageId?.decorate(json: &json, withKey: "packageId", errors: &errors)
		if nil == self.packageId {
			errors.append(FHIRValidationError(missing: "packageId"))
		}
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Information needed to build the IG.

The information needed by an IG publisher tool to publish the whole implementation guide.
*/
open class ImplementationGuideDefinition: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideDefinition" }
	}
	
	/// Grouping used to present related resources in the IG.
	public var grouping: [ImplementationGuideDefinitionGrouping]?
	
	/// Page/Section in the Guide.
	public var page: ImplementationGuideDefinitionPage?
	
	/// Defines how IG is built by tools.
	public var parameter: [ImplementationGuideDefinitionParameter]?
	
	/// Resource in the implementation guide.
	public var resource: [ImplementationGuideDefinitionResource]?
	
	/// A template for building resources.
	public var template: [ImplementationGuideDefinitionTemplate]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(resource: [ImplementationGuideDefinitionResource]) {
		self.init()
		self.resource = resource
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		grouping = createInstances(of: ImplementationGuideDefinitionGrouping.self, for: "grouping", in: json, context: &instCtx, owner: self) ?? grouping
		page = createInstance(type: ImplementationGuideDefinitionPage.self, for: "page", in: json, context: &instCtx, owner: self) ?? page
		parameter = createInstances(of: ImplementationGuideDefinitionParameter.self, for: "parameter", in: json, context: &instCtx, owner: self) ?? parameter
		resource = createInstances(of: ImplementationGuideDefinitionResource.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		if (nil == resource || resource!.isEmpty) && !instCtx.containsKey("resource") {
			instCtx.addError(FHIRValidationError(missing: "resource"))
		}
		template = createInstances(of: ImplementationGuideDefinitionTemplate.self, for: "template", in: json, context: &instCtx, owner: self) ?? template
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "grouping", using: self.grouping, errors: &errors)
		self.page?.decorate(json: &json, withKey: "page", errors: &errors)
		arrayDecorate(json: &json, withKey: "parameter", using: self.parameter, errors: &errors)
		arrayDecorate(json: &json, withKey: "resource", using: self.resource, errors: &errors)
		if nil == resource || self.resource!.isEmpty {
			errors.append(FHIRValidationError(missing: "resource"))
		}
		arrayDecorate(json: &json, withKey: "template", using: self.template, errors: &errors)
	}
}


/**
Grouping used to present related resources in the IG.

A logical group of resources. Logical groups can be used when building pages.
*/
open class ImplementationGuideDefinitionGrouping: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideDefinitionGrouping" }
	}
	
	/// Human readable text describing the package.
	public var description_fhir: FHIRString?
	
	/// Descriptive name for the package.
	public var name: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
	}
}


/**
Page/Section in the Guide.

A page / section in the implementation guide. The root page is the implementation guide home page.
*/
open class ImplementationGuideDefinitionPage: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideDefinitionPage" }
	}
	
	/// A code that indicates how the page is generated.
	public var generation: GuidePageGeneration?
	
	/// Where to find that page.
	public var nameReference: Reference?
	
	/// Where to find that page.
	public var nameUrl: FHIRURL?
	
	/// Nested Pages / Sections.
	public var page: [ImplementationGuideDefinitionPage]?
	
	/// Short title shown for navigational assistance.
	public var title: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(generation: GuidePageGeneration, name: Any, title: FHIRString) {
		self.init()
		self.generation = generation
		if let value = name as? FHIRURL {
			self.nameUrl = value
		}
		else if let value = name as? Reference {
			self.nameReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: name))” for property “\(name)” is invalid, ignoring")
		}
		self.title = title
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		generation = createEnum(type: GuidePageGeneration.self, for: "generation", in: json, context: &instCtx) ?? generation
		if nil == generation && !instCtx.containsKey("generation") {
			instCtx.addError(FHIRValidationError(missing: "generation"))
		}
		nameReference = createInstance(type: Reference.self, for: "nameReference", in: json, context: &instCtx, owner: self) ?? nameReference
		nameUrl = createInstance(type: FHIRURL.self, for: "nameUrl", in: json, context: &instCtx, owner: self) ?? nameUrl
		page = createInstances(of: ImplementationGuideDefinitionPage.self, for: "page", in: json, context: &instCtx, owner: self) ?? page
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		if nil == title && !instCtx.containsKey("title") {
			instCtx.addError(FHIRValidationError(missing: "title"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.nameUrl && nil == self.nameReference {
			instCtx.addError(FHIRValidationError(missing: "name[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.generation?.decorate(json: &json, withKey: "generation", errors: &errors)
		if nil == self.generation {
			errors.append(FHIRValidationError(missing: "generation"))
		}
		self.nameReference?.decorate(json: &json, withKey: "nameReference", errors: &errors)
		self.nameUrl?.decorate(json: &json, withKey: "nameUrl", errors: &errors)
		arrayDecorate(json: &json, withKey: "page", using: self.page, errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		if nil == self.title {
			errors.append(FHIRValidationError(missing: "title"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.nameUrl && nil == self.nameReference {
			errors.append(FHIRValidationError(missing: "name[x]"))
		}
	}
}


/**
Defines how IG is built by tools.
*/
open class ImplementationGuideDefinitionParameter: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideDefinitionParameter" }
	}
	
	/// None
	public var code: GuideParameterCode?
	
	/// Value for named type.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: GuideParameterCode, value: FHIRString) {
		self.init()
		self.code = code
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createEnum(type: GuideParameterCode.self, for: "code", in: json, context: &instCtx) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
	}
}


/**
Resource in the implementation guide.

A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability
statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
*/
open class ImplementationGuideDefinitionResource: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideDefinitionResource" }
	}
	
	/// Reason why included in guide.
	public var description_fhir: FHIRString?
	
	/// Is an example/What is this an example of?.
	public var exampleBoolean: FHIRBool?
	
	/// Is an example/What is this an example of?.
	public var exampleCanonical: FHIRURL?
	
	/// Versions this applies to (if different to IG).
	public var fhirVersion: [FHIRString]?
	
	/// Grouping this is part of.
	public var groupingId: FHIRString?
	
	/// Human Name for the resource.
	public var name: FHIRString?
	
	/// Location of the resource.
	public var reference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: Reference) {
		self.init()
		self.reference = reference
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		exampleBoolean = createInstance(type: FHIRBool.self, for: "exampleBoolean", in: json, context: &instCtx, owner: self) ?? exampleBoolean
		exampleCanonical = createInstance(type: FHIRURL.self, for: "exampleCanonical", in: json, context: &instCtx, owner: self) ?? exampleCanonical
		fhirVersion = createInstances(of: FHIRString.self, for: "fhirVersion", in: json, context: &instCtx, owner: self) ?? fhirVersion
		groupingId = createInstance(type: FHIRString.self, for: "groupingId", in: json, context: &instCtx, owner: self) ?? groupingId
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		reference = createInstance(type: Reference.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		if nil == reference && !instCtx.containsKey("reference") {
			instCtx.addError(FHIRValidationError(missing: "reference"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.exampleBoolean?.decorate(json: &json, withKey: "exampleBoolean", errors: &errors)
		self.exampleCanonical?.decorate(json: &json, withKey: "exampleCanonical", errors: &errors)
		arrayDecorate(json: &json, withKey: "fhirVersion", using: self.fhirVersion, errors: &errors)
		self.groupingId?.decorate(json: &json, withKey: "groupingId", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		if nil == self.reference {
			errors.append(FHIRValidationError(missing: "reference"))
		}
	}
}


/**
A template for building resources.
*/
open class ImplementationGuideDefinitionTemplate: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideDefinitionTemplate" }
	}
	
	/// Type of template specified.
	public var code: FHIRString?
	
	/// The scope in which the template applies.
	public var scope: FHIRString?
	
	/// The source location for the template.
	public var source: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString, source: FHIRString) {
		self.init()
		self.code = code
		self.source = source
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		scope = createInstance(type: FHIRString.self, for: "scope", in: json, context: &instCtx, owner: self) ?? scope
		source = createInstance(type: FHIRString.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		if nil == source && !instCtx.containsKey("source") {
			instCtx.addError(FHIRValidationError(missing: "source"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.scope?.decorate(json: &json, withKey: "scope", errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		if nil == self.source {
			errors.append(FHIRValidationError(missing: "source"))
		}
	}
}


/**
Another Implementation guide this depends on.

Another implementation guide that this implementation depends on. Typically, an implementation guide uses value sets,
profiles etc.defined in other implementation guides.
*/
open class ImplementationGuideDependsOn: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideDependsOn" }
	}
	
	/// NPM Package name for IG this depends on.
	public var packageId: FHIRString?
	
	/// Identity of the IG that this depends on.
	public var uri: FHIRURL?
	
	/// Version of the IG.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(uri: FHIRURL) {
		self.init()
		self.uri = uri
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		packageId = createInstance(type: FHIRString.self, for: "packageId", in: json, context: &instCtx, owner: self) ?? packageId
		uri = createInstance(type: FHIRURL.self, for: "uri", in: json, context: &instCtx, owner: self) ?? uri
		if nil == uri && !instCtx.containsKey("uri") {
			instCtx.addError(FHIRValidationError(missing: "uri"))
		}
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.packageId?.decorate(json: &json, withKey: "packageId", errors: &errors)
		self.uri?.decorate(json: &json, withKey: "uri", errors: &errors)
		if nil == self.uri {
			errors.append(FHIRValidationError(missing: "uri"))
		}
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Profiles that apply globally.

A set of profiles that all resources covered by this implementation guide must conform to.
*/
open class ImplementationGuideGlobal: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideGlobal" }
	}
	
	/// Profile that all resources must conform to.
	public var profile: FHIRURL?
	
	/// The type of resource that all instances must conform to.
	public var type: ResourceType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(profile: FHIRURL, type: ResourceType) {
		self.init()
		self.profile = profile
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		profile = createInstance(type: FHIRURL.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		if nil == profile && !instCtx.containsKey("profile") {
			instCtx.addError(FHIRValidationError(missing: "profile"))
		}
		type = createEnum(type: ResourceType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		if nil == self.profile {
			errors.append(FHIRValidationError(missing: "profile"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Information about an assembled IG.

Information about an assembled implementation guide, created by the publication tooling.
*/
open class ImplementationGuideManifest: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideManifest" }
	}
	
	/// Image within the IG.
	public var image: [FHIRString]?
	
	/// Additional linkable file in IG.
	public var other: [FHIRString]?
	
	/// HTML page within the parent IG.
	public var page: [ImplementationGuideManifestPage]?
	
	/// Location of rendered implementation guide.
	public var rendering: FHIRURL?
	
	/// Resource in the implementation guide.
	public var resource: [ImplementationGuideManifestResource]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(resource: [ImplementationGuideManifestResource]) {
		self.init()
		self.resource = resource
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		image = createInstances(of: FHIRString.self, for: "image", in: json, context: &instCtx, owner: self) ?? image
		other = createInstances(of: FHIRString.self, for: "other", in: json, context: &instCtx, owner: self) ?? other
		page = createInstances(of: ImplementationGuideManifestPage.self, for: "page", in: json, context: &instCtx, owner: self) ?? page
		rendering = createInstance(type: FHIRURL.self, for: "rendering", in: json, context: &instCtx, owner: self) ?? rendering
		resource = createInstances(of: ImplementationGuideManifestResource.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		if (nil == resource || resource!.isEmpty) && !instCtx.containsKey("resource") {
			instCtx.addError(FHIRValidationError(missing: "resource"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "image", using: self.image, errors: &errors)
		arrayDecorate(json: &json, withKey: "other", using: self.other, errors: &errors)
		arrayDecorate(json: &json, withKey: "page", using: self.page, errors: &errors)
		self.rendering?.decorate(json: &json, withKey: "rendering", errors: &errors)
		arrayDecorate(json: &json, withKey: "resource", using: self.resource, errors: &errors)
		if nil == resource || self.resource!.isEmpty {
			errors.append(FHIRValidationError(missing: "resource"))
		}
	}
}


/**
HTML page within the parent IG.

Information about a page within the IG.
*/
open class ImplementationGuideManifestPage: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideManifestPage" }
	}
	
	/// Anchor available on the page.
	public var anchor: [FHIRString]?
	
	/// HTML page name.
	public var name: FHIRString?
	
	/// Title of the page, for references.
	public var title: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		anchor = createInstances(of: FHIRString.self, for: "anchor", in: json, context: &instCtx, owner: self) ?? anchor
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "anchor", using: self.anchor, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
	}
}


/**
Resource in the implementation guide.

A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability
statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
*/
open class ImplementationGuideManifestResource: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideManifestResource" }
	}
	
	/// Is an example/What is this an example of?.
	public var exampleBoolean: FHIRBool?
	
	/// Is an example/What is this an example of?.
	public var exampleCanonical: FHIRURL?
	
	/// Location of the resource.
	public var reference: Reference?
	
	/// Relative path for page in IG.
	public var relativePath: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: Reference) {
		self.init()
		self.reference = reference
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		exampleBoolean = createInstance(type: FHIRBool.self, for: "exampleBoolean", in: json, context: &instCtx, owner: self) ?? exampleBoolean
		exampleCanonical = createInstance(type: FHIRURL.self, for: "exampleCanonical", in: json, context: &instCtx, owner: self) ?? exampleCanonical
		reference = createInstance(type: Reference.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		if nil == reference && !instCtx.containsKey("reference") {
			instCtx.addError(FHIRValidationError(missing: "reference"))
		}
		relativePath = createInstance(type: FHIRURL.self, for: "relativePath", in: json, context: &instCtx, owner: self) ?? relativePath
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.exampleBoolean?.decorate(json: &json, withKey: "exampleBoolean", errors: &errors)
		self.exampleCanonical?.decorate(json: &json, withKey: "exampleCanonical", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		if nil == self.reference {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		self.relativePath?.decorate(json: &json, withKey: "relativePath", errors: &errors)
	}
}

