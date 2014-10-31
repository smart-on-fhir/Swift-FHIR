//
//  Organization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (organization.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A grouping of people or organizations with a common purpose.
 *
 *  Scope and Usage This resource may be used in a shared registry of contact and other information for various
 *  organizations or it can be used merely as a support for other resources that need to reference organizations,
 *  perhaps as a document, message or as a contained resource. If using a registry approach, it's entirely possible for
 *  multiple registries to exist, each dealing with different types or levels of organization.
 */
public class Organization: FHIRResource
{
	override public class var resourceName: String {
		get { return "Organization" }
	}
	
	/// Whether the organization's record is still in active use
	public var active: Bool?
	
	/// An address for the organization
	public var address: [Address]?
	
	/// Contact for the organization for a certain purpose
	public var contact: [OrganizationContact]?
	
	/// Identifies this organization  across multiple systems
	public var identifier: [Identifier]?
	
	/// Location(s) the organization uses to provide services
	public var location: [FHIRReference<Location>]?
	
	/// Name used for the organization
	public var name: String?
	
	/// The organization of which this organization forms a part
	public var partOf: FHIRReference<Organization>?
	
	/// A contact detail for the organization
	public var telecom: [Contact]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Kind of organization
	public var type: CodeableConcept?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["active"] as? Int {
				self.active = (1 == val)
			}
			if let val = js["address"] as? [NSDictionary] {
				self.address = Address.from(val) as? [Address]
			}
			if let val = js["contact"] as? [NSDictionary] {
				self.contact = OrganizationContact.from(val) as? [OrganizationContact]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["location"] as? [NSDictionary] {
				self.location = FHIRReference.from(val, owner: self)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["partOf"] as? NSDictionary {
				self.partOf = FHIRReference(json: val, owner: self)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
		}
	}
}


/**
 *  Contact for the organization for a certain purpose.
 */
public class OrganizationContact: FHIRElement
{	
	/// Visiting or postal addresses for the contact
	public var address: Address?
	
	/// Gender for administrative purposes
	public var gender: CodeableConcept?
	
	/// A name associated with the contact
	public var name: HumanName?
	
	/// The type of contact
	public var purpose: CodeableConcept?
	
	/// Contact details (telephone, email, etc)  for a contact
	public var telecom: [Contact]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? NSDictionary {
				self.address = Address(json: val)
			}
			if let val = js["gender"] as? NSDictionary {
				self.gender = CodeableConcept(json: val)
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val)
			}
			if let val = js["purpose"] as? NSDictionary {
				self.purpose = CodeableConcept(json: val)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
		}
	}
}

