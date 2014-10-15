//
//  RelatedPerson.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (relatedperson.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  An person that is related to a patient, but who is not a direct target of care.
 *
 *  Scope and Usage RelatedPersons typically have a personal or non-healthcare-specific professional relationship to the
 *  patient. A RelatedPerson resource is primarily used for attribution of information, since RelatedPersons are often a
 *  source of information about the patient. For keeping information about persons for contact purposes for a patient,
 *  use a Patient's Contact element instead.
 *  
 *  Example RelatedPersons are:
 *  
 *  * A patient's wife or husband
 *  * A patient's relatives or friends
 *  * A neighbor bringing a patient to the hospital
 *  * The owner or trainer of a horse
 *  * A patient's attorney or guardian
 */
public class RelatedPerson: FHIRResource
{
	override public class var resourceName: String {
		get { return "RelatedPerson" }
	}
	
	/// Address where the related person can be contacted or visited
	public var address: Address?
	
	/// Gender for administrative purposes
	public var gender: CodeableConcept?
	
	/// A Human identifier for this person
	public var identifier: [Identifier]?
	
	/// A name associated with the person
	public var name: HumanName?
	
	/// The patient this person is related to
	public var patient: FHIRReference<Patient>?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// The nature of the relationship
	public var relationship: CodeableConcept?
	
	/// A contact detail for the person
	public var telecom: [Contact]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(patient: FHIRReference<Patient>?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? NSDictionary {
				self.address = Address(json: val)
			}
			if let val = js["gender"] as? NSDictionary {
				self.gender = CodeableConcept(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val)
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = FHIRReference(json: val, owner: self)
			}
			if let val = js["photo"] as? [NSDictionary] {
				self.photo = Attachment.from(val) as? [Attachment]
			}
			if let val = js["relationship"] as? NSDictionary {
				self.relationship = CodeableConcept(json: val)
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

