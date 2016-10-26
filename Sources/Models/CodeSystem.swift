//
//  CodeSystem.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/CodeSystem) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A set of codes drawn from one or more code systems.
 *
 *  A code system resource specifies a set of codes drawn from one or more code systems.
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
	
	/// not-present | examplar | fragment | complete.
	public var content: String?
	
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
	
	/// grouped-by | subsumes | part-of | classified-with.
	public var hierarchyMeaning: String?
	
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
	
	/// draft | active | retired.
	public var status: String?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: String, status: String) {
		self.init(json: nil)
		self.content = content
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["caseSensitive"] {
				presentKeys.insert("caseSensitive")
				if let val = exist as? Bool {
					self.caseSensitive = val
				}
				else {
					errors.append(FHIRJSONError(key: "caseSensitive", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["compositional"] {
				presentKeys.insert("compositional")
				if let val = exist as? Bool {
					self.compositional = val
				}
				else {
					errors.append(FHIRJSONError(key: "compositional", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["concept"] {
				presentKeys.insert("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = CodeSystemConcept.instantiate(fromArray: val, owner: self) as? [CodeSystemConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "concept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["content"] {
				presentKeys.insert("content")
				if let val = exist as? String {
					self.content = val
				}
				else {
					errors.append(FHIRJSONError(key: "content", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "content"))
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
			if let exist = js["count"] {
				presentKeys.insert("count")
				if let val = exist as? UInt {
					self.count = val
				}
				else {
					errors.append(FHIRJSONError(key: "count", wants: UInt.self, has: type(of: exist)))
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
			if let exist = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["filter"] {
				presentKeys.insert("filter")
				if let val = exist as? [FHIRJSON] {
					self.filter = CodeSystemFilter.instantiate(fromArray: val, owner: self) as? [CodeSystemFilter]
				}
				else {
					errors.append(FHIRJSONError(key: "filter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["hierarchyMeaning"] {
				presentKeys.insert("hierarchyMeaning")
				if let val = exist as? String {
					self.hierarchyMeaning = val
				}
				else {
					errors.append(FHIRJSONError(key: "hierarchyMeaning", wants: String.self, has: type(of: exist)))
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
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["property"] {
				presentKeys.insert("property")
				if let val = exist as? [FHIRJSON] {
					self.property = CodeSystemProperty.instantiate(fromArray: val, owner: self) as? [CodeSystemProperty]
				}
				else {
					errors.append(FHIRJSONError(key: "property", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueSet"] {
				presentKeys.insert("valueSet")
				if let val = exist as? String {
					self.valueSet = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSet", wants: String.self, has: type(of: exist)))
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
			if let exist = js["versionNeeded"] {
				presentKeys.insert("versionNeeded")
				if let val = exist as? Bool {
					self.versionNeeded = val
				}
				else {
					errors.append(FHIRJSONError(key: "versionNeeded", wants: Bool.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let caseSensitive = self.caseSensitive {
			json["caseSensitive"] = caseSensitive.asJSON()
		}
		if let compositional = self.compositional {
			json["compositional"] = compositional.asJSON()
		}
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON() }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let content = self.content {
			json["content"] = content.asJSON()
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
			json["filter"] = filter.map() { $0.asJSON() }
		}
		if let hierarchyMeaning = self.hierarchyMeaning {
			json["hierarchyMeaning"] = hierarchyMeaning.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let property = self.property {
			json["property"] = property.map() { $0.asJSON() }
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
			json["useContext"] = useContext.map() { $0.asJSON() }
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
 *  Concepts in the code system.
 *
 *  Concepts that are in the code system. The concept definitions are inherently hierarchical, but the definitions must
 *  be consulted to determine what the meaning of the hierarchical relationships are.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String) {
		self.init(json: nil)
		self.code = code
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["concept"] {
				presentKeys.insert("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = CodeSystemConcept.instantiate(fromArray: val, owner: self) as? [CodeSystemConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "concept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? String {
					self.definition = val
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["designation"] {
				presentKeys.insert("designation")
				if let val = exist as? [FHIRJSON] {
					self.designation = CodeSystemConceptDesignation.instantiate(fromArray: val, owner: self) as? [CodeSystemConceptDesignation]
				}
				else {
					errors.append(FHIRJSONError(key: "designation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["display"] {
				presentKeys.insert("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(FHIRJSONError(key: "display", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["property"] {
				presentKeys.insert("property")
				if let val = exist as? [FHIRJSON] {
					self.property = CodeSystemConceptProperty.instantiate(fromArray: val, owner: self) as? [CodeSystemConceptProperty]
				}
				else {
					errors.append(FHIRJSONError(key: "property", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON() }
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let designation = self.designation {
			json["designation"] = designation.map() { $0.asJSON() }
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let property = self.property {
			json["property"] = property.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Additional representations for the concept.
 *
 *  Additional representations for the concept - other languages, aliases, specialized purposes, used for particular
 *  purposes, etc.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: String) {
		self.init(json: nil)
		self.value = value
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? FHIRJSON {
					self.use = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: FHIRJSON.self, has: type(of: exist)))
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
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Property value for the concept.
 *
 *  A property value for this concept.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, valueBoolean: Bool, valueCode: String, valueCoding: Coding, valueDateTime: DateTime, valueInteger: Int, valueString: String) {
		self.init(json: nil)
		self.code = code
		self.valueBoolean = valueBoolean
		self.valueCode = valueCode
		self.valueCoding = valueCoding
		self.valueDateTime = valueDateTime
		self.valueInteger = valueInteger
		self.valueString = valueString
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["valueBoolean"] {
				presentKeys.insert("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueCode"] {
				presentKeys.insert("valueCode")
				if let val = exist as? String {
					self.valueCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueCode", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueCoding"] {
				presentKeys.insert("valueCoding")
				if let val = exist as? FHIRJSON {
					self.valueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueDateTime"] {
				presentKeys.insert("valueDateTime")
				if let val = exist as? String {
					self.valueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueInteger"] {
				presentKeys.insert("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.valueCode && nil == self.valueCoding && nil == self.valueString && nil == self.valueInteger && nil == self.valueBoolean && nil == self.valueDateTime {
				errors.append(FHIRJSONError(key: "value*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
			json["valueCoding"] = valueCoding.asJSON()
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
 *  Filter that can be used in a value set.
 *
 *  A filter that can be used in a value set compose statement when selecting concepts using a filter.
 */
open class CodeSystemFilter: BackboneElement {
	override open class var resourceType: String {
		get { return "CodeSystemFilter" }
	}
	
	/// Code that identifies the filter.
	public var code: String?
	
	/// How or why the filter is used.
	public var description_fhir: String?
	
	/// Operators that can be used with filter.
	public var operator_fhir: [String]?
	
	/// What to use for the value.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, operator_fhir: [String], value: String) {
		self.init(json: nil)
		self.code = code
		self.operator_fhir = operator_fhir
		self.value = value
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
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
			if let exist = js["operator"] {
				presentKeys.insert("operator")
				if let val = exist as? [String] {
					self.operator_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "operator", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "operator"))
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
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let operator_fhir = self.operator_fhir {
			var arr = [Any]()
			for val in operator_fhir {
				arr.append(val.asJSON())
			}
			json["operator"] = arr
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Additional information supplied about each concept.
 *
 *  A property defines an additional slot through which additional information can be provided about a concept.
 */
open class CodeSystemProperty: BackboneElement {
	override open class var resourceType: String {
		get { return "CodeSystemProperty" }
	}
	
	/// Identifies the property on the concepts, and when referred to in operations.
	public var code: String?
	
	/// Why the property is defined, and/or what it conveys.
	public var description_fhir: String?
	
	/// code | Coding | string | integer | boolean | dateTime.
	public var type: String?
	
	/// Formal identifier for the property.
	public var uri: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, type: String) {
		self.init(json: nil)
		self.code = code
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
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
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["uri"] {
				presentKeys.insert("uri")
				if let val = exist as? String {
					self.uri = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "uri", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let uri = self.uri {
			json["uri"] = uri.asJSON()
		}
		
		return json
	}
}

