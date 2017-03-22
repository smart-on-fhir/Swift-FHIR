//
//  CodeSystem.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/CodeSystem) on 2017-03-22.
//  2017, SMART Health IT.
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
	public var caseSensitive: FHIRBool?
	
	/// If code system defines a post-composition grammar.
	public var compositional: FHIRBool?
	
	/// Concepts in the code system.
	public var concept: [CodeSystemConcept]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// How much of the content of the code system - the concepts and codes it defines - are represented in this
	/// resource.
	public var content: CodeSystemContentMode?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Total concepts in the code system.
	public var count: FHIRInteger?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the code system.
	public var description_fhir: FHIRString?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Filter that can be used in a value set.
	public var filter: [CodeSystemFilter]?
	
	/// The meaning of the hierarchy of concepts.
	public var hierarchyMeaning: CodeSystemHierarchyMeaning?
	
	/// Additional identifier for the code system.
	public var identifier: Identifier?
	
	/// Intended jurisdiction for code system (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this code system (computer friendly).
	public var name: FHIRString?
	
	/// Additional information supplied about each concept.
	public var property: [CodeSystemProperty]?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this code system is defined.
	public var purpose: FHIRString?
	
	/// The status of this code system. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this code system (human friendly).
	public var title: FHIRString?
	
	/// Logical URI to reference this code system (globally unique) (Coding.system).
	public var url: FHIRURL?
	
	/// Context the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Canonical URL for value set with entire code system.
	public var valueSet: FHIRURL?
	
	/// Business version of the code system (Coding.version).
	public var version: FHIRString?
	
	/// If definitions are not stable.
	public var versionNeeded: FHIRBool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: CodeSystemContentMode, status: PublicationStatus) {
		self.init()
		self.content = content
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		caseSensitive = createInstance(type: FHIRBool.self, for: "caseSensitive", in: json, context: &instCtx, owner: self) ?? caseSensitive
		compositional = createInstance(type: FHIRBool.self, for: "compositional", in: json, context: &instCtx, owner: self) ?? compositional
		concept = createInstances(of: CodeSystemConcept.self, for: "concept", in: json, context: &instCtx, owner: self) ?? concept
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		content = createEnum(type: CodeSystemContentMode.self, for: "content", in: json, context: &instCtx) ?? content
		if nil == content && !instCtx.containsKey("content") {
			instCtx.addError(FHIRValidationError(missing: "content"))
		}
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		count = createInstance(type: FHIRInteger.self, for: "count", in: json, context: &instCtx, owner: self) ?? count
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		filter = createInstances(of: CodeSystemFilter.self, for: "filter", in: json, context: &instCtx, owner: self) ?? filter
		hierarchyMeaning = createEnum(type: CodeSystemHierarchyMeaning.self, for: "hierarchyMeaning", in: json, context: &instCtx) ?? hierarchyMeaning
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		property = createInstances(of: CodeSystemProperty.self, for: "property", in: json, context: &instCtx, owner: self) ?? property
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		valueSet = createInstance(type: FHIRURL.self, for: "valueSet", in: json, context: &instCtx, owner: self) ?? valueSet
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
		versionNeeded = createInstance(type: FHIRBool.self, for: "versionNeeded", in: json, context: &instCtx, owner: self) ?? versionNeeded
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.caseSensitive?.decorate(json: &json, withKey: "caseSensitive", errors: &errors)
		self.compositional?.decorate(json: &json, withKey: "compositional", errors: &errors)
		arrayDecorate(json: &json, withKey: "concept", using: self.concept, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.content?.decorate(json: &json, withKey: "content", errors: &errors)
		if nil == self.content {
			errors.append(FHIRValidationError(missing: "content"))
		}
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.count?.decorate(json: &json, withKey: "count", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "filter", using: self.filter, errors: &errors)
		self.hierarchyMeaning?.decorate(json: &json, withKey: "hierarchyMeaning", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "property", using: self.property, errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.valueSet?.decorate(json: &json, withKey: "valueSet", errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
		self.versionNeeded?.decorate(json: &json, withKey: "versionNeeded", errors: &errors)
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
	public var code: FHIRString?
	
	/// Child Concepts (is-a/contains/categorizes).
	public var concept: [CodeSystemConcept]?
	
	/// Formal definition.
	public var definition: FHIRString?
	
	/// Additional representations for the concept.
	public var designation: [CodeSystemConceptDesignation]?
	
	/// Text to display to the user.
	public var display: FHIRString?
	
	/// Property value for the concept.
	public var property: [CodeSystemConceptProperty]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		concept = createInstances(of: CodeSystemConcept.self, for: "concept", in: json, context: &instCtx, owner: self) ?? concept
		definition = createInstance(type: FHIRString.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		designation = createInstances(of: CodeSystemConceptDesignation.self, for: "designation", in: json, context: &instCtx, owner: self) ?? designation
		display = createInstance(type: FHIRString.self, for: "display", in: json, context: &instCtx, owner: self) ?? display
		property = createInstances(of: CodeSystemConceptProperty.self, for: "property", in: json, context: &instCtx, owner: self) ?? property
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "concept", using: self.concept, errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		arrayDecorate(json: &json, withKey: "designation", using: self.designation, errors: &errors)
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		arrayDecorate(json: &json, withKey: "property", using: self.property, errors: &errors)
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
	public var language: FHIRString?
	
	/// Details how this designation would be used.
	public var use: Coding?
	
	/// The text value for this designation.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: FHIRString) {
		self.init()
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		language = createInstance(type: FHIRString.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		use = createInstance(type: Coding.self, for: "use", in: json, context: &instCtx, owner: self) ?? use
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
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
	public var code: FHIRString?
	
	/// Value of the property for this concept.
	public var valueBoolean: FHIRBool?
	
	/// Value of the property for this concept.
	public var valueCode: FHIRString?
	
	/// Value of the property for this concept.
	public var valueCoding: Coding?
	
	/// Value of the property for this concept.
	public var valueDateTime: DateTime?
	
	/// Value of the property for this concept.
	public var valueInteger: FHIRInteger?
	
	/// Value of the property for this concept.
	public var valueString: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString, value: Any) {
		self.init()
		self.code = code
		if let value = value as? FHIRString {
			self.valueCode = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? FHIRInteger {
			self.valueInteger = value
		}
		else if let value = value as? FHIRBool {
			self.valueBoolean = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCode = createInstance(type: FHIRString.self, for: "valueCode", in: json, context: &instCtx, owner: self) ?? valueCode
		valueCoding = createInstance(type: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueCode && nil == self.valueCoding && nil == self.valueString && nil == self.valueInteger && nil == self.valueBoolean && nil == self.valueDateTime {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCode?.decorate(json: &json, withKey: "valueCode", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueCode && nil == self.valueCoding && nil == self.valueString && nil == self.valueInteger && nil == self.valueBoolean && nil == self.valueDateTime {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
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
	public var code: FHIRString?
	
	/// How or why the filter is used.
	public var description_fhir: FHIRString?
	
	/// A list of operators that can be used with the filter.
	public var operator_fhir: [FilterOperator]?
	
	/// What to use for the value.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString, operator_fhir: [FilterOperator], value: FHIRString) {
		self.init()
		self.code = code
		self.operator_fhir = operator_fhir
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		operator_fhir = createEnums(of: FilterOperator.self, for: "operator", in: json, context: &instCtx) ?? operator_fhir
		if (nil == operator_fhir || operator_fhir!.isEmpty) && !instCtx.containsKey("operator") {
			instCtx.addError(FHIRValidationError(missing: "operator"))
		}
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "operator", using: self.operator_fhir, errors: &errors)
		if nil == operator_fhir || self.operator_fhir!.isEmpty {
			errors.append(FHIRValidationError(missing: "operator"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
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
	public var code: FHIRString?
	
	/// Why the property is defined, and/or what it conveys.
	public var description_fhir: FHIRString?
	
	/// The type of the property value. Properties of type "code" contain a code defined by the code system (e.g. a
	/// reference to anotherr defined concept).
	public var type: PropertyType?
	
	/// Formal identifier for the property.
	public var uri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString, type: PropertyType) {
		self.init()
		self.code = code
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		type = createEnum(type: PropertyType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		uri = createInstance(type: FHIRURL.self, for: "uri", in: json, context: &instCtx, owner: self) ?? uri
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.uri?.decorate(json: &json, withKey: "uri", errors: &errors)
	}
}

