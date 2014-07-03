//
//  Medication.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Definition of a Medication.
 *
 *  Scope and Usage Representing Medication in the majority of healthcare settings is a matter of identifying an
 *  item from a list and then conveying a reference for the item selected either into a patient related resource
 *  or to other applications. Additional information about the medication is frequently provided for human
 *  verification but a full representation of the details of composition and efficacy of the medicine is conveyed
 *  by referring to drug dictionaries by means of the codes they define. There are some occasions where it is
 *  necessary to identify slightly more detail, such as when dispensing a package containing a particular medicine
 *  requires identification both of the medicine and the package at once. There are also some occasions (e.g.
 *  custom formulations) where the composition of a medicine must be represented. In these cases the ingredients
 *  of the medicine have to be specified together with the amount contained, though the medication resource does
 *  not provide full details.
 *  
 *  The medication resource allows for medications to be characterised as either a product or a package; this
 *  classification is important because it affects the interpretation of a prescribed amount. For instance, is the
 *  prescribed amount 20 tablets, or 20 packages of 50 tablets each? However the kind element is not required
 *  because not all contexts of use are involved with prescription (medication statements, for instance).
 *  Typically, however, profiles describing the use of the medication resource in a prescribing environment will
 *  make the kind element required.
 *  
 *  Depending on whether the medication is a product or a package, further details about the composition can be
 *  provided. A product has a form (tablet, suspension, etc.) and a list of ingredients with quantities. The
 *  ingredients may be other medications or substances. A package has a container (vacuum packed box, jar, etc.)
 *  and a list of the products or other packages that are in the package.
 */
class Medication: FHIRResource
{
	override var resourceName: String {
		get { return "Medication" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Common / Commercial name */
	var name: String?

	/*! Codes that identify this medication */
	var code: CodeableConcept?

	/*! True if a brand */
	var isBrand: Bool?

	/*! Manufacturer of the item */
	var manufacturer: ResourceReference?

	/*! product | package */
	var kind: String?

	/*! Administrable medication details */
	var product: MedicationProduct?

	/*! Details about packaged medications */
	var package: MedicationPackage?

}


/*!
 *  Administrable medication details.
 *
 *  Information that only applies to products (not packages).
 */
class MedicationProduct: FHIRElement
{
	/*! powder | tablets | carton + */
	var form: CodeableConcept?

	/*! Active or inactive ingredient */
	var ingredient: MedicationProductIngredient[]?

}


/*!
 *  Active or inactive ingredient.
 *
 *  Identifies a particular constituent of interest in the product.
 */
class MedicationProductIngredient: FHIRElement
{
	/*! The product contained */
	var item: ResourceReference

	/*! How much ingredient in product */
	var amount: Ratio?

	init(item: ResourceReference) {
		self.item = item
	}
}


/*!
 *  Details about packaged medications.
 *
 *  Information that only applies to packages (not products).
 */
class MedicationPackage: FHIRElement
{
	/*! E.g. box, vial, blister-pack */
	var container: CodeableConcept?

	/*! What is  in the package? */
	var content: MedicationPackageContent[]?

}


/*!
 *  What is  in the package?.
 *
 *  A set of components that go to make up the described item.
 */
class MedicationPackageContent: FHIRElement
{
	/*! A product in the package */
	var item: ResourceReference

	/*! How many are in the package? */
	var amount: Quantity?

	init(item: ResourceReference) {
		self.item = item
	}
}
