//
//  ImplementationGuide.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ImplementationGuide) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A set of rules about how FHIR is used.

A set of rules or how FHIR is used to solve a particular problem. This resource is used to gather all the parts of an
implementation guide into a logical whole, and to publish a computable definition of all the parts.
*/
open class ImplementationGuide: DomainResource {
	override open class var resourceType: String {
		get { return "ImplementationGuide" }
	}
	
	/// Image, css, script, etc..
	public var binary: [URL]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Another Implementation guide this depends on.
	public var dependency: [ImplementationGuideDependency]?
	
	/// Natural language description of the implementation guide.
	public var description_fhir: String?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// FHIR Version this Implementation Guide targets.
	public var fhirVersion: String?
	
	/// Profiles that apply globally.
	public var global: [ImplementationGuideGlobal]?
	
	/// Intended jurisdiction for implementation guide (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this implementation guide (Computer friendly).
	public var name: String?
	
	/// Group of resources as used in .page.package.
	public var package: [ImplementationGuidePackage]?
	
	/// Page/Section in the Guide.
	public var page: ImplementationGuidePage?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// The status of this implementation guide. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Logical uri to reference this implementation guide (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the implementation guide.
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
		if let exist = json["binary"] {
			presentKeys.insert("binary")
			if let val = exist as? [String] {
				self.binary = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "binary", wants: Array<String>.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["dependency"] {
			presentKeys.insert("dependency")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dependency = try ImplementationGuideDependency.instantiate(fromArray: val, owner: self) as? [ImplementationGuideDependency]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dependency"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dependency", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["fhirVersion"] {
			presentKeys.insert("fhirVersion")
			if let val = exist as? String {
				self.fhirVersion = val
			}
			else {
				errors.append(FHIRValidationError(key: "fhirVersion", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["global"] {
			presentKeys.insert("global")
			if let val = exist as? [FHIRJSON] {
				do {
					self.global = try ImplementationGuideGlobal.instantiate(fromArray: val, owner: self) as? [ImplementationGuideGlobal]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "global"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "global", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["package"] {
			presentKeys.insert("package")
			if let val = exist as? [FHIRJSON] {
				do {
					self.package = try ImplementationGuidePackage.instantiate(fromArray: val, owner: self) as? [ImplementationGuidePackage]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "package"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "package", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["page"] {
			presentKeys.insert("page")
			if let val = exist as? FHIRJSON {
				do {
					self.page = try ImplementationGuidePage(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "page"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "page", wants: FHIRJSON.self, has: type(of: exist)))
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
		
		if let binary = self.binary {
			json["binary"] = binary.map() { $0.asJSON() }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let dependency = self.dependency {
			json["dependency"] = dependency.map() { $0.asJSON(errors: &errors) }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fhirVersion = self.fhirVersion {
			json["fhirVersion"] = fhirVersion.asJSON()
		}
		if let global = self.global {
			json["global"] = global.map() { $0.asJSON(errors: &errors) }
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let package = self.package {
			json["package"] = package.map() { $0.asJSON(errors: &errors) }
		}
		if let page = self.page {
			json["page"] = page.asJSON(errors: &errors)
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
Another Implementation guide this depends on.

Another implementation guide that this implementation depends on. Typically, an implementation guide uses value sets,
profiles etc.defined in other implementation guides.
*/
open class ImplementationGuideDependency: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuideDependency" }
	}
	
	/// How the dependency is represented when the guide is published.
	public var type: GuideDependencyType?
	
	/// Where to find dependency.
	public var uri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: GuideDependencyType, uri: URL) {
		self.init()
		self.type = type
		self.uri = uri
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = GuideDependencyType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["uri"] {
			presentKeys.insert("uri")
			if let val = exist as? String {
				self.uri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "uri", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "uri"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let type = self.type {
			json["type"] = type.rawValue
		}
		if let uri = self.uri {
			json["uri"] = uri.asJSON()
		}
		
		return json
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
	public var profile: Reference?
	
	/// Type this profiles applies to.
	public var type: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(profile: Reference, type: String) {
		self.init()
		self.profile = profile
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? FHIRJSON {
				do {
					self.profile = try Reference(json: val, owner: self)
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
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let profile = self.profile {
			json["profile"] = profile.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
Group of resources as used in .page.package.

A logical group of resources. Logical groups can be used when building pages.
*/
open class ImplementationGuidePackage: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuidePackage" }
	}
	
	/// Human readable text describing the package.
	public var description_fhir: String?
	
	/// Name used .page.package.
	public var name: String?
	
	/// Resource in the implementation guide.
	public var resource: [ImplementationGuidePackageResource]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, resource: [ImplementationGuidePackageResource]) {
		self.init()
		self.name = name
		self.resource = resource
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
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? [FHIRJSON] {
				do {
					self.resource = try ImplementationGuidePackageResource.instantiate(fromArray: val, owner: self) as? [ImplementationGuidePackageResource]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "resource"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Resource in the implementation guide.

A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability
statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
*/
open class ImplementationGuidePackageResource: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuidePackageResource" }
	}
	
	/// Short code to identify the resource.
	public var acronym: String?
	
	/// Reason why included in guide.
	public var description_fhir: String?
	
	/// If not an example, has it's normal meaning.
	public var example: Bool?
	
	/// Resource this is an example of (if applicable).
	public var exampleFor: Reference?
	
	/// Human Name for the resource.
	public var name: String?
	
	/// Location of the resource.
	public var sourceReference: Reference?
	
	/// Location of the resource.
	public var sourceUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(example: Bool, source: Any) {
		self.init()
		self.example = example
		if let value = source as? URL {
			self.sourceUri = value
		}
		else if let value = source as? Reference {
			self.sourceReference = value
		}
		else {
			fhir_warn("Type “\(type(of: source))” for property “\(source)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["acronym"] {
			presentKeys.insert("acronym")
			if let val = exist as? String {
				self.acronym = val
			}
			else {
				errors.append(FHIRValidationError(key: "acronym", wants: String.self, has: type(of: exist)))
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
		if let exist = json["example"] {
			presentKeys.insert("example")
			if let val = exist as? Bool {
				self.example = val
			}
			else {
				errors.append(FHIRValidationError(key: "example", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "example"))
		}
		if let exist = json["exampleFor"] {
			presentKeys.insert("exampleFor")
			if let val = exist as? FHIRJSON {
				do {
					self.exampleFor = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "exampleFor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "exampleFor", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["sourceReference"] {
			presentKeys.insert("sourceReference")
			if let val = exist as? FHIRJSON {
				do {
					self.sourceReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "sourceReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "sourceReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sourceUri"] {
			presentKeys.insert("sourceUri")
			if let val = exist as? String {
				self.sourceUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "sourceUri", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.sourceUri && nil == self.sourceReference {
			errors.append(FHIRValidationError(missing: "source[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let acronym = self.acronym {
			json["acronym"] = acronym.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let example = self.example {
			json["example"] = example.asJSON()
		}
		if let exampleFor = self.exampleFor {
			json["exampleFor"] = exampleFor.asJSON(errors: &errors)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let sourceReference = self.sourceReference {
			json["sourceReference"] = sourceReference.asJSON(errors: &errors)
		}
		if let sourceUri = self.sourceUri {
			json["sourceUri"] = sourceUri.asJSON()
		}
		
		return json
	}
}


/**
Page/Section in the Guide.

A page / section in the implementation guide. The root page is the implementation guide home page.
*/
open class ImplementationGuidePage: BackboneElement {
	override open class var resourceType: String {
		get { return "ImplementationGuidePage" }
	}
	
	/// Format of the page (e.g. html, markdown, etc.).
	public var format: String?
	
	/// The kind of page that this is. Some pages are autogenerated (list, example), and other kinds are of interest so
	/// that tools can navigate the user to the page of interest.
	public var kind: GuidePageKind?
	
	/// Name of package to include.
	public var package: [String]?
	
	/// Nested Pages / Sections.
	public var page: [ImplementationGuidePage]?
	
	/// Where to find that page.
	public var source: URL?
	
	/// Short title shown for navigational assistance.
	public var title: String?
	
	/// Kind of resource to include in the list.
	public var type: [String]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(kind: GuidePageKind, source: URL, title: String) {
		self.init()
		self.kind = kind
		self.source = source
		self.title = title
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["format"] {
			presentKeys.insert("format")
			if let val = exist as? String {
				self.format = val
			}
			else {
				errors.append(FHIRValidationError(key: "format", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["kind"] {
			presentKeys.insert("kind")
			if let val = exist as? String {
				if let enumval = GuidePageKind(rawValue: val) {
					self.kind = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "kind", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "kind", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		if let exist = json["package"] {
			presentKeys.insert("package")
			if let val = exist as? [String] {
				self.package = val
			}
			else {
				errors.append(FHIRValidationError(key: "package", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["page"] {
			presentKeys.insert("page")
			if let val = exist as? [FHIRJSON] {
				do {
					self.page = try ImplementationGuidePage.instantiate(fromArray: val, owner: self) as? [ImplementationGuidePage]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "page"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "page", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["source"] {
			presentKeys.insert("source")
			if let val = exist as? String {
				self.source = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "source", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "source"))
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
		else {
			errors.append(FHIRValidationError(missing: "title"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? [String] {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let format = self.format {
			json["format"] = format.asJSON()
		}
		if let kind = self.kind {
			json["kind"] = kind.rawValue
		}
		if let package = self.package {
			json["package"] = package.map() { $0.asJSON() }
		}
		if let page = self.page {
			json["page"] = page.map() { $0.asJSON(errors: &errors) }
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON() }
		}
		
		return json
	}
}

