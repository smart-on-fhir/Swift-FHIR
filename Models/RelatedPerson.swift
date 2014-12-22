//
//  RelatedPerson.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (relatedperson.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  An person that is related to a patient, but who is not a direct target of care.
 *
 *  Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor
 *  has a formal responsibility in the care process.
 */
public class RelatedPerson: FHIRResource
{
	override public class var resourceName: String {
		get { return "RelatedPerson" }
	}
	
	/// Address where the related person can be contacted or visited
	public var address: Address?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// A Human identifier for this person
	public var identifier: [Identifier]?
	
	/// A name associated with the person
	public var name: HumanName?
	
	/// The patient this person is related to
	public var patient: Reference?
	
	/// Period of time that this relationship is considered valid
	public var period: Period?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// The nature of the relationship
	public var relationship: CodeableConcept?
	
	/// A contact detail for the person
	public var telecom: [ContactPoint]?
	
	public convenience init(patient: Reference?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? NSDictionary {
				self.address = Address(json: val, owner: self)
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val, owner: self)
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["photo"] as? [NSDictionary] {
				self.photo = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["relationship"] as? NSDictionary {
				self.relationship = CodeableConcept(json: val, owner: self)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
}

