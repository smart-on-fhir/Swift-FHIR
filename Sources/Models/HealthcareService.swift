//
//  HealthcareService.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/HealthcareService) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
The details of a healthcare service available at a location.
*/
open class HealthcareService: DomainResource {
	override open class var resourceType: String {
		get { return "HealthcareService" }
	}
	
	/// Whether this healthcareservice is in active use.
	public var active: Bool?
	
	/// If an appointment is required for access to this service.
	public var appointmentRequired: Bool?
	
	/// Description of availability exceptions.
	public var availabilityExceptions: String?
	
	/// Times the Service Site is available.
	public var availableTime: [HealthcareServiceAvailableTime]?
	
	/// Collection of characteristics (attributes).
	public var characteristic: [CodeableConcept]?
	
	/// Additional description and/or any specific issues not covered elsewhere.
	public var comment: String?
	
	/// Location(s) service is inteded for/available to.
	public var coverageArea: [Reference]?
	
	/// Specific eligibility requirements required to use the service.
	public var eligibility: CodeableConcept?
	
	/// Describes the eligibility conditions for the service.
	public var eligibilityNote: String?
	
	/// Technical endpoints providing access to services operated for the location.
	public var endpoint: [Reference]?
	
	/// Extra details about the service that can't be placed in the other fields.
	public var extraDetails: String?
	
	/// External identifiers for this item.
	public var identifier: [Identifier]?
	
	/// Location(s) where service may be provided.
	public var location: [Reference]?
	
	/// Not available during this time due to provided reason.
	public var notAvailable: [HealthcareServiceNotAvailable]?
	
	/// Facilitates quick identification of the service.
	public var photo: Attachment?
	
	/// Program Names that categorize the service.
	public var programName: [String]?
	
	/// Organization that provides this service.
	public var providedBy: Reference?
	
	/// PKI Public keys to support secure communications.
	public var publicKey: String?
	
	/// Ways that the service accepts referrals.
	public var referralMethod: [CodeableConcept]?
	
	/// Broad category of service being performed or delivered.
	public var serviceCategory: CodeableConcept?
	
	/// Description of service as presented to a consumer while searching.
	public var serviceName: String?
	
	/// Conditions under which service is available/offered.
	public var serviceProvisionCode: [CodeableConcept]?
	
	/// Type of service that may be delivered or performed.
	public var serviceType: [CodeableConcept]?
	
	/// Specialties handled by the HealthcareService.
	public var specialty: [CodeableConcept]?
	
