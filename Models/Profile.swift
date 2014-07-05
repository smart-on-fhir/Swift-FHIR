//
//  Profile.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
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
class Profile: FHIRResource
{
	override class var resourceName: String {
		get { return "Profile" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! Logical id to reference this profile */
	var identifier: String?
	
	/*! Logical id for this version of the profile */
	var version: String?
	
	/*! Informal name for this profile */
	var name: String?
	
	/*! Name of the publisher (Organization or individual) */
	var publisher: String?
	
	/*! Contact information of the publisher */
	var telecom: Contact[]?
	
	/*! Natural language description of the profile */
	var description: String?
	
	/*! Assist with indexing and finding */
	var code: Coding[]?
	
	/*! draft | active | retired */
	var status: String?
	
	/*! If for testing purposes, not real usage */
	var experimental: Bool?
	
	/*! Date for this version of the profile */
	var date: NSDate?
	
	/*! Scope and Usage this profile is for */
	var requirements: String?
	
	/*! FHIR Version this profile targets */
	var fhirVersion: String?
	
	/*! External specification that the content is mapped to */
	var mapping: ProfileMapping[]?
	
	/*! A constraint on a resource or a data type */
	var structure: ProfileStructure[]?
	
	/*! Definition of an extension */
	var extensionDefn: ProfileExtensionDefn[]?
	
	/*! Definition of a named query */
	var query: ProfileQuery[]?
	
	convenience init(name: String?, status: String?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
		if status {
			self.status = status
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
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
			if let val = js["telecom"] as? Array<NSDictionary> {
				self.telecom = Contact.from(val) as? Contact[]
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["code"] as? Array<NSDictionary> {
				self.code = Coding.from(val) as? Coding[]
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
			if let val = js["mapping"] as? Array<NSDictionary> {
				self.mapping = ProfileMapping.from(val) as? ProfileMapping[]
			}
			if let val = js["structure"] as? Array<NSDictionary> {
				self.structure = ProfileStructure.from(val) as? ProfileStructure[]
			}
			if let val = js["extensionDefn"] as? Array<NSDictionary> {
				self.extensionDefn = ProfileExtensionDefn.from(val) as? ProfileExtensionDefn[]
			}
			if let val = js["query"] as? Array<NSDictionary> {
				self.query = ProfileQuery.from(val) as? ProfileQuery[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  External specification that the content is mapped to.
 *
 *  An external specification that the content is mapped to.
 */
class ProfileMapping: FHIRElement
{	
	/*! Internal id when this mapping is used */
	var identity: String?
	
	/*! Identifies what this mapping refers to */
	var uri: NSURL?
	
	/*! Names what this mapping refers to */
	var name: String?
	
	/*! Versions, Issues, Scope limitations etc */
	var comments: String?
	
	convenience init(identity: String?) {
		self.init(json: nil)
		if identity {
			self.identity = identity
		}
	}	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}


/*!
 *  A constraint on a resource or a data type.
 *
 *  A constraint statement about what contents a resource or data type may have.
 */
class ProfileStructure: FHIRElement
{	
	/*! The Resource or Data Type being described */
	var type: String?
	
	/*! Name for this particular structure (reference target) */
	var name: String?
	
	/*! This definition is published (i.e. for validation) */
	var publish: Bool?
	
	/*! Human summary: why describe this resource? */
	var purpose: String?
	
	/*! Definition of elements in the resource (if no profile) */
	var element: ProfileStructureElement[]?
	
	/*! Search params defined */
	var searchParam: ProfileStructureSearchParam[]?
	
	convenience init(type: String?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
	}	
	
	init(json: NSDictionary?) {
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
			if let val = js["element"] as? Array<NSDictionary> {
				self.element = ProfileStructureElement.from(val) as? ProfileStructureElement[]
			}
			if let val = js["searchParam"] as? Array<NSDictionary> {
				self.searchParam = ProfileStructureSearchParam.from(val) as? ProfileStructureSearchParam[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Definition of elements in the resource (if no profile).
 *
 *  Captures constraints on each element within the resource.
 */
class ProfileStructureElement: FHIRElement
{	
	/*! The path of the element (see the formal definitions) */
	var path: String?
	
	/*! How this element is represented in instances */
	var representation: String[]?
	
	/*! Name for this particular element definition (reference target) */
	var name: String?
	
	/*! This element is sliced - slices follow */
	var slicing: ProfileStructureElementSlicing?
	
	/*! More specific definition of the element */
	var definition: ProfileStructureElementDefinition?
	
	convenience init(path: String?) {
		self.init(json: nil)
		if path {
			self.path = path
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["path"] as? String {
				self.path = val
			}
			if let val = js["representation"] as? Array<String> {
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
		super.init(json: json)
	}
}


/*!
 *  This element is sliced - slices follow.
 *
 *  Indicates that the element is sliced into a set of alternative definitions (there are multiple definitions on
 *  a single element in the base resource). The set of slices is any elements that come after this in the element
 *  sequence that have the same path, until a shorter path occurs (the shorter path terminates the set).
 */
class ProfileStructureElementSlicing: FHIRElement
{	
	/*! Element that used to distinguish the slices */
	var discriminator: String?
	
	/*! If elements must be in same order as slices */
	var ordered: Bool?
	
	/*! closed | open | openAtEnd */
	var rules: String?
	
	convenience init(discriminator: String?, ordered: Bool?, rules: String?) {
		self.init(json: nil)
		if discriminator {
			self.discriminator = discriminator
		}
		if ordered {
			self.ordered = ordered
		}
		if rules {
			self.rules = rules
		}
	}	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}


/*!
 *  More specific definition of the element.
 *
 *  Definition of the content of the element to provide a more specific definition than that contained for the
 *  element in the base resource.
 */
class ProfileStructureElementDefinition: FHIRElement
{	
	/*! Concise definition for xml presentation */
	var short: String?
	
	/*! Full formal definition in human language */
	var formal: String?
	
	/*! Comments about the use of this element */
	var comments: String?
	
	/*! Why is this needed? */
	var requirements: String?
	
	/*! Other names */
	var synonym: String[]?
	
	/*! Minimum Cardinality */
	var min: Int?
	
	/*! Maximum Cardinality (a number or *) */
	var max: String?
	
	/*! Data type and Profile for this element */
	var type: ProfileStructureElementDefinitionType[]?
	
	/*! To another element constraint (by element.name) */
	var nameReference: String?
	
	/*! Fixed value: [as defined for a primitive type] */
	var value: FHIRElement?
	
	/*! Example value: [as defined for type] */
	var example: FHIRElement?
	
	/*! Length for strings */
	var maxLength: Int?
	
	/*! Reference to invariant about presence */
	var condition: String[]?
	
	/*! Condition that must evaluate to true */
	var constraint: ProfileStructureElementDefinitionConstraint[]?
	
	/*! If the element must supported */
	var mustSupport: Bool?
	
	/*! If this modifies the meaning of other elements */
	var isModifier: Bool?
	
	/*! ValueSet details if this is coded */
	var binding: ProfileStructureElementDefinitionBinding?
	
	/*! Map element to another set of definitions */
	var mapping: ProfileStructureElementDefinitionMapping[]?
	
	convenience init(short: String?, formal: String?, min: Int?, max: String?, isModifier: Bool?) {
		self.init(json: nil)
		if short {
			self.short = short
		}
		if formal {
			self.formal = formal
		}
		if min {
			self.min = min
		}
		if max {
			self.max = max
		}
		if isModifier {
			self.isModifier = isModifier
		}
	}	
	
	init(json: NSDictionary?) {
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
			if let val = js["synonym"] as? Array<String> {
				self.synonym = val
			}
			if let val = js["min"] as? Int {
				self.min = val
			}
			if let val = js["max"] as? String {
				self.max = val
			}
			if let val = js["type"] as? Array<NSDictionary> {
				self.type = ProfileStructureElementDefinitionType.from(val) as? ProfileStructureElementDefinitionType[]
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
			if let val = js["condition"] as? Array<String> {
				self.condition = val
			}
			if let val = js["constraint"] as? Array<NSDictionary> {
				self.constraint = ProfileStructureElementDefinitionConstraint.from(val) as? ProfileStructureElementDefinitionConstraint[]
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
			if let val = js["mapping"] as? Array<NSDictionary> {
				self.mapping = ProfileStructureElementDefinitionMapping.from(val) as? ProfileStructureElementDefinitionMapping[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Data type and Profile for this element.
 *
 *  The data type or resource that the value of this element is permitted to be.
 */
class ProfileStructureElementDefinitionType: FHIRElement
{	
	/*! Name of Data type or Resource */
	var code: String?
	
	/*! Profile.structure to apply */
	var profile: NSURL?
	
	/*! contained | referenced | bundled - how aggregated */
	var aggregation: String[]?
	
	convenience init(code: String?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["profile"] as? String {
				self.profile = NSURL(json: val)
			}
			if let val = js["aggregation"] as? Array<String> {
				self.aggregation = val
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Condition that must evaluate to true.
 *
 *  Formal constraints such as co-occurrence and other constraints that can be computationally evaluated within
 *  the context of the instance.
 */
class ProfileStructureElementDefinitionConstraint: FHIRElement
{	
	/*! Target of 'condition' reference above */
	var key: String?
	
	/*! Short human label */
	var name: String?
	
	/*! error | warning */
	var severity: String?
	
	/*! Human description of constraint */
	var human: String?
	
	/*! XPath expression of constraint */
	var xpath: String?
	
	convenience init(key: String?, severity: String?, human: String?, xpath: String?) {
		self.init(json: nil)
		if key {
			self.key = key
		}
		if severity {
			self.severity = severity
		}
		if human {
			self.human = human
		}
		if xpath {
			self.xpath = xpath
		}
	}	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}


/*!
 *  ValueSet details if this is coded.
 *
 *  Binds to a value set if this element is coded (code, Coding, CodeableConcept).
 */
class ProfileStructureElementDefinitionBinding: FHIRElement
{	
	/*! Descriptive Name */
	var name: String?
	
	/*! Can additional codes be used? */
	var isExtensible: Bool?
	
	/*! required | preferred | example */
	var conformance: String?
	
	/*! Human explanation of the value set */
	var description: String?
	
	/*! Source of value set */
	var referenceUri: NSURL?
	
	/*! Source of value set */
	var referenceResourceReference: ResourceReference?
	
	convenience init(name: String?, isExtensible: Bool?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
		if isExtensible {
			self.isExtensible = isExtensible
		}
	}	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}


/*!
 *  Map element to another set of definitions.
 *
 *  Identifies a concept from an external specification that roughly corresponds to this element.
 */
class ProfileStructureElementDefinitionMapping: FHIRElement
{	
	/*! Reference to mapping declaration */
	var identity: String?
	
	/*! Details of the mapping */
	var map: String?
	
	convenience init(identity: String?, map: String?) {
		self.init(json: nil)
		if identity {
			self.identity = identity
		}
		if map {
			self.map = map
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["identity"] as? String {
				self.identity = val
			}
			if let val = js["map"] as? String {
				self.map = val
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Search params defined.
 *
 *  Additional search parameters for implementations to support and/or make use of.
 */
class ProfileStructureSearchParam: FHIRElement
{	
	/*! Name of search parameter */
	var name: String?
	
	/*! number | date | string | token | reference | composite | quantity */
	var type: String?
	
	/*! Contents and meaning of search parameter */
	var documentation: String?
	
	/*! XPath that extracts the parameter set */
	var xpath: String?
	
	/*! Types of resource (if a resource reference) */
	var target: String[]?
	
	convenience init(name: String?, type: String?, documentation: String?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
		if type {
			self.type = type
		}
		if documentation {
			self.documentation = documentation
		}
	}	
	
	init(json: NSDictionary?) {
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
			if let val = js["target"] as? Array<String> {
				self.target = val
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Definition of an extension.
 *
 *  An extension defined as part of the profile.
 */
class ProfileExtensionDefn: FHIRElement
{	
	/*! Identifies the extension in this profile */
	var code: String?
	
	/*! Use this name when displaying the value */
	var display: String?
	
	/*! resource | datatype | mapping | extension */
	var contextType: String?
	
	/*! Where the extension can be used in instances */
	var context: String[]?
	
	/*! Definition of the extension and its content */
	var definition: ProfileExtensionDefnDefinition?
	
	convenience init(code: String?, contextType: String?, context: String[]?, definition: ProfileExtensionDefnDefinition?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
		if contextType {
			self.contextType = contextType
		}
		if context {
			self.context = context
		}
		if definition {
			self.definition = definition
		}
	}	
	
	init(json: NSDictionary?) {
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
			if let val = js["context"] as? Array<String> {
				self.context = val
			}
			if let val = js["definition"] as? NSDictionary {
				self.definition = ProfileExtensionDefnDefinition(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Definition of the extension and its content.
 */
class ProfileExtensionDefnDefinition: FHIRElement
{	
	
	init(json: NSDictionary?) {
		if let js = json {
		}
		super.init(json: json)
	}
}


/*!
 *  Definition of a named query.
 *
 *  Definition of a named query and its parameters and their meaning.
 */
class ProfileQuery: FHIRElement
{	
	/*! Special named queries (_query=) */
	var name: String?
	
	/*! Describes the named query */
	var documentation: String?
	
	/*! Parameter for the named query */
	var parameter: ProfileQueryParameter[]?
	
	convenience init(name: String?, documentation: String?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
		if documentation {
			self.documentation = documentation
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["parameter"] as? Array<NSDictionary> {
				self.parameter = ProfileQueryParameter.from(val) as? ProfileQueryParameter[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Parameter for the named query.
 *
 *  A parameter of a named query.
 */
class ProfileQueryParameter: FHIRElement
{	
	
	init(json: NSDictionary?) {
		if let js = json {
		}
		super.init(json: json)
	}
}
