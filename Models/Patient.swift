//
//  Patient.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Patient) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Information about an individual or animal receiving health care services.
 *
 *  Demographics and other administrative information about an individual or animal receiving care or other health-
 *  related services.
 */
public class Patient: DomainResource
{
	override public class var resourceName: String {
		get { return "Patient" }
	}
	
	/// Whether this patient's record is in active use
	public var active: Bool?
	
	/// Addresses for the individual
	public var address: [Address]?
	
	/// If this patient is an animal (non-human)
	public var animal: PatientAnimal?
	
	/// The date of birth for the individual
	public var birthDate: Date?
	
	/// Patient's nominated care provider
	public var careProvider: [Reference]?
	
	/// A list of Languages which may be used to communicate with the patient about his or her health
	public var communication: [PatientCommunication]?
	
	/// A contact party (e.g. guardian, partner, friend) for the patient
	public var contact: [PatientContact]?
	
	/// Indicates if the individual is deceased or not
	public var deceasedBoolean: Bool?
	
	/// Indicates if the individual is deceased or not
	public var deceasedDateTime: DateTime?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// An identifier for this patient
	public var identifier: [Identifier]?
	
	/// Link to another patient resource that concerns the same actual person
	public var link: [PatientLink]?
	
	/// Organization that is the custodian of the patient record
	public var managingOrganization: Reference?
	
	/// Marital (civil) status of a patient
	public var maritalStatus: CodeableConcept?
	
	/// Whether patient is part of a multiple birth
	public var multipleBirthBoolean: Bool?
	
	/// Whether patient is part of a multiple birth
	public var multipleBirthInteger: Int?
	
	/// A name associated with the patient
	public var name: [HumanName]?
	
	/// Image of the patient
	public var photo: [Attachment]?
	
	/// A contact detail for the individual
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
			if let val = js["animal"] as? FHIRJSON {
				self.animal = PatientAnimal(json: val, owner: self)
			}
			if let val = js["birthDate"] as? String {
				self.birthDate = Date(string: val)
			}
			if let val = js["careProvider"] as? [FHIRJSON] {
				self.careProvider = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["communication"] as? [FHIRJSON] {
				self.communication = PatientCommunication.from(val, owner: self) as? [PatientCommunication]
			}
			if let val = js["contact"] as? [FHIRJSON] {
				self.contact = PatientContact.from(val, owner: self) as? [PatientContact]
			}
			if let val = js["deceasedBoolean"] as? Bool {
				self.deceasedBoolean = val
			}
			if let val = js["deceasedDateTime"] as? String {
				self.deceasedDateTime = DateTime(string: val)
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["link"] as? [FHIRJSON] {
				self.link = PatientLink.from(val, owner: self) as? [PatientLink]
			}
			if let val = js["managingOrganization"] as? FHIRJSON {
				self.managingOrganization = Reference(json: val, owner: self)
			}
			if let val = js["maritalStatus"] as? FHIRJSON {
				self.maritalStatus = CodeableConcept(json: val, owner: self)
			}
			if let val = js["multipleBirthBoolean"] as? Bool {
				self.multipleBirthBoolean = val
			}
			if let val = js["multipleBirthInteger"] as? Int {
				self.multipleBirthInteger = val
			}
			if let val = js["name"] as? [FHIRJSON] {
				self.name = HumanName.from(val, owner: self) as? [HumanName]
			}
			if let val = js["photo"] as? [FHIRJSON] {
				self.photo = Attachment.from(val, owner: self) as? [Attachment]
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
		if let animal = self.animal {
			json["animal"] = animal.asJSON()
		}
		if let birthDate = self.birthDate {
			json["birthDate"] = birthDate.asJSON()
		}
		if let careProvider = self.careProvider {
			json["careProvider"] = Reference.asJSONArray(careProvider)
		}
		if let communication = self.communication {
			json["communication"] = PatientCommunication.asJSONArray(communication)
		}
		if let contact = self.contact {
			json["contact"] = PatientContact.asJSONArray(contact)
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
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let link = self.link {
			json["link"] = PatientLink.asJSONArray(link)
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
			json["name"] = HumanName.asJSONArray(name)
		}
		if let photo = self.photo {
			json["photo"] = Attachment.asJSONArray(photo)
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  If this patient is an animal (non-human).
 *
 *  This element has a value if the patient is an animal.
 */
public class PatientAnimal: FHIRElement
{
	override public class var resourceName: String {
		get { return "PatientAnimal" }
	}
	
	/// E.g. Poodle, Angus
	public var breed: CodeableConcept?
	
	/// E.g. Neutered, Intact
	public var genderStatus: CodeableConcept?
	
	/// E.g. Dog, Cow
	public var species: CodeableConcept?
	
	public convenience init(species: CodeableConcept?) {
		self.init(json: nil)
		if nil != species {
			self.species = species
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["breed"] as? FHIRJSON {
				self.breed = CodeableConcept(json: val, owner: self)
			}
			if let val = js["genderStatus"] as? FHIRJSON {
				self.genderStatus = CodeableConcept(json: val, owner: self)
			}
			if let val = js["species"] as? FHIRJSON {
				self.species = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class PatientCommunication: FHIRElement
{
	override public class var resourceName: String {
		get { return "PatientCommunication" }
	}
	
	/// The language which can be used to communicate with the patient about his or her health
	public var language: CodeableConcept?
	
	/// Language preference indicator
	public var preferred: Bool?
	
	public convenience init(language: CodeableConcept?) {
		self.init(json: nil)
		if nil != language {
			self.language = language
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["language"] as? FHIRJSON {
				self.language = CodeableConcept(json: val, owner: self)
			}
			if let val = js["preferred"] as? Bool {
				self.preferred = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class PatientContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "PatientContact" }
	}
	
	/// Address for the contact person
	public var address: Address?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// A name associated with the contact person
	public var name: HumanName?
	
	/// Organization that is associated with the contact
	public var organization: Reference?
	
	/// The period during which this contact person or organization is valid to be contacted relating to this patient
	public var period: Period?
	
	/// The kind of relationship
	public var relationship: [CodeableConcept]?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? FHIRJSON {
				self.address = Address(json: val, owner: self)
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["name"] as? FHIRJSON {
				self.name = HumanName(json: val, owner: self)
			}
			if let val = js["organization"] as? FHIRJSON {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["relationship"] as? [FHIRJSON] {
				self.relationship = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["telecom"] as? [FHIRJSON] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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
			json["relationship"] = CodeableConcept.asJSONArray(relationship)
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  Link to another patient resource that concerns the same actual person.
 *
 *  Link to another patient resource that concerns the same actual patient.
 */
public class PatientLink: FHIRElement
{
	override public class var resourceName: String {
		get { return "PatientLink" }
	}
	
	/// The other patient resource that the link refers to
	public var other: Reference?
	
	/// replace | refer | seealso - type of link
	public var type: String?
	
	public convenience init(other: Reference?, type: String?) {
		self.init(json: nil)
		if nil != other {
			self.other = other
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["other"] as? FHIRJSON {
				self.other = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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