	/// Contacts related to the healthcare service.
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
		if let exist = json["appointmentRequired"] {
			presentKeys.insert("appointmentRequired")
			if let val = exist as? Bool {
				self.appointmentRequired = val
			}
			else {
				errors.append(FHIRValidationError(key: "appointmentRequired", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["availabilityExceptions"] {
			presentKeys.insert("availabilityExceptions")
			if let val = exist as? String {
				self.availabilityExceptions = val
			}
			else {
				errors.append(FHIRValidationError(key: "availabilityExceptions", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["availableTime"] {
			presentKeys.insert("availableTime")
			if let val = exist as? [FHIRJSON] {
				do {
					self.availableTime = try HealthcareServiceAvailableTime.instantiate(fromArray: val, owner: self) as? [HealthcareServiceAvailableTime]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "availableTime"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "availableTime", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["characteristic"] {
			presentKeys.insert("characteristic")
			if let val = exist as? [FHIRJSON] {
				do {
					self.characteristic = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "characteristic"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "characteristic", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["comment"] {
			presentKeys.insert("comment")
			if let val = exist as? String {
				self.comment = val
			}
			else {
				errors.append(FHIRValidationError(key: "comment", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["coverageArea"] {
			presentKeys.insert("coverageArea")
			if let val = exist as? [FHIRJSON] {
				do {
					self.coverageArea = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "coverageArea"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "coverageArea", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["eligibility"] {
			presentKeys.insert("eligibility")
			if let val = exist as? FHIRJSON {
				do {
					self.eligibility = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "eligibility"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "eligibility", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["eligibilityNote"] {
			presentKeys.insert("eligibilityNote")
			if let val = exist as? String {
				self.eligibilityNote = val
			}
			else {
				errors.append(FHIRValidationError(key: "eligibilityNote", wants: String.self, has: type(of: exist)))
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
		if let exist = json["extraDetails"] {
			presentKeys.insert("extraDetails")
			if let val = exist as? String {
				self.extraDetails = val
			}
			else {
				errors.append(FHIRValidationError(key: "extraDetails", wants: String.self, has: type(of: exist)))
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
					self.notAvailable = try HealthcareServiceNotAvailable.instantiate(fromArray: val, owner: self) as? [HealthcareServiceNotAvailable]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "notAvailable"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "notAvailable", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["photo"] {
			presentKeys.insert("photo")
			if let val = exist as? FHIRJSON {
				do {
					self.photo = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "photo"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "photo", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["programName"] {
			presentKeys.insert("programName")
			if let val = exist as? [String] {
				self.programName = val
			}
			else {
				errors.append(FHIRValidationError(key: "programName", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["providedBy"] {
			presentKeys.insert("providedBy")
			if let val = exist as? FHIRJSON {
				do {
					self.providedBy = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "providedBy"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "providedBy", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["publicKey"] {
			presentKeys.insert("publicKey")
			if let val = exist as? String {
				self.publicKey = val
			}
			else {
				errors.append(FHIRValidationError(key: "publicKey", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["referralMethod"] {
			presentKeys.insert("referralMethod")
			if let val = exist as? [FHIRJSON] {
				do {
					self.referralMethod = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "referralMethod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "referralMethod", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["serviceCategory"] {
			presentKeys.insert("serviceCategory")
			if let val = exist as? FHIRJSON {
				do {
					self.serviceCategory = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "serviceCategory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "serviceCategory", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["serviceName"] {
			presentKeys.insert("serviceName")
			if let val = exist as? String {
				self.serviceName = val
			}
			else {
				errors.append(FHIRValidationError(key: "serviceName", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["serviceProvisionCode"] {
			presentKeys.insert("serviceProvisionCode")
			if let val = exist as? [FHIRJSON] {
				do {
					self.serviceProvisionCode = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "serviceProvisionCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "serviceProvisionCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["serviceType"] {
			presentKeys.insert("serviceType")
			if let val = exist as? [FHIRJSON] {
				do {
					self.serviceType = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "serviceType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "serviceType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let appointmentRequired = self.appointmentRequired {
			json["appointmentRequired"] = appointmentRequired.asJSON()
		}
		if let availabilityExceptions = self.availabilityExceptions {
			json["availabilityExceptions"] = availabilityExceptions.asJSON()
		}
		if let availableTime = self.availableTime {
			json["availableTime"] = availableTime.map() { $0.asJSON(errors: &errors) }
		}
		if let characteristic = self.characteristic {
			json["characteristic"] = characteristic.map() { $0.asJSON(errors: &errors) }
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let coverageArea = self.coverageArea {
			json["coverageArea"] = coverageArea.map() { $0.asJSON(errors: &errors) }
		}
		if let eligibility = self.eligibility {
			json["eligibility"] = eligibility.asJSON(errors: &errors)
		}
		if let eligibilityNote = self.eligibilityNote {
			json["eligibilityNote"] = eligibilityNote.asJSON()
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.map() { $0.asJSON(errors: &errors) }
		}
		if let extraDetails = self.extraDetails {
			json["extraDetails"] = extraDetails.asJSON()
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
		if let photo = self.photo {
			json["photo"] = photo.asJSON(errors: &errors)
		}
		if let programName = self.programName {
			json["programName"] = programName.map() { $0.asJSON() }
		}
		if let providedBy = self.providedBy {
			json["providedBy"] = providedBy.asJSON(errors: &errors)
		}
		if let publicKey = self.publicKey {
			json["publicKey"] = publicKey.asJSON()
		}
		if let referralMethod = self.referralMethod {
			json["referralMethod"] = referralMethod.map() { $0.asJSON(errors: &errors) }
		}
		if let serviceCategory = self.serviceCategory {
			json["serviceCategory"] = serviceCategory.asJSON(errors: &errors)
		}
		if let serviceName = self.serviceName {
			json["serviceName"] = serviceName.asJSON()
		}
		if let serviceProvisionCode = self.serviceProvisionCode {
			json["serviceProvisionCode"] = serviceProvisionCode.map() { $0.asJSON(errors: &errors) }
		}
		if let serviceType = self.serviceType {
			json["serviceType"] = serviceType.map() { $0.asJSON(errors: &errors) }
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
open class HealthcareServiceAvailableTime: BackboneElement {
	override open class var resourceType: String {
		get { return "HealthcareServiceAvailableTime" }
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
				self.availableEndTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "availableEndTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["availableStartTime"] {
			presentKeys.insert("availableStartTime")
			if let val = exist as? String {
				self.availableStartTime = FHIRTime(string: val)
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
open class HealthcareServiceNotAvailable: BackboneElement {
	override open class var resourceType: String {
		get { return "HealthcareServiceNotAvailable" }
	}
	
	/// Reason presented to the user explaining why time not available.
	public var description_fhir: String?
	
	/// Service not availablefrom this date.
	public var during: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: String) {
		self.init()
		self.description_fhir = description_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
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
		if let during = self.during {
			json["during"] = during.asJSON(errors: &errors)
		}
		
		return json
	}
}

