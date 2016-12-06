//
//  PractitionerRole.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/PractitionerRole) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Roles/organizations the practitioner is associated with.

A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period
of time.
*/
open class PractitionerRole: DomainResource {
	override open class var resourceType: String {
		get { return "PractitionerRole" }
	}
	
	/// Whether this practitioner's record is in active use.
	public var active: Bool?
	
	/// Description of availability exceptions.
	public var availabilityExceptions: FHIRString?
	
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
		if let exist = json["availabilityExceptions"] {
			presentKeys.insert("availabilityExceptions")
			if let val = exist as? String {
				self.availabilityExceptions = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "availabilityExceptions", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["availableTime"] {
			presentKeys.insert("availableTime")
			if let val = exist as? [FHIRJSON] {
				do {
					self.availableTime = try PractitionerRoleAvailableTime.instantiate(fromArray: val, owner: self) as? [PractitionerRoleAvailableTime]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "availableTime"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "availableTime", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? [FHIRJSON] {
				do {
					self.code = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["notAvailable"] {
			presentKeys.insert("notAvailable")
			if let val = exist as? [FHIRJSON] {
				do {
					self.notAvailable = try PractitionerRoleNotAvailable.instantiate(fromArray: val, owner: self) as? [PractitionerRoleNotAvailable]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "notAvailable"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "notAvailable", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["practitioner"] {
			presentKeys.insert("practitioner")
			if let val = exist as? FHIRJSON {
				do {
					self.practitioner = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "practitioner"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "practitioner", wants: FHIRJSON.self, has: type(of: exist)))
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
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let availabilityExceptions = self.availabilityExceptions {
			json["availabilityExceptions"] = availabilityExceptions.asJSON()
		}
		if let availableTime = self.availableTime {
			json["availableTime"] = availableTime.map() { $0.asJSON(errors: &errors) }
		}
		if let code = self.code {
			json["code"] = code.map() { $0.asJSON(errors: &errors) }
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
		if let notAvailable = self.notAvailable {
			json["notAvailable"] = notAvailable.map() { $0.asJSON(errors: &errors) }
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let practitioner = self.practitioner {
			json["practitioner"] = practitioner.asJSON(errors: &errors)
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
Times the Service Site is available.

A collection of times that the Service Site is available.
*/
open class PractitionerRoleAvailableTime: BackboneElement {
	override open class var resourceType: String {
		get { return "PractitionerRoleAvailableTime" }
	}
	
	/// Always available? e.g. 24 hour service.
	public var allDay: Bool?
	
	/// Closing time of day (ignored if allDay = true).
	public var availableEndTime: FHIRTime?
	
	/// Opening time of day (ignored if allDay = true).
	public var availableStartTime: FHIRTime?
	
	/// Indicates which days of the week are available between the start and end Times.
	public var daysOfWeek: [DaysOfWeek]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["allDay"] {
			presentKeys.insert("allDay")
			if let val = exist as? Bool {
				self.allDay = val
			}
			else {
				errors.append(FHIRValidationError(key: "allDay", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["availableEndTime"] {
			presentKeys.insert("availableEndTime")
			if let val = exist as? String {
				self.availableEndTime = FHIRTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "availableEndTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["availableStartTime"] {
			presentKeys.insert("availableStartTime")
			if let val = exist as? String {
				self.availableStartTime = FHIRTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "availableStartTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["daysOfWeek"] {
			presentKeys.insert("daysOfWeek")
			if let val = exist as? [String] { var i = -1
				self.daysOfWeek = val.map() { i += 1
					if let enumval = DaysOfWeek(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "daysOfWeek.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "daysOfWeek", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
			json["daysOfWeek"] = daysOfWeek.map() { $0.rawValue }
		}
		
		return json
	}
}


/**
Not available during this time due to provided reason.

The HealthcareService is not available during this period of time due to the provided reason.
*/
open class PractitionerRoleNotAvailable: BackboneElement {
	override open class var resourceType: String {
		get { return "PractitionerRoleNotAvailable" }
	}
	
	/// Reason presented to the user explaining why time not available.
	public var description_fhir: FHIRString?
	
	/// Service not availablefrom this date.
	public var during: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: FHIRString) {
		self.init()
		self.description_fhir = description_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "description"))
		}
		if let exist = json["during"] {
			presentKeys.insert("during")
			if let val = exist as? FHIRJSON {
				do {
					self.during = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "during"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "during", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "description_fhir"))
		}
		if let during = self.during {
			json["during"] = during.asJSON(errors: &errors)
		}
		
		return json
	}
}

