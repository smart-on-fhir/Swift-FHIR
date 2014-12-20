//
//  ValueSet.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (valueset.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A set of codes drawn from one or more code systems.
 *
 *  A value set specifies a set of codes drawn from one or more code systems.
 */
public class ValueSet: FHIRResource
{
	override public class var resourceName: String {
		get { return "ValueSet" }
	}
	
	/// When value set includes codes from elsewhere
	public var compose: ValueSetCompose?
	
	/// Publishing restrictions for the value set
	public var copyright: String?
	
	/// Date for given status
	public var date: NSDate?
	
	/// When value set defines its own codes
	public var define: ValueSetDefine?
	
	/// Human language description of the value set
	public var description: String?
	
	/// Used when the value set is "expanded"
	public var expansion: ValueSetExpansion?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Whether this is intended to be used with an extensible binding
	public var extensible: Bool?
	
	/// Globally unique logical id for  value set
	public var identifier: NSURL?
	
	/// Indicates whether or not any change to the content logical definition may occur
	public var immutable: Bool?
	
	/// Informal name for this value set
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Textual description of the intended scope and use
	public var purpose: String?
	
	/// Fixed date for the version of all referenced code systems and value sets
	public var stableDate: NSDate?
	
	/// draft | active | retired
	public var status: String?
	
	/// Contact information of the publisher
	public var telecom: [ContactPoint]?
	
	/// Logical id for this version of the value set
	public var version: String?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["compose"] as? NSDictionary {
				self.compose = ValueSetCompose(json: val, owner: self)
			}
			if let val = js["copyright"] as? String {
				self.copyright = val
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["define"] as? NSDictionary {
				self.define = ValueSetDefine(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["expansion"] as? NSDictionary {
				self.expansion = ValueSetExpansion(json: val, owner: self)
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
			}
			if let val = js["extensible"] as? Bool {
				self.extensible = val
			}
			if let val = js["identifier"] as? String {
				self.identifier = NSURL(json: val)
			}
			if let val = js["immutable"] as? Bool {
				self.immutable = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["purpose"] as? String {
				self.purpose = val
			}
			if let val = js["stableDate"] as? String {
				self.stableDate = NSDate(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
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
	
	/// Import the contents of another value set
	public var importFrom: [NSURL]?
	
	/// Include one or more codes from a code system
	public var include: [ValueSetComposeInclude]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["import"] as? [String] {
				self.importFrom = NSURL.from(val)
			}
			if let val = js["include"] as? [NSDictionary] {
				self.include = ValueSetComposeInclude.from(val, owner: self) as? [ValueSetComposeInclude]
			}
		}
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
	
	public convenience init(system: NSURL?) {
		self.init(json: nil)
		if nil != system {
			self.system = system
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["concept"] as? [NSDictionary] {
				self.concept = ValueSetComposeIncludeConcept.from(val, owner: self) as? [ValueSetComposeIncludeConcept]
			}
			if let val = js["filter"] as? [NSDictionary] {
				self.filter = ValueSetComposeIncludeFilter.from(val, owner: self) as? [ValueSetComposeIncludeFilter]
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
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
	
	/// Additional representations for the concept
	public var designation: [ValueSetDefineConceptDesignation]?
	
	/// Test to display for this code for this value set
	public var display: String?
	
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["designation"] as? [NSDictionary] {
				self.designation = ValueSetDefineConceptDesignation.from(val, owner: self) as? [ValueSetDefineConceptDesignation]
			}
			if let val = js["display"] as? String {
				self.display = val
			}
		}
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
	
	/// = | is-a | is-not-a | regex | in | not in
	public var op: String?
	
	/// A property defined by the code system
	public var property: String?
	
	/// Code from the system, or regex criteria
	public var value: String?
	
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["op"] as? String {
				self.op = val
			}
			if let val = js["property"] as? String {
				self.property = val
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
	}
}


/**
 *  When value set defines its own codes.
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
	
	public convenience init(system: NSURL?) {
		self.init(json: nil)
		if nil != system {
			self.system = system
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["caseSensitive"] as? Bool {
				self.caseSensitive = val
			}
			if let val = js["concept"] as? [NSDictionary] {
				self.concept = ValueSetDefineConcept.from(val, owner: self) as? [ValueSetDefineConcept]
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
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
	
	/// Concepts in the code system
	public var concept: [ValueSetDefineConcept]?
	
	/// Formal Definition
	public var definition: String?
	
	/// Additional representations for the concept
	public var designation: [ValueSetDefineConceptDesignation]?
	
	/// Text to Display to the user
	public var display: String?
	
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["abstract"] as? Bool {
				self.abstract = val
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["concept"] as? [NSDictionary] {
				self.concept = ValueSetDefineConcept.from(val, owner: self) as? [ValueSetDefineConcept]
			}
			if let val = js["definition"] as? String {
				self.definition = val
			}
			if let val = js["designation"] as? [NSDictionary] {
				self.designation = ValueSetDefineConceptDesignation.from(val, owner: self) as? [ValueSetDefineConceptDesignation]
			}
			if let val = js["display"] as? String {
				self.display = val
			}
		}
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
	
	/// Details how this designation would be used
	public var use: Coding?
	
	/// The text value for this designation
	public var value: String?
	
	public convenience init(value: String?) {
		self.init(json: nil)
		if nil != value {
			self.value = value
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["use"] as? NSDictionary {
				self.use = Coding(json: val, owner: self)
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
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
	public var identifier: Identifier?
	
	/// Time valueset expansion happened
	public var timestamp: NSDate?
	
	public convenience init(timestamp: NSDate?) {
		self.init(json: nil)
		if nil != timestamp {
			self.timestamp = timestamp
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contains"] as? [NSDictionary] {
				self.contains = ValueSetExpansionContains.from(val, owner: self) as? [ValueSetExpansionContains]
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["timestamp"] as? String {
				self.timestamp = NSDate(json: val)
			}
		}
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
	
	/// Codes in the value set
	public var contains: [ValueSetExpansionContains]?
	
	/// User display for the concept
	public var display: String?
	
	/// System value for the code
	public var system: NSURL?
	
	/// Version in which this code / display is defined
	public var version: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["abstract"] as? Bool {
				self.abstract = val
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["contains"] as? [NSDictionary] {
				self.contains = ValueSetExpansionContains.from(val, owner: self) as? [ValueSetExpansionContains]
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
}

