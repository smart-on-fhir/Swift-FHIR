//
//  StructureMap.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/StructureMap) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A Map of relationships between 2 structures that can be used to transform data.
 */
public class StructureMap: DomainResource {
	override public class var resourceName: String {
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
	public var import_fhir: [NSURL]?
	
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
	public var url: NSURL?
	
	/// Content intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the StructureMap.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(group: [StructureMapGroup], name: String, status: String, url: NSURL) {
		self.init(json: nil)
		self.group = group
		self.name = name
		self.status = status
		self.url = url
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = StructureMapContact.from(val, owner: self) as? [StructureMapContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = StructureMapGroup.from(val, owner: self) as? [StructureMapGroup]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "group"))
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["import"] {
				presentKeys.insert("import")
				if let val = exist as? [String] {
					self.import_fhir = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "import", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.insert("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(FHIRJSONError(key: "requirements", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["structure"] {
				presentKeys.insert("structure")
				if let val = exist as? [FHIRJSON] {
					self.structure = StructureMapStructure.from(val, owner: self) as? [StructureMapStructure]
				}
				else {
					errors.append(FHIRJSONError(key: "structure", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
			if let exist: AnyObject = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = StructureMapContact.asJSONArray(contact)
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
			json["group"] = StructureMapGroup.asJSONArray(group)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let import_fhir = self.import_fhir {
			var arr = [AnyObject]()
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
			json["structure"] = StructureMapStructure.asJSONArray(structure)
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = CodeableConcept.asJSONArray(useContext)
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
public class StructureMapContact: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  Named sections for reader convenience.
 */
public class StructureMapGroup: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["extends"] {
				presentKeys.insert("extends")
				if let val = exist as? String {
					self.extends = val
				}
				else {
					errors.append(FHIRJSONError(key: "extends", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["input"] {
				presentKeys.insert("input")
				if let val = exist as? [FHIRJSON] {
					self.input = StructureMapGroupInput.from(val, owner: self) as? [StructureMapGroupInput]
				}
				else {
					errors.append(FHIRJSONError(key: "input", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "input"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = StructureMapGroupRule.from(val, owner: self) as? [StructureMapGroupRule]
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "rule"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let extends = self.extends {
			json["extends"] = extends.asJSON()
		}
		if let input = self.input {
			json["input"] = StructureMapGroupInput.asJSONArray(input)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = StructureMapGroupRule.asJSONArray(rule)
		}
		
		return json
	}
}


/**
 *  Named instance provided when invoking the map.
 *
 *  A name assigned to an instance of data. The instance must be provided when the mapping is invoked.
 */
public class StructureMapGroupInput: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "mode"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class StructureMapGroupRule: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["dependent"] {
				presentKeys.insert("dependent")
				if let val = exist as? [FHIRJSON] {
					self.dependent = StructureMapGroupRuleDependent.from(val, owner: self) as? [StructureMapGroupRuleDependent]
				}
				else {
					errors.append(FHIRJSONError(key: "dependent", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["rule"] {
				presentKeys.insert("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = StructureMapGroupRule.from(val, owner: self) as? [StructureMapGroupRule]
				}
				else {
					errors.append(FHIRJSONError(key: "rule", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? [FHIRJSON] {
					self.source = StructureMapGroupRuleSource.from(val, owner: self) as? [StructureMapGroupRuleSource]
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "source"))
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? [FHIRJSON] {
					self.target = StructureMapGroupRuleTarget.from(val, owner: self) as? [StructureMapGroupRuleTarget]
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dependent = self.dependent {
			json["dependent"] = StructureMapGroupRuleDependent.asJSONArray(dependent)
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = StructureMapGroupRule.asJSONArray(rule)
		}
		if let source = self.source {
			json["source"] = StructureMapGroupRuleSource.asJSONArray(source)
		}
		if let target = self.target {
			json["target"] = StructureMapGroupRuleTarget.asJSONArray(target)
		}
		
		return json
	}
}


/**
 *  Which other rules to apply in the context of this rule.
 */
public class StructureMapGroupRuleDependent: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["variable"] {
				presentKeys.insert("variable")
				if let val = exist as? [String] {
					self.variable = val
				}
				else {
					errors.append(FHIRJSONError(key: "variable", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "variable"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let variable = self.variable {
			var arr = [AnyObject]()
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
public class StructureMapGroupRuleSource: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["check"] {
				presentKeys.insert("check")
				if let val = exist as? String {
					self.check = val
				}
				else {
					errors.append(FHIRJSONError(key: "check", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? String {
					self.condition = val
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? String {
					self.context = val
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "context"))
			}
			if let exist: AnyObject = js["contextType"] {
				presentKeys.insert("contextType")
				if let val = exist as? String {
					self.contextType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contextType", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "contextType"))
			}
			if let exist: AnyObject = js["element"] {
				presentKeys.insert("element")
				if let val = exist as? String {
					self.element = val
				}
				else {
					errors.append(FHIRJSONError(key: "element", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["listMode"] {
				presentKeys.insert("listMode")
				if let val = exist as? String {
					self.listMode = val
				}
				else {
					errors.append(FHIRJSONError(key: "listMode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["required"] {
				presentKeys.insert("required")
				if let val = exist as? Bool {
					self.required = val
				}
				else {
					errors.append(FHIRJSONError(key: "required", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "required"))
			}
			if let exist: AnyObject = js["variable"] {
				presentKeys.insert("variable")
				if let val = exist as? String {
					self.variable = val
				}
				else {
					errors.append(FHIRJSONError(key: "variable", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class StructureMapGroupRuleTarget: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? String {
					self.context = val
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "context"))
			}
			if let exist: AnyObject = js["contextType"] {
				presentKeys.insert("contextType")
				if let val = exist as? String {
					self.contextType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contextType", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "contextType"))
			}
			if let exist: AnyObject = js["element"] {
				presentKeys.insert("element")
				if let val = exist as? String {
					self.element = val
				}
				else {
					errors.append(FHIRJSONError(key: "element", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["listMode"] {
				presentKeys.insert("listMode")
				if let val = exist as? [String] {
					self.listMode = val
				}
				else {
					errors.append(FHIRJSONError(key: "listMode", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["listRuleId"] {
				presentKeys.insert("listRuleId")
				if let val = exist as? String {
					self.listRuleId = val
				}
				else {
					errors.append(FHIRJSONError(key: "listRuleId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = StructureMapGroupRuleTargetParameter.from(val, owner: self) as? [StructureMapGroupRuleTargetParameter]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["transform"] {
				presentKeys.insert("transform")
				if let val = exist as? String {
					self.transform = val
				}
				else {
					errors.append(FHIRJSONError(key: "transform", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["variable"] {
				presentKeys.insert("variable")
				if let val = exist as? String {
					self.variable = val
				}
				else {
					errors.append(FHIRJSONError(key: "variable", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
			var arr = [AnyObject]()
			for val in listMode {
				arr.append(val.asJSON())
			}
			json["listMode"] = arr
		}
		if let listRuleId = self.listRuleId {
			json["listRuleId"] = listRuleId.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = StructureMapGroupRuleTargetParameter.asJSONArray(parameter)
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
public class StructureMapGroupRuleTargetParameter: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["valueBoolean"] {
				presentKeys.insert("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDecimal"] {
				presentKeys.insert("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueId"] {
				presentKeys.insert("valueId")
				if let val = exist as? String {
					self.valueId = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueInteger"] {
				presentKeys.insert("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.valueId && nil == self.valueString && nil == self.valueBoolean && nil == self.valueInteger && nil == self.valueDecimal {
				errors.append(FHIRJSONError(key: "value*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class StructureMapStructure: BackboneElement {
	override public class var resourceName: String {
		get { return "StructureMapStructure" }
	}
	
	/// Documentation on use of structure.
	public var documentation: String?
	
	/// source | queried | target | produced.
	public var mode: String?
	
	/// Canonical URL for structure definition.
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: String, url: NSURL) {
		self.init(json: nil)
		self.mode = mode
		self.url = url
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "mode"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

