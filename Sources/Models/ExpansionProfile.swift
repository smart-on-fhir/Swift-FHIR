//
//  ExpansionProfile.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/ExpansionProfile) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Defines behaviour and contraints on the ValueSet Expansion operation.

Resource to define constraints on the Expansion of a FHIR ValueSet.
*/
open class ExpansionProfile: DomainResource {
	override open class var resourceType: String {
		get { return "ExpansionProfile" }
	}
	
	/// Include or exclude inactive concepts in the expansion.
	public var activeOnly: FHIRBool?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the expansion profile.
	public var description_fhir: FHIRString?
	
	/// When the expansion profile imposes designation contraints.
	public var designation: ExpansionProfileDesignation?
	
	/// Specify the language for the display element of codes in the value set expansion.
	public var displayLanguage: FHIRString?
	
	/// Nested codes in the expansion or not.
	public var excludeNested: FHIRBool?
	
	/// Include or exclude codes which cannot be rendered in user interfaces in the value set expansion.
	public var excludeNotForUI: FHIRBool?
	
	/// Include or exclude codes which are post coordinated expressions in the value set expansion.
	public var excludePostCoordinated: FHIRBool?
	
	/// Systems/Versions to be exclude.
	public var excludedSystem: ExpansionProfileExcludedSystem?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Fix use of a code system to a particular version.
	public var fixedVersion: [ExpansionProfileFixedVersion]?
	
	/// Additional identifier for the expansion profile.
	public var identifier: Identifier?
	
	/// Include or exclude the value set definition in the expansion.
	public var includeDefinition: FHIRBool?
	
	/// Whether the expansion should include concept designations.
	public var includeDesignations: FHIRBool?
	
	/// Intended jurisdiction for expansion profile (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Controls behaviour of the value set expand operation when value sets are too large to be completely expanded.
	public var limitedExpansion: FHIRBool?
	
