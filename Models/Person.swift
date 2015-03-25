//
//  Person.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/Person) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A generic person record.
 *
 *  Demographics and administrative information about a person independent of a specific health-related context.
 */
public class Person: DomainResource
{
	override public class var resourceName: String {
		get { return "Person" }
	}
	
	/// This person's record is in active use
	public var active: Bool?
	
	/// One or more addresses for the person
	public var address: [Address]?
	
	/// The birth date for the person
	public var birthDate: DateTime?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// A Human identifier for this person
	public var identifier: [Identifier]?
	
	/// Link to a resource that concerns the same actual person
	public var link: [PersonLink]?
	
	/// The Organization that is the custodian of the person record
	public var managingOrganization: Reference?
	
	/// A name associated with the person
	public var name: [HumanName]?
	
	/// Image of the Person
	public var photo: Attachment?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["active"] as? Bool {
				self.active = val
			}
			if let val = js["address"] as? [FHIRJSON] {
				self.address = Address.from(val, owner: self) as? [Address]
			}
			if let val = js["birthDate"] as? String {
				self.birthDate = DateTime(string: val)
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["link"] as? [FHIRJSON] {
				self.link = PersonLink.from(val, owner: self) as? [PersonLink]
			}
			if let val = js["managingOrganization"] as? FHIRJSON {
				self.managingOrganization = Reference(json: val, owner: self)
			}
			if let val = js["name"] as? [FHIRJSON] {
				self.name = HumanName.from(val, owner: self) as? [HumanName]
			}
			if let val = js["photo"] as? FHIRJSON {
				self.photo = Attachment(json: val, owner: self)
			}
			if let val = js["telecom"] as? [FHIRJSON] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let address = self.address {
			json["address"] = Address.asJSONArray(address)
		}
		if let birthDate = self.birthDate {
			json["birthDate"] = birthDate.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let link = self.link {
			json["link"] = PersonLink.asJSONArray(link)
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON()
		}
		if let name = self.name {
			json["name"] = HumanName.asJSONArray(name)
		}
		if let photo = self.photo {
			json["photo"] = photo.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  Link to a resource that concerns the same actual person.
 */
public class PersonLink: FHIRElement
{
	override public class var resourceName: String {
		get { return "PersonLink" }
	}
	
	/// level1 | level2 | level3 | level4
	public var assurance: String?
	
	/// The resource to which this actual person is associated
	public var target: Reference?
	
	public convenience init(target: Reference?) {
		self.init(json: nil)
		if nil != target {
			self.target = target
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["assurance"] as? String {
				self.assurance = val
			}
			if let val = js["target"] as? FHIRJSON {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let assurance = self.assurance {
			json["assurance"] = assurance.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}

