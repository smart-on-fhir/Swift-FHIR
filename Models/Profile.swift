//
//  Profile.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (profile.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Resource Profile.
 *
 *  Scope and Usage This specification describes a set of base resources that are used in many different contexts in
 *  healthcare. In order to make this manageable, applications and specifications need to be able to describe
 *  restrictions on how one or more resource(s) are used, including defining extensions, and controlling how terminology
 *  is used. These descriptions need to be able to be shared through repositories of profile definitions, and need to
 *  allow for these usage statements to be published, compared, and used as the basis for code, report and UI
 *  generation. All these things are done using a "Profile", which itself is represented as a resource.
 *  
 *  Profile resources have three main parts:
 *  
 *  * A metadata section the describes the profile, and supports registry searching
 *  * Structures that define and describe how a Resource or Data Type is used
 *  * Extension Definitions that define extensions that can be used in structures
 *  This page defines the profile resource, and describes how it is used. Note that as part of the specification itself,
 *  a full set of profiles for all resources and data types is published.
 *  
 *  A FHIR RESTful server serving the profile resource is also a profile repository. HL7 hosts one for public
 *  registration of FHIR profiles at (yet to be done).
 */
public class Profile: FHIRResource
{
	override public class var resourceName: String {
		get { return "Profile" }
	}
	
	/// Assist with indexing and finding
	public var code: [Coding]?
	
	/// Date for this version of the profile
	public var date: NSDate?
	
	/// Natural language description of the profile
	public var description: String?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Definition of an extension
	public var extensionDefn: [ProfileExtensionDefn]?
	
	/// FHIR Version this profile targets
	public var fhirVersion: String?
	
	/// Logical id to reference this profile
	public var identifier: String?
	
	/// External specification that the content is mapped to
	public var mapping: [ProfileMapping]?
	
	/// Informal name for this profile
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Definition of a named query
	public var query: [ProfileQuery]?
	
	/// Scope and Usage this profile is for
	public var requirements: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// A constraint on a resource or a data type
	public var structure: [ProfileStructure]?
	
