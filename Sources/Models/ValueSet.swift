//
//  ValueSet.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/ValueSet) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A set of codes drawn from one or more code systems.
 *
 *  A value set specifies a set of codes drawn from one or more code systems.
 */
open class ValueSet: DomainResource {
	override open class var resourceType: String {
		get { return "ValueSet" }
	}
	
	/// Definition of the content of the value set (CLD).
	public var compose: ValueSetCompose?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the value set.
	public var description_fhir: String?
	
	/// Used when the value set is "expanded".
	public var expansion: ValueSetExpansion?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Whether this is intended to be used with an extensible binding.
	public var extensible: Bool?
	
	/// Additional identifier for the value set.
	public var identifier: [Identifier]?
	
	/// Indicates whether or not any change to the content logical definition may occur.
	public var immutable: Bool?
	
	/// Intended jurisdiction for value set (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this value set (Computer friendly).
	public var name: String?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this value set is defined.
	public var purpose: String?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Name for this value set (Human friendly).
	public var title: String?
	
	/// Logical uri to reference this value set (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the value set.
	public var version: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["compose"] {
			presentKeys.insert("compose")
			if let val = exist as? FHIRJSON {
				do {
					self.compose = try ValueSetCompose(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "compose"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "compose", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["expansion"] {
			presentKeys.insert("expansion")
			if let val = exist as? FHIRJSON {
				do {
					self.expansion = try ValueSetExpansion(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "expansion"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "expansion", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["extensible"] {
			presentKeys.insert("extensible")
			if let val = exist as? Bool {
				self.extensible = val
			}
			else {
				errors.append(FHIRValidationError(key: "extensible", wants: Bool.self, has: type(of: exist)))
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
		if let exist = json["immutable"] {
			presentKeys.insert("immutable")
			if let val = exist as? Bool {
				self.immutable = val
			}
			else {
				errors.append(FHIRValidationError(key: "immutable", wants: Bool.self, has: type(of: exist)))
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
				self.status = val
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
		
		if let compose = self.compose {
			json["compose"] = compose.asJSON(errors: &errors)
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
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let expansion = self.expansion {
			json["expansion"] = expansion.asJSON(errors: &errors)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let extensible = self.extensible {
			json["extensible"] = extensible.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let immutable = self.immutable {
			json["immutable"] = immutable.asJSON()
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
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
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Definition of the content of the value set (CLD).
 *
 *  A set of criteria that define the content logical definition of the value set by including or excluding codes from
 *  outside this value set. This I also known as the "Content Logical Definition" (CLD).
 */
open class ValueSetCompose: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetCompose" }
	}
	
	/// Explicitly exclude codes from a code system or other value sets.
	public var exclude: [ValueSetComposeInclude]?
	
	/// Include one or more codes from a code system or other value set(s).
	public var include: [ValueSetComposeInclude]?
	
	/// Fixed date for all referenced code systems and value sets.
	public var lockedDate: FHIRDate?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(include: [ValueSetComposeInclude]) {
		self.init()
		self.include = include
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["exclude"] {
			presentKeys.insert("exclude")
			if let val = exist as? [FHIRJSON] {
				do {
					self.exclude = try ValueSetComposeInclude.instantiate(fromArray: val, owner: self) as? [ValueSetComposeInclude]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "exclude"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "exclude", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["include"] {
			presentKeys.insert("include")
			if let val = exist as? [FHIRJSON] {
				do {
					self.include = try ValueSetComposeInclude.instantiate(fromArray: val, owner: self) as? [ValueSetComposeInclude]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "include"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "include", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "include"))
		}
		if let exist = json["lockedDate"] {
			presentKeys.insert("lockedDate")
			if let val = exist as? String {
				self.lockedDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lockedDate", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let exclude = self.exclude {
			json["exclude"] = exclude.map() { $0.asJSON(errors: &errors) }
		}
		if let include = self.include {
			json["include"] = include.map() { $0.asJSON(errors: &errors) }
		}
		if let lockedDate = self.lockedDate {
			json["lockedDate"] = lockedDate.asJSON()
		}
		
		return json
	}
}


/**
 *  Include one or more codes from a code system or other value set(s).
 */
open class ValueSetComposeInclude: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeInclude" }
	}
	
	/// A concept defined in the system.
	public var concept: [ValueSetComposeIncludeConcept]?
	
	/// Select codes/concepts by their properties (including relationships).
	public var filter: [ValueSetComposeIncludeFilter]?
	
	/// The system the codes come from.
	public var system: URL?
	
	/// Select only contents included in this value set.
	public var valueSet: [URL]?
	
	/// Specific version of the code system referred to.
	public var version: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["concept"] {
			presentKeys.insert("concept")
			if let val = exist as? [FHIRJSON] {
				do {
					self.concept = try ValueSetComposeIncludeConcept.instantiate(fromArray: val, owner: self) as? [ValueSetComposeIncludeConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "concept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "concept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["filter"] {
			presentKeys.insert("filter")
			if let val = exist as? [FHIRJSON] {
				do {
					self.filter = try ValueSetComposeIncludeFilter.instantiate(fromArray: val, owner: self) as? [ValueSetComposeIncludeFilter]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "filter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "filter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["system"] {
			presentKeys.insert("system")
			if let val = exist as? String {
				self.system = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "system", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSet"] {
			presentKeys.insert("valueSet")
			if let val = exist as? [String] {
				self.valueSet = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueSet", wants: Array<String>.self, has: type(of: exist)))
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
		
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON(errors: &errors) }
		}
		if let filter = self.filter {
			json["filter"] = filter.map() { $0.asJSON(errors: &errors) }
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let valueSet = self.valueSet {
			var arr = [Any]()
			for val in valueSet {
				arr.append(val.asJSON())
			}
			json["valueSet"] = arr
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  A concept defined in the system.
 *
 *  Specifies a concept to be included or excluded.
 */
open class ValueSetComposeIncludeConcept: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeIncludeConcept" }
	}
	
	/// Code or expression from system.
	public var code: String?
	
	/// Additional representations for this concept.
	public var designation: [ValueSetComposeIncludeConceptDesignation]?
	
	/// Text to display for this code for this value set.
	public var display: String?
	
	
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
		if let exist = json["designation"] {
			presentKeys.insert("designation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.designation = try ValueSetComposeIncludeConceptDesignation.instantiate(fromArray: val, owner: self) as? [ValueSetComposeIncludeConceptDesignation]
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let designation = self.designation {
			json["designation"] = designation.map() { $0.asJSON(errors: &errors) }
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		
		return json
	}
}


/**
 *  Additional representations for this concept.
 *
 *  Additional representations for this concept when used in this value set - other languages, aliases, specialized
 *  purposes, used for particular purposes, etc.
 */
open class ValueSetComposeIncludeConceptDesignation: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeIncludeConceptDesignation" }
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
 *  Select codes/concepts by their properties (including relationships).
 *
 *  Select concepts by specify a matching criteria based on the properties (including relationships) defined by the
 *  system. If multiple filters are specified, they SHALL all be true.
 */
open class ValueSetComposeIncludeFilter: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeIncludeFilter" }
	}
	
	/// = | is-a | is-not-a | regex | in | not-in | generalizes.
	public var op: String?
	
	/// A property defined by the code system.
	public var property: String?
	
	/// Code from the system, or regex criteria.
	public var value: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(op: String, property: String, value: String) {
		self.init()
		self.op = op
		self.property = property
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["op"] {
			presentKeys.insert("op")
			if let val = exist as? String {
				self.op = val
			}
			else {
				errors.append(FHIRValidationError(key: "op", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "op"))
		}
		if let exist = json["property"] {
			presentKeys.insert("property")
			if let val = exist as? String {
				self.property = val
			}
			else {
				errors.append(FHIRValidationError(key: "property", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "property"))
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
		
		if let op = self.op {
			json["op"] = op.asJSON()
		}
		if let property = self.property {
			json["property"] = property.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Used when the value set is "expanded".
 *
 *  A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This
 *  element holds the expansion, if it has been performed.
 */
open class ValueSetExpansion: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetExpansion" }
	}
	
	/// Codes in the value set.
	public var contains: [ValueSetExpansionContains]?
	
	/// Uniquely identifies this expansion.
	public var identifier: URL?
	
	/// Offset at which this resource starts.
	public var offset: Int?
	
	/// Parameter that controlled the expansion process.
	public var parameter: [ValueSetExpansionParameter]?
	
	/// Time ValueSet expansion happened.
	public var timestamp: DateTime?
	
	/// Total number of codes in the expansion.
	public var total: Int?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: URL, timestamp: DateTime) {
		self.init()
		self.identifier = identifier
		self.timestamp = timestamp
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contains"] {
			presentKeys.insert("contains")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contains = try ValueSetExpansionContains.instantiate(fromArray: val, owner: self) as? [ValueSetExpansionContains]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contains"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contains", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? String {
				self.identifier = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let exist = json["offset"] {
			presentKeys.insert("offset")
			if let val = exist as? Int {
				self.offset = val
			}
			else {
				errors.append(FHIRValidationError(key: "offset", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["parameter"] {
			presentKeys.insert("parameter")
			if let val = exist as? [FHIRJSON] {
				do {
					self.parameter = try ValueSetExpansionParameter.instantiate(fromArray: val, owner: self) as? [ValueSetExpansionParameter]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "parameter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "parameter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["timestamp"] {
			presentKeys.insert("timestamp")
			if let val = exist as? String {
				self.timestamp = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "timestamp", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "timestamp"))
		}
		if let exist = json["total"] {
			presentKeys.insert("total")
			if let val = exist as? Int {
				self.total = val
			}
			else {
				errors.append(FHIRValidationError(key: "total", wants: Int.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contains = self.contains {
			json["contains"] = contains.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let offset = self.offset {
			json["offset"] = offset.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = parameter.map() { $0.asJSON(errors: &errors) }
		}
		if let timestamp = self.timestamp {
			json["timestamp"] = timestamp.asJSON()
		}
		if let total = self.total {
			json["total"] = total.asJSON()
		}
		
		return json
	}
}


/**
 *  Codes in the value set.
 *
 *  The codes that are contained in the value set expansion.
 */
open class ValueSetExpansionContains: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetExpansionContains" }
	}
	
	/// If user cannot select this entry.
	public var abstract: Bool?
	
	/// Code - if blank, this is not a selectable code.
	public var code: String?
	
	/// Codes contained under this entry.
	public var contains: [ValueSetExpansionContains]?
	
	/// Additional representations for this item.
	public var designation: [ValueSetComposeIncludeConceptDesignation]?
	
	/// User display for the concept.
	public var display: String?
	
	/// System value for the code.
	public var system: URL?
	
	/// Version in which this code/display is defined.
	public var version: String?
	
	
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
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = val
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["contains"] {
			presentKeys.insert("contains")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contains = try ValueSetExpansionContains.instantiate(fromArray: val, owner: self) as? [ValueSetExpansionContains]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contains"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contains", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["designation"] {
			presentKeys.insert("designation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.designation = try ValueSetComposeIncludeConceptDesignation.instantiate(fromArray: val, owner: self) as? [ValueSetComposeIncludeConceptDesignation]
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
		if let exist = json["system"] {
			presentKeys.insert("system")
			if let val = exist as? String {
				self.system = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "system", wants: String.self, has: type(of: exist)))
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
		
		if let abstract = self.abstract {
			json["abstract"] = abstract.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let contains = self.contains {
			json["contains"] = contains.map() { $0.asJSON(errors: &errors) }
		}
		if let designation = self.designation {
			json["designation"] = designation.map() { $0.asJSON(errors: &errors) }
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Parameter that controlled the expansion process.
 *
 *  A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to
 *  check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
 */
open class ValueSetExpansionParameter: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetExpansionParameter" }
	}
	
	/// Name as assigned by the server.
	public var name: String?
	
	/// Value of the named parameter.
	public var valueBoolean: Bool?
	
	/// Value of the named parameter.
	public var valueCode: String?
	
	/// Value of the named parameter.
	public var valueDecimal: NSDecimalNumber?
	
	/// Value of the named parameter.
	public var valueInteger: Int?
	
	/// Value of the named parameter.
	public var valueString: String?
	
	/// Value of the named parameter.
	public var valueUri: URL?
	
	
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
		if let exist = json["valueDecimal"] {
			presentKeys.insert("valueDecimal")
			if let val = exist as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDecimal", wants: NSNumber.self, has: type(of: exist)))
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
		if let exist = json["valueUri"] {
			presentKeys.insert("valueUri")
			if let val = exist as? String {
				self.valueUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueUri", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}

