//
//  Substance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A homogeneous material with a definite composition.
 *
 *  Scope and Usage This resource allows for a material to be represented. The resource can be used to represent
 *  either a kind of a substance - e.g. a formulation commonly used for treating patients, or it can be used to
 *  describe a particular package of a known substance (e.g. bottle, jar, packet).
 *  
 *  The composition of the material can be specified in terms of a mix of other materials, including with precise
 *  amounts if required.
 */
class Substance: FHIRResource
{
	override var resourceName: String {
		get { return "Substance" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! What kind of substance this is */
	var type: CodeableConcept

	/*! Textual description of the substance, comments */
	var description: String?

	/*! If this describes a specific package/container of the substance */
	var instance: SubstanceInstance?

	/*! Composition information about the substance */
	var ingredient: SubstanceIngredient[]?

	init(type: CodeableConcept) {
		self.type = type
	}
}


/*!
 *  If this describes a specific package/container of the substance.
 *
 *  Substance may be used to describe a kind of substance, or a specific package/container of the substance: an
 *  instance.
 */
class SubstanceInstance: FHIRElement
{
	/*! Identifier of the package/container */
	var identifier: Identifier?

	/*! When no longer valid to use */
	var expiry: NSDate?

	/*! Amount of substance in the package */
	var quantity: Quantity?

}


/*!
 *  Composition information about the substance.
 *
 *  A substance can be composed of other substances.
 */
class SubstanceIngredient: FHIRElement
{
	/*! Optional amount (concentration) */
	var quantity: Ratio?

	/*! A component of the substance */
	var substance: ResourceReference

	init(substance: ResourceReference) {
		self.substance = substance
	}
}
