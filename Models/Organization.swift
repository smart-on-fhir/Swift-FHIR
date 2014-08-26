//
//  Organization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (organization.profile.json) on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A grouping of people or organizations with a common purpose.
 *
 *  Scope and Usage This resource may be used in a shared registry of contact and other information for various
 *  organizations or it can be used merely as a support for other resources that need to reference organizations,
 *  perhaps as a document, message or as a contained resource. If using a registry approach, it's entirely
 *  possible for multiple registries to exist, each dealing with different types or levels of organization.
 */
public class Organization: FHIRResource
{
	override public class var resourceName: String {
		get { return "Organization" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Identifies this organization  across multiple systems */
	public var identifier: [Identifier]?
	
	/** Name used for the organization */
	public var name: String?
	
	/** Kind of organization */
	public var type: CodeableConcept?
	
	/** A contact detail for the organization */
	public var telecom: [Contact]?
	
	/** An address for the organization */
	public var address: [Address]?
	
	/** The organization of which this organization forms a part */
	public var partOf: FHIRElement? {
		get { return resolveReference("partOf") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "partOf")
			}
		}
	}
	
	/** Contact for the organization for a certain purpose */
	public var contact: [OrganizationContact]?
	
	/** Location(s) the organization uses to provide services */
	public var location: [FHIRElement]? {
		get { return resolveReferences("location") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "location")
			}
		}
	}
	
	/** Whether the organization's record is still in active use */
	public var active: Bool?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
			if let val = js["address"] as? [NSDictionary] {
				self.address = Address.from(val) as? [Address]
			}
			if let val = js["partOf"] as? NSDictionary {
				self.partOf = ResourceReference(json: val)
			}
			if let val = js["contact"] as? [NSDictionary] {
				self.contact = OrganizationContact.from(val) as? [OrganizationContact]
			}
			if let val = js["location"] as? [NSDictionary] {
				self.location = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["active"] as? Int {
				self.active = (1 == val)
			}
		}
	}
}


/**
 *  Contact for the organization for a certain purpose.
 */
public class OrganizationContact: FHIRElement
{	
	/** The type of contact */
	public var purpose: CodeableConcept?
	
	/** A name associated with the contact */
	public var name: HumanName?
	
	/** Contact details (telephone, email, etc)  for a contact */
	public var telecom: [Contact]?
	
	/** Visiting or postal addresses for the contact */
	public var address: Address?
	
	/** Gender for administrative purposes */
	public var gender: CodeableConcept?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["purpose"] as? NSDictionary {
				self.purpose = CodeableConcept(json: val)
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
			if let val = js["address"] as? NSDictionary {
				self.address = Address(json: val)
			}
			if let val = js["gender"] as? NSDictionary {
				self.gender = CodeableConcept(json: val)
			}
		}
	}
}

