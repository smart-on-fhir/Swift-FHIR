//
//  Practitioner.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Practitioner) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A person with a  formal responsibility in the provisioning of healthcare or related services.
 *
 *  A person who is directly or indirectly involved in the provisioning of healthcare.
 */
public class Practitioner: DomainResource
{
	override public class var resourceName: String {
		get { return "Practitioner" }
	}
	
	/// Where practitioner can be found/visited
	public var address: [Address]?
	
	/// The date  of birth for the practitioner
	public var birthDate: Date?
	
	/// A language the practitioner is able to use in patient communication
	public var communication: [CodeableConcept]?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// A identifier for the person as this agent
	public var identifier: [Identifier]?
	
	/// A name associated with the person
	public var name: HumanName?
	
	/// Image of the person
	public var photo: [Attachment]?
	
	/// The list of Roles/Organizations that the Practitioner is associated with
	public var practitionerRole: [PractitionerPractitionerRole]?
	
	/// Qualifications obtained by training and certification
	public var qualification: [PractitionerQualification]?
	
	/// A contact detail for the practitioner
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["address"] {
				presentKeys.addObject("address")
				if let val = exist as? [FHIRJSON] {
					self.address = Address.from(val, owner: self) as? [Address]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"address\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["birthDate"] {
				presentKeys.addObject("birthDate")
				if let val = exist as? String {
					self.birthDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"birthDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["communication"] {
				presentKeys.addObject("communication")
				if let val = exist as? [FHIRJSON] {
					self.communication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"communication\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["photo"] {
				presentKeys.addObject("photo")
				if let val = exist as? [FHIRJSON] {
					self.photo = Attachment.from(val, owner: self) as? [Attachment]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"photo\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["practitionerRole"] {
				presentKeys.addObject("practitionerRole")
				if let val = exist as? [FHIRJSON] {
					self.practitionerRole = PractitionerPractitionerRole.from(val, owner: self) as? [PractitionerPractitionerRole]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"practitionerRole\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["qualification"] {
				presentKeys.addObject("qualification")
				if let val = exist as? [FHIRJSON] {
					self.qualification = PractitionerQualification.from(val, owner: self) as? [PractitionerQualification]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"qualification\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			json["name"] = name.asJSON()
		}
		if let photo = self.photo {
			json["photo"] = Attachment.asJSONArray(photo)
		}
		if let practitionerRole = self.practitionerRole {
			json["practitionerRole"] = PractitionerPractitionerRole.asJSONArray(practitionerRole)
		}
		if let qualification = self.qualification {
			json["qualification"] = PractitionerQualification.asJSONArray(qualification)
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  The list of Roles/Organizations that the Practitioner is associated with.
 */
public class PractitionerPractitionerRole: FHIRElement
{
	override public class var resourceName: String {
		get { return "PractitionerPractitionerRole" }
	}
	
	/// The list of healthcare services that this worker provides for this role's Organization/Location(s)
	public var healthcareService: [Reference]?
	
	/// The location(s) at which this practitioner provides care
	public var location: [Reference]?
	
	/// The Organization where the Practitioner performs the roles associated
	public var managingOrganization: Reference?
	
	/// The period during which the practitioner is authorized to perform in these role(s)
	public var period: Period?
	
	/// Roles which this practitioner may perform
	public var role: CodeableConcept?
	
	/// Specific specialty of the practitioner
	public var specialty: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["healthcareService"] {
				presentKeys.addObject("healthcareService")
				if let val = exist as? [FHIRJSON] {
					self.healthcareService = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"healthcareService\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.addObject("location")
				if let val = exist as? [FHIRJSON] {
					self.location = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"location\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["managingOrganization"] {
				presentKeys.addObject("managingOrganization")
				if let val = exist as? FHIRJSON {
					self.managingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"managingOrganization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
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
			if let exist: AnyObject = js["role"] {
				presentKeys.addObject("role")
				if let val = exist as? FHIRJSON {
					self.role = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"role\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["specialty"] {
				presentKeys.addObject("specialty")
				if let val = exist as? [FHIRJSON] {
					self.specialty = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"specialty\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let healthcareService = self.healthcareService {
			json["healthcareService"] = Reference.asJSONArray(healthcareService)
		}
		if let location = self.location {
			json["location"] = Reference.asJSONArray(location)
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		if let specialty = self.specialty {
			json["specialty"] = CodeableConcept.asJSONArray(specialty)
		}
		
		return json
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
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
			if let exist: AnyObject = js["issuer"] {
				presentKeys.addObject("issuer")
				if let val = exist as? FHIRJSON {
					self.issuer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"issuer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
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

