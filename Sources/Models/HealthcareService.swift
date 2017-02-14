//
//  HealthcareService.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/HealthcareService) on 2017-02-14.
//  2017, SMART Health IT.
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
	public var active: FHIRBool?
	
	/// If an appointment is required for access to this service.
	public var appointmentRequired: FHIRBool?
	
	/// Description of availability exceptions.
	public var availabilityExceptions: FHIRString?
	
	/// Times the Service Site is available.
	public var availableTime: [HealthcareServiceAvailableTime]?
	
	/// Collection of characteristics (attributes).
	public var characteristic: [CodeableConcept]?
	
	/// Additional description and/or any specific issues not covered elsewhere.
	public var comment: FHIRString?
	
	/// Location(s) service is inteded for/available to.
	public var coverageArea: [Reference]?
	
	/// Specific eligibility requirements required to use the service.
	public var eligibility: CodeableConcept?
	
	/// Describes the eligibility conditions for the service.
	public var eligibilityNote: FHIRString?
	
	/// Technical endpoints providing access to services operated for the location.
	public var endpoint: [Reference]?
	
	/// Extra details about the service that can't be placed in the other fields.
	public var extraDetails: FHIRString?
	
	/// External identifiers for this item.
	public var identifier: [Identifier]?
	
	/// Location(s) where service may be provided.
	public var location: [Reference]?
	
	/// Not available during this time due to provided reason.
	public var notAvailable: [HealthcareServiceNotAvailable]?
	
	/// Facilitates quick identification of the service.
	public var photo: Attachment?
	
	/// Program Names that categorize the service.
	public var programName: [FHIRString]?
	
	/// Organization that provides this service.
	public var providedBy: Reference?
	
	/// PKI Public keys to support secure communications.
	public var publicKey: FHIRString?
	
	/// Ways that the service accepts referrals.
	public var referralMethod: [CodeableConcept]?
	
	/// Broad category of service being performed or delivered.
	public var serviceCategory: CodeableConcept?
	
	/// Description of service as presented to a consumer while searching.
	public var serviceName: FHIRString?
	
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
		
		active = try createInstance(type: FHIRBool.self, for: "active", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? active
		appointmentRequired = try createInstance(type: FHIRBool.self, for: "appointmentRequired", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? appointmentRequired
		availabilityExceptions = try createInstance(type: FHIRString.self, for: "availabilityExceptions", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? availabilityExceptions
		availableTime = try createInstances(of: HealthcareServiceAvailableTime.self, for: "availableTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? availableTime
		characteristic = try createInstances(of: CodeableConcept.self, for: "characteristic", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? characteristic
		comment = try createInstance(type: FHIRString.self, for: "comment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comment
		coverageArea = try createInstances(of: Reference.self, for: "coverageArea", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? coverageArea
		eligibility = try createInstance(type: CodeableConcept.self, for: "eligibility", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eligibility
		eligibilityNote = try createInstance(type: FHIRString.self, for: "eligibilityNote", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eligibilityNote
		endpoint = try createInstances(of: Reference.self, for: "endpoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? endpoint
		extraDetails = try createInstance(type: FHIRString.self, for: "extraDetails", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? extraDetails
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		location = try createInstances(of: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		notAvailable = try createInstances(of: HealthcareServiceNotAvailable.self, for: "notAvailable", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notAvailable
		photo = try createInstance(type: Attachment.self, for: "photo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? photo
		programName = try createInstances(of: FHIRString.self, for: "programName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? programName
		providedBy = try createInstance(type: Reference.self, for: "providedBy", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? providedBy
		publicKey = try createInstance(type: FHIRString.self, for: "publicKey", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publicKey
		referralMethod = try createInstances(of: CodeableConcept.self, for: "referralMethod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referralMethod
		serviceCategory = try createInstance(type: CodeableConcept.self, for: "serviceCategory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceCategory
		serviceName = try createInstance(type: FHIRString.self, for: "serviceName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceName
		serviceProvisionCode = try createInstances(of: CodeableConcept.self, for: "serviceProvisionCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceProvisionCode
		serviceType = try createInstances(of: CodeableConcept.self, for: "serviceType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceType
		specialty = try createInstances(of: CodeableConcept.self, for: "specialty", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specialty
		telecom = try createInstances(of: ContactPoint.self, for: "telecom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? telecom
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		self.appointmentRequired?.decorate(json: &json, withKey: "appointmentRequired", errors: &errors)
		self.availabilityExceptions?.decorate(json: &json, withKey: "availabilityExceptions", errors: &errors)
		arrayDecorate(json: &json, withKey: "availableTime", using: self.availableTime, errors: &errors)
		arrayDecorate(json: &json, withKey: "characteristic", using: self.characteristic, errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		arrayDecorate(json: &json, withKey: "coverageArea", using: self.coverageArea, errors: &errors)
		self.eligibility?.decorate(json: &json, withKey: "eligibility", errors: &errors)
		self.eligibilityNote?.decorate(json: &json, withKey: "eligibilityNote", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		self.extraDetails?.decorate(json: &json, withKey: "extraDetails", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "location", using: self.location, errors: &errors)
		arrayDecorate(json: &json, withKey: "notAvailable", using: self.notAvailable, errors: &errors)
		self.photo?.decorate(json: &json, withKey: "photo", errors: &errors)
		arrayDecorate(json: &json, withKey: "programName", using: self.programName, errors: &errors)
		self.providedBy?.decorate(json: &json, withKey: "providedBy", errors: &errors)
		self.publicKey?.decorate(json: &json, withKey: "publicKey", errors: &errors)
		arrayDecorate(json: &json, withKey: "referralMethod", using: self.referralMethod, errors: &errors)
		self.serviceCategory?.decorate(json: &json, withKey: "serviceCategory", errors: &errors)
		self.serviceName?.decorate(json: &json, withKey: "serviceName", errors: &errors)
		arrayDecorate(json: &json, withKey: "serviceProvisionCode", using: self.serviceProvisionCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "serviceType", using: self.serviceType, errors: &errors)
		arrayDecorate(json: &json, withKey: "specialty", using: self.specialty, errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
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
	public var allDay: FHIRBool?
	
	/// Closing time of day (ignored if allDay = true).
	public var availableEndTime: FHIRTime?
	
	/// Opening time of day (ignored if allDay = true).
	public var availableStartTime: FHIRTime?
	
	/// Indicates which days of the week are available between the start and end Times.
	public var daysOfWeek: [DaysOfWeek]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		allDay = try createInstance(type: FHIRBool.self, for: "allDay", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? allDay
		availableEndTime = try createInstance(type: FHIRTime.self, for: "availableEndTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? availableEndTime
		availableStartTime = try createInstance(type: FHIRTime.self, for: "availableStartTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? availableStartTime
		daysOfWeek = createEnums(of: DaysOfWeek.self, for: "daysOfWeek", in: json, presentKeys: &presentKeys, errors: &errors) ?? daysOfWeek
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.allDay?.decorate(json: &json, withKey: "allDay", errors: &errors)
		self.availableEndTime?.decorate(json: &json, withKey: "availableEndTime", errors: &errors)
		self.availableStartTime?.decorate(json: &json, withKey: "availableStartTime", errors: &errors)
		arrayDecorate(json: &json, withKey: "daysOfWeek", using: self.daysOfWeek, errors: &errors)
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
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		if nil == description_fhir && !presentKeys.contains("description") {
			errors.append(FHIRValidationError(missing: "description"))
		}
		during = try createInstance(type: Period.self, for: "during", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? during
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		if nil == self.description_fhir {
			errors.append(FHIRValidationError(missing: "description"))
		}
		self.during?.decorate(json: &json, withKey: "during", errors: &errors)
	}
}

