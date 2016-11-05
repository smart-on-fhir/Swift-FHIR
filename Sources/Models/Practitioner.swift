//
//  Practitioner.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Practitioner) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A person with a  formal responsibility in the provisioning of healthcare or related services.

A person who is directly or indirectly involved in the provisioning of healthcare.
*/
open class Practitioner: DomainResource {
	override open class var resourceType: String {
		get { return "Practitioner" }
	}
	
	/// Whether this practitioner's record is in active use.
	public var active: Bool?
	
	/// Address(es) of the practitioner that are not role specific (typically home address).
	public var address: [Address]?
	
	/// The date  on which the practitioner was born.
	public var birthDate: FHIRDate?
	
	/// A language the practitioner is able to use in patient communication.
	public var communication: [CodeableConcept]?
	
	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	public var gender: AdministrativeGender?
	
	/// A identifier for the person as this agent.
	public var identifier: [Identifier]?
	
	/// The name(s) associated with the practitioner.
	public var name: [HumanName]?
	
	/// Image of the person.
	public var photo: [Attachment]?
	
	/// Qualifications obtained by training and certification.
	public var qualification: [PractitionerQualification]?
	
	/// Roles/organizations the practitioner is associated with.
	public var role: [PractitionerPractRole]?
	
	/// A contact detail for the practitioner (that apply to all roles).
	public var telecom: [ContactPoint]?
	
	
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
		if let exist = json["communication"] {
			presentKeys.insert("communication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.communication = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "communication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "communication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["gender"] {
			presentKeys.insert("gender")
			if let val = exist as? String {
				if let enumval = AdministrativeGender(rawValue: val) {
					self.gender = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "gender", problem: "the value “\(val)” is not valid"))
				}
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
		if let exist = json["qualification"] {
			presentKeys.insert("qualification")
			if let val = exist as? [FHIRJSON] {
				do {
					self.qualification = try PractitionerQualification.instantiate(fromArray: val, owner: self) as? [PractitionerQualification]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "qualification"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "qualification", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? [FHIRJSON] {
				do {
					self.role = try PractitionerPractRole.instantiate(fromArray: val, owner: self) as? [PractitionerPractRole]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "role"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let communication = self.communication {
			json["communication"] = communication.map() { $0.asJSON(errors: &errors) }
		}
		if let gender = self.gender {
			json["gender"] = gender.rawValue
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.map() { $0.asJSON(errors: &errors) }
		}
		if let photo = self.photo {
			json["photo"] = photo.map() { $0.asJSON(errors: &errors) }
		}
		if let qualification = self.qualification {
			json["qualification"] = qualification.map() { $0.asJSON(errors: &errors) }
		}
		if let role = self.role {
			json["role"] = role.map() { $0.asJSON(errors: &errors) }
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Roles/organizations the practitioner is associated with.

The list of roles/organizations that the practitioner is associated with.
*/
open class PractitionerPractRole: BackboneElement {
	override open class var resourceType: String {
		get { return "PractitionerPractRole" }
	}
	
	/// Roles which this practitioner may perform.
	public var code: CodeableConcept?
	
	/// Technical endpoints providing access to services operated for the PractitonerRole.
	public var endpoint: [Reference]?
	
	/// The list of healthcare services that this worker provides for this role's Organization/Location(s).
	public var healthcareService: [Reference]?
	
	/// Business Identifiers that are specific to a role/location.
	public var identifier: [Identifier]?
	
	/// The location(s) at which this practitioner provides care.
	public var location: [Reference]?
	
	/// Organization where the roles are performed.
	public var organization: Reference?
	
	/// The period during which the practitioner is authorized to perform in these role(s).
	public var period: Period?
	
	/// Specific specialty of the practitioner.
	public var specialty: [CodeableConcept]?
	
	/// Contact details that are specific to the role/location/service.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["endpoint"] {
			presentKeys.insert("endpoint")
			if let val = exist as? [FHIRJSON] {
				do {
					self.endpoint = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "endpoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "endpoint", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["healthcareService"] {
			presentKeys.insert("healthcareService")
			if let val = exist as? [FHIRJSON] {
				do {
					self.healthcareService = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "healthcareService"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "healthcareService", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? [FHIRJSON] {
				do {
					self.location = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "location"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["organization"] {
			presentKeys.insert("organization")
			if let val = exist as? FHIRJSON {
				do {
					self.organization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "organization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "organization", wants: FHIRJSON.self, has: type(of: exist)))
			}
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
		if let exist = json["specialty"] {
			presentKeys.insert("specialty")
			if let val = exist as? [FHIRJSON] {
				do {
					self.specialty = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "specialty"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "specialty", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.map() { $0.asJSON(errors: &errors) }
		}
		if let healthcareService = self.healthcareService {
			json["healthcareService"] = healthcareService.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let location = self.location {
			json["location"] = location.map() { $0.asJSON(errors: &errors) }
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let specialty = self.specialty {
			json["specialty"] = specialty.map() { $0.asJSON(errors: &errors) }
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Qualifications obtained by training and certification.
*/
open class PractitionerQualification: BackboneElement {
	override open class var resourceType: String {
		get { return "PractitionerQualification" }
	}
	
	/// Coded representation of the qualification.
	public var code: CodeableConcept?
	
	/// An identifier for this qualification for the practitioner.
	public var identifier: [Identifier]?
	
	/// Organization that regulates and issues the qualification.
	public var issuer: Reference?
	
	/// Period during which the qualification is valid.
	public var period: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
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
		if let exist = json["issuer"] {
			presentKeys.insert("issuer")
			if let val = exist as? FHIRJSON {
				do {
					self.issuer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "issuer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "issuer", wants: FHIRJSON.self, has: type(of: exist)))
			}
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let issuer = self.issuer {
			json["issuer"] = issuer.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		
		return json
	}
}

