//
//  StructureMap.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/StructureMap) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A Map of relationships between 2 structures that can be used to transform data.
*/
open class StructureMap: DomainResource {
	override open class var resourceType: String {
		get { return "StructureMap" }
	}
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the structure map.
	public var description_fhir: String?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Named sections for reader convenience.
	public var group: [StructureMapGroup]?
	
	/// Additional identifier for the structure map.
	public var identifier: [Identifier]?
	
	/// Other maps used by this map (canonical URLs).
	public var import_fhir: [URL]?
	
	/// Intended jurisdiction for structure map (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this structure map (Computer friendly).
	public var name: String?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this structure map is defined.
	public var purpose: String?
	
	/// The status of this structure map. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Structure Definition used by this map.
	public var structure: [StructureMapStructure]?
	
	/// Name for this structure map (Human friendly).
	public var title: String?
	
	/// Logical uri to reference this structure map (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the structure map.
	public var version: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(group: [StructureMapGroup], name: String, status: PublicationStatus, url: URL) {
		self.init()
		self.group = group
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
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["group"] {
			presentKeys.insert("group")
			if let val = exist as? [FHIRJSON] {
				do {
					self.group = try StructureMapGroup.instantiate(fromArray: val, owner: self) as? [StructureMapGroup]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "group"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "group", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "group"))
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
		if let exist = json["import"] {
			presentKeys.insert("import")
			if let val = exist as? [String] {
				self.import_fhir = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "import", wants: Array<String>.self, has: type(of: exist)))
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
		if let exist = json["structure"] {
			presentKeys.insert("structure")
			if let val = exist as? [FHIRJSON] {
				do {
					self.structure = try StructureMapStructure.instantiate(fromArray: val, owner: self) as? [StructureMapStructure]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "structure"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "structure", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let group = self.group {
			json["group"] = group.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let import_fhir = self.import_fhir {
			json["import"] = import_fhir.map() { $0.asJSON() }
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
			json["status"] = status.rawValue
		}
		if let structure = self.structure {
			json["structure"] = structure.map() { $0.asJSON(errors: &errors) }
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
Named sections for reader convenience.
*/
open class StructureMapGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroup" }
	}
	
	/// Documentation for this group.
	public var documentation: String?
	
	/// Another group that this group adds rules to.
	public var extends: String?
	
	/// Named instance provided when invoking the map.
	public var input: [StructureMapGroupInput]?
	
	/// Descriptive name for a user.
	public var name: String?
	
	/// Transform Rule from source to target.
	public var rule: [StructureMapGroupRule]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(input: [StructureMapGroupInput], name: String, rule: [StructureMapGroupRule]) {
		self.init()
		self.input = input
		self.name = name
		self.rule = rule
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["extends"] {
			presentKeys.insert("extends")
			if let val = exist as? String {
				self.extends = val
			}
			else {
				errors.append(FHIRValidationError(key: "extends", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["input"] {
			presentKeys.insert("input")
			if let val = exist as? [FHIRJSON] {
				do {
					self.input = try StructureMapGroupInput.instantiate(fromArray: val, owner: self) as? [StructureMapGroupInput]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "input"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "input", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "input"))
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
		if let exist = json["rule"] {
			presentKeys.insert("rule")
			if let val = exist as? [FHIRJSON] {
				do {
					self.rule = try StructureMapGroupRule.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRule]
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
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let extends = self.extends {
			json["extends"] = extends.asJSON()
		}
		if let input = self.input {
			json["input"] = input.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Named instance provided when invoking the map.

A name assigned to an instance of data. The instance must be provided when the mapping is invoked.
*/
open class StructureMapGroupInput: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroupInput" }
	}
	
	/// Documentation for this instance of data.
	public var documentation: String?
	
	/// Mode for this instance of data.
	public var mode: StructureMapInputMode?
	
	/// Name for this instance of data.
	public var name: String?
	
	/// Type for this instance of data.
	public var type: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: StructureMapInputMode, name: String) {
		self.init()
		self.mode = mode
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				if let enumval = StructureMapInputMode(rawValue: val) {
					self.mode = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "mode", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
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
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.rawValue
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
Transform Rule from source to target.
*/
open class StructureMapGroupRule: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroupRule" }
	}
	
	/// Which other rules to apply in the context of this rule.
	public var dependent: [StructureMapGroupRuleDependent]?
	
	/// Documentation for this instance of data.
	public var documentation: String?
	
	/// Name of the rule for internal references.
	public var name: String?
	
	/// Rules contained in this rule.
	public var rule: [StructureMapGroupRule]?
	
	/// Source inputs to the mapping.
	public var source: [StructureMapGroupRuleSource]?
	
	/// Content to create because of this mapping rule.
	public var target: [StructureMapGroupRuleTarget]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, source: [StructureMapGroupRuleSource]) {
		self.init()
		self.name = name
		self.source = source
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["dependent"] {
			presentKeys.insert("dependent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dependent = try StructureMapGroupRuleDependent.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRuleDependent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dependent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dependent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
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
		if let exist = json["rule"] {
			presentKeys.insert("rule")
			if let val = exist as? [FHIRJSON] {
				do {
					self.rule = try StructureMapGroupRule.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRule]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rule"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["source"] {
			presentKeys.insert("source")
			if let val = exist as? [FHIRJSON] {
				do {
					self.source = try StructureMapGroupRuleSource.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRuleSource]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "source"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "source", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "source"))
		}
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? [FHIRJSON] {
				do {
					self.target = try StructureMapGroupRuleTarget.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRuleTarget]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "target"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let dependent = self.dependent {
			json["dependent"] = dependent.map() { $0.asJSON(errors: &errors) }
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON(errors: &errors) }
		}
		if let source = self.source {
			json["source"] = source.map() { $0.asJSON(errors: &errors) }
		}
		if let target = self.target {
			json["target"] = target.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Which other rules to apply in the context of this rule.
*/
open class StructureMapGroupRuleDependent: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroupRuleDependent" }
	}
	
	/// Name of a rule or group to apply.
	public var name: String?
	
	/// Names of variables to pass to the rule or group.
	public var variable: [String]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, variable: [String]) {
		self.init()
		self.name = name
		self.variable = variable
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
		if let exist = json["variable"] {
			presentKeys.insert("variable")
			if let val = exist as? [String] {
				self.variable = val
			}
			else {
				errors.append(FHIRValidationError(key: "variable", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "variable"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let variable = self.variable {
			json["variable"] = variable.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
Source inputs to the mapping.
*/
open class StructureMapGroupRuleSource: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroupRuleSource" }
	}
	
	/// FluentPath expression  - must be true or the mapping engine throws an error instead of completing.
	public var check: String?
	
	/// FluentPath expression  - must be true or the rule does not apply.
	public var condition: String?
	
	/// Type or variable this rule applies to.
	public var context: String?
	
	/// How to interpret the context.
	public var contextType: StructureMapContextType?
	
	/// Optional field for this source.
	public var element: String?
	
	/// How to handle the list mode for this element.
	public var listMode: StructureMapListMode?
	
	/// Specified maximum cardinality (number or *).
	public var max: String?
	
	/// Specified minimum cardinality.
	public var min: Int?
	
	/// Whether this rule applies if the source isn't found.
	public var required: Bool?
	
	/// Type for this source.
	public var type: String?
	
	/// Named context for field, if a field is specified.
	public var variable: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(context: String, contextType: StructureMapContextType, required: Bool) {
		self.init()
		self.context = context
		self.contextType = contextType
		self.required = required
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["check"] {
			presentKeys.insert("check")
			if let val = exist as? String {
				self.check = val
			}
			else {
				errors.append(FHIRValidationError(key: "check", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["condition"] {
			presentKeys.insert("condition")
			if let val = exist as? String {
				self.condition = val
			}
			else {
				errors.append(FHIRValidationError(key: "condition", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? String {
				self.context = val
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "context"))
		}
		if let exist = json["contextType"] {
			presentKeys.insert("contextType")
			if let val = exist as? String {
				if let enumval = StructureMapContextType(rawValue: val) {
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
		else {
			errors.append(FHIRValidationError(missing: "contextType"))
		}
		if let exist = json["element"] {
			presentKeys.insert("element")
			if let val = exist as? String {
				self.element = val
			}
			else {
				errors.append(FHIRValidationError(key: "element", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["listMode"] {
			presentKeys.insert("listMode")
			if let val = exist as? String {
				if let enumval = StructureMapListMode(rawValue: val) {
					self.listMode = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "listMode", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "listMode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["max"] {
			presentKeys.insert("max")
			if let val = exist as? String {
				self.max = val
			}
			else {
				errors.append(FHIRValidationError(key: "max", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["min"] {
			presentKeys.insert("min")
			if let val = exist as? Int {
				self.min = val
			}
			else {
				errors.append(FHIRValidationError(key: "min", wants: Int.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "required"))
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
		if let exist = json["variable"] {
			presentKeys.insert("variable")
			if let val = exist as? String {
				self.variable = val
			}
			else {
				errors.append(FHIRValidationError(key: "variable", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let check = self.check {
			json["check"] = check.asJSON()
		}
		if let condition = self.condition {
			json["condition"] = condition.asJSON()
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let contextType = self.contextType {
			json["contextType"] = contextType.rawValue
		}
		if let element = self.element {
			json["element"] = element.asJSON()
		}
		if let listMode = self.listMode {
			json["listMode"] = listMode.rawValue
		}
		if let max = self.max {
			json["max"] = max.asJSON()
		}
		if let min = self.min {
			json["min"] = min.asJSON()
		}
		if let required = self.required {
			json["required"] = required.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let variable = self.variable {
			json["variable"] = variable.asJSON()
		}
		
		return json
	}
}


/**
Content to create because of this mapping rule.
*/
open class StructureMapGroupRuleTarget: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroupRuleTarget" }
	}
	
	/// Type or variable this rule applies to.
	public var context: String?
	
	/// How to interpret the context.
	public var contextType: StructureMapContextType?
	
	/// Field to create in the context.
	public var element: String?
	
	/// If field is a list, how to manage the list.
	public var listMode: [StructureMapListMode]?
	
	/// Internal rule reference for shared list items.
	public var listRuleId: String?
	
	/// Parameters to the transform.
	public var parameter: [StructureMapGroupRuleTargetParameter]?
	
	/// How the data is copied / created.
	public var transform: StructureMapTransform?
	
	/// Named context for field, if desired, and a field is specified.
	public var variable: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? String {
				self.context = val
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["contextType"] {
			presentKeys.insert("contextType")
			if let val = exist as? String {
				if let enumval = StructureMapContextType(rawValue: val) {
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
		if let exist = json["element"] {
			presentKeys.insert("element")
			if let val = exist as? String {
				self.element = val
			}
			else {
				errors.append(FHIRValidationError(key: "element", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["listMode"] {
			presentKeys.insert("listMode")
			if let val = exist as? [String] { var i = -1
				self.listMode = val.map() { i += 1
					if let enumval = StructureMapListMode(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "listMode.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "listMode", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["listRuleId"] {
			presentKeys.insert("listRuleId")
			if let val = exist as? String {
				self.listRuleId = val
			}
			else {
				errors.append(FHIRValidationError(key: "listRuleId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["parameter"] {
			presentKeys.insert("parameter")
			if let val = exist as? [FHIRJSON] {
				do {
					self.parameter = try StructureMapGroupRuleTargetParameter.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRuleTargetParameter]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "parameter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "parameter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["transform"] {
			presentKeys.insert("transform")
			if let val = exist as? String {
				if let enumval = StructureMapTransform(rawValue: val) {
					self.transform = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "transform", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "transform", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["variable"] {
			presentKeys.insert("variable")
			if let val = exist as? String {
				self.variable = val
			}
			else {
				errors.append(FHIRValidationError(key: "variable", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let contextType = self.contextType {
			json["contextType"] = contextType.rawValue
		}
		if let element = self.element {
			json["element"] = element.asJSON()
		}
		if let listMode = self.listMode {
			json["listMode"] = listMode.map() { $0.rawValue }
		}
		if let listRuleId = self.listRuleId {
			json["listRuleId"] = listRuleId.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = parameter.map() { $0.asJSON(errors: &errors) }
		}
		if let transform = self.transform {
			json["transform"] = transform.rawValue
		}
		if let variable = self.variable {
			json["variable"] = variable.asJSON()
		}
		
		return json
	}
}


/**
Parameters to the transform.
*/
open class StructureMapGroupRuleTargetParameter: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroupRuleTargetParameter" }
	}
	
	/// Parameter value - variable or literal.
	public var valueBoolean: Bool?
	
	/// Parameter value - variable or literal.
	public var valueDecimal: NSDecimalNumber?
	
	/// Parameter value - variable or literal.
	public var valueId: String?
	
	/// Parameter value - variable or literal.
	public var valueInteger: Int?
	
	/// Parameter value - variable or literal.
	public var valueString: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: Any) {
		self.init()
		if let value = value as? String {
			self.valueId = value
		}
		else if let value = value as? String {
			self.valueString = value
		}
		else if let value = value as? Bool {
			self.valueBoolean = value
		}
		else if let value = value as? Int {
			self.valueInteger = value
		}
		else if let value = value as? NSDecimalNumber {
			self.valueDecimal = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["valueBoolean"] {
			presentKeys.insert("valueBoolean")
			if let val = exist as? Bool {
				self.valueBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
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
		if let exist = json["valueId"] {
			presentKeys.insert("valueId")
			if let val = exist as? String {
				self.valueId = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueId", wants: String.self, has: type(of: exist)))
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
		if nil == self.valueId && nil == self.valueString && nil == self.valueBoolean && nil == self.valueInteger && nil == self.valueDecimal {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
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
Structure Definition used by this map.

A structure definition used by this map. The structure definition may describe instances that are converted, or the
instances that are produced.
*/
open class StructureMapStructure: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapStructure" }
	}
	
	/// Documentation on use of structure.
	public var documentation: String?
	
	/// How the referenced structure is used in this mapping.
	public var mode: StructureMapModelMode?
	
	/// Canonical URL for structure definition.
	public var url: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: StructureMapModelMode, url: URL) {
		self.init()
		self.mode = mode
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				if let enumval = StructureMapModelMode(rawValue: val) {
					self.mode = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "mode", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
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
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.rawValue
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}

