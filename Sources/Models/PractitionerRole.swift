//
//  PractitionerRole.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/PractitionerRole) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Roles/organizations the practitioner is associated with.
 *
 *  A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a
 *  period of time.
 */
public class PractitionerRole: DomainResource {
	override public class var resourceName: String {
		get { return "PractitionerRole" }
	}
	
	/// Whether this practitioner's record is in active use.
	public var active: Bool?
	
	/// Description of availability exceptions.
	public var availabilityExceptions: String?
	
	/// Times the Service Site is available.
	public var availableTime: [PractitionerRoleAvailableTime]?
	
	/// Roles which this practitioner may perform.
	public var code: [CodeableConcept]?
	
	/// Technical endpoints providing access to services operated for the practitioner with this role.
	public var endpoint: [Reference]?
	
	/// The list of healthcare services that this worker provides for this role's Organization/Location(s).
	public var healthcareService: [Reference]?
	
	/// Business Identifiers that are specific to a role/location.
	public var identifier: [Identifier]?
	
	/// The location(s) at which this practitioner provides care.
	public var location: [Reference]?
	
	/// Not available during this time due to provided reason.
	public var notAvailable: [PractitionerRoleNotAvailable]?
	
	/// Organization where the roles are available.
	public var organization: Reference?
	
	/// The period during which the practitioner is authorized to perform in these role(s).
	public var period: Period?
	
	/// Practitioner that is able to provide the defined services for the organation.
	public var practitioner: Reference?
	
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
			if let exist: AnyObject = js["active"] {
				presentKeys.insert("active")
				if let val = exist as? Bool {
					self.active = val
				}
				else {
					errors.append(FHIRJSONError(key: "active", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["availabilityExceptions"] {
				presentKeys.insert("availabilityExceptions")
				if let val = exist as? String {
					self.availabilityExceptions = val
				}
				else {
					errors.append(FHIRJSONError(key: "availabilityExceptions", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["availableTime"] {
				presentKeys.insert("availableTime")
				if let val = exist as? [FHIRJSON] {
					self.availableTime = PractitionerRoleAvailableTime.from(val, owner: self) as? [PractitionerRoleAvailableTime]
				}
				else {
					errors.append(FHIRJSONError(key: "availableTime", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? [FHIRJSON] {
					self.code = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["notAvailable"] {
				presentKeys.insert("notAvailable")
				if let val = exist as? [FHIRJSON] {
					self.notAvailable = PractitionerRoleNotAvailable.from(val, owner: self) as? [PractitionerRoleNotAvailable]
				}
				else {
					errors.append(FHIRJSONError(key: "notAvailable", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["practitioner"] {
				presentKeys.insert("practitioner")
				if let val = exist as? FHIRJSON {
					self.practitioner = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "practitioner", wants: FHIRJSON.self, has: exist.dynamicType))
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
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let availabilityExceptions = self.availabilityExceptions {
			json["availabilityExceptions"] = availabilityExceptions.asJSON()
		}
		if let availableTime = self.availableTime {
			json["availableTime"] = PractitionerRoleAvailableTime.asJSONArray(availableTime)
		}
		if let code = self.code {
			json["code"] = CodeableConcept.asJSONArray(code)
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
		if let notAvailable = self.notAvailable {
			json["notAvailable"] = PractitionerRoleNotAvailable.asJSONArray(notAvailable)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let practitioner = self.practitioner {
			json["practitioner"] = practitioner.asJSON()
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
 *  Times the Service Site is available.
 *
 *  A collection of times that the Service Site is available.
 */
public class PractitionerRoleAvailableTime: BackboneElement {
	override public class var resourceName: String {
		get { return "PractitionerRoleAvailableTime" }
	}
	
	/// Always available? e.g. 24 hour service.
	public var allDay: Bool?
	
	/// Closing time of day (ignored if allDay = true).
	public var availableEndTime: Time?
	
	/// Opening time of day (ignored if allDay = true).
	public var availableStartTime: Time?
	
	/// mon | tue | wed | thu | fri | sat | sun.
	public var daysOfWeek: [String]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["allDay"] {
				presentKeys.insert("allDay")
				if let val = exist as? Bool {
					self.allDay = val
				}
				else {
					errors.append(FHIRJSONError(key: "allDay", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["availableEndTime"] {
				presentKeys.insert("availableEndTime")
				if let val = exist as? String {
					self.availableEndTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "availableEndTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["availableStartTime"] {
				presentKeys.insert("availableStartTime")
				if let val = exist as? String {
					self.availableStartTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "availableStartTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["daysOfWeek"] {
				presentKeys.insert("daysOfWeek")
				if let val = exist as? [String] {
					self.daysOfWeek = val
				}
				else {
					errors.append(FHIRJSONError(key: "daysOfWeek", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let allDay = self.allDay {
			json["allDay"] = allDay.asJSON()
		}
		if let availableEndTime = self.availableEndTime {
			json["availableEndTime"] = availableEndTime.asJSON()
		}
		if let availableStartTime = self.availableStartTime {
			json["availableStartTime"] = availableStartTime.asJSON()
		}
		if let daysOfWeek = self.daysOfWeek {
			var arr = [AnyObject]()
			for val in daysOfWeek {
				arr.append(val.asJSON())
			}
			json["daysOfWeek"] = arr
		}
		
		return json
	}
}


/**
 *  Not available during this time due to provided reason.
 *
 *  The HealthcareService is not available during this period of time due to the provided reason.
 */
public class PractitionerRoleNotAvailable: BackboneElement {
	override public class var resourceName: String {
		get { return "PractitionerRoleNotAvailable" }
	}
	
	/// Reason presented to the user explaining why time not available.
	public var description_fhir: String?
	
	/// Service not availablefrom this date.
	public var during: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: String) {
		self.init(json: nil)
		self.description_fhir = description_fhir
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "description"))
			}
			if let exist: AnyObject = js["during"] {
				presentKeys.insert("during")
				if let val = exist as? FHIRJSON {
					self.during = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "during", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let during = self.during {
			json["during"] = during.asJSON()
		}
		
		return json
	}
}

