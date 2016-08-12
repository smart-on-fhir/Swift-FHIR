//
//  ExpansionProfile.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ExpansionProfile) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Defines behaviour and contraints on the ValueSet Expansion operation.
 *
 *  Resource to define constraints on the Expansion of a FHIR ValueSet.
 */
public class ExpansionProfile: DomainResource {
	override public class var resourceName: String {
		get { return "ExpansionProfile" }
	}
	
	/// When the expansion profile imposes code system contraints.
	public var codeSystem: ExpansionProfileCodeSystem?
	
	/// Contact details of the publisher.
	public var contact: [ExpansionProfileContact]?
	
	/// Date for given status.
	public var date: DateTime?
	
	/// Human language description of the expansion profile.
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
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Additional identifier for the expansion profile (e.g. an Object Identifier).
	public var identifier: Identifier?
	
	/// Include or exclude the value set definition in the expansion.
	public var includeDefinition: Bool?
	
	/// Whether the expansion should include concept designations.
	public var includeDesignations: Bool?
	
	/// Include or exclude inactive concepts in the expansion.
	public var includeInactive: Bool?
	
	/// Controls behaviour of the value set expand operation when value sets are too large to be completely expanded.
	public var limitedExpansion: Bool?
	
	/// Informal name for this expansion profile.
	public var name: String?
	
	/// Name of the publisher (organization or individual).
	public var publisher: String?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Globally unique logical identifier for  expansion profile.
	public var url: NSURL?
	
