//
//  RelatedPerson.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/RelatedPerson) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  An person that is related to a patient, but who is not a direct target of care.
 *
 *  Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor
 *  has a formal responsibility in the care process.
 */
public class RelatedPerson: DomainResource {
	override public class var resourceName: String {
		get { return "RelatedPerson" }
	}
	
	/// Whether this related person's record is in active use.
	public var active: Bool?
	
	/// Address where the related person can be contacted or visited.
	public var address: [Address]?
	
	/// The date on which the related person was born.
	public var birthDate: Date?
	
	/// male | female | other | unknown.
	public var gender: String?
	
	/// A human identifier for this person.
	public var identifier: [Identifier]?
	
	/// A name associated with the person.
	public var name: [HumanName]?
	
	/// The patient this person is related to.
	public var patient: Reference?
	
	/// Period of time that this relationship is considered valid.
	public var period: Period?
	
	/// Image of the person.
	public var photo: [Attachment]?
	
	/// The nature of the relationship.
	public var relationship: CodeableConcept?
	
	/// A contact detail for the person.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference) {
		self.init(json: nil)
		self.patient = patient
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["active"] {
				presentKeys.insert("active")
				if let val = exist as? Bool {
					self.active = val
				}
				else {
					errors.append(FHIRJSONError(key: "active", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? [FHIRJSON] {
					self.address = Address.from(val, owner: self) as? [Address]
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["birthDate"] {
				presentKeys.insert("birthDate")
				if let val = exist as? String {
					self.birthDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "birthDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["gender"] {
				presentKeys.insert("gender")
				if let val = exist as? String {
					self.gender = val
				}
				else {
					errors.append(FHIRJSONError(key: "gender", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? [FHIRJSON] {
					self.name = HumanName.from(val, owner: self) as? [HumanName]
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["photo"] {
				presentKeys.insert("photo")
				if let val = exist as? [FHIRJSON] {
					self.photo = Attachment.from(val, owner: self) as? [Attachment]
				}
				else {
					errors.append(FHIRJSONError(key: "photo", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relationship"] {
				presentKeys.insert("relationship")
				if let val = exist as? FHIRJSON {
					self.relationship = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "relationship", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let address = self.address {
			json["address"] = Address.asJSONArray(address)
		}
		if let birthDate = self.birthDate {
			json["birthDate"] = birthDate.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let name = self.name {
			json["name"] = HumanName.asJSONArray(name)
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

