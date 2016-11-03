//
//  RelatedPerson.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/RelatedPerson) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  An person that is related to a patient, but who is not a direct target of care.
 *
 *  Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor
 *  has a formal responsibility in the care process.
 */
open class RelatedPerson: DomainResource {
	override open class var resourceType: String {
		get { return "RelatedPerson" }
	}
	
	/// Whether this related person's record is in active use.
	public var active: Bool?
	
	/// Address where the related person can be contacted or visited.
	public var address: [Address]?
	
	/// The date on which the related person was born.
	public var birthDate: FHIRDate?
	
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference) {
		self.init()
		self.patient = patient
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["active"] {
			presentKeys.insert("active")
			if let val = exist as? Bool {
				self.active = val
			}
			else {
				errors.append(FHIRValidationError(key: "active", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["address"] {
			presentKeys.insert("address")
			if let val = exist as? [FHIRJSON] {
				do {
					self.address = try Address.instantiate(fromArray: val, owner: self) as? [Address]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "address"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "address", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["birthDate"] {
			presentKeys.insert("birthDate")
			if let val = exist as? String {
				self.birthDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "birthDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["gender"] {
			presentKeys.insert("gender")
			if let val = exist as? String {
				self.gender = val
			}
			else {
				errors.append(FHIRValidationError(key: "gender", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? [FHIRJSON] {
				do {
					self.name = try HumanName.instantiate(fromArray: val, owner: self) as? [HumanName]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "name"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["photo"] {
			presentKeys.insert("photo")
			if let val = exist as? [FHIRJSON] {
				do {
					self.photo = try Attachment.instantiate(fromArray: val, owner: self) as? [Attachment]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "photo"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "photo", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["relationship"] {
			presentKeys.insert("relationship")
			if let val = exist as? FHIRJSON {
				do {
					self.relationship = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relationship"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relationship", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["telecom"] {
			presentKeys.insert("telecom")
			if let val = exist as? [FHIRJSON] {
				do {
					self.telecom = try ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "telecom"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "telecom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let address = self.address {
			json["address"] = address.map() { $0.asJSON(errors: &errors) }
		}
		if let birthDate = self.birthDate {
			json["birthDate"] = birthDate.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.map() { $0.asJSON(errors: &errors) }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let photo = self.photo {
			json["photo"] = photo.map() { $0.asJSON(errors: &errors) }
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON(errors: &errors)
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}

