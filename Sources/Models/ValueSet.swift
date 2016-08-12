//
//  ValueSet.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ValueSet) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A set of codes drawn from one or more code systems.
 *
 *  A value set specifies a set of codes drawn from one or more code systems.
 */
public class ValueSet: DomainResource {
	override public class var resourceName: String {
		get { return "ValueSet" }
	}
	
	/// When value set includes codes from elsewhere.
	public var compose: ValueSetCompose?
	
	/// Contact details of the publisher.
	public var contact: [ValueSetContact]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date for given status.
	public var date: DateTime?
	
	/// Human language description of the value set.
	public var description_fhir: String?
	
	/// Used when the value set is "expanded".
	public var expansion: ValueSetExpansion?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Whether this is intended to be used with an extensible binding.
	public var extensible: Bool?
	
	/// Additional identifier for the value set (e.g. HL7 v2 / CDA).
	public var identifier: [Identifier]?
	
	/// Indicates whether or not any change to the content logical definition may occur.
	public var immutable: Bool?
	
	/// Fixed date for all referenced code systems and value sets.
	public var lockedDate: Date?
	
	/// Informal name for this value set.
	public var name: String?
	
	/// Name of the publisher (organization or individual).
	public var publisher: String?
	
	/// Why needed.
	public var requirements: String?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Globally unique logical identifier for  value set.
	public var url: NSURL?
	
