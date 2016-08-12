//
//  Practitioner.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Practitioner) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A person with a  formal responsibility in the provisioning of healthcare or related services.
 *
 *  A person who is directly or indirectly involved in the provisioning of healthcare.
 */
public class Practitioner: DomainResource {
	override public class var resourceName: String {
		get { return "Practitioner" }
	}
	
	/// Whether this practitioner's record is in active use.
	public var active: Bool?
	
	/// Address(es) of the practitioner that are not role specific (typically home address).
	public var address: [Address]?
	
	/// The date  on which the practitioner was born.
	public var birthDate: Date?
	
	/// A language the practitioner is able to use in patient communication.
	public var communication: [CodeableConcept]?
	
	/// male | female | other | unknown.
	public var gender: String?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
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
			if let exist: AnyObject = js["communication"] {
				presentKeys.insert("communication")
				if let val = exist as? [FHIRJSON] {
					self.communication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "communication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["photo"] {
				presentKeys.insert("photo")
				if let val = exist as? [FHIRJSON] {
					self.photo = Attachment.from(val, owner: self) as? [Attachment]
				}
				else {
					errors.append(FHIRJSONError(key: "photo", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["qualification"] {
				presentKeys.insert("qualification")
				if let val = exist as? [FHIRJSON] {
					self.qualification = PractitionerQualification.from(val, owner: self) as? [PractitionerQualification]
				}
				else {
					errors.append(FHIRJSONError(key: "qualification", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? [FHIRJSON] {
					self.role = PractitionerPractRole.from(val, owner: self) as? [PractitionerPractRole]
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		if let communication = self.communication {
			json["communication"] = CodeableConcept.asJSONArray(communication)
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
		if let photo = self.photo {
			json["photo"] = Attachment.asJSONArray(photo)
		}
		if let qualification = self.qualification {
			json["qualification"] = PractitionerQualification.asJSONArray(qualification)
		}
		if let role = self.role {
			json["role"] = PractitionerPractRole.asJSONArray(role)
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  Roles/organizations the practitioner is associated with.
 *
 *  The list of roles/organizations that the practitioner is associated with.
 */
public class PractitionerPractRole: BackboneElement {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["endpoint"] {
				presentKeys.insert("endpoint")
				if let val = exist as? [FHIRJSON] {
					self.endpoint = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "endpoint", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["healthcareService"] {
				presentKeys.insert("healthcareService")
				if let val = exist as? [FHIRJSON] {
					self.healthcareService = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "healthcareService", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? [FHIRJSON] {
					self.location = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["organization"] {
				presentKeys.insert("organization")
				if let val = exist as? FHIRJSON {
					self.organization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organization", wants: FHIRJSON.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["specialty"] {
				presentKeys.insert("specialty")
				if let val = exist as? [FHIRJSON] {
					self.specialty = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "specialty", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = Reference.asJSONArray(endpoint)
		}
		if let healthcareService = self.healthcareService {
			json["healthcareService"] = Reference.asJSONArray(healthcareService)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let location = self.location {
			json["location"] = Reference.asJSONArray(location)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let specialty = self.specialty {
			json["specialty"] = CodeableConcept.asJSONArray(specialty)
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  Qualifications obtained by training and certification.
 */
public class PractitionerQualification: BackboneElement {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
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
			if let exist: AnyObject = js["issuer"] {
				presentKeys.insert("issuer")
				if let val = exist as? FHIRJSON {
					self.issuer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "issuer", wants: FHIRJSON.self, has: exist.dynamicType))
				}
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let issuer = self.issuer {
			json["issuer"] = issuer.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		
		return json
	}
}

