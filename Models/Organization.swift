//
//  Organization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A grouping of people or organizations with a common purpose.
 *
 *  Scope and Usage This resource may be used in a shared registry of contact and other information for various
 *  organizations or it can be used merely as a support for other resources that need to reference organizations,
 *  perhaps as a document, message or as a contained resource. If using a registry approach, it's entirely
 *  possible for multiple registries to exist, each dealing with different types or levels of organization.
 */
class Organization: FHIRResource
{
	override var resourceName: String {
		get { return "Organization" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Identifies this organization  across multiple systems */
	var identifier: Identifier[]?

	/*! Name used for the organization */
	var name: String?

	/*! Kind of organization */
	var type: CodeableConcept?

	/*! A contact detail for the organization */
	var telecom: Contact[]?

	/*! An address for the organization */
	var address: Address[]?

	/*! The organization of which this organization forms a part */
	var partOf: ResourceReference?

	/*! Contact for the organization for a certain purpose */
	var contact: OrganizationContact[]?

	/*! Location(s) the organization uses to provide services */
	var location: ResourceReference[]?

	/*! Whether the organization's record is still in active use */
	var active: Bool?

}


/*!
 *  Contact for the organization for a certain purpose.
 */
class OrganizationContact: FHIRElement
{
	/*! The type of contact */
	var purpose: CodeableConcept?

	/*! A name associated with the contact */
	var name: HumanName?

	/*! Contact details (telephone, email, etc)  for a contact */
	var telecom: Contact[]?

	/*! Visiting or postal addresses for the contact */
	var address: Address?

	/*! Gender for administrative purposes */
	var gender: CodeableConcept?

}
