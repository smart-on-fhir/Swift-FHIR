//
//  RelatedPerson.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/RelatedPerson) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  An person that is related to a patient, but who is not a direct target of care.
 *
 *  Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor
 *  has a formal responsibility in the care process.
 */
public class RelatedPerson: DomainResource
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(patient: Reference?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["address"] {
				presentKeys.addObject("address")
				if let val = exist as? FHIRJSON {
					self.address = Address(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"address\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["gender"] {
				presentKeys.addObject("gender")
				if let val = exist as? String {
					self.gender = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"gender\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? FHIRJSON {
					self.name = HumanName(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"patient\" but it is missing"))
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["photo"] {
				presentKeys.addObject("photo")
				if let val = exist as? [FHIRJSON] {
					self.photo = Attachment.from(val, owner: self) as? [Attachment]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"photo\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["relationship"] {
				presentKeys.addObject("relationship")
				if let val = exist as? FHIRJSON {
					self.relationship = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"relationship\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let photo = self.photo {
			json["photo"] = Attachment.asJSONArray(photo)
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}

