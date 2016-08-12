//
//  Person.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Person) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A generic person record.
 *
 *  Demographics and administrative information about a person independent of a specific health-related context.
 */
public class Person: DomainResource {
	override public class var resourceName: String {
		get { return "Person" }
	}
	
	/// This person's record is in active use.
	public var active: Bool?
	
	/// One or more addresses for the person.
	public var address: [Address]?
	
	/// The date on which the person was born.
	public var birthDate: Date?
	
	/// male | female | other | unknown.
	public var gender: String?
	
	/// A human identifier for this person.
	public var identifier: [Identifier]?
	
	/// Link to a resource that concerns the same actual person.
	public var link: [PersonLink]?
	
	/// The organization that is the custodian of the person record.
	public var managingOrganization: Reference?
	
	/// A name associated with the person.
	public var name: [HumanName]?
	
	/// Image of the person.
	public var photo: Attachment?
	
	/// A contact detail for the person.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["active"] {
				presentKeys.insert("active")
				if let val = exist as? Bool {
					self.active = val
				}
				else {
					errors.append(FHIRJSONError(key: "active", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? [FHIRJSON] {
					self.address = Address.from(val, owner: self) as? [Address]
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["birthDate"] {
				presentKeys.insert("birthDate")
				if let val = exist as? String {
					self.birthDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "birthDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["gender"] {
				presentKeys.insert("gender")
				if let val = exist as? String {
					self.gender = val
				}
				else {
					errors.append(FHIRJSONError(key: "gender", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["link"] {
				presentKeys.insert("link")
				if let val = exist as? [FHIRJSON] {
					self.link = PersonLink.from(val, owner: self) as? [PersonLink]
				}
				else {
					errors.append(FHIRJSONError(key: "link", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["managingOrganization"] {
				presentKeys.insert("managingOrganization")
				if let val = exist as? FHIRJSON {
					self.managingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "managingOrganization", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? [FHIRJSON] {
					self.name = HumanName.from(val, owner: self) as? [HumanName]
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["photo"] {
				presentKeys.insert("photo")
				if let val = exist as? FHIRJSON {
					self.photo = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "photo", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
public class PersonLink: BackboneElement {
	override public class var resourceName: String {
		get { return "PersonLink" }
	}
	
	/// level1 | level2 | level3 | level4.
	public var assurance: String?
	
	/// The resource to which this actual person is associated.
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(target: Reference) {
		self.init(json: nil)
		self.target = target
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["assurance"] {
				presentKeys.insert("assurance")
				if let val = exist as? String {
					self.assurance = val
				}
				else {
					errors.append(FHIRJSONError(key: "assurance", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "target"))
			}
		}
		return errors.isEmpty ? nil : errors
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

