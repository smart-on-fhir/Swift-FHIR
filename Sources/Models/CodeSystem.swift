//
//  CodeSystem.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/CodeSystem) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A set of codes drawn from one or more code systems.

A code system resource specifies a set of codes drawn from one or more code systems.
*/
open class CodeSystem: DomainResource {
	override open class var resourceType: String {
		get { return "CodeSystem" }
	}
	
	/// If code comparison is case sensitive.
	public var caseSensitive: Bool?
	
	/// If code system defines a post-composition grammar.
	public var compositional: Bool?
	
	/// Concepts in the code system.
	public var concept: [CodeSystemConcept]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// How much of the content of the code system - the concepts and codes it defines - are represented in this
	/// resource.
	public var content: CodeSystemContentMode?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Total concepts in the code system.
	public var count: UInt?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the code system.
	public var description_fhir: String?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Filter that can be used in a value set.
	public var filter: [CodeSystemFilter]?
	
	/// The meaning of the heirarchy of concepts.
	public var hierarchyMeaning: CodeSystemHierarchyMeaning?
	
	/// Additional identifier for the code system.
	public var identifier: Identifier?
	
	/// Intended jurisdiction for code system (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this code system (Computer friendly).
	public var name: String?
	
	/// Additional information supplied about each concept.
	public var property: [CodeSystemProperty]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this code system is defined.
	public var purpose: String?
	
	/// The status of this code system. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this code system (Human friendly).
	public var title: String?
	
	/// Logical uri to reference this code system (globally unique) (Coding.system).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Canonical URL for value set with entire code system.
	public var valueSet: URL?
	
	/// Business version of the code system (Coding.version).
	public var version: String?
	