	/// Name for this expansion profile (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// The status of this expansion profile. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Logical uri to reference this expansion profile (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the expansion profile.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		activeOnly = try createInstance(type: FHIRBool.self, for: "activeOnly", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? activeOnly
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		designation = try createInstance(type: ExpansionProfileDesignation.self, for: "designation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? designation
		displayLanguage = try createInstance(type: FHIRString.self, for: "displayLanguage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? displayLanguage
		excludeNested = try createInstance(type: FHIRBool.self, for: "excludeNested", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? excludeNested
		excludeNotForUI = try createInstance(type: FHIRBool.self, for: "excludeNotForUI", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? excludeNotForUI
		excludePostCoordinated = try createInstance(type: FHIRBool.self, for: "excludePostCoordinated", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? excludePostCoordinated
		excludedSystem = try createInstance(type: ExpansionProfileExcludedSystem.self, for: "excludedSystem", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? excludedSystem
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		fixedVersion = try createInstances(of: ExpansionProfileFixedVersion.self, for: "fixedVersion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedVersion
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		includeDefinition = try createInstance(type: FHIRBool.self, for: "includeDefinition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? includeDefinition
		includeDesignations = try createInstance(type: FHIRBool.self, for: "includeDesignations", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? includeDesignations
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		limitedExpansion = try createInstance(type: FHIRBool.self, for: "limitedExpansion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? limitedExpansion
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.activeOnly?.decorate(json: &json, withKey: "activeOnly", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.designation?.decorate(json: &json, withKey: "designation", errors: &errors)
		self.displayLanguage?.decorate(json: &json, withKey: "displayLanguage", errors: &errors)
		self.excludeNested?.decorate(json: &json, withKey: "excludeNested", errors: &errors)
		self.excludeNotForUI?.decorate(json: &json, withKey: "excludeNotForUI", errors: &errors)
		self.excludePostCoordinated?.decorate(json: &json, withKey: "excludePostCoordinated", errors: &errors)
		self.excludedSystem?.decorate(json: &json, withKey: "excludedSystem", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "fixedVersion", using: self.fixedVersion, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.includeDefinition?.decorate(json: &json, withKey: "includeDefinition", errors: &errors)
		self.includeDesignations?.decorate(json: &json, withKey: "includeDesignations", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.limitedExpansion?.decorate(json: &json, withKey: "limitedExpansion", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
When the expansion profile imposes designation contraints.

A set of criteria that provide the constraints imposed on the value set expansion by including or excluding
designations.
*/
open class ExpansionProfileDesignation: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileDesignation" }
	}
	
	/// Designations to be excluded.
	public var exclude: ExpansionProfileDesignationExclude?
	
	/// Designations to be included.
	public var include: ExpansionProfileDesignationInclude?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		exclude = try createInstance(type: ExpansionProfileDesignationExclude.self, for: "exclude", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? exclude
		include = try createInstance(type: ExpansionProfileDesignationInclude.self, for: "include", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? include
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.exclude?.decorate(json: &json, withKey: "exclude", errors: &errors)
		self.include?.decorate(json: &json, withKey: "include", errors: &errors)
	}
}


/**
Designations to be excluded.
*/
open class ExpansionProfileDesignationExclude: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileDesignationExclude" }
	}
	
	/// The designation to be excluded.
	public var designation: [ExpansionProfileDesignationExcludeDesignation]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		designation = try createInstances(of: ExpansionProfileDesignationExcludeDesignation.self, for: "designation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? designation
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "designation", using: self.designation, errors: &errors)
	}
}


/**
The designation to be excluded.

A data group for each designation to be excluded.
*/
open class ExpansionProfileDesignationExcludeDesignation: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileDesignationExcludeDesignation" }
	}
	
	/// Human language of the designation to be excluded.
	public var language: FHIRString?
	
	/// Designation use.
	public var use: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		language = try createInstance(type: FHIRString.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		use = try createInstance(type: Coding.self, for: "use", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? use
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
	}
}


/**
Designations to be included.
*/
open class ExpansionProfileDesignationInclude: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileDesignationInclude" }
	}
	
	/// The designation to be included.
	public var designation: [ExpansionProfileDesignationIncludeDesignation]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		designation = try createInstances(of: ExpansionProfileDesignationIncludeDesignation.self, for: "designation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? designation
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "designation", using: self.designation, errors: &errors)
	}
}


/**
The designation to be included.

A data group for each designation to be included.
*/
open class ExpansionProfileDesignationIncludeDesignation: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileDesignationIncludeDesignation" }
	}
	
	/// Human language of the designation to be included.
	public var language: FHIRString?
	
	/// Designation use.
	public var use: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		language = try createInstance(type: FHIRString.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		use = try createInstance(type: Coding.self, for: "use", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? use
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
	}
}


/**
Systems/Versions to be exclude.

Code system, or a particular version of a code system to be excluded from value set expansions.
*/
open class ExpansionProfileExcludedSystem: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileExcludedSystem" }
	}
	
	/// The specific code system to be excluded.
	public var system: FHIRURL?
	
	/// Specific version of the code system referred to.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(system: FHIRURL) {
		self.init()
		self.system = system
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		system = try createInstance(type: FHIRURL.self, for: "system", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? system
		if nil == system && !presentKeys.contains("system") {
			errors.append(FHIRValidationError(missing: "system"))
		}
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.system?.decorate(json: &json, withKey: "system", errors: &errors)
		if nil == self.system {
			errors.append(FHIRValidationError(missing: "system"))
		}
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Fix use of a code system to a particular version.

Fix use of a particular code system to a particular version.
*/
open class ExpansionProfileFixedVersion: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileFixedVersion" }
	}
	
	/// How to manage the intersection between a fixed version in a value set, and this fixed version of the system in
	/// the expansion profile.
	public var mode: SystemVersionProcessingMode?
	
	/// System to have it's version fixed.
	public var system: FHIRURL?
	
	/// Specific version of the code system referred to.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: SystemVersionProcessingMode, system: FHIRURL, version: FHIRString) {
		self.init()
		self.mode = mode
		self.system = system
		self.version = version
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		mode = createEnum(type: SystemVersionProcessingMode.self, for: "mode", in: json, presentKeys: &presentKeys, errors: &errors) ?? mode
		if nil == mode && !presentKeys.contains("mode") {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		system = try createInstance(type: FHIRURL.self, for: "system", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? system
		if nil == system && !presentKeys.contains("system") {
			errors.append(FHIRValidationError(missing: "system"))
		}
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		if nil == version && !presentKeys.contains("version") {
			errors.append(FHIRValidationError(missing: "version"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		if nil == self.mode {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		self.system?.decorate(json: &json, withKey: "system", errors: &errors)
		if nil == self.system {
			errors.append(FHIRValidationError(missing: "system"))
		}
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
		if nil == self.version {
			errors.append(FHIRValidationError(missing: "version"))
		}
	}
}

