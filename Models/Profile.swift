//
//  Profile.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	override var resourceName: String {
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
	var name: String

	/*! Name of the publisher (Organization or individual) */
	var publisher: String?

	/*! Contact information of the publisher */
	var telecom: Contact[]?

	/*! Natural language description of the profile */
	var description: String?

	/*! Assist with indexing and finding */
	var code: Coding[]?

	/*! draft | active | retired */
	var status: String

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

	init(name: String, status: String) {
		self.name = name
		self.status = status
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
	var identity: String

	/*! Identifies what this mapping refers to */
	var uri: NSURL?

	/*! Names what this mapping refers to */
	var name: String?

	/*! Versions, Issues, Scope limitations etc */
	var comments: String?

	init(identity: String) {
		self.identity = identity
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
	var type: String

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

	init(type: String) {
		self.type = type
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
	var path: String

	/*! How this element is represented in instances */
	var representation: String[]?

	/*! Name for this particular element definition (reference target) */
	var name: String?

	/*! This element is sliced - slices follow */
	var slicing: ProfileStructureElementSlicing?

	/*! More specific definition of the element */
	var definition: ProfileStructureElementDefinition?

	init(path: String) {
		self.path = path
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
	var discriminator: String

	/*! If elements must be in same order as slices */
	var ordered: Bool

	/*! closed | open | openAtEnd */
	var rules: String

	init(discriminator: String, ordered: Bool, rules: String) {
		self.discriminator = discriminator
		self.ordered = ordered
		self.rules = rules
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
	var short: String

	/*! Full formal definition in human language */
	var formal: String

	/*! Comments about the use of this element */
	var comments: String?

	/*! Why is this needed? */
	var requirements: String?

	/*! Other names */
	var synonym: String[]?

	/*! Minimum Cardinality */
	var min: Int

	/*! Maximum Cardinality (a number or *) */
	var max: String

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
	var isModifier: Bool

	/*! ValueSet details if this is coded */
	var binding: ProfileStructureElementDefinitionBinding?

	/*! Map element to another set of definitions */
	var mapping: ProfileStructureElementDefinitionMapping[]?

	init(short: String, formal: String, min: Int, max: String, isModifier: Bool) {
		self.short = short
		self.formal = formal
		self.min = min
		self.max = max
		self.isModifier = isModifier
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
	var code: String

	/*! Profile.structure to apply */
	var profile: NSURL?

	/*! contained | referenced | bundled - how aggregated */
	var aggregation: String[]?

	init(code: String) {
		self.code = code
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
	var key: String

	/*! Short human label */
	var name: String?

	/*! error | warning */
	var severity: String

	/*! Human description of constraint */
	var human: String

	/*! XPath expression of constraint */
	var xpath: String

	init(key: String, severity: String, human: String, xpath: String) {
		self.key = key
		self.severity = severity
		self.human = human
		self.xpath = xpath
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
	var name: String

	/*! Can additional codes be used? */
	var isExtensible: Bool

	/*! required | preferred | example */
	var conformance: String?

	/*! Human explanation of the value set */
	var description: String?

	/*! Source of value set */
	var referenceUri: NSURL?

	/*! Source of value set */
	var referenceResourceReference: ResourceReference?

	init(name: String, isExtensible: Bool) {
		self.name = name
		self.isExtensible = isExtensible
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
	var identity: String

	/*! Details of the mapping */
	var map: String

	init(identity: String, map: String) {
		self.identity = identity
		self.map = map
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
	var name: String

	/*! number | date | string | token | reference | composite | quantity */
	var type: String

	/*! Contents and meaning of search parameter */
	var documentation: String

	/*! XPath that extracts the parameter set */
	var xpath: String?

	/*! Types of resource (if a resource reference) */
	var target: String[]?

	init(name: String, type: String, documentation: String) {
		self.name = name
		self.type = type
		self.documentation = documentation
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
	var code: String

	/*! Use this name when displaying the value */
	var display: String?

	/*! resource | datatype | mapping | extension */
	var contextType: String

	/*! Where the extension can be used in instances */
	var context: String[]

	/*! Definition of the extension and its content */
	var definition: ProfileExtensionDefnDefinition

	init(code: String, contextType: String, context: String[], definition: ProfileExtensionDefnDefinition) {
		self.code = code
		self.contextType = contextType
		self.context = context
		self.definition = definition
	}
}


/*!
 *  Definition of the extension and its content.
 */
class ProfileExtensionDefnDefinition: FHIRElement
{
}


/*!
 *  Definition of a named query.
 *
 *  Definition of a named query and its parameters and their meaning.
 */
class ProfileQuery: FHIRElement
{
	/*! Special named queries (_query=) */
	var name: String

	/*! Describes the named query */
	var documentation: String

	/*! Parameter for the named query */
	var parameter: ProfileQueryParameter[]?

	init(name: String, documentation: String) {
		self.name = name
		self.documentation = documentation
	}
}


/*!
 *  Parameter for the named query.
 *
 *  A parameter of a named query.
 */
class ProfileQueryParameter: FHIRElement
{
}
