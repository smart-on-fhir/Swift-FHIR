//
//  Person.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Person) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A generic person record.
 *
 *  Demographics and administrative information about a person independent of a specific health-related context.
 */
open class Person: DomainResource {
	override open class var resourceType: String {
		get { return "Person" }
	}
	
	/// This person's record is in active use.
	public var active: Bool?
	
	/// One or more addresses for the person.
	public var address: [Address]?
	
	/// The date on which the person was born.
	public var birthDate: FHIRDate?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["active"] {
			presentKeys.insert("active")
			if let val = exist as? Bool {
				self.active = val
			}
			else {
				errors.append(FHIRValidationError(key: "active", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["address"] {
			presentKeys.insert("address")
			if let val = exist as? [FHIRJSON] {
				do {
					self.address = try Address.instantiate(fromArray: val, owner: self) as? [Address]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "address"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "address", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["birthDate"] {
			presentKeys.insert("birthDate")
			if let val = exist as? String {
				self.birthDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "birthDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["gender"] {
			presentKeys.insert("gender")
			if let val = exist as? String {
				self.gender = val
			}
			else {
				errors.append(FHIRValidationError(key: "gender", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["link"] {
			presentKeys.insert("link")
			if let val = exist as? [FHIRJSON] {
				do {
					self.link = try PersonLink.instantiate(fromArray: val, owner: self) as? [PersonLink]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "link"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "link", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["managingOrganization"] {
			presentKeys.insert("managingOrganization")
			if let val = exist as? FHIRJSON {
				do {
					self.managingOrganization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "managingOrganization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "managingOrganization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? [FHIRJSON] {
				do {
					self.name = try HumanName.instantiate(fromArray: val, owner: self) as? [HumanName]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "name"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["photo"] {
			presentKeys.insert("photo")
			if let val = exist as? FHIRJSON {
				do {
					self.photo = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "photo"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "photo", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["telecom"] {
			presentKeys.insert("telecom")
			if let val = exist as? [FHIRJSON] {
				do {
					self.telecom = try ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "telecom"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "telecom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let address = self.address {
			json["address"] = address.map() { $0.asJSON(errors: &errors) }
		}
		if let birthDate = self.birthDate {
			json["birthDate"] = birthDate.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let link = self.link {
			json["link"] = link.map() { $0.asJSON(errors: &errors) }
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON(errors: &errors)
		}
		if let name = self.name {
			json["name"] = name.map() { $0.asJSON(errors: &errors) }
		}
		if let photo = self.photo {
			json["photo"] = photo.asJSON(errors: &errors)
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
 *  Link to a resource that concerns the same actual person.
 */
open class PersonLink: BackboneElement {
	override open class var resourceType: String {
		get { return "PersonLink" }
	}
	
	/// level1 | level2 | level3 | level4.
	public var assurance: String?
	
	/// The resource to which this actual person is associated.
	public var target: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(target: Reference) {
		self.init()
		self.target = target
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["assurance"] {
			presentKeys.insert("assurance")
			if let val = exist as? String {
				self.assurance = val
			}
			else {
				errors.append(FHIRValidationError(key: "assurance", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? FHIRJSON {
				do {
					self.target = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "target"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "target"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let assurance = self.assurance {
			json["assurance"] = assurance.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON(errors: &errors)
		}
		
		return json
	}
}

