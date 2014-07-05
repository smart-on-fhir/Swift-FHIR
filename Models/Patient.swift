//
//  Patient.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Information about a person or animal receiving health care services.
 *
 *  Scope and Usage This Resource covers data about persons and animals involved in a wide range of health-related
 *  activities, including:
 *  
 *  * Curative activities
 *  * Psychiatric care
 *  * Social services
 *  * Pregnancy care
 *  * Nursing and assisted living
 *  * Dietary services
 *  * Tracking of personal health and exercise data
 *  The data in the Resource covers the "who" information about the patient: its attributes are focused on the
 *  demographic information necessary to support the administrative, financial and logistic procedures. A Patient
 *  record is generally created and maintained by each organization providing care for a patient. A person or
 *  animal receiving care at multiple organizations may therefore have its information present in multiple Patient
 *  Resources.
 */
class Patient: FHIRResource
{
	override class var resourceName: String {
		get { return "Patient" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! An identifier for the person as this patient */
	var identifier: Identifier[]?
	
	/*! A name associated with the patient */
	var name: HumanName[]?
	
	/*! A contact detail for the individual */
	var telecom: Contact[]?
	
	/*! Gender for administrative purposes */
	var gender: CodeableConcept?
	
	/*! The date and time of birth for the individual */
	var birthDate: NSDate?
	
	/*! Indicates if the individual is deceased or not */
	var deceasedBoolean: Bool?
	
	/*! Indicates if the individual is deceased or not */
	var deceasedDateTime: NSDate?
	
	/*! Addresses for the individual */
	var address: Address[]?
	
	/*! Marital (civil) status of a person */
	var maritalStatus: CodeableConcept?
	
	/*! Whether patient is part of a multiple birth */
	var multipleBirthBoolean: Bool?
	
	/*! Whether patient is part of a multiple birth */
	var multipleBirthInteger: Int?
	
	/*! Image of the person */
	var photo: Attachment[]?
	
	/*! A contact party (e.g. guardian, partner, friend) for the patient */
	var contact: PatientContact[]?
	
	/*! If this patient is an animal (non-human) */
	var animal: PatientAnimal?
	
	/*! Languages which may be used to communicate with the patient about his or her health */
	var communication: CodeableConcept[]?
	
	/*! Patient's nominated care provider */
	var careProvider: ResourceReference[]?
	
	/*! Organization that is the custodian of the patient record */
	var managingOrganization: ResourceReference?
	
	/*! Link to another patient resource that concerns the same actual person */
	var link: PatientLink[]?
	
	/*! Whether this patient's record is in active use */
	var active: Bool?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["identifier"] as? Array<NSDictionary> {
				self.identifier = Identifier.from(val) as? Identifier[]
			}
			if let val = js["name"] as? Array<NSDictionary> {
				self.name = HumanName.from(val) as? HumanName[]
			}
			if let val = js["telecom"] as? Array<NSDictionary> {
				self.telecom = Contact.from(val) as? Contact[]
			}
			if let val = js["gender"] as? NSDictionary {
				self.gender = CodeableConcept(json: val)
			}
			if let val = js["birthDate"] as? String {
				self.birthDate = NSDate(json: val)
			}
			if let val = js["deceasedBoolean"] as? Int {
				self.deceasedBoolean = (1 == val)
			}
			if let val = js["deceasedDateTime"] as? String {
				self.deceasedDateTime = NSDate(json: val)
			}
			if let val = js["address"] as? Array<NSDictionary> {
				self.address = Address.from(val) as? Address[]
			}
			if let val = js["maritalStatus"] as? NSDictionary {
				self.maritalStatus = CodeableConcept(json: val)
			}
			if let val = js["multipleBirthBoolean"] as? Int {
				self.multipleBirthBoolean = (1 == val)
			}
			if let val = js["multipleBirthInteger"] as? Int {
				self.multipleBirthInteger = val
			}
			if let val = js["photo"] as? Array<NSDictionary> {
				self.photo = Attachment.from(val) as? Attachment[]
			}
			if let val = js["contact"] as? Array<NSDictionary> {
				self.contact = PatientContact.from(val) as? PatientContact[]
			}
			if let val = js["animal"] as? NSDictionary {
				self.animal = PatientAnimal(json: val)
			}
			if let val = js["communication"] as? Array<NSDictionary> {
				self.communication = CodeableConcept.from(val) as? CodeableConcept[]
			}
			if let val = js["careProvider"] as? Array<NSDictionary> {
				self.careProvider = ResourceReference.from(val) as? ResourceReference[]
			}
			if let val = js["managingOrganization"] as? NSDictionary {
				self.managingOrganization = ResourceReference(json: val)
			}
			if let val = js["link"] as? Array<NSDictionary> {
				self.link = PatientLink.from(val) as? PatientLink[]
			}
			if let val = js["active"] as? Int {
				self.active = (1 == val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  A contact party (e.g. guardian, partner, friend) for the patient.
 */
class PatientContact: FHIRElement
{	
	/*! The kind of relationship */
	var relationship: CodeableConcept[]?
	
	/*! A name associated with the person */
	var name: HumanName?
	
	/*! A contact detail for the person */
	var telecom: Contact[]?
	
	/*! Address for the contact person */
	var address: Address?
	
	/*! Gender for administrative purposes */
	var gender: CodeableConcept?
	
	/*! Organization that is associated with the contact */
	var organization: ResourceReference?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["relationship"] as? Array<NSDictionary> {
				self.relationship = CodeableConcept.from(val) as? CodeableConcept[]
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val)
			}
			if let val = js["telecom"] as? Array<NSDictionary> {
				self.telecom = Contact.from(val) as? Contact[]
			}
			if let val = js["address"] as? NSDictionary {
				self.address = Address(json: val)
			}
			if let val = js["gender"] as? NSDictionary {
				self.gender = CodeableConcept(json: val)
			}
			if let val = js["organization"] as? NSDictionary {
				self.organization = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  If this patient is an animal (non-human).
 *
 *  This element has a value if the patient is an animal.
 */
class PatientAnimal: FHIRElement
{	
	/*! E.g. Dog, Cow */
	var species: CodeableConcept?
	
	/*! E.g. Poodle, Angus */
	var breed: CodeableConcept?
	
	/*! E.g. Neutered, Intact */
	var genderStatus: CodeableConcept?
	
	convenience init(species: CodeableConcept?) {
		self.init(json: nil)
		if species {
			self.species = species
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["species"] as? NSDictionary {
				self.species = CodeableConcept(json: val)
			}
			if let val = js["breed"] as? NSDictionary {
				self.breed = CodeableConcept(json: val)
			}
			if let val = js["genderStatus"] as? NSDictionary {
				self.genderStatus = CodeableConcept(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Link to another patient resource that concerns the same actual person.
 */
class PatientLink: FHIRElement
{	
	/*! The other patient resource that the link refers to */
	var other: ResourceReference?
	
	/*! replace | refer | seealso - type of link */
	var type: String?
	
	convenience init(other: ResourceReference?, type: String?) {
		self.init(json: nil)
		if other {
			self.other = other
		}
		if type {
			self.type = type
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["other"] as? NSDictionary {
				self.other = ResourceReference(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
		super.init(json: json)
	}
}
