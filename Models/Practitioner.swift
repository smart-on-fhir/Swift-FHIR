//
//  Practitioner.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (practitioner.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? [JSONDictionary] {
				self.address = Address.from(val, owner: self) as? [Address]
			}
			if let val = js["birthDate"] as? String {
				self.birthDate = NSDate(json: val)
			}
			if let val = js["communication"] as? [JSONDictionary] {
				self.communication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? [JSONDictionary] {
				self.location = Reference.from(val, owner: self) as? [Reference]
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
			if let val = js["photo"] as? [JSONDictionary] {
				self.photo = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["qualification"] as? [JSONDictionary] {
				self.qualification = PractitionerQualification.from(val, owner: self) as? [PractitionerQualification]
			}
			if let val = js["role"] as? [JSONDictionary] {
				self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["specialty"] as? [JSONDictionary] {
				self.specialty = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["telecom"] as? [JSONDictionary] {
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["issuer"] as? JSONDictionary {
				self.issuer = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
		}
	}
}

