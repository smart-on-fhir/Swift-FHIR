//
//  ValueSet.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
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
class ValueSet: FHIRResource
{
	override var resourceName: String {
		get { return "ValueSet" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Logical id to reference this value set */
	var identifier: String?

	/*! Logical id for this version of the value set */
	var version: String?

	/*! Informal name for this value set */
	var name: String

	/*! Name of the publisher (Organization or individual) */
	var publisher: String?

	/*! Contact information of the publisher */
	var telecom: Contact[]?

	/*! Human language description of the value set */
	var description: String

	/*! About the value set or its content */
	var copyright: String?

	/*! draft | active | retired */
	var status: String

	/*! If for testing purposes, not real usage */
	var experimental: Bool?

	/*! Whether this is intended to be used with an extensible binding */
	var extensible: Bool?

	/*! Date for given status */
	var date: NSDate?

	/*! When value set defines its own codes */
	var define: ValueSetDefine?

	/*! When value set includes codes from elsewhere */
	var compose: ValueSetCompose?

	/*! When value set is an expansion */
	var expansion: ValueSetExpansion?

	init(name: String, description: String, status: String) {
		self.name = name
		self.description = description
		self.status = status
	}
}


/*!
 *  When value set defines its own codes.
 */
class ValueSetDefine: FHIRElement
{
	/*! URI to identify the code system */
	var system: NSURL

	/*! Version of this system */
	var version: String?

	/*! If code comparison is case sensitive */
	var caseSensitive: Bool?

	/*! Concepts in the code system */
	var concept: ValueSetDefineConcept[]?

	init(system: NSURL) {
		self.system = system
	}
}


/*!
 *  Concepts in the code system.
 */
class ValueSetDefineConcept: FHIRElement
{
	/*! Code that identifies concept */
	var code: String

	/*! If this code is not for use as a real concept */
	var abstract: Bool?

	/*! Text to Display to the user */
	var display: String?

	/*! Formal Definition */
	var definition: String?

	/*! Child Concepts (is-a / contains) */
	var concept: ValueSetDefineConceptConcept[]?

	init(code: String) {
		self.code = code
	}
}


/*!
 *  Child Concepts (is-a / contains).
 */
class ValueSetDefineConceptConcept: FHIRElement
{
}


/*!
 *  When value set includes codes from elsewhere.
 */
class ValueSetCompose: FHIRElement
{
	/*! Import the contents of another value set */
	var importFrom: NSURL[]?

	/*! Include one or more codes from a code system */
	var include: ValueSetComposeInclude[]?

	/*! Explicitly exclude codes */
	var exclude: ValueSetComposeExclude[]?

}


/*!
 *  Include one or more codes from a code system.
 */
class ValueSetComposeInclude: FHIRElement
{
	/*! The system the codes come from */
	var system: NSURL

	/*! Specific version of the code system referred to */
	var version: String?

	/*! Code or concept from system */
	var code: String[]?

	/*! Select codes/concepts by their properties (including relationships) */
	var filter: ValueSetComposeIncludeFilter[]?

	init(system: NSURL) {
		self.system = system
	}
}


/*!
 *  Select codes/concepts by their properties (including relationships).
 *
 *  Select concepts by specify a matching criteria based on the properties (including relationships) defined by
 *  the system. If multiple filters are specified, they SHALL all be true.
 */
class ValueSetComposeIncludeFilter: FHIRElement
{
	/*! A property defined by the code system */
	var property: String

	/*! = | is-a | is-not-a | regex | in | not in */
	var op: String

	/*! Code from the system, or regex criteria */
	var value: String

	init(property: String, op: String, value: String) {
		self.property = property
		self.op = op
		self.value = value
	}
}


/*!
 *  Explicitly exclude codes.
 *
 *  Exclude one or more codes from the value set.
 */
class ValueSetComposeExclude: FHIRElement
{
}


/*!
 *  When value set is an expansion.
 */
class ValueSetExpansion: FHIRElement
{
	/*! Uniquely identifies this expansion */
	var identifier: Identifier?

	/*! Time valueset expansion happened */
	var timestamp: Int

	/*! Codes in the value set */
	var contains: ValueSetExpansionContains[]?

	init(timestamp: Int) {
		self.timestamp = timestamp
	}
}


/*!
 *  Codes in the value set.
 */
class ValueSetExpansionContains: FHIRElement
{
	/*! System value for the code */
	var system: NSURL?

	/*! Code - if blank, this is not a choosable code */
	var code: String?

	/*! User display for the concept */
	var display: String?

	/*! Codes contained in this concept */
	var contains: ValueSetExpansionContainsContains[]?

}


/*!
 *  Codes contained in this concept.
 */
class ValueSetExpansionContainsContains: FHIRElement
{
}