	/// Content intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Logical identifier for this version of the value set.
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
			if let exist: AnyObject = js["compose"] {
				presentKeys.insert("compose")
				if let val = exist as? FHIRJSON {
					self.compose = ValueSetCompose(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "compose", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ValueSetContact.from(val, owner: self) as? [ValueSetContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["expansion"] {
				presentKeys.insert("expansion")
				if let val = exist as? FHIRJSON {
					self.expansion = ValueSetExpansion(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "expansion", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["extensible"] {
				presentKeys.insert("extensible")
				if let val = exist as? Bool {
					self.extensible = val
				}
				else {
					errors.append(FHIRJSONError(key: "extensible", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["immutable"] {
				presentKeys.insert("immutable")
				if let val = exist as? Bool {
					self.immutable = val
				}
				else {
					errors.append(FHIRJSONError(key: "immutable", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lockedDate"] {
				presentKeys.insert("lockedDate")
				if let val = exist as? String {
					self.lockedDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lockedDate", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["requirements"] {
				presentKeys.insert("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(FHIRJSONError(key: "requirements", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		
		if let compose = self.compose {
			json["compose"] = compose.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = ValueSetContact.asJSONArray(contact)
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let expansion = self.expansion {
			json["expansion"] = expansion.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let extensible = self.extensible {
			json["extensible"] = extensible.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let immutable = self.immutable {
			json["immutable"] = immutable.asJSON()
		}
		if let lockedDate = self.lockedDate {
			json["lockedDate"] = lockedDate.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = CodeableConcept.asJSONArray(useContext)
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  When value set includes codes from elsewhere.
 *
 *  A set of criteria that provide the content logical definition of the value set by including or excluding codes from
 *  outside this value set.
 */
public class ValueSetCompose: BackboneElement {
	override public class var resourceName: String {
		get { return "ValueSetCompose" }
	}
	
	/// Explicitly exclude codes.
	public var exclude: [ValueSetComposeInclude]?
	
	/// Import the contents of another value set.
	public var import_fhir: [NSURL]?
	
	/// Include one or more codes from a code system.
	public var include: [ValueSetComposeInclude]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["exclude"] {
				presentKeys.insert("exclude")
				if let val = exist as? [FHIRJSON] {
					self.exclude = ValueSetComposeInclude.from(val, owner: self) as? [ValueSetComposeInclude]
				}
				else {
					errors.append(FHIRJSONError(key: "exclude", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["import"] {
				presentKeys.insert("import")
				if let val = exist as? [String] {
					self.import_fhir = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "import", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["include"] {
				presentKeys.insert("include")
				if let val = exist as? [FHIRJSON] {
					self.include = ValueSetComposeInclude.from(val, owner: self) as? [ValueSetComposeInclude]
				}
				else {
					errors.append(FHIRJSONError(key: "include", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let exclude = self.exclude {
			json["exclude"] = ValueSetComposeInclude.asJSONArray(exclude)
		}
		if let import_fhir = self.import_fhir {
			var arr = [AnyObject]()
			for val in import_fhir {
				arr.append(val.asJSON())
			}
			json["import"] = arr
		}
		if let include = self.include {
			json["include"] = ValueSetComposeInclude.asJSONArray(include)
		}
		
		return json
	}
}


/**
 *  Include one or more codes from a code system.
 */
public class ValueSetComposeInclude: BackboneElement {
	override public class var resourceName: String {
		get { return "ValueSetComposeInclude" }
	}
	
	/// A concept defined in the system.
	public var concept: [ValueSetComposeIncludeConcept]?
	
	/// Select codes/concepts by their properties (including relationships).
	public var filter: [ValueSetComposeIncludeFilter]?
	
	/// The system the codes come from.
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
			if let exist: AnyObject = js["concept"] {
				presentKeys.insert("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = ValueSetComposeIncludeConcept.from(val, owner: self) as? [ValueSetComposeIncludeConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "concept", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["filter"] {
				presentKeys.insert("filter")
				if let val = exist as? [FHIRJSON] {
					self.filter = ValueSetComposeIncludeFilter.from(val, owner: self) as? [ValueSetComposeIncludeFilter]
				}
				else {
					errors.append(FHIRJSONError(key: "filter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
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
		
		if let concept = self.concept {
			json["concept"] = ValueSetComposeIncludeConcept.asJSONArray(concept)
		}
		if let filter = self.filter {
			json["filter"] = ValueSetComposeIncludeFilter.asJSONArray(filter)
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


/**
 *  A concept defined in the system.
 *
 *  Specifies a concept to be included or excluded.
 */
public class ValueSetComposeIncludeConcept: BackboneElement {
	override public class var resourceName: String {
		get { return "ValueSetComposeIncludeConcept" }
	}
	
	/// Code or expression from system.
	public var code: String?
	
	/// Additional representations for this valueset.
	public var designation: [ValueSetComposeIncludeConceptDesignation]?
	
	/// Text to display for this code for this value set.
	public var display: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["designation"] {
				presentKeys.insert("designation")
				if let val = exist as? [FHIRJSON] {
					self.designation = ValueSetComposeIncludeConceptDesignation.from(val, owner: self) as? [ValueSetComposeIncludeConceptDesignation]
				}
				else {
					errors.append(FHIRJSONError(key: "designation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["display"] {
				presentKeys.insert("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(FHIRJSONError(key: "display", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let designation = self.designation {
			json["designation"] = ValueSetComposeIncludeConceptDesignation.asJSONArray(designation)
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		
		return json
	}
}


/**
 *  Additional representations for this valueset.
 *
 *  Additional representations for this concept when used in this value set - other languages, aliases, specialized
 *  purposes, used for particular purposes, etc.
 */
public class ValueSetComposeIncludeConceptDesignation: BackboneElement {
	override public class var resourceName: String {
		get { return "ValueSetComposeIncludeConceptDesignation" }
	}
	
	/// Human language of the designation.
	public var language: String?
	
	/// Details how this designation would be used.
	public var use: Coding?
	
	/// The text value for this designation.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: String) {
		self.init(json: nil)
		self.value = value
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
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
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
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Select codes/concepts by their properties (including relationships).
 *
 *  Select concepts by specify a matching criteria based on the properties (including relationships) defined by the
 *  system. If multiple filters are specified, they SHALL all be true.
 */
public class ValueSetComposeIncludeFilter: BackboneElement {
	override public class var resourceName: String {
		get { return "ValueSetComposeIncludeFilter" }
	}
	
	/// = | is-a | is-not-a | regex | in | not-in | generalizes.
	public var op: String?
	
	/// A property defined by the code system.
	public var property: String?
	
	/// Code from the system, or regex criteria.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(op: String, property: String, value: String) {
		self.init(json: nil)
		self.op = op
		self.property = property
		self.value = value
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["op"] {
				presentKeys.insert("op")
				if let val = exist as? String {
					self.op = val
				}
				else {
					errors.append(FHIRJSONError(key: "op", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "op"))
			}
			if let exist: AnyObject = js["property"] {
				presentKeys.insert("property")
				if let val = exist as? String {
					self.property = val
				}
				else {
					errors.append(FHIRJSONError(key: "property", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "property"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let op = self.op {
			json["op"] = op.asJSON()
		}
		if let property = self.property {
			json["property"] = property.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class ValueSetContact: BackboneElement {
	override public class var resourceName: String {
		get { return "ValueSetContact" }
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
 *  Used when the value set is "expanded".
 *
 *  A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This
 *  element holds the expansion, if it has been performed.
 */
public class ValueSetExpansion: BackboneElement {
	override public class var resourceName: String {
		get { return "ValueSetExpansion" }
	}
	
	/// Codes in the value set.
	public var contains: [ValueSetExpansionContains]?
	
	/// Uniquely identifies this expansion.
	public var identifier: NSURL?
	
	/// Offset at which this resource starts.
	public var offset: Int?
	
	/// Parameter that controlled the expansion process.
	public var parameter: [ValueSetExpansionParameter]?
	
	/// Time ValueSet expansion happened.
	public var timestamp: DateTime?
	
	/// Total number of codes in the expansion.
	public var total: Int?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: NSURL, timestamp: DateTime) {
		self.init(json: nil)
		self.identifier = identifier
		self.timestamp = timestamp
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["contains"] {
				presentKeys.insert("contains")
				if let val = exist as? [FHIRJSON] {
					self.contains = ValueSetExpansionContains.from(val, owner: self) as? [ValueSetExpansionContains]
				}
				else {
					errors.append(FHIRJSONError(key: "contains", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["offset"] {
				presentKeys.insert("offset")
				if let val = exist as? Int {
					self.offset = val
				}
				else {
					errors.append(FHIRJSONError(key: "offset", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = ValueSetExpansionParameter.from(val, owner: self) as? [ValueSetExpansionParameter]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timestamp"] {
				presentKeys.insert("timestamp")
				if let val = exist as? String {
					self.timestamp = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "timestamp", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "timestamp"))
			}
			if let exist: AnyObject = js["total"] {
				presentKeys.insert("total")
				if let val = exist as? Int {
					self.total = val
				}
				else {
					errors.append(FHIRJSONError(key: "total", wants: Int.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contains = self.contains {
			json["contains"] = ValueSetExpansionContains.asJSONArray(contains)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let offset = self.offset {
			json["offset"] = offset.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = ValueSetExpansionParameter.asJSONArray(parameter)
		}
		if let timestamp = self.timestamp {
			json["timestamp"] = timestamp.asJSON()
		}
		if let total = self.total {
			json["total"] = total.asJSON()
		}
		
		return json
	}
}


/**
 *  Codes in the value set.
 *
 *  The codes that are contained in the value set expansion.
 */
public class ValueSetExpansionContains: BackboneElement {
	override public class var resourceName: String {
		get { return "ValueSetExpansionContains" }
	}
	
	/// If user cannot select this entry.
	public var abstract: Bool?
	
	/// Code - if blank, this is not a selectable code.
	public var code: String?
	
	/// Codes contained under this entry.
	public var contains: [ValueSetExpansionContains]?
	
	/// User display for the concept.
	public var display: String?
	
	/// System value for the code.
	public var system: NSURL?
	
	/// Version in which this code/display is defined.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["abstract"] {
				presentKeys.insert("abstract")
				if let val = exist as? Bool {
					self.abstract = val
				}
				else {
					errors.append(FHIRJSONError(key: "abstract", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contains"] {
				presentKeys.insert("contains")
				if let val = exist as? [FHIRJSON] {
					self.contains = ValueSetExpansionContains.from(val, owner: self) as? [ValueSetExpansionContains]
				}
				else {
					errors.append(FHIRJSONError(key: "contains", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["display"] {
				presentKeys.insert("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(FHIRJSONError(key: "display", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? String {
					self.system = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: String.self, has: exist.dynamicType))
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
		
		if let abstract = self.abstract {
			json["abstract"] = abstract.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let contains = self.contains {
			json["contains"] = ValueSetExpansionContains.asJSONArray(contains)
		}
		if let display = self.display {
			json["display"] = display.asJSON()
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


/**
 *  Parameter that controlled the expansion process.
 *
 *  A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to
 *  check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
 */
public class ValueSetExpansionParameter: BackboneElement {
	override public class var resourceName: String {
		get { return "ValueSetExpansionParameter" }
	}
	
	/// Name as assigned by the server.
	public var name: String?
	
	/// Value of the named parameter.
	public var valueBoolean: Bool?
	
	/// Value of the named parameter.
	public var valueCode: String?
	
	/// Value of the named parameter.
	public var valueDecimal: NSDecimalNumber?
	
	/// Value of the named parameter.
	public var valueInteger: Int?
	
	/// Value of the named parameter.
	public var valueString: String?
	
	/// Value of the named parameter.
	public var valueUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init(json: nil)
		self.name = name
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
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["valueBoolean"] {
				presentKeys.insert("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCode"] {
				presentKeys.insert("valueCode")
				if let val = exist as? String {
					self.valueCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueCode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDecimal"] {
				presentKeys.insert("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueInteger"] {
				presentKeys.insert("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueUri"] {
				presentKeys.insert("valueUri")
				if let val = exist as? String {
					self.valueUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueUri", wants: String.self, has: exist.dynamicType))
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
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}

