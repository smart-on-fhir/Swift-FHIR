//
//  StructureDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/StructureDefinition) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Structural Definition.

A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in
FHIR, and also for describing extensions, and constraints on resources and data types.
*/
open class StructureDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "StructureDefinition" }
	}
	
	/// Whether the structure is abstract.
	public var abstract: Bool?
	
	/// Definition that this type is constrained/specialized from.
	public var baseDefinition: URL?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Where the extension can be used in instances.
	public var context: [FHIRString]?
	
	/// FluentPath invariants - when the extension can be used.
	public var contextInvariant: [FHIRString]?
	
	/// If this is an extension, Identifies the context within FHIR resources where the extension can be used.
	public var contextType: ExtensionContext?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// How the type relates to the baseDefinition.
	public var derivation: TypeDerivationRule?
	
	/// Natural language description of the structure definition.
	public var description_fhir: FHIRString?
	
	/// Differential view of the structure.
	public var differential: StructureDefinitionDifferential?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// FHIR Version this StructureDefinition targets.
	public var fhirVersion: FHIRString?
	
	/// Additional identifier for the structure definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for structure definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Assist with indexing and finding.
	public var keyword: [Coding]?
	
	/// Defines the kind of structure that this definition is describing.
	public var kind: StructureDefinitionKind?
	
	/// External specification that the content is mapped to.
	public var mapping: [StructureDefinitionMapping]?
	
	/// Name for this structure definition (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this structure definition is defined.
	public var purpose: FHIRString?
	
	/// Snapshot view of the structure.
	public var snapshot: StructureDefinitionSnapshot?
	
	/// The status of this structure definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this structure definition (Human friendly).
	public var title: FHIRString?
	
	/// Type defined or constrained by this structure.
	public var type: FHIRString?
	
	/// Logical uri to reference this structure definition (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the structure definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(abstract: Bool, kind: StructureDefinitionKind, name: FHIRString, status: PublicationStatus, type: FHIRString, url: URL) {
		self.init()
		self.abstract = abstract
		self.kind = kind
		self.name = name
		self.status = status
		self.type = type
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["abstract"] {
			presentKeys.insert("abstract")
			if let val = exist as? Bool {
				self.abstract = val
			}
			else {
				errors.append(FHIRValidationError(key: "abstract", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "abstract"))
		}
		if let exist = json["baseDefinition"] {
			presentKeys.insert("baseDefinition")
			if let val = exist as? String {
				self.baseDefinition = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "baseDefinition", wants: String.self, has: type(of: exist)))
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
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? [String] {
				self.context = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["contextInvariant"] {
			presentKeys.insert("contextInvariant")
			if let val = exist as? [String] {
				self.contextInvariant = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "contextInvariant", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["contextType"] {
			presentKeys.insert("contextType")
			if let val = exist as? String {
				if let enumval = ExtensionContext(rawValue: val) {
					self.contextType = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "contextType", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contextType", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["copyright"] {
			presentKeys.insert("copyright")
			if let val = exist as? String {
				self.copyright = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "copyright", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["derivation"] {
			presentKeys.insert("derivation")
			if let val = exist as? String {
				if let enumval = TypeDerivationRule(rawValue: val) {
					self.derivation = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "derivation", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "derivation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["differential"] {
			presentKeys.insert("differential")
			if let val = exist as? FHIRJSON {
				do {
					self.differential = try StructureDefinitionDifferential(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "differential"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "differential", wants: FHIRJSON.self, has: type(of: exist)))
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
				self.fhirVersion = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fhirVersion", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["keyword"] {
			presentKeys.insert("keyword")
			if let val = exist as? [FHIRJSON] {
				do {
					self.keyword = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "keyword"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "keyword", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["kind"] {
			presentKeys.insert("kind")
			if let val = exist as? String {
				if let enumval = StructureDefinitionKind(rawValue: val) {
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
		if let exist = json["mapping"] {
			presentKeys.insert("mapping")
			if let val = exist as? [FHIRJSON] {
				do {
					self.mapping = try StructureDefinitionMapping.instantiate(fromArray: val, owner: self) as? [StructureDefinitionMapping]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "mapping"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mapping", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["snapshot"] {
			presentKeys.insert("snapshot")
			if let val = exist as? FHIRJSON {
				do {
					self.snapshot = try StructureDefinitionSnapshot(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "snapshot"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "snapshot", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
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
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let abstract = self.abstract {
			json["abstract"] = abstract.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "abstract"))
		}
		if let baseDefinition = self.baseDefinition {
			json["baseDefinition"] = baseDefinition.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let context = self.context {
			json["context"] = context.map() { $0.asJSON() }
		}
		if let contextInvariant = self.contextInvariant {
			json["contextInvariant"] = contextInvariant.map() { $0.asJSON() }
		}
		if let contextType = self.contextType {
			json["contextType"] = contextType.rawValue
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let derivation = self.derivation {
			json["derivation"] = derivation.rawValue
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let differential = self.differential {
			json["differential"] = differential.asJSON(errors: &errors)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fhirVersion = self.fhirVersion {
			json["fhirVersion"] = fhirVersion.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let keyword = self.keyword {
			json["keyword"] = keyword.map() { $0.asJSON(errors: &errors) }
		}
		if let kind = self.kind {
			json["kind"] = kind.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		if let mapping = self.mapping {
			json["mapping"] = mapping.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let snapshot = self.snapshot {
			json["snapshot"] = snapshot.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
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
Differential view of the structure.

A differential view is expressed relative to the base StructureDefinition - a statement of differences that it applies.
*/
open class StructureDefinitionDifferential: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureDefinitionDifferential" }
	}
	
	/// Definition of elements in the resource (if no StructureDefinition).
	public var element: [ElementDefinition]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(element: [ElementDefinition]) {
		self.init()
		self.element = element
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["element"] {
			presentKeys.insert("element")
			if let val = exist as? [FHIRJSON] {
				do {
					self.element = try ElementDefinition.instantiate(fromArray: val, owner: self) as? [ElementDefinition]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "element"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "element", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "element"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let element = self.element {
			json["element"] = element.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "element"))
		}
		
		return json
	}
}


/**
External specification that the content is mapped to.

An external specification that the content is mapped to.
*/
open class StructureDefinitionMapping: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureDefinitionMapping" }
	}
	
	/// Versions, Issues, Scope limitations etc..
	public var comments: FHIRString?
	
	/// Internal id when this mapping is used.
	public var identity: FHIRString?
	
	/// Names what this mapping refers to.
	public var name: FHIRString?
	
	/// Identifies what this mapping refers to.
	public var uri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identity: FHIRString) {
		self.init()
		self.identity = identity
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["comments"] {
			presentKeys.insert("comments")
			if let val = exist as? String {
				self.comments = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "comments", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identity"] {
			presentKeys.insert("identity")
			if let val = exist as? String {
				self.identity = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "identity", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "identity"))
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["uri"] {
			presentKeys.insert("uri")
			if let val = exist as? String {
				self.uri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "uri", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let identity = self.identity {
			json["identity"] = identity.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "identity"))
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let uri = self.uri {
			json["uri"] = uri.asJSON()
		}
		
		return json
	}
}


/**
Snapshot view of the structure.

A snapshot view is expressed in a stand alone form that can be used and interpreted without considering the base
StructureDefinition.
*/
open class StructureDefinitionSnapshot: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureDefinitionSnapshot" }
	}
	
	/// Definition of elements in the resource (if no StructureDefinition).
	public var element: [ElementDefinition]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(element: [ElementDefinition]) {
		self.init()
		self.element = element
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["element"] {
			presentKeys.insert("element")
			if let val = exist as? [FHIRJSON] {
				do {
					self.element = try ElementDefinition.instantiate(fromArray: val, owner: self) as? [ElementDefinition]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "element"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "element", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "element"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let element = self.element {
			json["element"] = element.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "element"))
		}
		
		return json
	}
}

