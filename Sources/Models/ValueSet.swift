//
//  ValueSet.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/ValueSet) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
A set of codes drawn from one or more code systems.

A value set specifies a set of codes drawn from one or more code systems.
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
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the value set.
	public var description_fhir: FHIRString?
	
	/// Used when the value set is "expanded".
	public var expansion: ValueSetExpansion?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Whether this is intended to be used with an extensible binding.
	public var extensible: FHIRBool?
	
	/// Additional identifier for the value set.
	public var identifier: [Identifier]?
	
	/// Indicates whether or not any change to the content logical definition may occur.
	public var immutable: FHIRBool?
	
	/// Intended jurisdiction for value set (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this value set (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this value set is defined.
	public var purpose: FHIRString?
	
	/// The status of this value set. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this value set (Human friendly).
	public var title: FHIRString?
	
	/// Logical uri to reference this value set (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the value set.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		compose = try createInstance(type: ValueSetCompose.self, for: "compose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? compose
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		expansion = try createInstance(type: ValueSetExpansion.self, for: "expansion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expansion
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		extensible = try createInstance(type: FHIRBool.self, for: "extensible", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? extensible
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		immutable = try createInstance(type: FHIRBool.self, for: "immutable", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? immutable
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.compose?.decorate(json: &json, withKey: "compose", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expansion?.decorate(json: &json, withKey: "expansion", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		self.extensible?.decorate(json: &json, withKey: "extensible", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.immutable?.decorate(json: &json, withKey: "immutable", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Definition of the content of the value set (CLD).

A set of criteria that define the content logical definition of the value set by including or excluding codes from
outside this value set. This I also known as the "Content Logical Definition" (CLD).
*/
open class ValueSetCompose: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetCompose" }
	}
	
	/// Explicitly exclude codes from a code system or other value sets.
	public var exclude: [ValueSetComposeInclude]?
	
	/// Whether inactive codes are in the value set.
	public var inactive: FHIRBool?
	
	/// Include one or more codes from a code system or other value set(s).
	public var include: [ValueSetComposeInclude]?
	
	/// Fixed date for version-less references (transitive).
	public var lockedDate: FHIRDate?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(include: [ValueSetComposeInclude]) {
		self.init()
		self.include = include
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		exclude = try createInstances(of: ValueSetComposeInclude.self, for: "exclude", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? exclude
		inactive = try createInstance(type: FHIRBool.self, for: "inactive", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? inactive
		include = try createInstances(of: ValueSetComposeInclude.self, for: "include", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? include
		if (nil == include || include!.isEmpty) && !presentKeys.contains("include") {
			errors.append(FHIRValidationError(missing: "include"))
		}
		lockedDate = try createInstance(type: FHIRDate.self, for: "lockedDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lockedDate
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "exclude", using: self.exclude, errors: &errors)
		self.inactive?.decorate(json: &json, withKey: "inactive", errors: &errors)
		arrayDecorate(json: &json, withKey: "include", using: self.include, errors: &errors)
		if nil == include || self.include!.isEmpty {
			errors.append(FHIRValidationError(missing: "include"))
		}
		self.lockedDate?.decorate(json: &json, withKey: "lockedDate", errors: &errors)
	}
}


/**
Include one or more codes from a code system or other value set(s).
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
	public var system: FHIRURL?
	
	/// Select only contents included in this value set.
	public var valueSet: [FHIRURL]?
	
	/// Specific version of the code system referred to.
	public var version: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		concept = try createInstances(of: ValueSetComposeIncludeConcept.self, for: "concept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? concept
		filter = try createInstances(of: ValueSetComposeIncludeFilter.self, for: "filter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? filter
		system = try createInstance(type: FHIRURL.self, for: "system", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? system
		valueSet = try createInstances(of: FHIRURL.self, for: "valueSet", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSet
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "concept", using: self.concept, errors: &errors)
		arrayDecorate(json: &json, withKey: "filter", using: self.filter, errors: &errors)
		self.system?.decorate(json: &json, withKey: "system", errors: &errors)
		arrayDecorate(json: &json, withKey: "valueSet", using: self.valueSet, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
A concept defined in the system.

Specifies a concept to be included or excluded.
*/
open class ValueSetComposeIncludeConcept: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeIncludeConcept" }
	}
	
	/// Code or expression from system.
	public var code: FHIRString?
	
	/// Additional representations for this concept.
	public var designation: [ValueSetComposeIncludeConceptDesignation]?
	
	/// Text to display for this code for this value set in this valueset.
	public var display: FHIRString?
	
	
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
		designation = try createInstances(of: ValueSetComposeIncludeConceptDesignation.self, for: "designation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? designation
		display = try createInstance(type: FHIRString.self, for: "display", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? display
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "designation", using: self.designation, errors: &errors)
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
	}
}


/**
Additional representations for this concept.

Additional representations for this concept when used in this value set - other languages, aliases, specialized
purposes, used for particular purposes, etc.
*/
open class ValueSetComposeIncludeConceptDesignation: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeIncludeConceptDesignation" }
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
Select codes/concepts by their properties (including relationships).

Select concepts by specify a matching criteria based on the properties (including relationships) defined by the system.
If multiple filters are specified, they SHALL all be true.
*/
open class ValueSetComposeIncludeFilter: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeIncludeFilter" }
	}
	
	/// The kind of operation to perform as a part of the filter criteria.
	public var op: FilterOperator?
	
	/// A property defined by the code system.
	public var property: FHIRString?
	
	/// Code from the system, or regex criteria.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(op: FilterOperator, property: FHIRString, value: FHIRString) {
		self.init()
		self.op = op
		self.property = property
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		op = createEnum(type: FilterOperator.self, for: "op", in: json, presentKeys: &presentKeys, errors: &errors) ?? op
		if nil == op && !presentKeys.contains("op") {
			errors.append(FHIRValidationError(missing: "op"))
		}
		property = try createInstance(type: FHIRString.self, for: "property", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? property
		if nil == property && !presentKeys.contains("property") {
			errors.append(FHIRValidationError(missing: "property"))
		}
		value = try createInstance(type: FHIRString.self, for: "value", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? value
		if nil == value && !presentKeys.contains("value") {
			errors.append(FHIRValidationError(missing: "value"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.op?.decorate(json: &json, withKey: "op", errors: &errors)
		if nil == self.op {
			errors.append(FHIRValidationError(missing: "op"))
		}
		self.property?.decorate(json: &json, withKey: "property", errors: &errors)
		if nil == self.property {
			errors.append(FHIRValidationError(missing: "property"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
	}
}


/**
Used when the value set is "expanded".

A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This
element holds the expansion, if it has been performed.
*/
open class ValueSetExpansion: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetExpansion" }
	}
	
	/// Codes in the value set.
	public var contains: [ValueSetExpansionContains]?
	
	/// Uniquely identifies this expansion.
	public var identifier: FHIRURL?
	
	/// Offset at which this resource starts.
	public var offset: FHIRInteger?
	
	/// Parameter that controlled the expansion process.
	public var parameter: [ValueSetExpansionParameter]?
	
	/// Time ValueSet expansion happened.
	public var timestamp: DateTime?
	
	/// Total number of codes in the expansion.
	public var total: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: FHIRURL, timestamp: DateTime) {
		self.init()
		self.identifier = identifier
		self.timestamp = timestamp
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		contains = try createInstances(of: ValueSetExpansionContains.self, for: "contains", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contains
		identifier = try createInstance(type: FHIRURL.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		offset = try createInstance(type: FHIRInteger.self, for: "offset", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? offset
		parameter = try createInstances(of: ValueSetExpansionParameter.self, for: "parameter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parameter
		timestamp = try createInstance(type: DateTime.self, for: "timestamp", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timestamp
		if nil == timestamp && !presentKeys.contains("timestamp") {
			errors.append(FHIRValidationError(missing: "timestamp"))
		}
		total = try createInstance(type: FHIRInteger.self, for: "total", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? total
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contains", using: self.contains, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		self.offset?.decorate(json: &json, withKey: "offset", errors: &errors)
		arrayDecorate(json: &json, withKey: "parameter", using: self.parameter, errors: &errors)
		self.timestamp?.decorate(json: &json, withKey: "timestamp", errors: &errors)
		if nil == self.timestamp {
			errors.append(FHIRValidationError(missing: "timestamp"))
		}
		self.total?.decorate(json: &json, withKey: "total", errors: &errors)
	}
}


/**
Codes in the value set.

The codes that are contained in the value set expansion.
*/
open class ValueSetExpansionContains: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetExpansionContains" }
	}
	
	/// If user cannot select this entry.
	public var abstract: FHIRBool?
	
	/// Code - if blank, this is not a selectable code.
	public var code: FHIRString?
	
	/// Codes contained under this entry.
	public var contains: [ValueSetExpansionContains]?
	
	/// Additional representations for this item.
	public var designation: [ValueSetComposeIncludeConceptDesignation]?
	
	/// User display for the concept.
	public var display: FHIRString?
	
	/// If concept is inactive in the code system.
	public var inactive: FHIRBool?
	
	/// System value for the code.
	public var system: FHIRURL?
	
	/// Version in which this code/display is defined.
	public var version: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		abstract = try createInstance(type: FHIRBool.self, for: "abstract", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? abstract
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		contains = try createInstances(of: ValueSetExpansionContains.self, for: "contains", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contains
		designation = try createInstances(of: ValueSetComposeIncludeConceptDesignation.self, for: "designation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? designation
		display = try createInstance(type: FHIRString.self, for: "display", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? display
		inactive = try createInstance(type: FHIRBool.self, for: "inactive", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? inactive
		system = try createInstance(type: FHIRURL.self, for: "system", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? system
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.abstract?.decorate(json: &json, withKey: "abstract", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "contains", using: self.contains, errors: &errors)
		arrayDecorate(json: &json, withKey: "designation", using: self.designation, errors: &errors)
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		self.inactive?.decorate(json: &json, withKey: "inactive", errors: &errors)
		self.system?.decorate(json: &json, withKey: "system", errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Parameter that controlled the expansion process.

A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to check
whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
*/
open class ValueSetExpansionParameter: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetExpansionParameter" }
	}
	
	/// Name as assigned by the server.
	public var name: FHIRString?
	
	/// Value of the named parameter.
	public var valueBoolean: FHIRBool?
	
	/// Value of the named parameter.
	public var valueCode: FHIRString?
	
	/// Value of the named parameter.
	public var valueDecimal: FHIRDecimal?
	
	/// Value of the named parameter.
	public var valueInteger: FHIRInteger?
	
	/// Value of the named parameter.
	public var valueString: FHIRString?
	
	/// Value of the named parameter.
	public var valueUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		valueBoolean = try createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBoolean
		valueCode = try createInstance(type: FHIRString.self, for: "valueCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCode
		valueDecimal = try createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDecimal
		valueInteger = try createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInteger
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		valueUri = try createInstance(type: FHIRURL.self, for: "valueUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueUri
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCode?.decorate(json: &json, withKey: "valueCode", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueUri?.decorate(json: &json, withKey: "valueUri", errors: &errors)
	}
}

