//
//  Organization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (organization.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A grouping of people or organizations with a common purpose.
 *
 *  A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some
 *  form of collective action.  Includes companies, institutions, corporations, departments, community groups,
 *  healthcare practice groups, etc.
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
	public var location: [Reference]?
	
	/// Name used for the organization
	public var name: String?
	
	/// The organization of which this organization forms a part
	public var partOf: Reference?
	
	/// A contact detail for the organization
	public var telecom: [ContactPoint]?
	
	/// Kind of organization
	public var type: CodeableConcept?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["active"] as? Bool {
				self.active = val
			}
			if let val = js["address"] as? [NSDictionary] {
				self.address = Address.from(val, owner: self) as? [Address]
			}
			if let val = js["contact"] as? [NSDictionary] {
				self.contact = OrganizationContact.from(val, owner: self) as? [OrganizationContact]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? [NSDictionary] {
				self.location = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["partOf"] as? NSDictionary {
				self.partOf = Reference(json: val, owner: self)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Contact for the organization for a certain purpose.
 */
public class OrganizationContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "OrganizationContact" }
	}
	
	/// Visiting or postal addresses for the contact
	public var address: Address?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// A name associated with the contact
	public var name: HumanName?
	
	/// The type of contact
	public var purpose: CodeableConcept?
	
	/// Contact details (telephone, email, etc)  for a contact
	public var telecom: [ContactPoint]?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? NSDictionary {
				self.address = Address(json: val, owner: self)
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val, owner: self)
			}
			if let val = js["purpose"] as? NSDictionary {
				self.purpose = CodeableConcept(json: val, owner: self)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
}

