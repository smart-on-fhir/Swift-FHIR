//
//  StructureMap.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/StructureMap) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Named sections for reader convenience.
	public var group: [StructureMapGroup]?
	
	/// Additional identifier for the structure map.
	public var identifier: [Identifier]?
	
	/// Other maps used by this map (canonical URLs).
	public var import_fhir: [FHIRURL]?
	
	/// Intended jurisdiction for structure map (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this structure map (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this structure map is defined.
	public var purpose: FHIRString?
	
	/// The status of this structure map. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Structure Definition used by this map.
	public var structure: [StructureMapStructure]?
	
	/// Name for this structure map (human friendly).
	public var title: FHIRString?
	
	/// Logical URI to reference this structure map (globally unique).
	public var url: FHIRURL?
	
	/// Context the content is intended to support.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		group = createInstances(of: StructureMapGroup.self, for: "group", in: json, context: &instCtx, owner: self) ?? group
		if (nil == group || group!.isEmpty) && !instCtx.containsKey("group") {
			instCtx.addError(FHIRValidationError(missing: "group"))
		}
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		import_fhir = createInstances(of: FHIRURL.self, for: "import", in: json, context: &instCtx, owner: self) ?? import_fhir
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		structure = createInstances(of: StructureMapStructure.self, for: "structure", in: json, context: &instCtx, owner: self) ?? structure
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

