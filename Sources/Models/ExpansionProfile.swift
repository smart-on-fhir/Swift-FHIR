//
//  ExpansionProfile.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/ExpansionProfile) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Defines behaviour and contraints on the ValueSet Expansion operation.
 *
 *  Resource to define constraints on the Expansion of a FHIR ValueSet.
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
	public var description_fhir: String?
	
	/// When the expansion profile imposes designation contraints.
	public var designation: ExpansionProfileDesignation?
	
	/// Specify the language for the display element of codes in the value set expansion.
	public var displayLanguage: String?
	
	/// Include or exclude nested codes in the value set expansion.
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
	public var name: String?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Logical uri to reference this expansion profile (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the expansion profile.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["activeOnly"] {
				presentKeys.insert("activeOnly")
				if let val = exist as? Bool {
					self.activeOnly = val
				}
				else {
					errors.append(FHIRJSONError(key: "activeOnly", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["designation"] {
				presentKeys.insert("designation")
				if let val = exist as? FHIRJSON {
					self.designation = ExpansionProfileDesignation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "designation", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["displayLanguage"] {
				presentKeys.insert("displayLanguage")
				if let val = exist as? String {
					self.displayLanguage = val
				}
				else {
					errors.append(FHIRJSONError(key: "displayLanguage", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["excludeNested"] {
				presentKeys.insert("excludeNested")
				if let val = exist as? Bool {
					self.excludeNested = val
				}
				else {
					errors.append(FHIRJSONError(key: "excludeNested", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["excludeNotForUI"] {
				presentKeys.insert("excludeNotForUI")
				if let val = exist as? Bool {
					self.excludeNotForUI = val
				}
				else {
					errors.append(FHIRJSONError(key: "excludeNotForUI", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["excludePostCoordinated"] {
				presentKeys.insert("excludePostCoordinated")
				if let val = exist as? Bool {
					self.excludePostCoordinated = val
				}
				else {
					errors.append(FHIRJSONError(key: "excludePostCoordinated", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["excludedSystem"] {
				presentKeys.insert("excludedSystem")
				if let val = exist as? FHIRJSON {
					self.excludedSystem = ExpansionProfileExcludedSystem(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "excludedSystem", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["fixedVersion"] {
				presentKeys.insert("fixedVersion")
				if let val = exist as? [FHIRJSON] {
					self.fixedVersion = ExpansionProfileFixedVersion.instantiate(fromArray: val, owner: self) as? [ExpansionProfileFixedVersion]
				}
				else {
					errors.append(FHIRJSONError(key: "fixedVersion", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["includeDefinition"] {
				presentKeys.insert("includeDefinition")
				if let val = exist as? Bool {
					self.includeDefinition = val
				}
				else {
					errors.append(FHIRJSONError(key: "includeDefinition", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["includeDesignations"] {
				presentKeys.insert("includeDesignations")
				if let val = exist as? Bool {
					self.includeDesignations = val
				}
				else {
					errors.append(FHIRJSONError(key: "includeDesignations", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["jurisdiction"] {
				presentKeys.insert("jurisdiction")
				if let val = exist as? [FHIRJSON] {
					self.jurisdiction = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["limitedExpansion"] {
				presentKeys.insert("limitedExpansion")
				if let val = exist as? Bool {
					self.limitedExpansion = val
				}
				else {
					errors.append(FHIRJSONError(key: "limitedExpansion", wants: Bool.self, has: type(of: exist)))
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
			if let exist = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: type(of: exist)))
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
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
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
		
		if let activeOnly = self.activeOnly {
			json["activeOnly"] = activeOnly.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let designation = self.designation {
			json["designation"] = designation.asJSON()
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
			json["excludedSystem"] = excludedSystem.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fixedVersion = self.fixedVersion {
			json["fixedVersion"] = fixedVersion.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let includeDefinition = self.includeDefinition {
			json["includeDefinition"] = includeDefinition.asJSON()
		}
		if let includeDesignations = self.includeDesignations {
			json["includeDesignations"] = includeDesignations.asJSON()
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON() }
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
			json["status"] = status.asJSON()
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
 *  When the expansion profile imposes designation contraints.
 *
 *  A set of criteria that provide the constraints imposed on the value set expansion by including or excluding
 *  designations.
 */
open class ExpansionProfileDesignation: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileDesignation" }
	}
	
	/// Designations to be excluded.
	public var exclude: ExpansionProfileDesignationExclude?
	
	/// Designations to be included.
	public var include: ExpansionProfileDesignationInclude?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["exclude"] {
				presentKeys.insert("exclude")
				if let val = exist as? FHIRJSON {
					self.exclude = ExpansionProfileDesignationExclude(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exclude", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["include"] {
				presentKeys.insert("include")
				if let val = exist as? FHIRJSON {
					self.include = ExpansionProfileDesignationInclude(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "include", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let exclude = self.exclude {
			json["exclude"] = exclude.asJSON()
		}
		if let include = self.include {
			json["include"] = include.asJSON()
		}
		
		return json
	}
}


/**
 *  Designations to be excluded.
 */
open class ExpansionProfileDesignationExclude: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileDesignationExclude" }
	}
	
	/// The designation to be excluded.
	public var designation: [ExpansionProfileDesignationExcludeDesignation]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["designation"] {
				presentKeys.insert("designation")
				if let val = exist as? [FHIRJSON] {
					self.designation = ExpansionProfileDesignationExcludeDesignation.instantiate(fromArray: val, owner: self) as? [ExpansionProfileDesignationExcludeDesignation]
				}
				else {
					errors.append(FHIRJSONError(key: "designation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let designation = self.designation {
			json["designation"] = designation.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  The designation to be excluded.
 *
 *  A data group for each designation to be excluded.
 */
open class ExpansionProfileDesignationExcludeDesignation: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileDesignationExcludeDesignation" }
	}
	
	/// Human language of the designation to be excluded.
	public var language: String?
	
	/// Designation use.
	public var use: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? FHIRJSON {
					self.use = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		
		return json
	}
}


/**
 *  Designations to be included.
 */
open class ExpansionProfileDesignationInclude: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileDesignationInclude" }
	}
	
	/// The designation to be included.
	public var designation: [ExpansionProfileDesignationIncludeDesignation]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["designation"] {
				presentKeys.insert("designation")
				if let val = exist as? [FHIRJSON] {
					self.designation = ExpansionProfileDesignationIncludeDesignation.instantiate(fromArray: val, owner: self) as? [ExpansionProfileDesignationIncludeDesignation]
				}
				else {
					errors.append(FHIRJSONError(key: "designation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let designation = self.designation {
			json["designation"] = designation.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  The designation to be included.
 *
 *  A data group for each designation to be included.
 */
open class ExpansionProfileDesignationIncludeDesignation: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileDesignationIncludeDesignation" }
	}
	
	/// Human language of the designation to be included.
	public var language: String?
	
	/// Designation use.
	public var use: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? FHIRJSON {
					self.use = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		
		return json
	}
}


/**
 *  Systems/Versions to be exclude.
 *
 *  Code system, or a particular version of a code system to be excluded from value set expansions.
 */
open class ExpansionProfileExcludedSystem: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileExcludedSystem" }
	}
	
	/// The specific code system to be excluded.
	public var system: URL?
	
	/// Specific version of the code system referred to.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(system: URL) {
		self.init(json: nil)
		self.system = system
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? String {
					self.system = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "system"))
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
		
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Fix use of a code system to a particular version.
 *
 *  Fix use of a particular code system to a particular version.
 */
open class ExpansionProfileFixedVersion: BackboneElement {
	override open class var resourceType: String {
		get { return "ExpansionProfileFixedVersion" }
	}
	
	/// default | check | override.
	public var mode: String?
	
	/// System to have it's version fixed.
	public var system: URL?
	
	/// Specific version of the code system referred to.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: String, system: URL, version: String) {
		self.init(json: nil)
		self.mode = mode
		self.system = system
		self.version = version
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
			if let exist = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? String {
					self.system = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "system"))
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
			else {
				errors.append(FHIRJSONError(key: "version"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

