//
//  Patient.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Patient) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Information about an individual or animal receiving health care services.

Demographics and other administrative information about an individual or animal receiving care or other health-related
services.
*/
open class Patient: DomainResource {
	override open class var resourceType: String {
		get { return "Patient" }
	}
	
	/// Whether this patient's record is in active use.
	public var active: Bool?
	
	/// Addresses for the individual.
	public var address: [Address]?
	
	/// This patient is known to be an animal (non-human).
	public var animal: PatientAnimal?
	
	/// The date of birth for the individual.
	public var birthDate: FHIRDate?
	
	/// A list of Languages which may be used to communicate with the patient about his or her health.
	public var communication: [PatientCommunication]?
	
	/// A contact party (e.g. guardian, partner, friend) for the patient.
	public var contact: [PatientContact]?
	
	/// Indicates if the individual is deceased or not.
	public var deceasedBoolean: Bool?
	
	/// Indicates if the individual is deceased or not.
	public var deceasedDateTime: DateTime?
	
	/// Administrative Gender - the gender that the patient is considered to have for administration and record keeping
	/// purposes.
	public var gender: AdministrativeGender?
	
	/// Patient's nominated primary care provider.
	public var generalPractitioner: [Reference]?
	
	/// An identifier for this patient.
	public var identifier: [Identifier]?
	
	/// Link to another patient resource that concerns the same actual person.
	public var link: [PatientLink]?
	
	/// Organization that is the custodian of the patient record.
	public var managingOrganization: Reference?
	
	/// Marital (civil) status of a patient.
	public var maritalStatus: CodeableConcept?
	
	/// Whether patient is part of a multiple birth.
	public var multipleBirthBoolean: Bool?
	
	/// Whether patient is part of a multiple birth.
	public var multipleBirthInteger: Int?
	
	/// A name associated with the patient.
	public var name: [HumanName]?
	
	/// Image of the patient.
	public var photo: [Attachment]?
	