	/// Contact information of the publisher
	public var telecom: [Contact]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Logical id for this version of the profile
	public var version: String?
	
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
			if let val = js["code"] as? [NSDictionary] {
				self.code = Coding.from(val) as? [Coding]
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["experimental"] as? Int {
				self.experimental = (1 == val)
			}
			if let val = js["extensionDefn"] as? [NSDictionary] {
				self.extensionDefn = ProfileExtensionDefn.from(val) as? [ProfileExtensionDefn]
			}
			if let val = js["fhirVersion"] as? String {
				self.fhirVersion = val
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["mapping"] as? [NSDictionary] {
				self.mapping = ProfileMapping.from(val) as? [ProfileMapping]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["query"] as? [NSDictionary] {
				self.query = ProfileQuery.from(val) as? [ProfileQuery]
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["structure"] as? [NSDictionary] {
				self.structure = ProfileStructure.from(val) as? [ProfileStructure]
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
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
	/// Versions, Issues, Scope limitations etc
	public var comments: String?
	
	/// Internal id when this mapping is used
	public var identity: String?
	
	/// Names what this mapping refers to
	public var name: String?
	
	/// Identifies what this mapping refers to
	public var uri: NSURL?
	
	public convenience init(identity: String?) {
		self.init(json: nil)
		if nil != identity {
			self.identity = identity
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["identity"] as? String {
				self.identity = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["uri"] as? String {
				self.uri = NSURL(json: val)
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
	/// Definition of elements in the resource (if no profile)
	public var element: [ProfileStructureElement]?
	
	/// Name for this particular structure (reference target)
	public var name: String?
	
	/// This definition is published (i.e. for validation)
	public var publish: Bool?
	
	/// Human summary: why describe this resource?
	public var purpose: String?
	
	/// Search params defined
	public var searchParam: [ProfileStructureSearchParam]?
	
	/// The Resource or Data Type being described
	public var type: String?
	
	public convenience init(type: String?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["element"] as? [NSDictionary] {
				self.element = ProfileStructureElement.from(val) as? [ProfileStructureElement]
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
			if let val = js["searchParam"] as? [NSDictionary] {
				self.searchParam = ProfileStructureSearchParam.from(val) as? [ProfileStructureSearchParam]
			}
			if let val = js["type"] as? String {
				self.type = val
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
	/// More specific definition of the element
	public var definition: ProfileStructureElementDefinition?
	
	/// Name for this particular element definition (reference target)
	public var name: String?
	
	/// The path of the element (see the formal definitions)
	public var path: String?
	
	/// How this element is represented in instances
	public var representation: [String]?
	
	/// This element is sliced - slices follow
	public var slicing: ProfileStructureElementSlicing?
	
	public convenience init(path: String?) {
		self.init(json: nil)
		if nil != path {
			self.path = path
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["definition"] as? NSDictionary {
				self.definition = ProfileStructureElementDefinition(json: val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["path"] as? String {
				self.path = val
			}
			if let val = js["representation"] as? [String] {
				self.representation = val
			}
			if let val = js["slicing"] as? NSDictionary {
				self.slicing = ProfileStructureElementSlicing(json: val)
			}
		}
	}
}


/**
 *  This element is sliced - slices follow.
 *
 *  Indicates that the element is sliced into a set of alternative definitions (there are multiple definitions on a
 *  single element in the base resource). The set of slices is any elements that come after this in the element sequence
 *  that have the same path, until a shorter path occurs (the shorter path terminates the set).
 */
public class ProfileStructureElementSlicing: FHIRElement
{	
	/// Element that used to distinguish the slices
	public var discriminator: String?
	
	/// If elements must be in same order as slices
	public var ordered: Bool?
	
	/// closed | open | openAtEnd
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
 *  Definition of the content of the element to provide a more specific definition than that contained for the element
 *  in the base resource.
 */
public class ProfileStructureElementDefinition: FHIRElement
{	
	/// ValueSet details if this is coded
	public var binding: ProfileStructureElementDefinitionBinding?
	
	/// Comments about the use of this element
	public var comments: String?
	
	/// Reference to invariant about presence
	public var condition: [String]?
	
	/// Condition that must evaluate to true
	public var constraint: [ProfileStructureElementDefinitionConstraint]?
	
	/// Example value: [as defined for type]
	public var example: FHIRElement?
	
	/// Full formal definition in human language
	public var formal: String?
	
	/// If this modifies the meaning of other elements
	public var isModifier: Bool?
	
	/// Map element to another set of definitions
	public var mapping: [ProfileStructureElementDefinitionMapping]?
	
	/// Maximum Cardinality (a number or *)
	public var max: String?
	
	/// Length for strings
	public var maxLength: Int?
	
	/// Minimum Cardinality
	public var min: Int?
	
	/// If the element must supported
	public var mustSupport: Bool?
	
	/// To another element constraint (by element.name)
	public var nameReference: String?
	
	/// Why is this needed?
	public var requirements: String?
	
	/// Concise definition for xml presentation
	public var short: String?
	
	/// Other names
	public var synonym: [String]?
	
	/// Data type and Profile for this element
	public var type: [ProfileStructureElementDefinitionType]?
	
	/// Fixed value: [as defined for a primitive type]
	public var value: FHIRElement?
	
	public convenience init(formal: String?, isModifier: Bool?, max: String?, min: Int?, short: String?) {
		self.init(json: nil)
		if nil != formal {
			self.formal = formal
		}
		if nil != isModifier {
			self.isModifier = isModifier
		}
		if nil != max {
			self.max = max
		}
		if nil != min {
			self.min = min
		}
		if nil != short {
			self.short = short
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["binding"] as? NSDictionary {
				self.binding = ProfileStructureElementDefinitionBinding(json: val)
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["condition"] as? [String] {
				self.condition = val
			}
			if let val = js["constraint"] as? [NSDictionary] {
				self.constraint = ProfileStructureElementDefinitionConstraint.from(val) as? [ProfileStructureElementDefinitionConstraint]
			}
			if let val = js["example"] as? NSDictionary {
				self.example = FHIRElement(json: val)
			}
			if let val = js["formal"] as? String {
				self.formal = val
			}
			if let val = js["isModifier"] as? Int {
				self.isModifier = (1 == val)
			}
			if let val = js["mapping"] as? [NSDictionary] {
				self.mapping = ProfileStructureElementDefinitionMapping.from(val) as? [ProfileStructureElementDefinitionMapping]
			}
			if let val = js["max"] as? String {
				self.max = val
			}
			if let val = js["maxLength"] as? Int {
				self.maxLength = val
			}
			if let val = js["min"] as? Int {
				self.min = val
			}
			if let val = js["mustSupport"] as? Int {
				self.mustSupport = (1 == val)
			}
			if let val = js["nameReference"] as? String {
				self.nameReference = val
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["short"] as? String {
				self.short = val
			}
			if let val = js["synonym"] as? [String] {
				self.synonym = val
			}
			if let val = js["type"] as? [NSDictionary] {
				self.type = ProfileStructureElementDefinitionType.from(val) as? [ProfileStructureElementDefinitionType]
			}
			if let val = js["value"] as? NSDictionary {
				self.value = FHIRElement(json: val)
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
	/// contained | referenced | bundled - how aggregated
	public var aggregation: [String]?
	
	/// Name of Data type or Resource
	public var code: String?
	
	/// Profile.structure to apply
	public var profile: NSURL?
	
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["aggregation"] as? [String] {
				self.aggregation = val
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["profile"] as? String {
				self.profile = NSURL(json: val)
			}
		}
	}
}


/**
 *  Condition that must evaluate to true.
 *
 *  Formal constraints such as co-occurrence and other constraints that can be computationally evaluated within the
 *  context of the instance.
 */
public class ProfileStructureElementDefinitionConstraint: FHIRElement
{	
	/// Human description of constraint
	public var human: String?
	
	/// Target of 'condition' reference above
	public var key: String?
	
	/// Short human label
	public var name: String?
	
	/// error | warning
	public var severity: String?
	
	/// XPath expression of constraint
	public var xpath: String?
	
	public convenience init(human: String?, key: String?, severity: String?, xpath: String?) {
		self.init(json: nil)
		if nil != human {
			self.human = human
		}
		if nil != key {
			self.key = key
		}
		if nil != severity {
			self.severity = severity
		}
		if nil != xpath {
			self.xpath = xpath
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["human"] as? String {
				self.human = val
			}
			if let val = js["key"] as? String {
				self.key = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["severity"] as? String {
				self.severity = val
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
	/// required | preferred | example
	public var conformance: String?
	
	/// Human explanation of the value set
	public var description: String?
	
	/// Can additional codes be used?
	public var isExtensible: Bool?
	
	/// Descriptive Name
	public var name: String?
	
	/// Source of value set
	public var referenceResource: FHIRReference<ValueSet>?
	
	/// Source of value set
	public var referenceUri: NSURL?
	
	public convenience init(isExtensible: Bool?, name: String?) {
		self.init(json: nil)
		if nil != isExtensible {
			self.isExtensible = isExtensible
		}
		if nil != name {
			self.name = name
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["conformance"] as? String {
				self.conformance = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["isExtensible"] as? Int {
				self.isExtensible = (1 == val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["referenceResource"] as? NSDictionary {
				self.referenceResource = FHIRReference(json: val, owner: self)
			}
			if let val = js["referenceUri"] as? String {
				self.referenceUri = NSURL(json: val)
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
	/// Reference to mapping declaration
	public var identity: String?
	
	/// Details of the mapping
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
	/// Contents and meaning of search parameter
	public var documentation: String?
	
	/// Name of search parameter
	public var name: String?
	
	/// Types of resource (if a resource reference)
	public var target: [String]?
	
	/// number | date | string | token | reference | composite | quantity
	public var type: String?
	
	/// XPath that extracts the parameter set
	public var xpath: String?
	
	public convenience init(documentation: String?, name: String?, type: String?) {
		self.init(json: nil)
		if nil != documentation {
			self.documentation = documentation
		}
		if nil != name {
			self.name = name
		}
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["target"] as? [String] {
				self.target = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["xpath"] as? String {
				self.xpath = val
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
	/// Identifies the extension in this profile
	public var code: String?
	
	/// Where the extension can be used in instances
	public var context: [String]?
	
	/// resource | datatype | mapping | extension
	public var contextType: String?
	
	/// Definition of the extension and its content
	public var definition: ProfileExtensionDefnDefinition?
	
	/// Use this name when displaying the value
	public var display: String?
	
	public convenience init(code: String?, context: [String]?, contextType: String?, definition: ProfileExtensionDefnDefinition?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != context {
			self.context = context
		}
		if nil != contextType {
			self.contextType = contextType
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
			if let val = js["context"] as? [String] {
				self.context = val
			}
			if let val = js["contextType"] as? String {
				self.contextType = val
			}
			if let val = js["definition"] as? NSDictionary {
				self.definition = ProfileExtensionDefnDefinition(json: val)
			}
			if let val = js["display"] as? String {
				self.display = val
			}
		}
	}
}


/**
 *  Definition of the extension and its content.
 */
public class ProfileExtensionDefnDefinition: FHIRElement
{	

}


/**
 *  Definition of a named query.
 *
 *  Definition of a named query and its parameters and their meaning.
 */
public class ProfileQuery: FHIRElement
{	
	/// Describes the named query
	public var documentation: String?
	
	/// Special named queries (_query=)
	public var name: String?
	
	/// Parameter for the named query
	public var parameter: [ProfileQueryParameter]?
	
	public convenience init(documentation: String?, name: String?) {
		self.init(json: nil)
		if nil != documentation {
			self.documentation = documentation
		}
		if nil != name {
			self.name = name
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["name"] as? String {
				self.name = val
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

}

