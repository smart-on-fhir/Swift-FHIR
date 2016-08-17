//
//  Patient.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/Patient) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Information about an individual or animal receiving health care services.
 *
 *  Demographics and other administrative information about an individual or animal receiving care or other health-
 *  related services.
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
	
	/// Patient's nominated primary care provider.
	public var careProvider: [Reference]?
	
	/// A list of Languages which may be used to communicate with the patient about his or her health.
	public var communication: [PatientCommunication]?
	
	/// A contact party (e.g. guardian, partner, friend) for the patient.
	public var contact: [PatientContact]?
	
	/// Indicates if the individual is deceased or not.
	public var deceasedBoolean: Bool?
	
	/// Indicates if the individual is deceased or not.
	public var deceasedDateTime: DateTime?
	
	/// male | female | other | unknown.
	public var gender: String?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["active"] {
				presentKeys.insert("active")
				if let val = exist as? Bool {
					self.active = val
				}
				else {
					errors.append(FHIRJSONError(key: "active", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? [FHIRJSON] {
					self.address = Address.instantiate(fromArray: val, owner: self) as? [Address]
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["animal"] {
				presentKeys.insert("animal")
				if let val = exist as? FHIRJSON {
					self.animal = PatientAnimal(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "animal", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["birthDate"] {
				presentKeys.insert("birthDate")
				if let val = exist as? String {
					self.birthDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "birthDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["careProvider"] {
				presentKeys.insert("careProvider")
				if let val = exist as? [FHIRJSON] {
					self.careProvider = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "careProvider", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["communication"] {
				presentKeys.insert("communication")
				if let val = exist as? [FHIRJSON] {
					self.communication = PatientCommunication.instantiate(fromArray: val, owner: self) as? [PatientCommunication]
				}
				else {
					errors.append(FHIRJSONError(key: "communication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = PatientContact.instantiate(fromArray: val, owner: self) as? [PatientContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["deceasedBoolean"] {
				presentKeys.insert("deceasedBoolean")
				if let val = exist as? Bool {
					self.deceasedBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "deceasedBoolean", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["deceasedDateTime"] {
				presentKeys.insert("deceasedDateTime")
				if let val = exist as? String {
					self.deceasedDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "deceasedDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["gender"] {
				presentKeys.insert("gender")
				if let val = exist as? String {
					self.gender = val
				}
				else {
					errors.append(FHIRJSONError(key: "gender", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["link"] {
				presentKeys.insert("link")
				if let val = exist as? [FHIRJSON] {
					self.link = PatientLink.instantiate(fromArray: val, owner: self) as? [PatientLink]
				}
				else {
					errors.append(FHIRJSONError(key: "link", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["managingOrganization"] {
				presentKeys.insert("managingOrganization")
				if let val = exist as? FHIRJSON {
					self.managingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "managingOrganization", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["maritalStatus"] {
				presentKeys.insert("maritalStatus")
				if let val = exist as? FHIRJSON {
					self.maritalStatus = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "maritalStatus", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["multipleBirthBoolean"] {
				presentKeys.insert("multipleBirthBoolean")
				if let val = exist as? Bool {
					self.multipleBirthBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "multipleBirthBoolean", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["multipleBirthInteger"] {
				presentKeys.insert("multipleBirthInteger")
				if let val = exist as? Int {
					self.multipleBirthInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "multipleBirthInteger", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? [FHIRJSON] {
					self.name = HumanName.instantiate(fromArray: val, owner: self) as? [HumanName]
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["photo"] {
				presentKeys.insert("photo")
				if let val = exist as? [FHIRJSON] {
					self.photo = Attachment.instantiate(fromArray: val, owner: self) as? [Attachment]
				}
				else {
					errors.append(FHIRJSONError(key: "photo", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let address = self.address {
			json["address"] = address.map() { $0.asJSON() }
		}
		if let animal = self.animal {
			json["animal"] = animal.asJSON()
		}
		if let birthDate = self.birthDate {
			json["birthDate"] = birthDate.asJSON()
		}
		if let careProvider = self.careProvider {
			json["careProvider"] = careProvider.map() { $0.asJSON() }
		}
		if let communication = self.communication {
			json["communication"] = communication.map() { $0.asJSON() }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let deceasedBoolean = self.deceasedBoolean {
			json["deceasedBoolean"] = deceasedBoolean.asJSON()
		}
		if let deceasedDateTime = self.deceasedDateTime {
			json["deceasedDateTime"] = deceasedDateTime.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let link = self.link {
			json["link"] = link.map() { $0.asJSON() }
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON()
		}
		if let maritalStatus = self.maritalStatus {
			json["maritalStatus"] = maritalStatus.asJSON()
		}
		if let multipleBirthBoolean = self.multipleBirthBoolean {
			json["multipleBirthBoolean"] = multipleBirthBoolean.asJSON()
		}
		if let multipleBirthInteger = self.multipleBirthInteger {
			json["multipleBirthInteger"] = multipleBirthInteger.asJSON()
		}
		if let name = self.name {
			json["name"] = name.map() { $0.asJSON() }
		}
		if let photo = self.photo {
			json["photo"] = photo.map() { $0.asJSON() }
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  This patient is known to be an animal (non-human).
 *
 *  This patient is known to be an animal.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(species: CodeableConcept) {
		self.init(json: nil)
		self.species = species
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["breed"] {
				presentKeys.insert("breed")
				if let val = exist as? FHIRJSON {
					self.breed = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "breed", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["genderStatus"] {
				presentKeys.insert("genderStatus")
				if let val = exist as? FHIRJSON {
					self.genderStatus = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "genderStatus", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["species"] {
				presentKeys.insert("species")
				if let val = exist as? FHIRJSON {
					self.species = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "species", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "species"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let breed = self.breed {
			json["breed"] = breed.asJSON()
		}
		if let genderStatus = self.genderStatus {
			json["genderStatus"] = genderStatus.asJSON()
		}
		if let species = self.species {
			json["species"] = species.asJSON()
		}
		
		return json
	}
}


/**
 *  A list of Languages which may be used to communicate with the patient about his or her health.
 *
 *  Languages which may be used to communicate with the patient about his or her health.
 */
open class PatientCommunication: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientCommunication" }
	}
	
	/// The language which can be used to communicate with the patient about his or her health.
	public var language: CodeableConcept?
	
	/// Language preference indicator.
	public var preferred: Bool?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(language: CodeableConcept) {
		self.init(json: nil)
		self.language = language
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? FHIRJSON {
					self.language = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "language"))
			}
			if let exist = js["preferred"] {
				presentKeys.insert("preferred")
				if let val = exist as? Bool {
					self.preferred = val
				}
				else {
					errors.append(FHIRJSONError(key: "preferred", wants: Bool.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let preferred = self.preferred {
			json["preferred"] = preferred.asJSON()
		}
		
		return json
	}
}


/**
 *  A contact party (e.g. guardian, partner, friend) for the patient.
 */
open class PatientContact: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientContact" }
	}
	
	/// Address for the contact person.
	public var address: Address?
	
	/// male | female | other | unknown.
	public var gender: String?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? FHIRJSON {
					self.address = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["gender"] {
				presentKeys.insert("gender")
				if let val = exist as? String {
					self.gender = val
				}
				else {
					errors.append(FHIRJSONError(key: "gender", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? FHIRJSON {
					self.name = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["organization"] {
				presentKeys.insert("organization")
				if let val = exist as? FHIRJSON {
					self.organization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organization", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["relationship"] {
				presentKeys.insert("relationship")
				if let val = exist as? [FHIRJSON] {
					self.relationship = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "relationship", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.map() { $0.asJSON() }
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Link to another patient resource that concerns the same actual person.
 *
 *  Link to another patient resource that concerns the same actual patient.
 */
open class PatientLink: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientLink" }
	}
	
	/// The other patient resource that the link refers to.
	public var other: Reference?
	
	/// replace | refer | seealso - type of link.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(other: Reference, type: String) {
		self.init(json: nil)
		self.other = other
		self.type = type
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["other"] {
				presentKeys.insert("other")
				if let val = exist as? FHIRJSON {
					self.other = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "other", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "other"))
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let other = self.other {
			json["other"] = other.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

