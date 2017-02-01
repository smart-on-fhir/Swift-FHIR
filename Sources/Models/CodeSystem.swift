//
//  CodeSystem.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/CodeSystem) on 2017-02-01.
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
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Filter that can be used in a value set.
	public var filter: [CodeSystemFilter]?
	
	/// The meaning of the heirarchy of concepts.
	public var hierarchyMeaning: CodeSystemHierarchyMeaning?
	
	/// Additional identifier for the code system.
	public var identifier: Identifier?
	
	/// Intended jurisdiction for code system (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this code system (Computer friendly).
	public var name: FHIRString?
	
	/// Additional information supplied about each concept.
	public var property: [CodeSystemProperty]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this code system is defined.
	public var purpose: FHIRString?
	
	/// The status of this code system. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this code system (Human friendly).
	public var title: FHIRString?
	
	/// Logical uri to reference this code system (globally unique) (Coding.system).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		caseSensitive = try createInstance(type: FHIRBool.self, for: "caseSensitive", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? caseSensitive
		compositional = try createInstance(type: FHIRBool.self, for: "compositional", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? compositional
		concept = try createInstances(of: CodeSystemConcept.self, for: "concept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? concept
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		content = createEnum(type: CodeSystemContentMode.self, for: "content", in: json, presentKeys: &presentKeys, errors: &errors) ?? content
		if nil == content && !presentKeys.contains("content") {
			errors.append(FHIRValidationError(missing: "content"))
		}
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		count = try createInstance(type: FHIRInteger.self, for: "count", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? count
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		filter = try createInstances(of: CodeSystemFilter.self, for: "filter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? filter
		hierarchyMeaning = createEnum(type: CodeSystemHierarchyMeaning.self, for: "hierarchyMeaning", in: json, presentKeys: &presentKeys, errors: &errors) ?? hierarchyMeaning
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		property = try createInstances(of: CodeSystemProperty.self, for: "property", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? property
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		valueSet = try createInstance(type: FHIRURL.self, for: "valueSet", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSet
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		versionNeeded = try createInstance(type: FHIRBool.self, for: "versionNeeded", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? versionNeeded
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		concept = try createInstances(of: CodeSystemConcept.self, for: "concept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? concept
		definition = try createInstance(type: FHIRString.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		designation = try createInstances(of: CodeSystemConceptDesignation.self, for: "designation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? designation
		display = try createInstance(type: FHIRString.self, for: "display", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? display
		property = try createInstances(of: CodeSystemConceptProperty.self, for: "property", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? property
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		language = try createInstance(type: FHIRString.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		use = try createInstance(type: Coding.self, for: "use", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? use
		value = try createInstance(type: FHIRString.self, for: "value", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? value
		if nil == value && !presentKeys.contains("value") {
			errors.append(FHIRValidationError(missing: "value"))
		}
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		valueBoolean = try createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBoolean
		valueCode = try createInstance(type: FHIRString.self, for: "valueCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCode
		valueCoding = try createInstance(type: Coding.self, for: "valueCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCoding
		valueDateTime = try createInstance(type: DateTime.self, for: "valueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDateTime
		valueInteger = try createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInteger
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueCode && nil == self.valueCoding && nil == self.valueString && nil == self.valueInteger && nil == self.valueBoolean && nil == self.valueDateTime {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		operator_fhir = createEnums(of: FilterOperator.self, for: "operator", in: json, presentKeys: &presentKeys, errors: &errors) ?? operator_fhir
		if (nil == operator_fhir || operator_fhir!.isEmpty) && !presentKeys.contains("operator") {
			errors.append(FHIRValidationError(missing: "operator"))
		}
		value = try createInstance(type: FHIRString.self, for: "value", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? value
		if nil == value && !presentKeys.contains("value") {
			errors.append(FHIRValidationError(missing: "value"))
		}
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		type = createEnum(type: PropertyType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		uri = try createInstance(type: FHIRURL.self, for: "uri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uri
		
		return errors.isEmpty ? nil : errors
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

