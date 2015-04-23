//
//  ValueSet.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ValueSet) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A set of codes drawn from one or more code systems.
 *
 *  A value set specifies a set of codes drawn from one or more code systems.
 */
public class ValueSet: DomainResource
{
	override public class var resourceName: String {
		get { return "ValueSet" }
	}
	
	/// When value set includes codes from elsewhere
	public var compose: ValueSetCompose?
	
	/// Contact details of the publisher
	public var contact: [ValueSetContact]?
	
	/// Use and/or Publishing restrictions
	public var copyright: String?
	
	/// Date for given status
	public var date: DateTime?
	
	/// When value set defines its own codes
	public var define: ValueSetDefine?
	
	/// Human language description of the value set
	public var description_fhir: String?
	
	/// Used when the value set is "expanded"
	public var expansion: ValueSetExpansion?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Whether this is intended to be used with an extensible binding
	public var extensible: Bool?
	
	/// Additional identifier for the value set (v2 / CDA)
	public var identifier: Identifier?
	
	/// Indicates whether or not any change to the content logical definition may occur
	public var immutable: Bool?
	
	/// Fixed date for all referenced code systems and value sets
	public var lockedDate: Date?
	
	/// Informal name for this value set
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Why is this needed?
	public var requirements: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// Globally unique logical id for  value set
	public var url: NSURL?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the value set
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["compose"] {
				presentKeys.addObject("compose")
				if let val = exist as? FHIRJSON {
					self.compose = ValueSetCompose(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"compose\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ValueSetContact.from(val, owner: self) as? [ValueSetContact]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.addObject("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"copyright\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["define"] {
				presentKeys.addObject("define")
				if let val = exist as? FHIRJSON {
					self.define = ValueSetDefine(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"define\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["expansion"] {
				presentKeys.addObject("expansion")
				if let val = exist as? FHIRJSON {
					self.expansion = ValueSetExpansion(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"expansion\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.addObject("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"experimental\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["extensible"] {
				presentKeys.addObject("extensible")
				if let val = exist as? Bool {
					self.extensible = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"extensible\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["immutable"] {
				presentKeys.addObject("immutable")
				if let val = exist as? Bool {
					self.immutable = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"immutable\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["lockedDate"] {
				presentKeys.addObject("lockedDate")
				if let val = exist as? String {
					self.lockedDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"lockedDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.addObject("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"publisher\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.addObject("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requirements\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["useContext"] {
				presentKeys.addObject("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"useContext\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
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
		if let define = self.define {
			json["define"] = define.asJSON()
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
			json["identifier"] = identifier.asJSON()
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
 */
public class ValueSetCompose: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetCompose" }
	}
	
	/// Explicitly exclude codes
	public var exclude: [ValueSetComposeInclude]?
	
	/// Import the contents of another value set
	public var import_fhir: [NSURL]?
	
	/// Include one or more codes from a code system
	public var include: [ValueSetComposeInclude]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["exclude"] {
				presentKeys.addObject("exclude")
				if let val = exist as? [FHIRJSON] {
					self.exclude = ValueSetComposeInclude.from(val, owner: self) as? [ValueSetComposeInclude]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exclude\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["import"] {
				presentKeys.addObject("import")
				if let val = exist as? [String] {
					self.import_fhir = NSURL.from(val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"import\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["include"] {
				presentKeys.addObject("include")
				if let val = exist as? [FHIRJSON] {
					self.include = ValueSetComposeInclude.from(val, owner: self) as? [ValueSetComposeInclude]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"include\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
public class ValueSetComposeInclude: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetComposeInclude" }
	}
	
	/// A concept defined in the system
	public var concept: [ValueSetComposeIncludeConcept]?
	
	/// Select codes/concepts by their properties (including relationships)
	public var filter: [ValueSetComposeIncludeFilter]?
	
	/// The system the codes come from
	public var system: NSURL?
	
	/// Specific version of the code system referred to
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(system: NSURL?) {
		self.init(json: nil)
		if nil != system {
			self.system = system
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["concept"] {
				presentKeys.addObject("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = ValueSetComposeIncludeConcept.from(val, owner: self) as? [ValueSetComposeIncludeConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"concept\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["filter"] {
				presentKeys.addObject("filter")
				if let val = exist as? [FHIRJSON] {
					self.filter = ValueSetComposeIncludeFilter.from(val, owner: self) as? [ValueSetComposeIncludeFilter]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"filter\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["system"] {
				presentKeys.addObject("system")
				if let val = exist as? String {
					self.system = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"system\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"system\" but it is missing"))
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
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
public class ValueSetComposeIncludeConcept: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetComposeIncludeConcept" }
	}
	
	/// Code or expression from system
	public var code: String?
	
	/// Additional representations for this valueset
	public var designation: [ValueSetDefineConceptDesignation]?
	
	/// Test to display for this code for this value set
	public var display: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["designation"] {
				presentKeys.addObject("designation")
				if let val = exist as? [FHIRJSON] {
					self.designation = ValueSetDefineConceptDesignation.from(val, owner: self) as? [ValueSetDefineConceptDesignation]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"designation\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["display"] {
				presentKeys.addObject("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"display\" to be `String`, but is \(exist.dynamicType)"))
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
			json["designation"] = ValueSetDefineConceptDesignation.asJSONArray(designation)
		}
		if let display = self.display {
			json["display"] = display.asJSON()
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
public class ValueSetComposeIncludeFilter: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetComposeIncludeFilter" }
	}
	
	/// = | is-a | is-not-a | regex | in | not-in
	public var op: String?
	
	/// A property defined by the code system
	public var property: String?
	
	/// Code from the system, or regex criteria
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(op: String?, property: String?, value: String?) {
		self.init(json: nil)
		if nil != op {
			self.op = op
		}
		if nil != property {
			self.property = property
		}
		if nil != value {
			self.value = value
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["op"] {
				presentKeys.addObject("op")
				if let val = exist as? String {
					self.op = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"op\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"op\" but it is missing"))
			}
			if let exist: AnyObject = js["property"] {
				presentKeys.addObject("property")
				if let val = exist as? String {
					self.property = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"property\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"property\" but it is missing"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"value\" but it is missing"))
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
public class ValueSetContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetContact" }
	}
	
	/// Name of a individual to contact
	public var name: String?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
 *  When value set defines its own codes.
 *
 *  A definition of an code system, inlined into the value set.
 */
public class ValueSetDefine: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetDefine" }
	}
	
	/// If code comparison is case sensitive
	public var caseSensitive: Bool?
	
	/// Concepts in the code system
	public var concept: [ValueSetDefineConcept]?
	
	/// URI to identify the code system
	public var system: NSURL?
	
	/// Version of this system
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(system: NSURL?) {
		self.init(json: nil)
		if nil != system {
			self.system = system
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["caseSensitive"] {
				presentKeys.addObject("caseSensitive")
				if let val = exist as? Bool {
					self.caseSensitive = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"caseSensitive\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["concept"] {
				presentKeys.addObject("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = ValueSetDefineConcept.from(val, owner: self) as? [ValueSetDefineConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"concept\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["system"] {
				presentKeys.addObject("system")
				if let val = exist as? String {
					self.system = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"system\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"system\" but it is missing"))
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let caseSensitive = self.caseSensitive {
			json["caseSensitive"] = caseSensitive.asJSON()
		}
		if let concept = self.concept {
			json["concept"] = ValueSetDefineConcept.asJSONArray(concept)
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
 *  Concepts in the code system.
 */
public class ValueSetDefineConcept: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetDefineConcept" }
	}
	
	/// If this code is not for use as a real concept
	public var abstract: Bool?
	
	/// Code that identifies concept
	public var code: String?
	
	/// Child Concepts (is-a / contains)
	public var concept: [ValueSetDefineConcept]?
	
	/// Formal Definition
	public var definition: String?
	
	/// Additional representations for the concept
	public var designation: [ValueSetDefineConceptDesignation]?
	
	/// Text to Display to the user
	public var display: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["abstract"] {
				presentKeys.addObject("abstract")
				if let val = exist as? Bool {
					self.abstract = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"abstract\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["concept"] {
				presentKeys.addObject("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = ValueSetDefineConcept.from(val, owner: self) as? [ValueSetDefineConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"concept\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["definition"] {
				presentKeys.addObject("definition")
				if let val = exist as? String {
					self.definition = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"definition\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["designation"] {
				presentKeys.addObject("designation")
				if let val = exist as? [FHIRJSON] {
					self.designation = ValueSetDefineConceptDesignation.from(val, owner: self) as? [ValueSetDefineConceptDesignation]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"designation\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["display"] {
				presentKeys.addObject("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"display\" to be `String`, but is \(exist.dynamicType)"))
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
		if let concept = self.concept {
			json["concept"] = ValueSetDefineConcept.asJSONArray(concept)
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let designation = self.designation {
			json["designation"] = ValueSetDefineConceptDesignation.asJSONArray(designation)
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		
		return json
	}
}


/**
 *  Additional representations for the concept.
 *
 *  Additional representations for the concept - other languages, aliases, specialised purposes, used for particular
 *  purposes, etc.
 */
public class ValueSetDefineConceptDesignation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetDefineConceptDesignation" }
	}
	
	/// Language of the designation
	public var language: String?
	
	/// Details how this designation would be used
	public var use: Coding?
	
	/// The text value for this designation
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(value: String?) {
		self.init(json: nil)
		if nil != value {
			self.value = value
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["language"] {
				presentKeys.addObject("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"language\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["use"] {
				presentKeys.addObject("use")
				if let val = exist as? FHIRJSON {
					self.use = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"use\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"value\" but it is missing"))
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
 *  Used when the value set is "expanded".
 *
 *  A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This
 *  element holds the expansion, if it has been performed.
 */
public class ValueSetExpansion: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetExpansion" }
	}
	
	/// Codes in the value set
	public var contains: [ValueSetExpansionContains]?
	
	/// Uniquely identifies this expansion
	public var identifier: NSURL?
	
	/// Parameter that controlled the expansion process
	public var parameter: [ValueSetExpansionParameter]?
	
	/// Time valueset expansion happened
	public var timestamp: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(identifier: NSURL?, timestamp: DateTime?) {
		self.init(json: nil)
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != timestamp {
			self.timestamp = timestamp
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["contains"] {
				presentKeys.addObject("contains")
				if let val = exist as? [FHIRJSON] {
					self.contains = ValueSetExpansionContains.from(val, owner: self) as? [ValueSetExpansionContains]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contains\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? String {
					self.identifier = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"identifier\" but it is missing"))
			}
			if let exist: AnyObject = js["parameter"] {
				presentKeys.addObject("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = ValueSetExpansionParameter.from(val, owner: self) as? [ValueSetExpansionParameter]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"parameter\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["timestamp"] {
				presentKeys.addObject("timestamp")
				if let val = exist as? String {
					self.timestamp = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"timestamp\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"timestamp\" but it is missing"))
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
		if let parameter = self.parameter {
			json["parameter"] = ValueSetExpansionParameter.asJSONArray(parameter)
		}
		if let timestamp = self.timestamp {
			json["timestamp"] = timestamp.asJSON()
		}
		
		return json
	}
}


/**
 *  Codes in the value set.
 *
 *  The codes that are contained in the value set expansion.
 */
public class ValueSetExpansionContains: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetExpansionContains" }
	}
	
	/// If user cannot select this entry
	public var abstract: Bool?
	
	/// Code - if blank, this is not a choosable code
	public var code: String?
	
	/// Codes contained in this concept
	public var contains: [ValueSetExpansionContains]?
	
	/// User display for the concept
	public var display: String?
	
	/// System value for the code
	public var system: NSURL?
	
	/// Version in which this code / display is defined
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["abstract"] {
				presentKeys.addObject("abstract")
				if let val = exist as? Bool {
					self.abstract = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"abstract\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contains"] {
				presentKeys.addObject("contains")
				if let val = exist as? [FHIRJSON] {
					self.contains = ValueSetExpansionContains.from(val, owner: self) as? [ValueSetExpansionContains]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contains\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["display"] {
				presentKeys.addObject("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"display\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["system"] {
				presentKeys.addObject("system")
				if let val = exist as? String {
					self.system = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"system\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
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
 *  A Parameter that controlled the expansion process. These paameters may be used by users of expanded value sets to
 *  check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
 */
public class ValueSetExpansionParameter: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetExpansionParameter" }
	}
	
	/// Name as assigned by server
	public var name: String?
	
	/// Value of the parameter
	public var valueBoolean: Bool?
	
	/// Value of the parameter
	public var valueCode: String?
	
	/// Value of the parameter
	public var valueDecimal: NSDecimalNumber?
	
	/// Value of the parameter
	public var valueInteger: Int?
	
	/// Value of the parameter
	public var valueString: String?
	
	/// Value of the parameter
	public var valueUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(name: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"name\" but it is missing"))
			}
			if let exist: AnyObject = js["valueBoolean"] {
				presentKeys.addObject("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueCode"] {
				presentKeys.addObject("valueCode")
				if let val = exist as? String {
					self.valueCode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueCode\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueDecimal"] {
				presentKeys.addObject("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueDecimal\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueInteger"] {
				presentKeys.addObject("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueInteger\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueString"] {
				presentKeys.addObject("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueUri"] {
				presentKeys.addObject("valueUri")
				if let val = exist as? String {
					self.valueUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueUri\" to be `String`, but is \(exist.dynamicType)"))
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

