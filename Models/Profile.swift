//
//  Profile.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Resource Profile.
 *
 *  Scope and Usage This specification describes a set of base resources that are used in many different contexts
 *  in healthcare. In order to make this manageable, applications and specifications need to be able to describe
 *  restrictions on how one or more resource(s) are used, including defining extensions, and controlling how
 *  terminology is used. These descriptions need to be able to be shared through repositories of profile
 *  definitions, and need to allow for these usage statements to be published, compared, and used as the basis for
 *  code, report and UI generation. All these things are done using a "Profile", which itself is represented as a
 *  resource.
 *  
 *  Profile resources have three main parts:
 *  
 *  * A metadata section the describes the profile, and supports registry searching
 *  * Structures that define and describe how a Resource or Data Type is used
 *  * Extension Definitions that define extensions that can be used in structures
 *  This page defines the profile resource, and describes how it is used. Note that as part of the specification
 *  itself, a full set of profiles for all resources and data types is published.
 *  
 *  A FHIR RESTful server serving the profile resource is also a profile repository. HL7 hosts one for public
 *  registration of FHIR profiles at (yet to be done).
 */
public class Profile: FHIRResource
{
	override public class var resourceName: String {
		get { return "Profile" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Logical id to reference this profile */
	public var identifier: String?
	
	/** Logical id for this version of the profile */
	public var version: String?
	
	/** Informal name for this profile */
	public var name: String?
	
	/** Name of the publisher (Organization or individual) */
	public var publisher: String?
	
	/** Contact information of the publisher */
	public var telecom: [Contact]?
	
	/** Natural language description of the profile */
	public var description: String?
	
	/** Assist with indexing and finding */
	public var code: [Coding]?
	
	/** draft | active | retired */
	public var status: String?
	
	/** If for testing purposes, not real usage */
	public var experimental: Bool?
	
	/** Date for this version of the profile */
	public var date: NSDate?
	
	/** Scope and Usage this profile is for */
	public var requirements: String?
	
	/** FHIR Version this profile targets */
	public var fhirVersion: String?
	
	/** External specification that the content is mapped to */
	public var mapping: [ProfileMapping]?
	
	/** A constraint on a resource or a data type */
	public var structure: [ProfileStructure]?
	
	/** Definition of an extension */
	public var extensionDefn: [ProfileExtensionDefn]?
	
	/** Definition of a named query */
	public var query: [ProfileQuery]?
	
	public convenience init(name: String?, status: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
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
			if let val = js["code"] as? [NSDictionary] {
				self.code = Coding.from(val) as? [Coding]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["experimental"] as? Int {
				self.experimental = (1 == val)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["fhirVersion"] as? String {
				self.fhirVersion = val
			}
			if let val = js["mapping"] as? [NSDictionary] {
				self.mapping = ProfileMapping.from(val) as? [ProfileMapping]
			}
			if let val = js["structure"] as? [NSDictionary] {
				self.structure = ProfileStructure.from(val) as? [ProfileStructure]
			}
			if let val = js["extensionDefn"] as? [NSDictionary] {
				self.extensionDefn = ProfileExtensionDefn.from(val) as? [ProfileExtensionDefn]
			}
			if let val = js["query"] as? [NSDictionary] {
				self.query = ProfileQuery.from(val) as? [ProfileQuery]
			}
		}
	}
}


/**
 *  External specification that the content is mapped to.
 *
 *  An external specification that the content is mapped to.
 */
public class ProfileMapping: FHIRElement
{	
	/** Internal id when this mapping is used */
	public var identity: String?
	
	/** Identifies what this mapping refers to */
	public var uri: NSURL?
	
	/** Names what this mapping refers to */
	public var name: String?
	
	/** Versions, Issues, Scope limitations etc */
	public var comments: String?
	
	public convenience init(identity: String?) {
		self.init(json: nil)
		if nil != identity {
			self.identity = identity
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identity"] as? String {
				self.identity = val
			}
			if let val = js["uri"] as? String {
				self.uri = NSURL(json: val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
		}
	}
}


/**
 *  A constraint on a resource or a data type.
 *
 *  A constraint statement about what contents a resource or data type may have.
 */
public class ProfileStructure: FHIRElement
{	
	/** The Resource or Data Type being described */
	public var type: String?
	
	/** Name for this particular structure (reference target) */
	public var name: String?
	
	/** This definition is published (i.e. for validation) */
	public var publish: Bool?
	
	/** Human summary: why describe this resource? */
	public var purpose: String?
	
	/** Definition of elements in the resource (if no profile) */
	public var element: [ProfileStructureElement]?
	
	/** Search params defined */
	public var searchParam: [ProfileStructureSearchParam]?
	
	public convenience init(type: String?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publish"] as? Int {
				self.publish = (1 == val)
			}
			if let val = js["purpose"] as? String {
				self.purpose = val
			}
			if let val = js["element"] as? [NSDictionary] {
				self.element = ProfileStructureElement.from(val) as? [ProfileStructureElement]
			}
			if let val = js["searchParam"] as? [NSDictionary] {
				self.searchParam = ProfileStructureSearchParam.from(val) as? [ProfileStructureSearchParam]
			}
		}
	}
}


/**
 *  Definition of elements in the resource (if no profile).
 *
 *  Captures constraints on each element within the resource.
 */
public class ProfileStructureElement: FHIRElement
{	
	/** The path of the element (see the formal definitions) */
	public var path: String?
	
	/** How this element is represented in instances */
	public var representation: [String]?
	
	/** Name for this particular element definition (reference target) */
	public var name: String?
	
	/** This element is sliced - slices follow */
	public var slicing: ProfileStructureElementSlicing?
	
	/** More specific definition of the element */
	public var definition: ProfileStructureElementDefinition?
	
	public convenience init(path: String?) {
		self.init(json: nil)
		if nil != path {
			self.path = path
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["path"] as? String {
				self.path = val
			}
			if let val = js["representation"] as? [String] {
				self.representation = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["slicing"] as? NSDictionary {
				self.slicing = ProfileStructureElementSlicing(json: val)
			}
			if let val = js["definition"] as? NSDictionary {
				self.definition = ProfileStructureElementDefinition(json: val)
			}
		}
	}
}


/**
 *  This element is sliced - slices follow.
 *
 *  Indicates that the element is sliced into a set of alternative definitions (there are multiple definitions on
 *  a single element in the base resource). The set of slices is any elements that come after this in the element
 *  sequence that have the same path, until a shorter path occurs (the shorter path terminates the set).
 */
public class ProfileStructureElementSlicing: FHIRElement
{	
	/** Element that used to distinguish the slices */
	public var discriminator: String?
	
	/** If elements must be in same order as slices */
	public var ordered: Bool?
	
	/** closed | open | openAtEnd */
	public var rules: String?
	
	public convenience init(discriminator: String?, ordered: Bool?, rules: String?) {
		self.init(json: nil)
		if nil != discriminator {
			self.discriminator = discriminator
		}
		if nil != ordered {
			self.ordered = ordered
		}
		if nil != rules {
			self.rules = rules
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["discriminator"] as? String {
				self.discriminator = val
			}
			if let val = js["ordered"] as? Int {
				self.ordered = (1 == val)
			}
			if let val = js["rules"] as? String {
				self.rules = val
			}
		}
	}
}


/**
 *  More specific definition of the element.
 *
 *  Definition of the content of the element to provide a more specific definition than that contained for the
 *  element in the base resource.
 */
public class ProfileStructureElementDefinition: FHIRElement
{	
	/** Concise definition for xml presentation */
	public var short: String?
	
	/** Full formal definition in human language */
	public var formal: String?
	
	/** Comments about the use of this element */
	public var comments: String?
	
	/** Why is this needed? */
	public var requirements: String?
	
	/** Other names */
	public var synonym: [String]?
	
	/** Minimum Cardinality */
	public var min: Int?
	
	/** Maximum Cardinality (a number or *) */
	public var max: String?
	
	/** Data type and Profile for this element */
	public var type: [ProfileStructureElementDefinitionType]?
	
	/** To another element constraint (by element.name) */
	public var nameReference: String?
	
	/** Fixed value: [as defined for a primitive type] */
	public var value: FHIRElement?
	
	/** Example value: [as defined for type] */
	public var example: FHIRElement?
	
	/** Length for strings */
	public var maxLength: Int?
	
	/** Reference to invariant about presence */
	public var condition: [String]?
	
	/** Condition that must evaluate to true */
	public var constraint: [ProfileStructureElementDefinitionConstraint]?
	
	/** If the element must supported */
	public var mustSupport: Bool?
	
	/** If this modifies the meaning of other elements */
	public var isModifier: Bool?
	
	/** ValueSet details if this is coded */
	public var binding: ProfileStructureElementDefinitionBinding?
	
	/** Map element to another set of definitions */
	public var mapping: [ProfileStructureElementDefinitionMapping]?
	
	public convenience init(short: String?, formal: String?, min: Int?, max: String?, isModifier: Bool?) {
		self.init(json: nil)
		if nil != short {
			self.short = short
		}
		if nil != formal {
			self.formal = formal
		}
		if nil != min {
			self.min = min
		}
		if nil != max {
			self.max = max
		}
		if nil != isModifier {
			self.isModifier = isModifier
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["short"] as? String {
				self.short = val
			}
			if let val = js["formal"] as? String {
				self.formal = val
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["synonym"] as? [String] {
				self.synonym = val
			}
			if let val = js["min"] as? Int {
				self.min = val
			}
			if let val = js["max"] as? String {
				self.max = val
			}
			if let val = js["type"] as? [NSDictionary] {
				self.type = ProfileStructureElementDefinitionType.from(val) as? [ProfileStructureElementDefinitionType]
			}
			if let val = js["nameReference"] as? String {
				self.nameReference = val
			}
			if let val = js["value"] as? NSDictionary {
				self.value = FHIRElement(json: val)
			}
			if let val = js["example"] as? NSDictionary {
				self.example = FHIRElement(json: val)
			}
			if let val = js["maxLength"] as? Int {
				self.maxLength = val
			}
			if let val = js["condition"] as? [String] {
				self.condition = val
			}
			if let val = js["constraint"] as? [NSDictionary] {
				self.constraint = ProfileStructureElementDefinitionConstraint.from(val) as? [ProfileStructureElementDefinitionConstraint]
			}
			if let val = js["mustSupport"] as? Int {
				self.mustSupport = (1 == val)
			}
			if let val = js["isModifier"] as? Int {
				self.isModifier = (1 == val)
			}
			if let val = js["binding"] as? NSDictionary {
				self.binding = ProfileStructureElementDefinitionBinding(json: val)
			}
			if let val = js["mapping"] as? [NSDictionary] {
				self.mapping = ProfileStructureElementDefinitionMapping.from(val) as? [ProfileStructureElementDefinitionMapping]
			}
		}
	}
}


/**
 *  Data type and Profile for this element.
 *
 *  The data type or resource that the value of this element is permitted to be.
 */
public class ProfileStructureElementDefinitionType: FHIRElement
{	
	/** Name of Data type or Resource */
	public var code: String?
	
	/** Profile.structure to apply */
	public var profile: NSURL?
	
	/** contained | referenced | bundled - how aggregated */
	public var aggregation: [String]?
	
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
			if let val = js["profile"] as? String {
				self.profile = NSURL(json: val)
			}
			if let val = js["aggregation"] as? [String] {
				self.aggregation = val
			}
		}
	}
}


/**
 *  Condition that must evaluate to true.
 *
 *  Formal constraints such as co-occurrence and other constraints that can be computationally evaluated within
 *  the context of the instance.
 */
public class ProfileStructureElementDefinitionConstraint: FHIRElement
{	
	/** Target of 'condition' reference above */
	public var key: String?
	
	/** Short human label */
	public var name: String?
	
	/** error | warning */
	public var severity: String?
	
	/** Human description of constraint */
	public var human: String?
	
	/** XPath expression of constraint */
	public var xpath: String?
	
	public convenience init(key: String?, severity: String?, human: String?, xpath: String?) {
		self.init(json: nil)
		if nil != key {
			self.key = key
		}
		if nil != severity {
			self.severity = severity
		}
		if nil != human {
			self.human = human
		}
		if nil != xpath {
			self.xpath = xpath
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["key"] as? String {
				self.key = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["severity"] as? String {
				self.severity = val
			}
			if let val = js["human"] as? String {
				self.human = val
			}
			if let val = js["xpath"] as? String {
				self.xpath = val
			}
		}
	}
}


/**
 *  ValueSet details if this is coded.
 *
 *  Binds to a value set if this element is coded (code, Coding, CodeableConcept).
 */
public class ProfileStructureElementDefinitionBinding: FHIRElement
{	
	/** Descriptive Name */
	public var name: String?
	
	/** Can additional codes be used? */
	public var isExtensible: Bool?
	
	/** required | preferred | example */
	public var conformance: String?
	
	/** Human explanation of the value set */
	public var description: String?
	
	/** Source of value set */
	public var referenceUri: NSURL?
	
	/** Source of value set */
	public var referenceResourceReference: FHIRElement? {
		get { return resolveReference("referenceResourceReference") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "referenceResourceReference")
			}
		}
	}
	
	public convenience init(name: String?, isExtensible: Bool?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != isExtensible {
			self.isExtensible = isExtensible
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["isExtensible"] as? Int {
				self.isExtensible = (1 == val)
			}
			if let val = js["conformance"] as? String {
				self.conformance = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["referenceUri"] as? String {
				self.referenceUri = NSURL(json: val)
			}
			if let val = js["referenceResourceReference"] as? NSDictionary {
				self.referenceResourceReference = ResourceReference(json: val)
			}
		}
	}
}


/**
 *  Map element to another set of definitions.
 *
 *  Identifies a concept from an external specification that roughly corresponds to this element.
 */
public class ProfileStructureElementDefinitionMapping: FHIRElement
{	
	/** Reference to mapping declaration */
	public var identity: String?
	
	/** Details of the mapping */
	public var map: String?
	
	public convenience init(identity: String?, map: String?) {
		self.init(json: nil)
		if nil != identity {
			self.identity = identity
		}
		if nil != map {
			self.map = map
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identity"] as? String {
				self.identity = val
			}
			if let val = js["map"] as? String {
				self.map = val
			}
		}
	}
}


/**
 *  Search params defined.
 *
 *  Additional search parameters for implementations to support and/or make use of.
 */
public class ProfileStructureSearchParam: FHIRElement
{	
	/** Name of search parameter */
	public var name: String?
	
