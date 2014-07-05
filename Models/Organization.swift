//
//  Organization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
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
	override class var resourceName: String {
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
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["identifier"] as? Array<NSDictionary> {
				self.identifier = Identifier.from(val) as? Identifier[]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["telecom"] as? Array<NSDictionary> {
				self.telecom = Contact.from(val) as? Contact[]
			}
			if let val = js["address"] as? Array<NSDictionary> {
				self.address = Address.from(val) as? Address[]
			}
			if let val = js["partOf"] as? NSDictionary {
				self.partOf = ResourceReference(json: val)
			}
			if let val = js["contact"] as? Array<NSDictionary> {
				self.contact = OrganizationContact.from(val) as? OrganizationContact[]
			}
			if let val = js["location"] as? Array<NSDictionary> {
				self.location = ResourceReference.from(val) as? ResourceReference[]
			}
			if let val = js["active"] as? Int {
				self.active = (1 == val)
			}
		}
		super.init(json: json)
	}
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
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["purpose"] as? NSDictionary {
				self.purpose = CodeableConcept(json: val)
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val)
			}
			if let val = js["telecom"] as? Array<NSDictionary> {
				self.telecom = Contact.from(val) as? Contact[]
			}
			if let val = js["address"] as? NSDictionary {
				self.address = Address(json: val)
			}
			if let val = js["gender"] as? NSDictionary {
				self.gender = CodeableConcept(json: val)
			}
		}
		super.init(json: json)
	}
}