	/// If definitions are not stable.
	public var versionNeeded: Bool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: CodeSystemContentMode, status: PublicationStatus) {
		self.init()
		self.content = content
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["caseSensitive"] {
			presentKeys.insert("caseSensitive")
			if let val = exist as? Bool {
				self.caseSensitive = val
			}
			else {
				errors.append(FHIRValidationError(key: "caseSensitive", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["compositional"] {
			presentKeys.insert("compositional")
			if let val = exist as? Bool {
				self.compositional = val
			}
			else {
				errors.append(FHIRValidationError(key: "compositional", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["concept"] {
			presentKeys.insert("concept")
			if let val = exist as? [FHIRJSON] {
				do {
					self.concept = try CodeSystemConcept.instantiate(fromArray: val, owner: self) as? [CodeSystemConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "concept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "concept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["content"] {
			presentKeys.insert("content")
			if let val = exist as? String {
				if let enumval = CodeSystemContentMode(rawValue: val) {
					self.content = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "content", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "content", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "content"))
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
		if let exist = json["count"] {
			presentKeys.insert("count")
			if let val = exist as? UInt {
				self.count = val
			}
			else {
				errors.append(FHIRValidationError(key: "count", wants: UInt.self, has: type(of: exist)))
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
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["filter"] {
			presentKeys.insert("filter")
			if let val = exist as? [FHIRJSON] {
				do {
					self.filter = try CodeSystemFilter.instantiate(fromArray: val, owner: self) as? [CodeSystemFilter]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "filter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "filter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["hierarchyMeaning"] {
			presentKeys.insert("hierarchyMeaning")
			if let val = exist as? String {
				if let enumval = CodeSystemHierarchyMeaning(rawValue: val) {
					self.hierarchyMeaning = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "hierarchyMeaning", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "hierarchyMeaning", wants: String.self, has: type(of: exist)))
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
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["property"] {
			presentKeys.insert("property")
			if let val = exist as? [FHIRJSON] {
				do {
					self.property = try CodeSystemProperty.instantiate(fromArray: val, owner: self) as? [CodeSystemProperty]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "property"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "property", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["valueSet"] {
			presentKeys.insert("valueSet")
			if let val = exist as? String {
				self.valueSet = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueSet", wants: String.self, has: type(of: exist)))
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
		if let exist = json["versionNeeded"] {
			presentKeys.insert("versionNeeded")
			if let val = exist as? Bool {
				self.versionNeeded = val
			}
			else {
				errors.append(FHIRValidationError(key: "versionNeeded", wants: Bool.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let caseSensitive = self.caseSensitive {
			json["caseSensitive"] = caseSensitive.asJSON()
		}
		if let compositional = self.compositional {
			json["compositional"] = compositional.asJSON()
		}
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON(errors: &errors) }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let content = self.content {
			json["content"] = content.rawValue
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let count = self.count {
			json["count"] = count.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let filter = self.filter {
			json["filter"] = filter.map() { $0.asJSON(errors: &errors) }
		}
		if let hierarchyMeaning = self.hierarchyMeaning {
			json["hierarchyMeaning"] = hierarchyMeaning.rawValue
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let property = self.property {
			json["property"] = property.map() { $0.asJSON(errors: &errors) }
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
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
		if let valueSet = self.valueSet {
			json["valueSet"] = valueSet.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		if let versionNeeded = self.versionNeeded {
			json["versionNeeded"] = versionNeeded.asJSON()
		}
		
		return json
	}
}


/**
Concepts in the code system.

Concepts that are in the code system. The concept definitions are inherently hierarchical, but the definitions must be
consulted to determine what the meaning of the hierarchical relationships are.
*/
open class CodeSystemConcept: BackboneElement {
	override open class var resourceType: String {
		get { return "CodeSystemConcept" }
	}
	
	/// Code that identifies concept.
	public var code: String?
	
	/// Child Concepts (is-a/contains/categorizes).
	public var concept: [CodeSystemConcept]?
	
	/// Formal definition.
	public var definition: String?
	
	/// Additional representations for the concept.
	public var designation: [CodeSystemConceptDesignation]?
	
	/// Text to display to the user.
	public var display: String?
	
	/// Property value for the concept.
	public var property: [CodeSystemConceptProperty]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = val
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["concept"] {
			presentKeys.insert("concept")
			if let val = exist as? [FHIRJSON] {
				do {
					self.concept = try CodeSystemConcept.instantiate(fromArray: val, owner: self) as? [CodeSystemConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "concept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "concept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? String {
				self.definition = val
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["designation"] {
			presentKeys.insert("designation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.designation = try CodeSystemConceptDesignation.instantiate(fromArray: val, owner: self) as? [CodeSystemConceptDesignation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "designation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "designation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["display"] {
			presentKeys.insert("display")
			if let val = exist as? String {
				self.display = val
			}
			else {
				errors.append(FHIRValidationError(key: "display", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["property"] {
			presentKeys.insert("property")
			if let val = exist as? [FHIRJSON] {
				do {
					self.property = try CodeSystemConceptProperty.instantiate(fromArray: val, owner: self) as? [CodeSystemConceptProperty]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "property"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "property", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON(errors: &errors) }
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let designation = self.designation {
			json["designation"] = designation.map() { $0.asJSON(errors: &errors) }
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let property = self.property {
			json["property"] = property.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Additional representations for the concept.

Additional representations for the concept - other languages, aliases, specialized purposes, used for particular
purposes, etc.
*/
open class CodeSystemConceptDesignation: BackboneElement {
	override open class var resourceType: String {
		get { return "CodeSystemConceptDesignation" }
	}
	
	/// Human language of the designation.
	public var language: String?
	
	/// Details how this designation would be used.
	public var use: Coding?
	
	/// The text value for this designation.
	public var value: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: String) {
		self.init()
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? String {
				self.language = val
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["use"] {
			presentKeys.insert("use")
			if let val = exist as? FHIRJSON {
				do {
					self.use = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "use"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "use", wants: FHIRJSON.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "value"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON(errors: &errors)
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
Property value for the concept.

A property value for this concept.
*/
open class CodeSystemConceptProperty: BackboneElement {
	override open class var resourceType: String {
		get { return "CodeSystemConceptProperty" }
	}
	
	/// Reference to CodeSystem.property.code.
	public var code: String?
	
	/// Value of the property for this concept.
	public var valueBoolean: Bool?
	
	/// Value of the property for this concept.
	public var valueCode: String?
	
	/// Value of the property for this concept.
	public var valueCoding: Coding?
	
	/// Value of the property for this concept.
	public var valueDateTime: DateTime?
	
	/// Value of the property for this concept.
	public var valueInteger: Int?
	
	/// Value of the property for this concept.
	public var valueString: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, value: Any) {
		self.init()
		self.code = code
		if let value = value as? String {
			self.valueCode = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else if let value = value as? String {
			self.valueString = value
		}
		else if let value = value as? Int {
			self.valueInteger = value
		}
		else if let value = value as? Bool {
			self.valueBoolean = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = val
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["valueBoolean"] {
			presentKeys.insert("valueBoolean")
			if let val = exist as? Bool {
				self.valueBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCode"] {
			presentKeys.insert("valueCode")
			if let val = exist as? String {
				self.valueCode = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCoding"] {
			presentKeys.insert("valueCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDateTime"] {
			presentKeys.insert("valueDateTime")
			if let val = exist as? String {
				self.valueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInteger"] {
			presentKeys.insert("valueInteger")
			if let val = exist as? Int {
				self.valueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueCode && nil == self.valueCoding && nil == self.valueString && nil == self.valueInteger && nil == self.valueBoolean && nil == self.valueDateTime {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON(errors: &errors)
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		
		return json
	}
}


/**
Filter that can be used in a value set.

A filter that can be used in a value set compose statement when selecting concepts using a filter.
*/
open class CodeSystemFilter: BackboneElement {
	override open class var resourceType: String {
		get { return "CodeSystemFilter" }
	}
	
	/// Code that identifies the filter.
	public var code: String?
	
	/// How or why the filter is used.
	public var description_fhir: String?
	
	/// A list of operators that can be used with the filter.
	public var operator_fhir: [FilterOperator]?
	
	/// What to use for the value.
	public var value: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, operator_fhir: [FilterOperator], value: String) {
		self.init()
		self.code = code
		self.operator_fhir = operator_fhir
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = val
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
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
		if let exist = json["operator"] {
			presentKeys.insert("operator")
			if let val = exist as? [String] { var i = -1
				self.operator_fhir = val.map() { i += 1
					if let enumval = FilterOperator(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "operator_fhir.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "operator", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "operator"))
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
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let operator_fhir = self.operator_fhir {
			json["operator"] = operator_fhir.map() { $0.rawValue }
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
Additional information supplied about each concept.

A property defines an additional slot through which additional information can be provided about a concept.
*/
open class CodeSystemProperty: BackboneElement {
	override open class var resourceType: String {
		get { return "CodeSystemProperty" }
	}
	
	/// Identifies the property on the concepts, and when referred to in operations.
	public var code: String?
	
	/// Why the property is defined, and/or what it conveys.
	public var description_fhir: String?
	
	/// The type of the property value. Properties of type "code" contain a code defined by the code system (e.g. a
	/// reference to anotherr defined concept).
	public var type: PropertyType?
	
	/// Formal identifier for the property.
	public var uri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, type: PropertyType) {
		self.init()
		self.code = code
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = val
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
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
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = PropertyType(rawValue: val) {
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		if let uri = self.uri {
			json["uri"] = uri.asJSON()
		}
		
		return json
	}
}

