//
//  ValueSet.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (valueset.profile.json) on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A set of codes drawn from one or more code systems.
 *
 *  Scope and Usage Value sets may be constructed in one of two ways:
 *  
 *  * A value set can define its own codes, and/or
 *  * A value set can be composed of codes defined in other code systems, either by listing the codes or by
 *  providing a set of selection criteria
 *  A value set can also be "expanded", where the value set is turned into a simple collection of enumerated
 *  codes. This operation is performed to produce a collection of codes that are ready to use for data entry or
 *  validation. An expanded value set may also contain the original definition as well.
 */
public class ValueSet: FHIRResource
{
	override public class var resourceName: String {
		get { return "ValueSet" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Logical id to reference this value set */
	public var identifier: String?
	
	/** Logical id for this version of the value set */
	public var version: String?
	
	/** Informal name for this value set */
	public var name: String?
	
	/** Name of the publisher (Organization or individual) */
	public var publisher: String?
	
	/** Contact information of the publisher */
	public var telecom: [Contact]?
	
	/** Human language description of the value set */
	public var description: String?
	
	/** About the value set or its content */
	public var copyright: String?
	
	/** draft | active | retired */
	public var status: String?
	
	/** If for testing purposes, not real usage */
	public var experimental: Bool?
	
	/** Whether this is intended to be used with an extensible binding */
	public var extensible: Bool?
	
	/** Date for given status */
	public var date: NSDate?
	
	/** When value set defines its own codes */
	public var define: ValueSetDefine?
	
	/** When value set includes codes from elsewhere */
	public var compose: ValueSetCompose?
	
	/** When value set is an expansion */
	public var expansion: ValueSetExpansion?
	
	public convenience init(name: String?, description: String?, status: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != description {
			self.description = description
		}
		if nil != status {
			self.status = status
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["version"] as? String {
				self.version = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["copyright"] as? String {
				self.copyright = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["experimental"] as? Int {
				self.experimental = (1 == val)
			}
			if let val = js["extensible"] as? Int {
				self.extensible = (1 == val)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["define"] as? NSDictionary {
				self.define = ValueSetDefine(json: val)
			}
			if let val = js["compose"] as? NSDictionary {
				self.compose = ValueSetCompose(json: val)
			}
			if let val = js["expansion"] as? NSDictionary {
				self.expansion = ValueSetExpansion(json: val)
			}
		}
	}
}


/**
 *  When value set defines its own codes.
 */
public class ValueSetDefine: FHIRElement
{	
	/** URI to identify the code system */
	public var system: NSURL?
	
	/** Version of this system */
	public var version: String?
	
	/** If code comparison is case sensitive */
	public var caseSensitive: Bool?
	
	/** Concepts in the code system */
	public var concept: [ValueSetDefineConcept]?
	
	public convenience init(system: NSURL?) {
		self.init(json: nil)
		if nil != system {
			self.system = system
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
			if let val = js["caseSensitive"] as? Int {
				self.caseSensitive = (1 == val)
			}
			if let val = js["concept"] as? [NSDictionary] {
				self.concept = ValueSetDefineConcept.from(val) as? [ValueSetDefineConcept]
			}
		}
	}
}


/**
 *  Concepts in the code system.
 */
public class ValueSetDefineConcept: FHIRElement
{	
	/** Code that identifies concept */
	public var code: String?
	
	/** If this code is not for use as a real concept */
	public var abstract: Bool?
	
	/** Text to Display to the user */
	public var display: String?
	
	/** Formal Definition */
	public var definition: String?
	
	/** Child Concepts (is-a / contains) */
	public var concept: [ValueSetDefineConceptConcept]?
	
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
			if let val = js["abstract"] as? Int {
				self.abstract = (1 == val)
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["definition"] as? String {
				self.definition = val
			}
			if let val = js["concept"] as? [NSDictionary] {
				self.concept = ValueSetDefineConceptConcept.from(val) as? [ValueSetDefineConceptConcept]
			}
		}
	}
}


/**
 *  Child Concepts (is-a / contains).
 */
public class ValueSetDefineConceptConcept: FHIRElement
{	

}


/**
 *  When value set includes codes from elsewhere.
 */
public class ValueSetCompose: FHIRElement
{	
	/** Import the contents of another value set */
	public var importFrom: [NSURL]?
	
	/** Include one or more codes from a code system */
	public var include: [ValueSetComposeInclude]?
	
	/** Explicitly exclude codes */
	public var exclude: [ValueSetComposeExclude]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["importFrom"] as? [String] {
				self.importFrom = NSURL.from(val)
			}
			if let val = js["include"] as? [NSDictionary] {
				self.include = ValueSetComposeInclude.from(val) as? [ValueSetComposeInclude]
			}
			if let val = js["exclude"] as? [NSDictionary] {
				self.exclude = ValueSetComposeExclude.from(val) as? [ValueSetComposeExclude]
			}
		}
	}
}


/**
 *  Include one or more codes from a code system.
 */
public class ValueSetComposeInclude: FHIRElement
{	
	/** The system the codes come from */
	public var system: NSURL?
	
	/** Specific version of the code system referred to */
	public var version: String?
	
	/** Code or concept from system */
	public var code: [String]?
	
	/** Select codes/concepts by their properties (including relationships) */
	public var filter: [ValueSetComposeIncludeFilter]?
	
	public convenience init(system: NSURL?) {
		self.init(json: nil)
		if nil != system {
			self.system = system
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
			if let val = js["code"] as? [String] {
				self.code = val
			}
			if let val = js["filter"] as? [NSDictionary] {
				self.filter = ValueSetComposeIncludeFilter.from(val) as? [ValueSetComposeIncludeFilter]
			}
		}
	}
}


/**
 *  Select codes/concepts by their properties (including relationships).
 *
 *  Select concepts by specify a matching criteria based on the properties (including relationships) defined by
 *  the system. If multiple filters are specified, they SHALL all be true.
 */
public class ValueSetComposeIncludeFilter: FHIRElement
{	
	/** A property defined by the code system */
	public var property: String?
	
	/** = | is-a | is-not-a | regex | in | not in */
	public var op: String?
	
	/** Code from the system, or regex criteria */
	public var value: String?
	
	public convenience init(property: String?, op: String?, value: String?) {
		self.init(json: nil)
		if nil != property {
			self.property = property
		}
		if nil != op {
			self.op = op
		}
		if nil != value {
			self.value = value
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["property"] as? String {
				self.property = val
			}
			if let val = js["op"] as? String {
				self.op = val
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
	}
}


/**
 *  Explicitly exclude codes.
 *
 *  Exclude one or more codes from the value set.
 */
public class ValueSetComposeExclude: FHIRElement
{	

}


/**
 *  When value set is an expansion.
 */
public class ValueSetExpansion: FHIRElement
{	
	/** Uniquely identifies this expansion */
	public var identifier: Identifier?
	
	/** Time valueset expansion happened */
	public var timestamp: Int?
	
	/** Codes in the value set */
	public var contains: [ValueSetExpansionContains]?
	
	public convenience init(timestamp: Int?) {
		self.init(json: nil)
		if nil != timestamp {
			self.timestamp = timestamp
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["timestamp"] as? Int {
				self.timestamp = val
			}
			if let val = js["contains"] as? [NSDictionary] {
				self.contains = ValueSetExpansionContains.from(val) as? [ValueSetExpansionContains]
			}
		}
	}
}


/**
 *  Codes in the value set.
 */
public class ValueSetExpansionContains: FHIRElement
{	
	/** System value for the code */
	public var system: NSURL?
	
	/** Code - if blank, this is not a choosable code */
	public var code: String?
	
	/** User display for the concept */
	public var display: String?
	
	/** Codes contained in this concept */
	public var contains: [ValueSetExpansionContainsContains]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["contains"] as? [NSDictionary] {
				self.contains = ValueSetExpansionContainsContains.from(val) as? [ValueSetExpansionContainsContains]
			}
		}
	}
}


/**
 *  Codes contained in this concept.
 */
public class ValueSetExpansionContainsContains: FHIRElement
{	

}