	/// A contact detail for the individual.
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
		if let exist = json["animal"] {
			presentKeys.insert("animal")
			if let val = exist as? FHIRJSON {
				do {
					self.animal = try PatientAnimal(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "animal"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "animal", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["birthDate"] {
			presentKeys.insert("birthDate")
			if let val = exist as? String {
				self.birthDate = FHIRDate(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "birthDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["communication"] {
			presentKeys.insert("communication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.communication = try PatientCommunication.instantiate(fromArray: val, owner: self) as? [PatientCommunication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "communication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "communication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try PatientContact.instantiate(fromArray: val, owner: self) as? [PatientContact]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["deceasedBoolean"] {
			presentKeys.insert("deceasedBoolean")
			if let val = exist as? Bool {
				self.deceasedBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "deceasedBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["deceasedDateTime"] {
			presentKeys.insert("deceasedDateTime")
			if let val = exist as? String {
				self.deceasedDateTime = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "deceasedDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["gender"] {
			presentKeys.insert("gender")
			if let val = exist as? String {
				if let enumval = AdministrativeGender(rawValue: val) {
					self.gender = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "gender", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "gender", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["generalPractitioner"] {
			presentKeys.insert("generalPractitioner")
			if let val = exist as? [FHIRJSON] {
				do {
					self.generalPractitioner = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "generalPractitioner"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "generalPractitioner", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
					self.link = try PatientLink.instantiate(fromArray: val, owner: self) as? [PatientLink]
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
		if let exist = json["maritalStatus"] {
			presentKeys.insert("maritalStatus")
			if let val = exist as? FHIRJSON {
				do {
					self.maritalStatus = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "maritalStatus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "maritalStatus", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["multipleBirthBoolean"] {
			presentKeys.insert("multipleBirthBoolean")
			if let val = exist as? Bool {
				self.multipleBirthBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "multipleBirthBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["multipleBirthInteger"] {
			presentKeys.insert("multipleBirthInteger")
			if let val = exist as? Int {
				self.multipleBirthInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "multipleBirthInteger", wants: Int.self, has: type(of: exist)))
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
			if let val = exist as? [FHIRJSON] {
				do {
					self.photo = try Attachment.instantiate(fromArray: val, owner: self) as? [Attachment]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "photo"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "photo", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let animal = self.animal {
			json["animal"] = animal.asJSON(errors: &errors)
		}
		if let birthDate = self.birthDate {
			json["birthDate"] = birthDate.asJSON()
		}
		if let communication = self.communication {
			json["communication"] = communication.map() { $0.asJSON(errors: &errors) }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let deceasedBoolean = self.deceasedBoolean {
			json["deceasedBoolean"] = deceasedBoolean.asJSON()
		}
		if let deceasedDateTime = self.deceasedDateTime {
			json["deceasedDateTime"] = deceasedDateTime.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.rawValue
		}
		if let generalPractitioner = self.generalPractitioner {
			json["generalPractitioner"] = generalPractitioner.map() { $0.asJSON(errors: &errors) }
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
		if let maritalStatus = self.maritalStatus {
			json["maritalStatus"] = maritalStatus.asJSON(errors: &errors)
		}
		if let multipleBirthBoolean = self.multipleBirthBoolean {
			json["multipleBirthBoolean"] = multipleBirthBoolean.asJSON()
		}
		if let multipleBirthInteger = self.multipleBirthInteger {
			json["multipleBirthInteger"] = multipleBirthInteger.asJSON()
		}
		if let name = self.name {
			json["name"] = name.map() { $0.asJSON(errors: &errors) }
		}
		if let photo = self.photo {
			json["photo"] = photo.map() { $0.asJSON(errors: &errors) }
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
This patient is known to be an animal (non-human).

This patient is known to be an animal.
*/
open class PatientAnimal: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientAnimal" }
	}
	
	/// E.g. Poodle, Angus.
	public var breed: CodeableConcept?
	
	/// E.g. Neutered, Intact.
	public var genderStatus: CodeableConcept?
	
	/// E.g. Dog, Cow.
	public var species: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(species: CodeableConcept) {
		self.init()
		self.species = species
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["breed"] {
			presentKeys.insert("breed")
			if let val = exist as? FHIRJSON {
				do {
					self.breed = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "breed"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "breed", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["genderStatus"] {
			presentKeys.insert("genderStatus")
			if let val = exist as? FHIRJSON {
				do {
					self.genderStatus = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "genderStatus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "genderStatus", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["species"] {
			presentKeys.insert("species")
			if let val = exist as? FHIRJSON {
				do {
					self.species = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "species"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "species", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "species"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let breed = self.breed {
			json["breed"] = breed.asJSON(errors: &errors)
		}
		if let genderStatus = self.genderStatus {
			json["genderStatus"] = genderStatus.asJSON(errors: &errors)
		}
		if let species = self.species {
			json["species"] = species.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "species"))
		}
		
		return json
	}
}


/**
A list of Languages which may be used to communicate with the patient about his or her health.

Languages which may be used to communicate with the patient about his or her health.
*/
open class PatientCommunication: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientCommunication" }
	}
	
	/// The language which can be used to communicate with the patient about his or her health.
	public var language: CodeableConcept?
	
	/// Language preference indicator.
	public var preferred: Bool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(language: CodeableConcept) {
		self.init()
		self.language = language
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? FHIRJSON {
				do {
					self.language = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "language"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "language"))
		}
		if let exist = json["preferred"] {
			presentKeys.insert("preferred")
			if let val = exist as? Bool {
				self.preferred = val
			}
			else {
				errors.append(FHIRValidationError(key: "preferred", wants: Bool.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let language = self.language {
			json["language"] = language.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "language"))
		}
		if let preferred = self.preferred {
			json["preferred"] = preferred.asJSON()
		}
		
		return json
	}
}


/**
A contact party (e.g. guardian, partner, friend) for the patient.
*/
open class PatientContact: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientContact" }
	}
	
	/// Address for the contact person.
	public var address: Address?
	
	/// Administrative Gender - the gender that the contact person is considered to have for administration and record
	/// keeping purposes.
	public var gender: AdministrativeGender?
	
	/// A name associated with the contact person.
	public var name: HumanName?
	
	/// Organization that is associated with the contact.
	public var organization: Reference?
	
	/// The period during which this contact person or organization is valid to be contacted relating to this patient.
	public var period: Period?
	
	/// The kind of relationship.
	public var relationship: [CodeableConcept]?
	
	/// A contact detail for the person.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["address"] {
			presentKeys.insert("address")
			if let val = exist as? FHIRJSON {
				do {
					self.address = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "address"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "address", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["gender"] {
			presentKeys.insert("gender")
			if let val = exist as? String {
				if let enumval = AdministrativeGender(rawValue: val) {
					self.gender = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "gender", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "gender", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? FHIRJSON {
				do {
					self.name = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "name"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["organization"] {
			presentKeys.insert("organization")
			if let val = exist as? FHIRJSON {
				do {
					self.organization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "organization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "organization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["relationship"] {
			presentKeys.insert("relationship")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relationship = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relationship"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relationship", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		
		if let address = self.address {
			json["address"] = address.asJSON(errors: &errors)
		}
		if let gender = self.gender {
			json["gender"] = gender.rawValue
		}
		if let name = self.name {
			json["name"] = name.asJSON(errors: &errors)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.map() { $0.asJSON(errors: &errors) }
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Link to another patient resource that concerns the same actual person.

Link to another patient resource that concerns the same actual patient.
*/
open class PatientLink: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientLink" }
	}
	
	/// The other patient or related person resource that the link refers to.
	public var other: Reference?
	
	/// The type of link between this patient resource and another patient resource.
	public var type: LinkType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(other: Reference, type: LinkType) {
		self.init()
		self.other = other
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["other"] {
			presentKeys.insert("other")
			if let val = exist as? FHIRJSON {
				do {
					self.other = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "other"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "other", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "other"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = LinkType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let other = self.other {
			json["other"] = other.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "other"))
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return json
	}
}

