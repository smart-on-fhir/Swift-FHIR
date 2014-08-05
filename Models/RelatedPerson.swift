//
//  RelatedPerson.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  An person that is related to a patient, but who is not a direct target of care.
 *
 *  Scope and Usage RelatedPersons typically have a personal or non-healthcare-specific professional relationship
 *  to the patient. A RelatedPerson resource is primarily used for attribution of information, since
 *  RelatedPersons are often a source of information about the patient. For keeping information about persons for
 *  contact purposes for a patient, use a Patient's Contact element instead.
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
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** A Human identifier for this person */
	public var identifier: [Identifier]?
	
	/** The patient this person is related to */
	public var patient: FHIRElement? {
		get { return resolveReference("patient") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "patient")
			}
		}
	}
	
	/** The nature of the relationship */
	public var relationship: CodeableConcept?
	
	/** A name associated with the person */
	public var name: HumanName?
	
	/** A contact detail for the person */
	public var telecom: [Contact]?
	
	/** Gender for administrative purposes */
	public var gender: CodeableConcept?
	
	/** Address where the related person can be contacted or visited */
	public var address: Address?
	
	/** Image of the person */
	public var photo: [Attachment]?
	
	public convenience init(patient: ResourceReference?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = ResourceReference(json: val)
			}
			if let val = js["relationship"] as? NSDictionary {
				self.relationship = CodeableConcept(json: val)
			}
			if let val = js["name"] as? NSDictionary {
				self.name = HumanName(json: val)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
			if let val = js["gender"] as? NSDictionary {
				self.gender = CodeableConcept(json: val)
			}
			if let val = js["address"] as? NSDictionary {
				self.address = Address(json: val)
			}
			if let val = js["photo"] as? [NSDictionary] {
				self.photo = Attachment.from(val) as? [Attachment]
			}
		}
	}
}