Organizes the mapping into managable chunks for human review/ease of maintenance.
*/
open class StructureMapGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureMapGroup" }
	}
	
	/// Additional description/explaination for group.
	public var documentation: FHIRString?
	
	/// Another group that this group adds rules to.
	public var extends: FHIRString?
	
	/// Named instance provided when invoking the map.
	public var input: [StructureMapGroupInput]?
	
	/// Human-readable label.
	public var name: FHIRString?
	
	/// Transform Rule from source to target.
	public var rule: [StructureMapGroupRule]?
	
	/// If this is the default rule set to apply for thie source type, or this combination of types.
	public var typeMode: StructureMapGroupTypeMode?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(input: [StructureMapGroupInput], name: FHIRString, rule: [StructureMapGroupRule], typeMode: StructureMapGroupTypeMode) {
		self.init()
		self.input = input
		self.name = name
		self.rule = rule
		self.typeMode = typeMode
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		extends = createInstance(type: FHIRString.self, for: "extends", in: json, context: &instCtx, owner: self) ?? extends
		input = createInstances(of: StructureMapGroupInput.self, for: "input", in: json, context: &instCtx, owner: self) ?? input
		if (nil == input || input!.isEmpty) && !instCtx.containsKey("input") {
			instCtx.addError(FHIRValidationError(missing: "input"))
		}
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		rule = createInstances(of: StructureMapGroupRule.self, for: "rule", in: json, context: &instCtx, owner: self) ?? rule
		if (nil == rule || rule!.isEmpty) && !instCtx.containsKey("rule") {
			instCtx.addError(FHIRValidationError(missing: "rule"))
		}
		typeMode = createEnum(type: StructureMapGroupTypeMode.self, for: "typeMode", in: json, context: &instCtx) ?? typeMode
		if nil == typeMode && !instCtx.containsKey("typeMode") {
			instCtx.addError(FHIRValidationError(missing: "typeMode"))
		}
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
		self.typeMode?.decorate(json: &json, withKey: "typeMode", errors: &errors)
		if nil == self.typeMode {
			errors.append(FHIRValidationError(missing: "typeMode"))
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		mode = createEnum(type: StructureMapInputMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		if nil == mode && !instCtx.containsKey("mode") {
			instCtx.addError(FHIRValidationError(missing: "mode"))
		}
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		dependent = createInstances(of: StructureMapGroupRuleDependent.self, for: "dependent", in: json, context: &instCtx, owner: self) ?? dependent
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		rule = createInstances(of: StructureMapGroupRule.self, for: "rule", in: json, context: &instCtx, owner: self) ?? rule
		source = createInstances(of: StructureMapGroupRuleSource.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		if (nil == source || source!.isEmpty) && !instCtx.containsKey("source") {
			instCtx.addError(FHIRValidationError(missing: "source"))
		}
		target = createInstances(of: StructureMapGroupRuleTarget.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
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
	
	/// Variable to pass to the rule or group.
	public var variable: [FHIRString]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, variable: [FHIRString]) {
		self.init()
		self.name = name
		self.variable = variable
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		variable = createInstances(of: FHIRString.self, for: "variable", in: json, context: &instCtx, owner: self) ?? variable
		if (nil == variable || variable!.isEmpty) && !instCtx.containsKey("variable") {
			instCtx.addError(FHIRValidationError(missing: "variable"))
		}
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
	
	/// FHIRPath expression  - must be true or the mapping engine throws an error instead of completing.
	public var check: FHIRString?
	
	/// FHIRPath expression  - must be true or the rule does not apply.
	public var condition: FHIRString?
	
	/// Type or variable this rule applies to.
	public var context: FHIRString?
	
	/// Default value if no value exists.
	public var defaultValueAddress: Address?
	
	/// Default value if no value exists.
	public var defaultValueAge: Age?
	
	/// Default value if no value exists.
	public var defaultValueAnnotation: Annotation?
	
	/// Default value if no value exists.
	public var defaultValueAttachment: Attachment?
	
	/// Default value if no value exists.
	public var defaultValueBase64Binary: Base64Binary?
	
	/// Default value if no value exists.
	public var defaultValueBoolean: FHIRBool?
	
	/// Default value if no value exists.
	public var defaultValueCode: FHIRString?
	
	/// Default value if no value exists.
	public var defaultValueCodeableConcept: CodeableConcept?
	
	/// Default value if no value exists.
	public var defaultValueCoding: Coding?
	
	/// Default value if no value exists.
	public var defaultValueContactPoint: ContactPoint?
	
	/// Default value if no value exists.
	public var defaultValueCount: Count?
	
	/// Default value if no value exists.
	public var defaultValueDate: FHIRDate?
	
	/// Default value if no value exists.
	public var defaultValueDateTime: DateTime?
	
	/// Default value if no value exists.
	public var defaultValueDecimal: FHIRDecimal?
	
	/// Default value if no value exists.
	public var defaultValueDistance: Distance?
	
	/// Default value if no value exists.
	public var defaultValueDuration: Duration?
	
	/// Default value if no value exists.
	public var defaultValueHumanName: HumanName?
	
	/// Default value if no value exists.
	public var defaultValueId: FHIRString?
	
	/// Default value if no value exists.
	public var defaultValueIdentifier: Identifier?
	
	/// Default value if no value exists.
	public var defaultValueInstant: Instant?
	
	/// Default value if no value exists.
	public var defaultValueInteger: FHIRInteger?
	
	/// Default value if no value exists.
	public var defaultValueMarkdown: FHIRString?
	
	/// Default value if no value exists.
	public var defaultValueMeta: Meta?
	
	/// Default value if no value exists.
	public var defaultValueMoney: Money?
	
	/// Default value if no value exists.
	public var defaultValueOid: FHIRURL?
	
	/// Default value if no value exists.
	public var defaultValuePeriod: Period?
	
	/// Default value if no value exists.
	public var defaultValuePositiveInt: FHIRInteger?
	
	/// Default value if no value exists.
	public var defaultValueQuantity: Quantity?
	
	/// Default value if no value exists.
	public var defaultValueRange: Range?
	
	/// Default value if no value exists.
	public var defaultValueRatio: Ratio?
	
	/// Default value if no value exists.
	public var defaultValueReference: Reference?
	
	/// Default value if no value exists.
	public var defaultValueSampledData: SampledData?
	
	/// Default value if no value exists.
	public var defaultValueSignature: Signature?
	
	/// Default value if no value exists.
	public var defaultValueString: FHIRString?
	
	/// Default value if no value exists.
	public var defaultValueTime: FHIRTime?
	
	/// Default value if no value exists.
	public var defaultValueTiming: Timing?
	
	/// Default value if no value exists.
	public var defaultValueUnsignedInt: FHIRInteger?
	
	/// Default value if no value exists.
	public var defaultValueUri: FHIRURL?
	
	/// Optional field for this source.
	public var element: FHIRString?
	
	/// How to handle the list mode for this element.
	public var listMode: StructureMapSourceListMode?
	
	/// Specified maximum cardinality (number or *).
	public var max: FHIRString?
	
	/// Specified minimum cardinality.
	public var min: FHIRInteger?
	
	/// Rule only applies if source has this type.
	public var type: FHIRString?
	
	/// Named context for field, if a field is specified.
	public var variable: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(context: FHIRString) {
		self.init()
		self.context = context
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		check = createInstance(type: FHIRString.self, for: "check", in: json, context: &instCtx, owner: self) ?? check
		condition = createInstance(type: FHIRString.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		context = createInstance(type: FHIRString.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		if nil == context && !instCtx.containsKey("context") {
			instCtx.addError(FHIRValidationError(missing: "context"))
		}
		defaultValueAddress = createInstance(type: Address.self, for: "defaultValueAddress", in: json, context: &instCtx, owner: self) ?? defaultValueAddress
		defaultValueAge = createInstance(type: Age.self, for: "defaultValueAge", in: json, context: &instCtx, owner: self) ?? defaultValueAge
		defaultValueAnnotation = createInstance(type: Annotation.self, for: "defaultValueAnnotation", in: json, context: &instCtx, owner: self) ?? defaultValueAnnotation
		defaultValueAttachment = createInstance(type: Attachment.self, for: "defaultValueAttachment", in: json, context: &instCtx, owner: self) ?? defaultValueAttachment
		defaultValueBase64Binary = createInstance(type: Base64Binary.self, for: "defaultValueBase64Binary", in: json, context: &instCtx, owner: self) ?? defaultValueBase64Binary
		defaultValueBoolean = createInstance(type: FHIRBool.self, for: "defaultValueBoolean", in: json, context: &instCtx, owner: self) ?? defaultValueBoolean
		defaultValueCode = createInstance(type: FHIRString.self, for: "defaultValueCode", in: json, context: &instCtx, owner: self) ?? defaultValueCode
		defaultValueCodeableConcept = createInstance(type: CodeableConcept.self, for: "defaultValueCodeableConcept", in: json, context: &instCtx, owner: self) ?? defaultValueCodeableConcept
		defaultValueCoding = createInstance(type: Coding.self, for: "defaultValueCoding", in: json, context: &instCtx, owner: self) ?? defaultValueCoding
		defaultValueContactPoint = createInstance(type: ContactPoint.self, for: "defaultValueContactPoint", in: json, context: &instCtx, owner: self) ?? defaultValueContactPoint
		defaultValueCount = createInstance(type: Count.self, for: "defaultValueCount", in: json, context: &instCtx, owner: self) ?? defaultValueCount
		defaultValueDate = createInstance(type: FHIRDate.self, for: "defaultValueDate", in: json, context: &instCtx, owner: self) ?? defaultValueDate
		defaultValueDateTime = createInstance(type: DateTime.self, for: "defaultValueDateTime", in: json, context: &instCtx, owner: self) ?? defaultValueDateTime
		defaultValueDecimal = createInstance(type: FHIRDecimal.self, for: "defaultValueDecimal", in: json, context: &instCtx, owner: self) ?? defaultValueDecimal
		defaultValueDistance = createInstance(type: Distance.self, for: "defaultValueDistance", in: json, context: &instCtx, owner: self) ?? defaultValueDistance
		defaultValueDuration = createInstance(type: Duration.self, for: "defaultValueDuration", in: json, context: &instCtx, owner: self) ?? defaultValueDuration
		defaultValueHumanName = createInstance(type: HumanName.self, for: "defaultValueHumanName", in: json, context: &instCtx, owner: self) ?? defaultValueHumanName
		defaultValueId = createInstance(type: FHIRString.self, for: "defaultValueId", in: json, context: &instCtx, owner: self) ?? defaultValueId
		defaultValueIdentifier = createInstance(type: Identifier.self, for: "defaultValueIdentifier", in: json, context: &instCtx, owner: self) ?? defaultValueIdentifier
		defaultValueInstant = createInstance(type: Instant.self, for: "defaultValueInstant", in: json, context: &instCtx, owner: self) ?? defaultValueInstant
		defaultValueInteger = createInstance(type: FHIRInteger.self, for: "defaultValueInteger", in: json, context: &instCtx, owner: self) ?? defaultValueInteger
		defaultValueMarkdown = createInstance(type: FHIRString.self, for: "defaultValueMarkdown", in: json, context: &instCtx, owner: self) ?? defaultValueMarkdown
		defaultValueMeta = createInstance(type: Meta.self, for: "defaultValueMeta", in: json, context: &instCtx, owner: self) ?? defaultValueMeta
		defaultValueMoney = createInstance(type: Money.self, for: "defaultValueMoney", in: json, context: &instCtx, owner: self) ?? defaultValueMoney
		defaultValueOid = createInstance(type: FHIRURL.self, for: "defaultValueOid", in: json, context: &instCtx, owner: self) ?? defaultValueOid
		defaultValuePeriod = createInstance(type: Period.self, for: "defaultValuePeriod", in: json, context: &instCtx, owner: self) ?? defaultValuePeriod
		defaultValuePositiveInt = createInstance(type: FHIRInteger.self, for: "defaultValuePositiveInt", in: json, context: &instCtx, owner: self) ?? defaultValuePositiveInt
		defaultValueQuantity = createInstance(type: Quantity.self, for: "defaultValueQuantity", in: json, context: &instCtx, owner: self) ?? defaultValueQuantity
		defaultValueRange = createInstance(type: Range.self, for: "defaultValueRange", in: json, context: &instCtx, owner: self) ?? defaultValueRange
		defaultValueRatio = createInstance(type: Ratio.self, for: "defaultValueRatio", in: json, context: &instCtx, owner: self) ?? defaultValueRatio
		defaultValueReference = createInstance(type: Reference.self, for: "defaultValueReference", in: json, context: &instCtx, owner: self) ?? defaultValueReference
		defaultValueSampledData = createInstance(type: SampledData.self, for: "defaultValueSampledData", in: json, context: &instCtx, owner: self) ?? defaultValueSampledData
		defaultValueSignature = createInstance(type: Signature.self, for: "defaultValueSignature", in: json, context: &instCtx, owner: self) ?? defaultValueSignature
		defaultValueString = createInstance(type: FHIRString.self, for: "defaultValueString", in: json, context: &instCtx, owner: self) ?? defaultValueString
		defaultValueTime = createInstance(type: FHIRTime.self, for: "defaultValueTime", in: json, context: &instCtx, owner: self) ?? defaultValueTime
		defaultValueTiming = createInstance(type: Timing.self, for: "defaultValueTiming", in: json, context: &instCtx, owner: self) ?? defaultValueTiming
		defaultValueUnsignedInt = createInstance(type: FHIRInteger.self, for: "defaultValueUnsignedInt", in: json, context: &instCtx, owner: self) ?? defaultValueUnsignedInt
		defaultValueUri = createInstance(type: FHIRURL.self, for: "defaultValueUri", in: json, context: &instCtx, owner: self) ?? defaultValueUri
		element = createInstance(type: FHIRString.self, for: "element", in: json, context: &instCtx, owner: self) ?? element
		listMode = createEnum(type: StructureMapSourceListMode.self, for: "listMode", in: json, context: &instCtx) ?? listMode
		max = createInstance(type: FHIRString.self, for: "max", in: json, context: &instCtx, owner: self) ?? max
		min = createInstance(type: FHIRInteger.self, for: "min", in: json, context: &instCtx, owner: self) ?? min
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		variable = createInstance(type: FHIRString.self, for: "variable", in: json, context: &instCtx, owner: self) ?? variable
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.check?.decorate(json: &json, withKey: "check", errors: &errors)
		self.condition?.decorate(json: &json, withKey: "condition", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		if nil == self.context {
			errors.append(FHIRValidationError(missing: "context"))
		}
		self.defaultValueAddress?.decorate(json: &json, withKey: "defaultValueAddress", errors: &errors)
		self.defaultValueAge?.decorate(json: &json, withKey: "defaultValueAge", errors: &errors)
		self.defaultValueAnnotation?.decorate(json: &json, withKey: "defaultValueAnnotation", errors: &errors)
		self.defaultValueAttachment?.decorate(json: &json, withKey: "defaultValueAttachment", errors: &errors)
		self.defaultValueBase64Binary?.decorate(json: &json, withKey: "defaultValueBase64Binary", errors: &errors)
		self.defaultValueBoolean?.decorate(json: &json, withKey: "defaultValueBoolean", errors: &errors)
		self.defaultValueCode?.decorate(json: &json, withKey: "defaultValueCode", errors: &errors)
		self.defaultValueCodeableConcept?.decorate(json: &json, withKey: "defaultValueCodeableConcept", errors: &errors)
		self.defaultValueCoding?.decorate(json: &json, withKey: "defaultValueCoding", errors: &errors)
		self.defaultValueContactPoint?.decorate(json: &json, withKey: "defaultValueContactPoint", errors: &errors)
		self.defaultValueCount?.decorate(json: &json, withKey: "defaultValueCount", errors: &errors)
		self.defaultValueDate?.decorate(json: &json, withKey: "defaultValueDate", errors: &errors)
		self.defaultValueDateTime?.decorate(json: &json, withKey: "defaultValueDateTime", errors: &errors)
		self.defaultValueDecimal?.decorate(json: &json, withKey: "defaultValueDecimal", errors: &errors)
		self.defaultValueDistance?.decorate(json: &json, withKey: "defaultValueDistance", errors: &errors)
		self.defaultValueDuration?.decorate(json: &json, withKey: "defaultValueDuration", errors: &errors)
		self.defaultValueHumanName?.decorate(json: &json, withKey: "defaultValueHumanName", errors: &errors)
		self.defaultValueId?.decorate(json: &json, withKey: "defaultValueId", errors: &errors)
		self.defaultValueIdentifier?.decorate(json: &json, withKey: "defaultValueIdentifier", errors: &errors)
		self.defaultValueInstant?.decorate(json: &json, withKey: "defaultValueInstant", errors: &errors)
		self.defaultValueInteger?.decorate(json: &json, withKey: "defaultValueInteger", errors: &errors)
		self.defaultValueMarkdown?.decorate(json: &json, withKey: "defaultValueMarkdown", errors: &errors)
		self.defaultValueMeta?.decorate(json: &json, withKey: "defaultValueMeta", errors: &errors)
		self.defaultValueMoney?.decorate(json: &json, withKey: "defaultValueMoney", errors: &errors)
		self.defaultValueOid?.decorate(json: &json, withKey: "defaultValueOid", errors: &errors)
		self.defaultValuePeriod?.decorate(json: &json, withKey: "defaultValuePeriod", errors: &errors)
		self.defaultValuePositiveInt?.decorate(json: &json, withKey: "defaultValuePositiveInt", errors: &errors)
		self.defaultValueQuantity?.decorate(json: &json, withKey: "defaultValueQuantity", errors: &errors)
		self.defaultValueRange?.decorate(json: &json, withKey: "defaultValueRange", errors: &errors)
		self.defaultValueRatio?.decorate(json: &json, withKey: "defaultValueRatio", errors: &errors)
		self.defaultValueReference?.decorate(json: &json, withKey: "defaultValueReference", errors: &errors)
		self.defaultValueSampledData?.decorate(json: &json, withKey: "defaultValueSampledData", errors: &errors)
		self.defaultValueSignature?.decorate(json: &json, withKey: "defaultValueSignature", errors: &errors)
		self.defaultValueString?.decorate(json: &json, withKey: "defaultValueString", errors: &errors)
		self.defaultValueTime?.decorate(json: &json, withKey: "defaultValueTime", errors: &errors)
		self.defaultValueTiming?.decorate(json: &json, withKey: "defaultValueTiming", errors: &errors)
		self.defaultValueUnsignedInt?.decorate(json: &json, withKey: "defaultValueUnsignedInt", errors: &errors)
		self.defaultValueUri?.decorate(json: &json, withKey: "defaultValueUri", errors: &errors)
		self.element?.decorate(json: &json, withKey: "element", errors: &errors)
		self.listMode?.decorate(json: &json, withKey: "listMode", errors: &errors)
		self.max?.decorate(json: &json, withKey: "max", errors: &errors)
		self.min?.decorate(json: &json, withKey: "min", errors: &errors)
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
	public var listMode: [StructureMapTargetListMode]?
	
	/// Internal rule reference for shared list items.
	public var listRuleId: FHIRString?
	
	/// Parameters to the transform.
	public var parameter: [StructureMapGroupRuleTargetParameter]?
	
	/// How the data is copied / created.
	public var transform: StructureMapTransform?
	
	/// Named context for field, if desired, and a field is specified.
	public var variable: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		context = createInstance(type: FHIRString.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		contextType = createEnum(type: StructureMapContextType.self, for: "contextType", in: json, context: &instCtx) ?? contextType
		element = createInstance(type: FHIRString.self, for: "element", in: json, context: &instCtx, owner: self) ?? element
		listMode = createEnums(of: StructureMapTargetListMode.self, for: "listMode", in: json, context: &instCtx) ?? listMode
		listRuleId = createInstance(type: FHIRString.self, for: "listRuleId", in: json, context: &instCtx, owner: self) ?? listRuleId
		parameter = createInstances(of: StructureMapGroupRuleTargetParameter.self, for: "parameter", in: json, context: &instCtx, owner: self) ?? parameter
		transform = createEnum(type: StructureMapTransform.self, for: "transform", in: json, context: &instCtx) ?? transform
		variable = createInstance(type: FHIRString.self, for: "variable", in: json, context: &instCtx, owner: self) ?? variable
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueDecimal = createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, context: &instCtx, owner: self) ?? valueDecimal
		valueId = createInstance(type: FHIRString.self, for: "valueId", in: json, context: &instCtx, owner: self) ?? valueId
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueId && nil == self.valueString && nil == self.valueBoolean && nil == self.valueInteger && nil == self.valueDecimal {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
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
	
	/// Name for type in this map.
	public var alias: FHIRString?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		alias = createInstance(type: FHIRString.self, for: "alias", in: json, context: &instCtx, owner: self) ?? alias
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		mode = createEnum(type: StructureMapModelMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		if nil == mode && !instCtx.containsKey("mode") {
			instCtx.addError(FHIRValidationError(missing: "mode"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		if nil == url && !instCtx.containsKey("url") {
			instCtx.addError(FHIRValidationError(missing: "url"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.alias?.decorate(json: &json, withKey: "alias", errors: &errors)
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

