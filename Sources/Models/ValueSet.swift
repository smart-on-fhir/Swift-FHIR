//
//  ValueSet.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ValueSet) on 2017-03-22.
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
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Whether this is intended to be used with an extensible binding.
	public var extensible: FHIRBool?
	
	/// Additional identifier for the value set.
	public var identifier: [Identifier]?
	
	/// Indicates whether or not any change to the content logical definition may occur.
	public var immutable: FHIRBool?
	
	/// Intended jurisdiction for value set (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this value set (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this value set is defined.
	public var purpose: FHIRString?
	
	/// The status of this value set. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this value set (human friendly).
	public var title: FHIRString?
	
	/// Logical URI to reference this value set (globally unique).
	public var url: FHIRURL?
	
	/// Context the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the value set.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		compose = createInstance(type: ValueSetCompose.self, for: "compose", in: json, context: &instCtx, owner: self) ?? compose
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		expansion = createInstance(type: ValueSetExpansion.self, for: "expansion", in: json, context: &instCtx, owner: self) ?? expansion
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		extensible = createInstance(type: FHIRBool.self, for: "extensible", in: json, context: &instCtx, owner: self) ?? extensible
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		immutable = createInstance(type: FHIRBool.self, for: "immutable", in: json, context: &instCtx, owner: self) ?? immutable
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		exclude = createInstances(of: ValueSetComposeInclude.self, for: "exclude", in: json, context: &instCtx, owner: self) ?? exclude
		inactive = createInstance(type: FHIRBool.self, for: "inactive", in: json, context: &instCtx, owner: self) ?? inactive
		include = createInstances(of: ValueSetComposeInclude.self, for: "include", in: json, context: &instCtx, owner: self) ?? include
		if (nil == include || include!.isEmpty) && !instCtx.containsKey("include") {
			instCtx.addError(FHIRValidationError(missing: "include"))
		}
		lockedDate = createInstance(type: FHIRDate.self, for: "lockedDate", in: json, context: &instCtx, owner: self) ?? lockedDate
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		concept = createInstances(of: ValueSetComposeIncludeConcept.self, for: "concept", in: json, context: &instCtx, owner: self) ?? concept
		filter = createInstances(of: ValueSetComposeIncludeFilter.self, for: "filter", in: json, context: &instCtx, owner: self) ?? filter
		system = createInstance(type: FHIRURL.self, for: "system", in: json, context: &instCtx, owner: self) ?? system
		valueSet = createInstances(of: FHIRURL.self, for: "valueSet", in: json, context: &instCtx, owner: self) ?? valueSet
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		designation = createInstances(of: ValueSetComposeIncludeConceptDesignation.self, for: "designation", in: json, context: &instCtx, owner: self) ?? designation
		display = createInstance(type: FHIRString.self, for: "display", in: json, context: &instCtx, owner: self) ?? display
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
	
	/// Code from the system, or regex criteria, or boolean value for exists.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(op: FilterOperator, property: FHIRString, value: FHIRString) {
		self.init()
		self.op = op
		self.property = property
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		op = createEnum(type: FilterOperator.self, for: "op", in: json, context: &instCtx) ?? op
		if nil == op && !instCtx.containsKey("op") {
			instCtx.addError(FHIRValidationError(missing: "op"))
		}
		property = createInstance(type: FHIRString.self, for: "property", in: json, context: &instCtx, owner: self) ?? property
		if nil == property && !instCtx.containsKey("property") {
			instCtx.addError(FHIRValidationError(missing: "property"))
		}
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contains = createInstances(of: ValueSetExpansionContains.self, for: "contains", in: json, context: &instCtx, owner: self) ?? contains
		identifier = createInstance(type: FHIRURL.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		if nil == identifier && !instCtx.containsKey("identifier") {
			instCtx.addError(FHIRValidationError(missing: "identifier"))
		}
		offset = createInstance(type: FHIRInteger.self, for: "offset", in: json, context: &instCtx, owner: self) ?? offset
		parameter = createInstances(of: ValueSetExpansionParameter.self, for: "parameter", in: json, context: &instCtx, owner: self) ?? parameter
		timestamp = createInstance(type: DateTime.self, for: "timestamp", in: json, context: &instCtx, owner: self) ?? timestamp
		if nil == timestamp && !instCtx.containsKey("timestamp") {
			instCtx.addError(FHIRValidationError(missing: "timestamp"))
		}
		total = createInstance(type: FHIRInteger.self, for: "total", in: json, context: &instCtx, owner: self) ?? total
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		abstract = createInstance(type: FHIRBool.self, for: "abstract", in: json, context: &instCtx, owner: self) ?? abstract
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		contains = createInstances(of: ValueSetExpansionContains.self, for: "contains", in: json, context: &instCtx, owner: self) ?? contains
		designation = createInstances(of: ValueSetComposeIncludeConceptDesignation.self, for: "designation", in: json, context: &instCtx, owner: self) ?? designation
		display = createInstance(type: FHIRString.self, for: "display", in: json, context: &instCtx, owner: self) ?? display
		inactive = createInstance(type: FHIRBool.self, for: "inactive", in: json, context: &instCtx, owner: self) ?? inactive
		system = createInstance(type: FHIRURL.self, for: "system", in: json, context: &instCtx, owner: self) ?? system
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCode = createInstance(type: FHIRString.self, for: "valueCode", in: json, context: &instCtx, owner: self) ?? valueCode
		valueDecimal = createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, context: &instCtx, owner: self) ?? valueDecimal
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueUri = createInstance(type: FHIRURL.self, for: "valueUri", in: json, context: &instCtx, owner: self) ?? valueUri
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

