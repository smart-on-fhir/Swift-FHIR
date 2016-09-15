//
//  StructureMap.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/StructureMap) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A Map of relationships between 2 structures that can be used to transform data.
 */
open class StructureMap: DomainResource {
	override open class var resourceType: String {
		get { return "StructureMap" }
	}
	
	/// Contact details of the publisher.
	public var contact: [StructureMapContact]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date for this version of the StructureMap.
	public var date: DateTime?
	
	/// Natural language description of the StructureMap.
	public var description_fhir: String?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Named sections for reader convenience.
	public var group: [StructureMapGroup]?
	
	/// Other identifiers for the StructureMap.
	public var identifier: [Identifier]?
	
	/// Other maps used by this map (canonical URLs).
	public var import_fhir: [URL]?
	
	/// Informal name for this StructureMap.
	public var name: String?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Scope and Usage this structure map is for.
	public var requirements: String?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Structure Definition used by this map.
	public var structure: [StructureMapStructure]?
	
	/// Absolute URL used to reference this StructureMap.
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the StructureMap.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(group: [StructureMapGroup], name: String, status: String, url: URL) {
		self.init(json: nil)
		self.group = group
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
					self.contact = StructureMapContact.instantiate(fromArray: val, owner: self) as? [StructureMapContact]
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
			if let exist = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = StructureMapGroup.instantiate(fromArray: val, owner: self) as? [StructureMapGroup]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "group"))
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["import"] {
				presentKeys.insert("import")
				if let val = exist as? [String] {
					self.import_fhir = URL.instantiate(fromArray: val)
				}
				else {
					errors.append(FHIRJSONError(key: "import", wants: Array<String>.self, has: type(of: exist)))
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
			if let exist = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["requirements"] {
				presentKeys.insert("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(FHIRJSONError(key: "requirements", wants: String.self, has: type(of: exist)))
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
			if let exist = js["structure"] {
				presentKeys.insert("structure")
				if let val = exist as? [FHIRJSON] {
					self.structure = StructureMapStructure.instantiate(fromArray: val, owner: self) as? [StructureMapStructure]
				}
				else {
					errors.append(FHIRJSONError(key: "structure", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
					self.useContext = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let group = self.group {
			json["group"] = group.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let import_fhir = self.import_fhir {
			var arr = [Any]()
			for val in import_fhir {
				arr.append(val.asJSON())
			}
			json["import"] = arr
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let structure = self.structure {
			json["structure"] = structure.map() { $0.asJSON() }
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON() }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
open class StructureMapContact: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapContact" }
	}
	
	/// Name of an individual to contact.
	public var name: String?
	
	/// Contact details for individual or publisher.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
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
			if let exist = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Named sections for reader convenience.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(input: [StructureMapGroupInput], name: String, rule: [StructureMapGroupRule]) {
		self.init(json: nil)
		self.input = input
		self.name = name
		self.rule = rule
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["extends"] {
				presentKeys.insert("extends")
				if let val = exist as? String {
					self.extends = val
				}
				else {
					errors.append(FHIRJSONError(key: "extends", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["input"] {
				presentKeys.insert("input")
				if let val = exist as? [FHIRJSON] {
					self.input = StructureMapGroupInput.instantiate(fromArray: val, owner: self) as? [StructureMapGroupInput]
				}
				else {
					errors.append(FHIRJSONError(key: "input", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "input"))
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
			if let exist = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = StructureMapGroupRule.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRule]
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
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let extends = self.extends {
			json["extends"] = extends.asJSON()
		}
		if let input = self.input {
			json["input"] = input.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Named instance provided when invoking the map.
 *
 *  A name assigned to an instance of data. The instance must be provided when the mapping is invoked.
 */
open class StructureMapGroupInput: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroupInput" }
	}
	
	/// Documentation for this instance of data.
	public var documentation: String?
	
	/// source | target.
	public var mode: String?
	
	/// Name for this instance of data.
	public var name: String?
	
	/// Type for this instance of data.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: String, name: String) {
		self.init(json: nil)
		self.mode = mode
		self.name = name
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "mode"))
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
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
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
 *  Transform Rule from source to target.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, source: [StructureMapGroupRuleSource]) {
		self.init(json: nil)
		self.name = name
		self.source = source
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["dependent"] {
				presentKeys.insert("dependent")
				if let val = exist as? [FHIRJSON] {
					self.dependent = StructureMapGroupRuleDependent.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRuleDependent]
				}
				else {
					errors.append(FHIRJSONError(key: "dependent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: type(of: exist)))
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
			if let exist = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = StructureMapGroupRule.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRule]
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? [FHIRJSON] {
					self.source = StructureMapGroupRuleSource.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRuleSource]
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "source"))
			}
			if let exist = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? [FHIRJSON] {
					self.target = StructureMapGroupRuleTarget.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRuleTarget]
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dependent = self.dependent {
			json["dependent"] = dependent.map() { $0.asJSON() }
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON() }
		}
		if let source = self.source {
			json["source"] = source.map() { $0.asJSON() }
		}
		if let target = self.target {
			json["target"] = target.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Which other rules to apply in the context of this rule.
 */
open class StructureMapGroupRuleDependent: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroupRuleDependent" }
	}
	
	/// Name of a rule or group to apply.
	public var name: String?
	
	/// Names of variables to pass to the rule or group.
	public var variable: [String]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, variable: [String]) {
		self.init(json: nil)
		self.name = name
		self.variable = variable
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
			if let exist = js["variable"] {
				presentKeys.insert("variable")
				if let val = exist as? [String] {
					self.variable = val
				}
				else {
					errors.append(FHIRJSONError(key: "variable", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "variable"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let variable = self.variable {
			var arr = [Any]()
			for val in variable {
				arr.append(val.asJSON())
			}
			json["variable"] = arr
		}
		
		return json
	}
}


/**
 *  Source inputs to the mapping.
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
	
	/// type | variable.
	public var contextType: String?
	
	/// Optional field for this source.
	public var element: String?
	
	/// first | share | last.
	public var listMode: String?
	
	/// Whether this rule applies if the source isn't found.
	public var required: Bool?
	
	/// Named context for field, if a field is specified.
	public var variable: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(context: String, contextType: String, required: Bool) {
		self.init(json: nil)
		self.context = context
		self.contextType = contextType
		self.required = required
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["check"] {
				presentKeys.insert("check")
				if let val = exist as? String {
					self.check = val
				}
				else {
					errors.append(FHIRJSONError(key: "check", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? String {
					self.condition = val
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? String {
					self.context = val
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "context"))
			}
			if let exist = js["contextType"] {
				presentKeys.insert("contextType")
				if let val = exist as? String {
					self.contextType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contextType", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "contextType"))
			}
			if let exist = js["element"] {
				presentKeys.insert("element")
				if let val = exist as? String {
					self.element = val
				}
				else {
					errors.append(FHIRJSONError(key: "element", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["listMode"] {
				presentKeys.insert("listMode")
				if let val = exist as? String {
					self.listMode = val
				}
				else {
					errors.append(FHIRJSONError(key: "listMode", wants: String.self, has: type(of: exist)))
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
			else {
				errors.append(FHIRJSONError(key: "required"))
			}
			if let exist = js["variable"] {
				presentKeys.insert("variable")
				if let val = exist as? String {
					self.variable = val
				}
				else {
					errors.append(FHIRJSONError(key: "variable", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
			json["contextType"] = contextType.asJSON()
		}
		if let element = self.element {
			json["element"] = element.asJSON()
		}
		if let listMode = self.listMode {
			json["listMode"] = listMode.asJSON()
		}
		if let required = self.required {
			json["required"] = required.asJSON()
		}
		if let variable = self.variable {
			json["variable"] = variable.asJSON()
		}
		
		return json
	}
}


/**
 *  Content to create because of this mapping rule.
 */
open class StructureMapGroupRuleTarget: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroupRuleTarget" }
	}
	
	/// Type or variable this rule applies to.
	public var context: String?
	
	/// type | variable.
	public var contextType: String?
	
	/// Field to create in the context.
	public var element: String?
	
	/// first | share | last.
	public var listMode: [String]?
	
	/// Internal rule reference for shared list items.
	public var listRuleId: String?
	
	/// Parameters to the transform.
	public var parameter: [StructureMapGroupRuleTargetParameter]?
	
	/// create | copy +.
	public var transform: String?
	
	/// Named context for field, if desired, and a field is specified.
	public var variable: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(context: String, contextType: String) {
		self.init(json: nil)
		self.context = context
		self.contextType = contextType
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? String {
					self.context = val
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "context"))
			}
			if let exist = js["contextType"] {
				presentKeys.insert("contextType")
				if let val = exist as? String {
					self.contextType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contextType", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "contextType"))
			}
			if let exist = js["element"] {
				presentKeys.insert("element")
				if let val = exist as? String {
					self.element = val
				}
				else {
					errors.append(FHIRJSONError(key: "element", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["listMode"] {
				presentKeys.insert("listMode")
				if let val = exist as? [String] {
					self.listMode = val
				}
				else {
					errors.append(FHIRJSONError(key: "listMode", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["listRuleId"] {
				presentKeys.insert("listRuleId")
				if let val = exist as? String {
					self.listRuleId = val
				}
				else {
					errors.append(FHIRJSONError(key: "listRuleId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = StructureMapGroupRuleTargetParameter.instantiate(fromArray: val, owner: self) as? [StructureMapGroupRuleTargetParameter]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["transform"] {
				presentKeys.insert("transform")
				if let val = exist as? String {
					self.transform = val
				}
				else {
					errors.append(FHIRJSONError(key: "transform", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["variable"] {
				presentKeys.insert("variable")
				if let val = exist as? String {
					self.variable = val
				}
				else {
					errors.append(FHIRJSONError(key: "variable", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let contextType = self.contextType {
			json["contextType"] = contextType.asJSON()
		}
		if let element = self.element {
			json["element"] = element.asJSON()
		}
		if let listMode = self.listMode {
			var arr = [Any]()
			for val in listMode {
				arr.append(val.asJSON())
			}
			json["listMode"] = arr
		}
		if let listRuleId = self.listRuleId {
			json["listRuleId"] = listRuleId.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = parameter.map() { $0.asJSON() }
		}
		if let transform = self.transform {
			json["transform"] = transform.asJSON()
		}
		if let variable = self.variable {
			json["variable"] = variable.asJSON()
		}
		
		return json
	}
}


/**
 *  Parameters to the transform.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(valueBoolean: Bool, valueDecimal: NSDecimalNumber, valueId: String, valueInteger: Int, valueString: String) {
		self.init(json: nil)
		self.valueBoolean = valueBoolean
		self.valueDecimal = valueDecimal
		self.valueId = valueId
		self.valueInteger = valueInteger
		self.valueString = valueString
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["valueBoolean"] {
				presentKeys.insert("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueDecimal"] {
				presentKeys.insert("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDecimal", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueId"] {
				presentKeys.insert("valueId")
				if let val = exist as? String {
					self.valueId = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueId", wants: String.self, has: type(of: exist)))
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
			if nil == self.valueId && nil == self.valueString && nil == self.valueBoolean && nil == self.valueInteger && nil == self.valueDecimal {
				errors.append(FHIRJSONError(key: "value*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
 *  Structure Definition used by this map.
 *
 *  A structure definition used by this map. The structure definition may describe instances that are converted, or the
 *  instances that are produced.
 */
open class StructureMapStructure: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapStructure" }
	}
	
	/// Documentation on use of structure.
	public var documentation: String?
	
	/// source | queried | target | produced.
	public var mode: String?
	
	/// Canonical URL for structure definition.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: String, url: URL) {
		self.init(json: nil)
		self.mode = mode
		self.url = url
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "mode"))
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
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}

