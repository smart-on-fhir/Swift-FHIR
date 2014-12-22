//
//  Practitioner.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (practitioner.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A person with a  formal responsibility in the provisioning of healthcare or related services.
 *
 *  A person who is directly or indirectly involved in the provisioning of healthcare.
 */
public class Practitioner: FHIRResource
{
	override public class var resourceName: String {
		get { return "Practitioner" }
	}
	
	/// Where practitioner can be found/visited
	public var address: [Address]?
	
	/// The date and time of birth for the practitioner
	public var birthDate: NSDate?
	
	/// A language the practitioner is able to use in patient communication
	public var communication: [CodeableConcept]?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// A identifier for the person as this agent
	public var identifier: [Identifier]?
	
	/// The location(s) at which this practitioner provides care
	public var location: [Reference]?
	
	/// A name associated with the person
	public var name: HumanName?
	
	/// The represented organization
	public var organization: Reference?
	
	/// The period during which the practitioner is authorized to perform in these role(s)
	public var period: Period?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// Qualifications obtained by training and certification
	public var qualification: [PractitionerQualification]?
	
	/// Roles which this practitioner may perform
	public var role: [CodeableConcept]?
	
	/// Specific specialty of the practitioner
	public var specialty: [CodeableConcept]?
	
	/// A contact detail for the practitioner
	public var telecom: [ContactPoint]?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? [NSDictionary] {
				self.address = Address.from(val, owner: self) as? [Address]
			}
			if let val = js["birthDate"] as? String {
				self.birthDate = NSDate(json: val)
			}
			if let val = js["communication"] as? [NSDictionary] {
				self.communication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? [NSDictionary] {
				self.location = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val, owner: self)
			}
			if let val = js["organization"] as? NSDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["photo"] as? [NSDictionary] {
				self.photo = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["qualification"] as? [NSDictionary] {
				self.qualification = PractitionerQualification.from(val, owner: self) as? [PractitionerQualification]
			}
			if let val = js["role"] as? [NSDictionary] {
				self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["specialty"] as? [NSDictionary] {
				self.specialty = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
}


/**
 *  Qualifications obtained by training and certification.
 */
public class PractitionerQualification: FHIRElement
{
	override public class var resourceName: String {
		get { return "PractitionerQualification" }
	}
	
	/// Coded representation of the qualification
	public var code: CodeableConcept?
	
	/// An identifier for this qualification for the practitioner
	public var identifier: [Identifier]?
	
	/// Organization that regulates and issues the qualification
	public var issuer: Reference?
	
	/// Period during which the qualification is valid
	public var period: Period?
	
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["issuer"] as? NSDictionary {
				self.issuer = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
			}
		}
	}
}

