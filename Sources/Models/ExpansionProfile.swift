//
//  ExpansionProfile.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ExpansionProfile) on 2016-12-06.
//  2016, SMART Health IT.
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
	public var activeOnly: Bool?
	
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
	public var excludeNested: Bool?
	
	/// Include or exclude codes which cannot be rendered in user interfaces in the value set expansion.
	public var excludeNotForUI: Bool?
	
	/// Include or exclude codes which are post coordinated expressions in the value set expansion.
	public var excludePostCoordinated: Bool?
	
	/// Systems/Versions to be exclude.
	public var excludedSystem: ExpansionProfileExcludedSystem?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Fix use of a code system to a particular version.
	public var fixedVersion: [ExpansionProfileFixedVersion]?
	
	/// Additional identifier for the expansion profile.
	public var identifier: Identifier?
	
	/// Include or exclude the value set definition in the expansion.
	public var includeDefinition: Bool?
	
	/// Whether the expansion should include concept designations.
	public var includeDesignations: Bool?
	
	/// Intended jurisdiction for expansion profile (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Controls behaviour of the value set expand operation when value sets are too large to be completely expanded.
	public var limitedExpansion: Bool?
	
	/// Name for this expansion profile (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// The status of this expansion profile. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Logical uri to reference this expansion profile (globally unique).
	public var url: URL?
	
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
		if let exist = json["activeOnly"] {
			presentKeys.insert("activeOnly")
			if let val = exist as? Bool {
				self.activeOnly = val
			}
			else {
				errors.append(FHIRValidationError(key: "activeOnly", wants: Bool.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["designation"] {
			presentKeys.insert("designation")
			if let val = exist as? FHIRJSON {
				do {
					self.designation = try ExpansionProfileDesignation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "designation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "designation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["displayLanguage"] {
			presentKeys.insert("displayLanguage")
			if let val = exist as? String {
				self.displayLanguage = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "displayLanguage", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["excludeNested"] {
			presentKeys.insert("excludeNested")
			if let val = exist as? Bool {
				self.excludeNested = val
			}
			else {
				errors.append(FHIRValidationError(key: "excludeNested", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["excludeNotForUI"] {
			presentKeys.insert("excludeNotForUI")
			if let val = exist as? Bool {
				self.excludeNotForUI = val
			}
			else {
				errors.append(FHIRValidationError(key: "excludeNotForUI", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["excludePostCoordinated"] {
			presentKeys.insert("excludePostCoordinated")
			if let val = exist as? Bool {
				self.excludePostCoordinated = val
			}
			else {
				errors.append(FHIRValidationError(key: "excludePostCoordinated", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["excludedSystem"] {
			presentKeys.insert("excludedSystem")
			if let val = exist as? FHIRJSON {
				do {
					self.excludedSystem = try ExpansionProfileExcludedSystem(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "excludedSystem"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "excludedSystem", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["fixedVersion"] {
			presentKeys.insert("fixedVersion")
			if let val = exist as? [FHIRJSON] {
				do {
					self.fixedVersion = try ExpansionProfileFixedVersion.instantiate(fromArray: val, owner: self) as? [ExpansionProfileFixedVersion]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedVersion"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedVersion", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["includeDefinition"] {
			presentKeys.insert("includeDefinition")
			if let val = exist as? Bool {
				self.includeDefinition = val
			}
			else {
				errors.append(FHIRValidationError(key: "includeDefinition", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["includeDesignations"] {
			presentKeys.insert("includeDesignations")
			if let val = exist as? Bool {
				self.includeDesignations = val
			}
			else {
				errors.append(FHIRValidationError(key: "includeDesignations", wants: Bool.self, has: type(of: exist)))
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
		if let exist = json["limitedExpansion"] {
			presentKeys.insert("limitedExpansion")
			if let val = exist as? Bool {
				self.limitedExpansion = val
			}
			else {
				errors.append(FHIRValidationError(key: "limitedExpansion", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
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
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
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
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let activeOnly = self.activeOnly {
			json["activeOnly"] = activeOnly.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let designation = self.designation {
			json["designation"] = designation.asJSON(errors: &errors)
		}
		if let displayLanguage = self.displayLanguage {
			json["displayLanguage"] = displayLanguage.asJSON()
		}
		if let excludeNested = self.excludeNested {
			json["excludeNested"] = excludeNested.asJSON()
		}
		if let excludeNotForUI = self.excludeNotForUI {
			json["excludeNotForUI"] = excludeNotForUI.asJSON()
		}
		if let excludePostCoordinated = self.excludePostCoordinated {
			json["excludePostCoordinated"] = excludePostCoordinated.asJSON()
		}
		if let excludedSystem = self.excludedSystem {
			json["excludedSystem"] = excludedSystem.asJSON(errors: &errors)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fixedVersion = self.fixedVersion {
			json["fixedVersion"] = fixedVersion.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let includeDefinition = self.includeDefinition {
			json["includeDefinition"] = includeDefinition.asJSON()
		}
		if let includeDesignations = self.includeDesignations {
			json["includeDesignations"] = includeDesignations.asJSON()
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let limitedExpansion = self.limitedExpansion {
			json["limitedExpansion"] = limitedExpansion.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
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
		if let exist = json["exclude"] {
			presentKeys.insert("exclude")
			if let val = exist as? FHIRJSON {
				do {
					self.exclude = try ExpansionProfileDesignationExclude(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "exclude"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "exclude", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["include"] {
			presentKeys.insert("include")
			if let val = exist as? FHIRJSON {
				do {
					self.include = try ExpansionProfileDesignationInclude(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "include"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "include", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let exclude = self.exclude {
			json["exclude"] = exclude.asJSON(errors: &errors)
		}
		if let include = self.include {
			json["include"] = include.asJSON(errors: &errors)
		}
		
		return json
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
		if let exist = json["designation"] {
			presentKeys.insert("designation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.designation = try ExpansionProfileDesignationExcludeDesignation.instantiate(fromArray: val, owner: self) as? [ExpansionProfileDesignationExcludeDesignation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "designation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "designation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let designation = self.designation {
			json["designation"] = designation.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
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
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? String {
				self.language = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["use"] {
			presentKeys.insert("use")
			if let val = exist as? FHIRJSON {
				do {
					self.use = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "use"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "use", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON(errors: &errors)
		}
		
		return json
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
		if let exist = json["designation"] {
			presentKeys.insert("designation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.designation = try ExpansionProfileDesignationIncludeDesignation.instantiate(fromArray: val, owner: self) as? [ExpansionProfileDesignationIncludeDesignation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "designation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "designation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let designation = self.designation {
			json["designation"] = designation.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
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
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? String {
				self.language = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["use"] {
			presentKeys.insert("use")
			if let val = exist as? FHIRJSON {
				do {
					self.use = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "use"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "use", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON(errors: &errors)
		}
		
		return json
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
	public var system: URL?
	
	/// Specific version of the code system referred to.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(system: URL) {
		self.init()
		self.system = system
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["system"] {
			presentKeys.insert("system")
			if let val = exist as? String {
				self.system = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "system", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "system"))
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "system"))
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
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
	public var system: URL?
	
	/// Specific version of the code system referred to.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: SystemVersionProcessingMode, system: URL, version: FHIRString) {
		self.init()
		self.mode = mode
		self.system = system
		self.version = version
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				if let enumval = SystemVersionProcessingMode(rawValue: val) {
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
		if let exist = json["system"] {
			presentKeys.insert("system")
			if let val = exist as? String {
				self.system = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "system", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "system"))
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "version"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let mode = self.mode {
			json["mode"] = mode.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "system"))
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "version"))
		}
		
		return json
	}
}