	/// Logical identifier for this version of the expansion profile.
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["codeSystem"] {
				presentKeys.insert("codeSystem")
				if let val = exist as? FHIRJSON {
					self.codeSystem = ExpansionProfileCodeSystem(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "codeSystem", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ExpansionProfileContact.from(val, owner: self) as? [ExpansionProfileContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["designation"] {
				presentKeys.insert("designation")
				if let val = exist as? FHIRJSON {
					self.designation = ExpansionProfileDesignation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "designation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["displayLanguage"] {
				presentKeys.insert("displayLanguage")
				if let val = exist as? String {
					self.displayLanguage = val
				}
				else {
					errors.append(FHIRJSONError(key: "displayLanguage", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["excludeNested"] {
				presentKeys.insert("excludeNested")
				if let val = exist as? Bool {
					self.excludeNested = val
				}
				else {
					errors.append(FHIRJSONError(key: "excludeNested", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["excludeNotForUI"] {
				presentKeys.insert("excludeNotForUI")
				if let val = exist as? Bool {
					self.excludeNotForUI = val
				}
				else {
					errors.append(FHIRJSONError(key: "excludeNotForUI", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["excludePostCoordinated"] {
				presentKeys.insert("excludePostCoordinated")
				if let val = exist as? Bool {
					self.excludePostCoordinated = val
				}
				else {
					errors.append(FHIRJSONError(key: "excludePostCoordinated", wants: Bool.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["includeDefinition"] {
				presentKeys.insert("includeDefinition")
				if let val = exist as? Bool {
					self.includeDefinition = val
				}
				else {
					errors.append(FHIRJSONError(key: "includeDefinition", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["includeDesignations"] {
				presentKeys.insert("includeDesignations")
				if let val = exist as? Bool {
					self.includeDesignations = val
				}
				else {
					errors.append(FHIRJSONError(key: "includeDesignations", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["includeInactive"] {
				presentKeys.insert("includeInactive")
				if let val = exist as? Bool {
					self.includeInactive = val
				}
				else {
					errors.append(FHIRJSONError(key: "includeInactive", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["limitedExpansion"] {
				presentKeys.insert("limitedExpansion")
				if let val = exist as? Bool {
					self.limitedExpansion = val
				}
				else {
					errors.append(FHIRJSONError(key: "limitedExpansion", wants: Bool.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
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
		
		if let codeSystem = self.codeSystem {
			json["codeSystem"] = codeSystem.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = ExpansionProfileContact.asJSONArray(contact)
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
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
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
		if let includeInactive = self.includeInactive {
			json["includeInactive"] = includeInactive.asJSON()
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
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  When the expansion profile imposes code system contraints.
 *
 *  A set of criteria that provide the constraints imposed on the value set expansion by including or excluding codes
 *  from specific code systems (or versions).
 */
public class ExpansionProfileCodeSystem: BackboneElement {
	override public class var resourceName: String {
		get { return "ExpansionProfileCodeSystem" }
	}
	
	/// Code systems to be excluded.
	public var exclude: ExpansionProfileCodeSystemExclude?
	
	/// Code systems to be included.
	public var include: ExpansionProfileCodeSystemInclude?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["exclude"] {
				presentKeys.insert("exclude")
				if let val = exist as? FHIRJSON {
					self.exclude = ExpansionProfileCodeSystemExclude(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exclude", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["include"] {
				presentKeys.insert("include")
				if let val = exist as? FHIRJSON {
					self.include = ExpansionProfileCodeSystemInclude(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "include", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  Code systems to be excluded.
 *
 *  Code systems to be excluded from value set expansions.
 */
public class ExpansionProfileCodeSystemExclude: BackboneElement {
	override public class var resourceName: String {
		get { return "ExpansionProfileCodeSystemExclude" }
	}
	
	/// The code systems to be excluded.
	public var codeSystem: [ExpansionProfileCodeSystemExcludeCodeSystem]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(codeSystem: [ExpansionProfileCodeSystemExcludeCodeSystem]) {
		self.init(json: nil)
		self.codeSystem = codeSystem
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["codeSystem"] {
				presentKeys.insert("codeSystem")
				if let val = exist as? [FHIRJSON] {
					self.codeSystem = ExpansionProfileCodeSystemExcludeCodeSystem.from(val, owner: self) as? [ExpansionProfileCodeSystemExcludeCodeSystem]
				}
				else {
					errors.append(FHIRJSONError(key: "codeSystem", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "codeSystem"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let codeSystem = self.codeSystem {
			json["codeSystem"] = ExpansionProfileCodeSystemExcludeCodeSystem.asJSONArray(codeSystem)
		}
		
		return json
	}
}


/**
 *  The code systems to be excluded.
 *
 *  A data group for each code system to be excluded.
 */
public class ExpansionProfileCodeSystemExcludeCodeSystem: BackboneElement {
	override public class var resourceName: String {
		get { return "ExpansionProfileCodeSystemExcludeCodeSystem" }
	}
	
	/// The specific code system to be excluded.
	public var system: NSURL?
	
	/// Specific version of the code system referred to.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(system: NSURL) {
		self.init(json: nil)
		self.system = system
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? String {
					self.system = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "system"))
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
 *  Code systems to be included.
 *
 *  Code systems to be included in value set expansions.
 */
public class ExpansionProfileCodeSystemInclude: BackboneElement {
	override public class var resourceName: String {
		get { return "ExpansionProfileCodeSystemInclude" }
	}
	
	/// The code systems to be included.
	public var codeSystem: [ExpansionProfileCodeSystemIncludeCodeSystem]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(codeSystem: [ExpansionProfileCodeSystemIncludeCodeSystem]) {
		self.init(json: nil)
		self.codeSystem = codeSystem
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["codeSystem"] {
				presentKeys.insert("codeSystem")
				if let val = exist as? [FHIRJSON] {
					self.codeSystem = ExpansionProfileCodeSystemIncludeCodeSystem.from(val, owner: self) as? [ExpansionProfileCodeSystemIncludeCodeSystem]
				}
				else {
					errors.append(FHIRJSONError(key: "codeSystem", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "codeSystem"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let codeSystem = self.codeSystem {
			json["codeSystem"] = ExpansionProfileCodeSystemIncludeCodeSystem.asJSONArray(codeSystem)
		}
		
		return json
	}
}


/**
 *  The code systems to be included.
 *
 *  A data group for each code system to be included.
 */
public class ExpansionProfileCodeSystemIncludeCodeSystem: BackboneElement {
	override public class var resourceName: String {
		get { return "ExpansionProfileCodeSystemIncludeCodeSystem" }
	}
	
	/// The specific code system to be included.
	public var system: NSURL?
	
	/// Specific version of the code system referred to.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(system: NSURL) {
		self.init(json: nil)
		self.system = system
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? String {
					self.system = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "system"))
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
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class ExpansionProfileContact: BackboneElement {
	override public class var resourceName: String {
		get { return "ExpansionProfileContact" }
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
 *  When the expansion profile imposes designation contraints.
 *
 *  A set of criteria that provide the constraints imposed on the value set expansion by including or excluding
 *  designations.
 */
public class ExpansionProfileDesignation: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["exclude"] {
				presentKeys.insert("exclude")
				if let val = exist as? FHIRJSON {
					self.exclude = ExpansionProfileDesignationExclude(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exclude", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["include"] {
				presentKeys.insert("include")
				if let val = exist as? FHIRJSON {
					self.include = ExpansionProfileDesignationInclude(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "include", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class ExpansionProfileDesignationExclude: BackboneElement {
	override public class var resourceName: String {
		get { return "ExpansionProfileDesignationExclude" }
	}
	
	/// The designation to be excluded.
	public var designation: [ExpansionProfileDesignationExcludeDesignation]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["designation"] {
				presentKeys.insert("designation")
				if let val = exist as? [FHIRJSON] {
					self.designation = ExpansionProfileDesignationExcludeDesignation.from(val, owner: self) as? [ExpansionProfileDesignationExcludeDesignation]
				}
				else {
					errors.append(FHIRJSONError(key: "designation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let designation = self.designation {
			json["designation"] = ExpansionProfileDesignationExcludeDesignation.asJSONArray(designation)
		}
		
		return json
	}
}


/**
 *  The designation to be excluded.
 *
 *  A data group for each designation to be excluded.
 */
public class ExpansionProfileDesignationExcludeDesignation: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? FHIRJSON {
					self.use = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class ExpansionProfileDesignationInclude: BackboneElement {
	override public class var resourceName: String {
		get { return "ExpansionProfileDesignationInclude" }
	}
	
	/// The designation to be included.
	public var designation: [ExpansionProfileDesignationIncludeDesignation]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["designation"] {
				presentKeys.insert("designation")
				if let val = exist as? [FHIRJSON] {
					self.designation = ExpansionProfileDesignationIncludeDesignation.from(val, owner: self) as? [ExpansionProfileDesignationIncludeDesignation]
				}
				else {
					errors.append(FHIRJSONError(key: "designation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let designation = self.designation {
			json["designation"] = ExpansionProfileDesignationIncludeDesignation.asJSONArray(designation)
		}
		
		return json
	}
}


/**
 *  The designation to be included.
 *
 *  A data group for each designation to be included.
 */
public class ExpansionProfileDesignationIncludeDesignation: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? FHIRJSON {
					self.use = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