	/** number | date | string | token | reference | composite | quantity */
	public var type: String?
	
	/** Contents and meaning of search parameter */
	public var documentation: String?
	
	/** XPath that extracts the parameter set */
	public var xpath: String?
	
	/** Types of resource (if a resource reference) */
	public var target: [String]?
	
	public convenience init(name: String?, type: String?, documentation: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != type {
			self.type = type
		}
		if nil != documentation {
			self.documentation = documentation
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["xpath"] as? String {
				self.xpath = val
			}
			if let val = js["target"] as? [String] {
				self.target = val
			}
		}
	}
}


/**
 *  Definition of an extension.
 *
 *  An extension defined as part of the profile.
 */
public class ProfileExtensionDefn: FHIRElement
{	
	/** Identifies the extension in this profile */
	public var code: String?
	
	/** Use this name when displaying the value */
	public var display: String?
	
	/** resource | datatype | mapping | extension */
	public var contextType: String?
	
	/** Where the extension can be used in instances */
	public var context: [String]?
	
	/** Definition of the extension and its content */
	public var definition: ProfileExtensionDefnDefinition?
	
	public convenience init(code: String?, contextType: String?, context: [String]?, definition: ProfileExtensionDefnDefinition?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != contextType {
			self.contextType = contextType
		}
		if nil != context {
			self.context = context
		}
		if nil != definition {
			self.definition = definition
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["contextType"] as? String {
				self.contextType = val
			}
			if let val = js["context"] as? [String] {
				self.context = val
			}
			if let val = js["definition"] as? NSDictionary {
				self.definition = ProfileExtensionDefnDefinition(json: val)
			}
		}
	}
}


/**
 *  Definition of the extension and its content.
 */
public class ProfileExtensionDefnDefinition: FHIRElement
{	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
		}
	}
}


/**
 *  Definition of a named query.
 *
 *  Definition of a named query and its parameters and their meaning.
 */
public class ProfileQuery: FHIRElement
{	
	/** Special named queries (_query=) */
	public var name: String?
	
	/** Describes the named query */
	public var documentation: String?
	
	/** Parameter for the named query */
	public var parameter: [ProfileQueryParameter]?
	
	public convenience init(name: String?, documentation: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != documentation {
			self.documentation = documentation
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["parameter"] as? [NSDictionary] {
				self.parameter = ProfileQueryParameter.from(val) as? [ProfileQueryParameter]
			}
		}
	}
}


/**
 *  Parameter for the named query.
 *
 *  A parameter of a named query.
 */
public class ProfileQueryParameter: FHIRElement
{	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
		}
	}
}

