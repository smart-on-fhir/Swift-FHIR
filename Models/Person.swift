//
//  Person.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (person.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A generic person record.
 *
 *  Demographics and administrative information about a person independent of a specific health-related context.
 */
public class Person: FHIRResource
{
	override public class var resourceName: String {
		get { return "Person" }
	}
	
	/// This person's record is in active use
	public var active: Bool?
	
	/// One or more addresses for the person
	public var address: [Address]?
	
	/// The birth date for the person
	public var birthDate: NSDate?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// A Human identifier for this person
	public var identifier: [Identifier]?
	
	/// Link to a resource that converns the same actual person
	public var link: [PersonLink]?
	
	/// The Organization that is the custodian of the person record
	public var managingOrganization: Reference?
	
	/// A name associated with the person
	public var name: [HumanName]?
	
	/// Image of the Person
	public var photo: Attachment?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["active"] as? Bool {
				self.active = val
			}
			if let val = js["address"] as? [NSDictionary] {
				self.address = Address.from(val, owner: self) as? [Address]
			}
			if let val = js["birthDate"] as? String {
				self.birthDate = NSDate(json: val)
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["link"] as? [NSDictionary] {
				self.link = PersonLink.from(val, owner: self) as? [PersonLink]
			}
			if let val = js["managingOrganization"] as? NSDictionary {
				self.managingOrganization = Reference(json: val, owner: self)
			}
			if let val = js["name"] as? [NSDictionary] {
				self.name = HumanName.from(val, owner: self) as? [HumanName]
			}
			if let val = js["photo"] as? NSDictionary {
				self.photo = Attachment(json: val, owner: self)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
}


/**
 *  Link to a resource that converns the same actual person.
 */
public class PersonLink: FHIRElement
{
	override public class var resourceName: String {
		get { return "PersonLink" }
	}
	
	/// level1 | level2 | level3 | level4
	public var assurance: String?
	
	/// The resource to which this actual person is associated
	public var other: Reference?
	
	public convenience init(other: Reference?) {
		self.init(json: nil)
		if nil != other {
			self.other = other
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["assurance"] as? String {
				self.assurance = val
			}
			if let val = js["other"] as? NSDictionary {
				self.other = Reference(json: val, owner: self)
			}
		}
	}
}

