//
//  Patient.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (patient.profile.json) on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
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
public class Patient: FHIRResource
{
	override public class var resourceName: String {
		get { return "Patient" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** An identifier for the person as this patient */
	public var identifier: [Identifier]?
	
	/** A name associated with the patient */
	public var name: [HumanName]?
	
	/** A contact detail for the individual */
	public var telecom: [Contact]?
	
	/** Gender for administrative purposes */
	public var gender: CodeableConcept?
	
	/** The date and time of birth for the individual */
	public var birthDate: NSDate?
	
	/** Indicates if the individual is deceased or not */
	public var deceasedBoolean: Bool?
	
	/** Indicates if the individual is deceased or not */
	public var deceasedDateTime: NSDate?
	
	/** Addresses for the individual */
	public var address: [Address]?
	
	/** Marital (civil) status of a person */
	public var maritalStatus: CodeableConcept?
	
	/** Whether patient is part of a multiple birth */
	public var multipleBirthBoolean: Bool?
	
	/** Whether patient is part of a multiple birth */
	public var multipleBirthInteger: Int?
	
	/** Image of the person */
	public var photo: [Attachment]?
	
	/** A contact party (e.g. guardian, partner, friend) for the patient */
	public var contact: [PatientContact]?
	
	/** If this patient is an animal (non-human) */
	public var animal: PatientAnimal?
	
	/** Languages which may be used to communicate with the patient about his or her health */
	public var communication: [CodeableConcept]?
	
	/** Patient's nominated care provider */
	public var careProvider: [FHIRElement]? {
		get { return resolveReferences("careProvider") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "careProvider")
			}
		}
	}
	
	/** Organization that is the custodian of the patient record */
	public var managingOrganization: FHIRElement? {
		get { return resolveReference("managingOrganization") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "managingOrganization")
			}
		}
	}
	
	/** Link to another patient resource that concerns the same actual person */
	public var link: [PatientLink]?
	
	/** Whether this patient's record is in active use */
	public var active: Bool?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["name"] as? [NSDictionary] {
				self.name = HumanName.from(val) as? [HumanName]
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
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
			if let val = js["address"] as? [NSDictionary] {
				self.address = Address.from(val) as? [Address]
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
			if let val = js["photo"] as? [NSDictionary] {
				self.photo = Attachment.from(val) as? [Attachment]
			}
			if let val = js["contact"] as? [NSDictionary] {
				self.contact = PatientContact.from(val) as? [PatientContact]
			}
			if let val = js["animal"] as? NSDictionary {
				self.animal = PatientAnimal(json: val)
			}
			if let val = js["communication"] as? [NSDictionary] {
				self.communication = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["careProvider"] as? [NSDictionary] {
				self.careProvider = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["managingOrganization"] as? NSDictionary {
				self.managingOrganization = ResourceReference(json: val)
			}
			if let val = js["link"] as? [NSDictionary] {
				self.link = PatientLink.from(val) as? [PatientLink]
			}
			if let val = js["active"] as? Int {
				self.active = (1 == val)
			}
		}
	}
}


/**
 *  A contact party (e.g. guardian, partner, friend) for the patient.
 */
public class PatientContact: FHIRElement
{	
	/** The kind of relationship */
	public var relationship: [CodeableConcept]?
	
	/** A name associated with the person */
	public var name: HumanName?
	
	/** A contact detail for the person */
	public var telecom: [Contact]?
	
	/** Address for the contact person */
	public var address: Address?
	
	/** Gender for administrative purposes */
	public var gender: CodeableConcept?
	
	/** Organization that is associated with the contact */
	public var organization: FHIRElement? {
		get { return resolveReference("organization") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "organization")
			}
		}
	}
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["relationship"] as? [NSDictionary] {
				self.relationship = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
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
	}
}


/**
 *  If this patient is an animal (non-human).
 *
 *  This element has a value if the patient is an animal.
 */
public class PatientAnimal: FHIRElement
{	
	/** E.g. Dog, Cow */
	public var species: CodeableConcept?
	
	/** E.g. Poodle, Angus */
	public var breed: CodeableConcept?
	
	/** E.g. Neutered, Intact */
	public var genderStatus: CodeableConcept?
	
	public convenience init(species: CodeableConcept?) {
		self.init(json: nil)
		if nil != species {
			self.species = species
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Link to another patient resource that concerns the same actual person.
 */
public class PatientLink: FHIRElement
{	
	/** The other patient resource that the link refers to */
	public var other: FHIRElement? {
		get { return resolveReference("other") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "other")
			}
		}
	}
	
	/** replace | refer | seealso - type of link */
	public var type: String?
	
	public convenience init(other: ResourceReference?, type: String?) {
		self.init(json: nil)
		if nil != other {
			self.other = other
		}
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["other"] as? NSDictionary {
				self.other = ResourceReference(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}

