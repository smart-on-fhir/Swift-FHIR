//
//  Patient.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (patient.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Information about a person or animal receiving health care services.
 *
 *  Demographics and other administrative information about a person or animal receiving care or other health-related
 *  services.
 */
public class Patient: FHIRResource
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
	
	/// The date and time of birth for the individual
	public var birthDate: Date?
	
	/// Patient's nominated care provider
	public var careProvider: [Reference]?
	
	/// Languages which may be used to communicate with the patient about his or her health
	public var communication: [CodeableConcept]?
	
	/// A contact party (e.g. guardian, partner, friend) for the patient
	public var contact: [PatientContact]?
	
	/// Indicates if the individual is deceased or not
	public var deceasedBoolean: Bool?
	
	/// Indicates if the individual is deceased or not
	public var deceasedDateTime: DateTime?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// An identifier for the person as this patient
	public var identifier: [Identifier]?
	
	/// Link to another patient resource that concerns the same actual person
	public var link: [PatientLink]?
	
	/// Organization that is the custodian of the patient record
	public var managingOrganization: Reference?
	
	/// Marital (civil) status of a person
	public var maritalStatus: CodeableConcept?
	
	/// Whether patient is part of a multiple birth
	public var multipleBirthBoolean: Bool?
	
	/// Whether patient is part of a multiple birth
	public var multipleBirthInteger: Int?
	
	/// A name associated with the patient
	public var name: [HumanName]?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// A contact detail for the individual
	public var telecom: [ContactPoint]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["active"] as? Bool {
				self.active = val
			}
			if let val = js["address"] as? [JSONDictionary] {
				self.address = Address.from(val, owner: self) as? [Address]
			}
			if let val = js["animal"] as? JSONDictionary {
				self.animal = PatientAnimal(json: val, owner: self)
			}
			if let val = js["birthDate"] as? String {
				self.birthDate = Date(string: val)
			}
			if let val = js["careProvider"] as? [JSONDictionary] {
				self.careProvider = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["communication"] as? [JSONDictionary] {
				self.communication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["contact"] as? [JSONDictionary] {
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
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["link"] as? [JSONDictionary] {
				self.link = PatientLink.from(val, owner: self) as? [PatientLink]
			}
			if let val = js["managingOrganization"] as? JSONDictionary {
				self.managingOrganization = Reference(json: val, owner: self)
			}
			if let val = js["maritalStatus"] as? JSONDictionary {
				self.maritalStatus = CodeableConcept(json: val, owner: self)
			}
			if let val = js["multipleBirthBoolean"] as? Bool {
				self.multipleBirthBoolean = val
			}
			if let val = js["multipleBirthInteger"] as? Int {
				self.multipleBirthInteger = val
			}
			if let val = js["name"] as? [JSONDictionary] {
				self.name = HumanName.from(val, owner: self) as? [HumanName]
			}
			if let val = js["photo"] as? [JSONDictionary] {
				self.photo = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["breed"] as? JSONDictionary {
				self.breed = CodeableConcept(json: val, owner: self)
			}
			if let val = js["genderStatus"] as? JSONDictionary {
				self.genderStatus = CodeableConcept(json: val, owner: self)
			}
			if let val = js["species"] as? JSONDictionary {
				self.species = CodeableConcept(json: val, owner: self)
			}
		}
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
	
	/// A name associated with the person
	public var name: HumanName?
	
	/// Organization that is associated with the contact
	public var organization: Reference?
	
	/// The period during which this person or organization is valid to be contacted relating to this patient
	public var period: Period?
	
	/// The kind of relationship
	public var relationship: [CodeableConcept]?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? JSONDictionary {
				self.address = Address(json: val, owner: self)
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["name"] as? JSONDictionary {
				self.name = HumanName(json: val, owner: self)
			}
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["relationship"] as? [JSONDictionary] {
				self.relationship = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
}


/**
 *  Link to another patient resource that concerns the same actual person.
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["other"] as? JSONDictionary {
				self.other = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}

