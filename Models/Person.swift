//
//  Person.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Person) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["active"] {
				presentKeys.addObject("active")
				if let val = exist as? Bool {
					self.active = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"active\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["address"] {
				presentKeys.addObject("address")
				if let val = exist as? [FHIRJSON] {
					self.address = Address.from(val, owner: self) as? [Address]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"address\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["birthDate"] {
				presentKeys.addObject("birthDate")
				if let val = exist as? String {
					self.birthDate = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"birthDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["gender"] {
				presentKeys.addObject("gender")
				if let val = exist as? String {
					self.gender = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"gender\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["link"] {
				presentKeys.addObject("link")
				if let val = exist as? [FHIRJSON] {
					self.link = PersonLink.from(val, owner: self) as? [PersonLink]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"link\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["managingOrganization"] {
				presentKeys.addObject("managingOrganization")
				if let val = exist as? FHIRJSON {
					self.managingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"managingOrganization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? [FHIRJSON] {
					self.name = HumanName.from(val, owner: self) as? [HumanName]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["photo"] {
				presentKeys.addObject("photo")
				if let val = exist as? FHIRJSON {
					self.photo = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"photo\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
public class PersonLink: FHIRElement
{
	override public class var resourceName: String {
		get { return "PersonLink" }
	}
	
	/// level1 | level2 | level3 | level4
	public var assurance: String?
	
	/// The resource to which this actual person is associated
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(target: Reference?) {
		self.init(json: nil)
		if nil != target {
			self.target = target
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["assurance"] {
				presentKeys.addObject("assurance")
				if let val = exist as? String {
					self.assurance = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"assurance\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"target\" but it is missing"))
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

