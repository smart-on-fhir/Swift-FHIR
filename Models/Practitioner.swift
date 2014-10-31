//
//  Practitioner.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (practitioner.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A person with a  formal responsibility in the provisioning of healthcare or related services.
 *
 *  Scope and Usage Practitioner covers all individuals who are engaged in the healthcare process and healthcare-related
 *  services as part of their formal responsibilities and this Resource is used for attribution of activities and
 *  responsibilities to these individuals. Practitioners include (but are not limited to):
 *  
 *  * physicians, dentists, pharmacists
 *  * physician assistants, nurses, scribes
 *  * midwives, dietitians, therapists, optometrists, paramedics
 *  * medical technicians, laboratory scientists, prosthetic technicians, radiographers
 *  * social workers, professional home carers, official volunteers
 *  * receptionists handling patient registration
 *  * IT personnel merging or unmerging patient records
 */
public class Practitioner: FHIRResource
{
	override public class var resourceName: String {
		get { return "Practitioner" }
	}
	
	/// Where practitioner can be found/visited
	public var address: Address?
	
	/// The date and time of birth for the practitioner
	public var birthDate: NSDate?
	
	/// A language the practitioner is able to use in patient communication
	public var communication: [CodeableConcept]?
	
	/// Gender for administrative purposes
	public var gender: CodeableConcept?
	
	/// A identifier for the person as this agent
	public var identifier: [Identifier]?
	
	/// The location(s) at which this practitioner provides care
	public var location: [FHIRReference<Location>]?
	
	/// A name associated with the person
	public var name: HumanName?
	
	/// The represented organization
	public var organization: FHIRReference<Organization>?
	
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
	public var telecom: [Contact]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? NSDictionary {
				self.address = Address(json: val)
			}
			if let val = js["birthDate"] as? String {
				self.birthDate = NSDate(json: val)
			}
			if let val = js["communication"] as? [NSDictionary] {
				self.communication = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["gender"] as? NSDictionary {
				self.gender = CodeableConcept(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["location"] as? [NSDictionary] {
				self.location = FHIRReference.from(val, owner: self)
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val)
			}
			if let val = js["organization"] as? NSDictionary {
				self.organization = FHIRReference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
			if let val = js["photo"] as? [NSDictionary] {
				self.photo = Attachment.from(val) as? [Attachment]
			}
			if let val = js["qualification"] as? [NSDictionary] {
				self.qualification = PractitionerQualification.from(val) as? [PractitionerQualification]
			}
			if let val = js["role"] as? [NSDictionary] {
				self.role = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["specialty"] as? [NSDictionary] {
				self.specialty = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
		}
	}
}


/**
 *  Qualifications obtained by training and certification.
 */
public class PractitionerQualification: FHIRElement
{	
	/// Coded representation of the qualification
	public var code: CodeableConcept?
	
	/// Organization that regulates and issues the qualification
	public var issuer: FHIRReference<Organization>?
	
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
				self.code = CodeableConcept(json: val)
			}
			if let val = js["issuer"] as? NSDictionary {
				self.issuer = FHIRReference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
		}
	}
}

