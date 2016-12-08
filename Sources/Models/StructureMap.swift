//
//  StructureMap.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/StructureMap) on 2016-12-08.
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
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the structure map.
	public var description_fhir: FHIRString?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Named sections for reader convenience.
	public var group: [StructureMapGroup]?
	
	/// Additional identifier for the structure map.
	public var identifier: [Identifier]?
	
	/// Other maps used by this map (canonical URLs).
	public var import_fhir: [FHIRURL]?
	
	/// Intended jurisdiction for structure map (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this structure map (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this structure map is defined.
	public var purpose: FHIRString?
	
	/// The status of this structure map. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Structure Definition used by this map.
	public var structure: [StructureMapStructure]?
	
	/// Name for this structure map (Human friendly).
	public var title: FHIRString?
	
	/// Logical uri to reference this structure map (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the structure map.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(group: [StructureMapGroup], name: FHIRString, status: PublicationStatus, url: FHIRURL) {
		self.init()
		self.group = group
		self.name = name
		self.status = status
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		group = try createInstances(of: StructureMapGroup.self, for: "group", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? group
		if (nil == group || group!.isEmpty) && !presentKeys.contains("group") {
			errors.append(FHIRValidationError(missing: "group"))
		}
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		import_fhir = try createInstances(of: FHIRURL.self, for: "import", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? import_fhir
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		structure = try createInstances(of: StructureMapStructure.self, for: "structure", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? structure
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		if nil == url && !presentKeys.contains("url") {
			errors.append(FHIRValidationError(missing: "url"))
		}
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "group", using: self.group, errors: &errors)
		if nil == group || self.group!.isEmpty {
			errors.append(FHIRValidationError(missing: "group"))
		}
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "import", using: self.import_fhir, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "structure", using: self.structure, errors: &errors)
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
Named sections for reader convenience.
*/
open class StructureMapGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroup" }
	}
	
	/// Documentation for this group.
	public var documentation: FHIRString?
	
	/// Another group that this group adds rules to.
	public var extends: FHIRString?
	
	/// Named instance provided when invoking the map.
	public var input: [StructureMapGroupInput]?
	
	/// Descriptive name for a user.
	public var name: FHIRString?
	
	/// Transform Rule from source to target.
	public var rule: [StructureMapGroupRule]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(input: [StructureMapGroupInput], name: FHIRString, rule: [StructureMapGroupRule]) {
		self.init()
		self.input = input
		self.name = name
		self.rule = rule
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		extends = try createInstance(type: FHIRString.self, for: "extends", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? extends
		input = try createInstances(of: StructureMapGroupInput.self, for: "input", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? input
		if (nil == input || input!.isEmpty) && !presentKeys.contains("input") {
			errors.append(FHIRValidationError(missing: "input"))
		}
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		rule = try createInstances(of: StructureMapGroupRule.self, for: "rule", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rule
		if (nil == rule || rule!.isEmpty) && !presentKeys.contains("rule") {
			errors.append(FHIRValidationError(missing: "rule"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		self.extends?.decorate(json: &json, withKey: "extends", errors: &errors)
		arrayDecorate(json: &json, withKey: "input", using: self.input, errors: &errors)
		if nil == input || self.input!.isEmpty {
			errors.append(FHIRValidationError(missing: "input"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		arrayDecorate(json: &json, withKey: "rule", using: self.rule, errors: &errors)
		if nil == rule || self.rule!.isEmpty {
			errors.append(FHIRValidationError(missing: "rule"))
		}
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
	public var documentation: FHIRString?
	
	/// Mode for this instance of data.
	public var mode: StructureMapInputMode?
	
	/// Name for this instance of data.
	public var name: FHIRString?
	
	/// Type for this instance of data.
	public var type: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: StructureMapInputMode, name: FHIRString) {
		self.init()
		self.mode = mode
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		mode = createEnum(type: StructureMapInputMode.self, for: "mode", in: json, presentKeys: &presentKeys, errors: &errors) ?? mode
		if nil == mode && !presentKeys.contains("mode") {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		if nil == self.mode {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
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
	public var documentation: FHIRString?
	
	/// Name of the rule for internal references.
	public var name: FHIRString?
	
	/// Rules contained in this rule.
	public var rule: [StructureMapGroupRule]?
	
	/// Source inputs to the mapping.
	public var source: [StructureMapGroupRuleSource]?
	
	/// Content to create because of this mapping rule.
	public var target: [StructureMapGroupRuleTarget]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, source: [StructureMapGroupRuleSource]) {
		self.init()
		self.name = name
		self.source = source
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		dependent = try createInstances(of: StructureMapGroupRuleDependent.self, for: "dependent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dependent
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		rule = try createInstances(of: StructureMapGroupRule.self, for: "rule", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rule
		source = try createInstances(of: StructureMapGroupRuleSource.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		if (nil == source || source!.isEmpty) && !presentKeys.contains("source") {
			errors.append(FHIRValidationError(missing: "source"))
		}
		target = try createInstances(of: StructureMapGroupRuleTarget.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "dependent", using: self.dependent, errors: &errors)
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		arrayDecorate(json: &json, withKey: "rule", using: self.rule, errors: &errors)
		arrayDecorate(json: &json, withKey: "source", using: self.source, errors: &errors)
		if nil == source || self.source!.isEmpty {
			errors.append(FHIRValidationError(missing: "source"))
		}
		arrayDecorate(json: &json, withKey: "target", using: self.target, errors: &errors)
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
	public var name: FHIRString?
	
	/// Names of variables to pass to the rule or group.
	public var variable: [FHIRString]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, variable: [FHIRString]) {
		self.init()
		self.name = name
		self.variable = variable
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		variable = try createInstances(of: FHIRString.self, for: "variable", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? variable
		if (nil == variable || variable!.isEmpty) && !presentKeys.contains("variable") {
			errors.append(FHIRValidationError(missing: "variable"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		arrayDecorate(json: &json, withKey: "variable", using: self.variable, errors: &errors)
		if nil == variable || self.variable!.isEmpty {
			errors.append(FHIRValidationError(missing: "variable"))
		}
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
	public var check: FHIRString?
	
	/// FluentPath expression  - must be true or the rule does not apply.
	public var condition: FHIRString?
	
	/// Type or variable this rule applies to.
	public var context: FHIRString?
	
	/// How to interpret the context.
	public var contextType: StructureMapContextType?
	
	/// Optional field for this source.
	public var element: FHIRString?
	
	/// How to handle the list mode for this element.
	public var listMode: StructureMapListMode?
	
	/// Specified maximum cardinality (number or *).
	public var max: FHIRString?
	
	/// Specified minimum cardinality.
	public var min: FHIRInteger?
	
	/// Whether this rule applies if the source isn't found.
	public var required: FHIRBool?
	
	/// Type for this source.
	public var type: FHIRString?
	
	/// Named context for field, if a field is specified.
	public var variable: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(context: FHIRString, contextType: StructureMapContextType, required: FHIRBool) {
		self.init()
		self.context = context
		self.contextType = contextType
		self.required = required
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		check = try createInstance(type: FHIRString.self, for: "check", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? check
		condition = try createInstance(type: FHIRString.self, for: "condition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? condition
		context = try createInstance(type: FHIRString.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		if nil == context && !presentKeys.contains("context") {
			errors.append(FHIRValidationError(missing: "context"))
		}
		contextType = createEnum(type: StructureMapContextType.self, for: "contextType", in: json, presentKeys: &presentKeys, errors: &errors) ?? contextType
		if nil == contextType && !presentKeys.contains("contextType") {
			errors.append(FHIRValidationError(missing: "contextType"))
		}
		element = try createInstance(type: FHIRString.self, for: "element", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? element
		listMode = createEnum(type: StructureMapListMode.self, for: "listMode", in: json, presentKeys: &presentKeys, errors: &errors) ?? listMode
		max = try createInstance(type: FHIRString.self, for: "max", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? max
		min = try createInstance(type: FHIRInteger.self, for: "min", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? min
		required = try createInstance(type: FHIRBool.self, for: "required", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? required
		if nil == required && !presentKeys.contains("required") {
			errors.append(FHIRValidationError(missing: "required"))
		}
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		variable = try createInstance(type: FHIRString.self, for: "variable", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? variable
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.check?.decorate(json: &json, withKey: "check", errors: &errors)
		self.condition?.decorate(json: &json, withKey: "condition", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		if nil == self.context {
			errors.append(FHIRValidationError(missing: "context"))
		}
		self.contextType?.decorate(json: &json, withKey: "contextType", errors: &errors)
		if nil == self.contextType {
			errors.append(FHIRValidationError(missing: "contextType"))
		}
		self.element?.decorate(json: &json, withKey: "element", errors: &errors)
		self.listMode?.decorate(json: &json, withKey: "listMode", errors: &errors)
		self.max?.decorate(json: &json, withKey: "max", errors: &errors)
		self.min?.decorate(json: &json, withKey: "min", errors: &errors)
		self.required?.decorate(json: &json, withKey: "required", errors: &errors)
		if nil == self.required {
			errors.append(FHIRValidationError(missing: "required"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.variable?.decorate(json: &json, withKey: "variable", errors: &errors)
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
	public var context: FHIRString?
	
	/// How to interpret the context.
	public var contextType: StructureMapContextType?
	
	/// Field to create in the context.
	public var element: FHIRString?
	
	/// If field is a list, how to manage the list.
	public var listMode: [StructureMapListMode]?
	
	/// Internal rule reference for shared list items.
	public var listRuleId: FHIRString?
	
	/// Parameters to the transform.
	public var parameter: [StructureMapGroupRuleTargetParameter]?
	
	/// How the data is copied / created.
	public var transform: StructureMapTransform?
	
	/// Named context for field, if desired, and a field is specified.
	public var variable: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		context = try createInstance(type: FHIRString.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		contextType = createEnum(type: StructureMapContextType.self, for: "contextType", in: json, presentKeys: &presentKeys, errors: &errors) ?? contextType
		element = try createInstance(type: FHIRString.self, for: "element", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? element
		listMode = createEnums(of: StructureMapListMode.self, for: "listMode", in: json, presentKeys: &presentKeys, errors: &errors) ?? listMode
		listRuleId = try createInstance(type: FHIRString.self, for: "listRuleId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? listRuleId
		parameter = try createInstances(of: StructureMapGroupRuleTargetParameter.self, for: "parameter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parameter
		transform = createEnum(type: StructureMapTransform.self, for: "transform", in: json, presentKeys: &presentKeys, errors: &errors) ?? transform
		variable = try createInstance(type: FHIRString.self, for: "variable", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? variable
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.contextType?.decorate(json: &json, withKey: "contextType", errors: &errors)
		self.element?.decorate(json: &json, withKey: "element", errors: &errors)
		arrayDecorate(json: &json, withKey: "listMode", using: self.listMode, errors: &errors)
		self.listRuleId?.decorate(json: &json, withKey: "listRuleId", errors: &errors)
		arrayDecorate(json: &json, withKey: "parameter", using: self.parameter, errors: &errors)
		self.transform?.decorate(json: &json, withKey: "transform", errors: &errors)
		self.variable?.decorate(json: &json, withKey: "variable", errors: &errors)
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
	public var valueBoolean: FHIRBool?
	
	/// Parameter value - variable or literal.
	public var valueDecimal: FHIRDecimal?
	
	/// Parameter value - variable or literal.
	public var valueId: FHIRString?
	
	/// Parameter value - variable or literal.
	public var valueInteger: FHIRInteger?
	
	/// Parameter value - variable or literal.
	public var valueString: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: Any) {
		self.init()
		if let value = value as? FHIRString {
			self.valueId = value
		}
		else if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? FHIRBool {
			self.valueBoolean = value
		}
		else if let value = value as? FHIRInteger {
			self.valueInteger = value
		}
		else if let value = value as? FHIRDecimal {
			self.valueDecimal = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		valueBoolean = try createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBoolean
		valueDecimal = try createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDecimal
		valueId = try createInstance(type: FHIRString.self, for: "valueId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueId
		valueInteger = try createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInteger
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueId && nil == self.valueString && nil == self.valueBoolean && nil == self.valueInteger && nil == self.valueDecimal {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueId?.decorate(json: &json, withKey: "valueId", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueId && nil == self.valueString && nil == self.valueBoolean && nil == self.valueInteger && nil == self.valueDecimal {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
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
	public var documentation: FHIRString?
	
	/// How the referenced structure is used in this mapping.
	public var mode: StructureMapModelMode?
	
	/// Canonical URL for structure definition.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: StructureMapModelMode, url: FHIRURL) {
		self.init()
		self.mode = mode
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		mode = createEnum(type: StructureMapModelMode.self, for: "mode", in: json, presentKeys: &presentKeys, errors: &errors) ?? mode
		if nil == mode && !presentKeys.contains("mode") {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		if nil == url && !presentKeys.contains("url") {
			errors.append(FHIRValidationError(missing: "url"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		if nil == self.mode {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
	}
}

