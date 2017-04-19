//
//  HealthcareService.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/HealthcareService) on 2017-03-22.
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
	
	/// Broad category of service being performed or delivered.
	public var category: CodeableConcept?
	
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
	
	/// Description of service as presented to a consumer while searching.
	public var name: FHIRString?
	
	/// Not available during this time due to provided reason.
	public var notAvailable: [HealthcareServiceNotAvailable]?
	
	/// Facilitates quick identification of the service.
	public var photo: Attachment?
	
	/// Program Names that categorize the service.
	public var programName: [FHIRString]?
	
	/// Organization that provides this service.
	public var providedBy: Reference?
	
	/// Ways that the service accepts referrals.
	public var referralMethod: [CodeableConcept]?
	
	/// Conditions under which service is available/offered.
	public var serviceProvisionCode: [CodeableConcept]?
	
	/// Specialties handled by the HealthcareService.
	public var specialty: [CodeableConcept]?
	
	/// Contacts related to the healthcare service.
	public var telecom: [ContactPoint]?
	
	/// Type of service that may be delivered or performed.
	public var type: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		appointmentRequired = createInstance(type: FHIRBool.self, for: "appointmentRequired", in: json, context: &instCtx, owner: self) ?? appointmentRequired
		availabilityExceptions = createInstance(type: FHIRString.self, for: "availabilityExceptions", in: json, context: &instCtx, owner: self) ?? availabilityExceptions
		availableTime = createInstances(of: HealthcareServiceAvailableTime.self, for: "availableTime", in: json, context: &instCtx, owner: self) ?? availableTime
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		characteristic = createInstances(of: CodeableConcept.self, for: "characteristic", in: json, context: &instCtx, owner: self) ?? characteristic
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		coverageArea = createInstances(of: Reference.self, for: "coverageArea", in: json, context: &instCtx, owner: self) ?? coverageArea
		eligibility = createInstance(type: CodeableConcept.self, for: "eligibility", in: json, context: &instCtx, owner: self) ?? eligibility
		eligibilityNote = createInstance(type: FHIRString.self, for: "eligibilityNote", in: json, context: &instCtx, owner: self) ?? eligibilityNote
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		extraDetails = createInstance(type: FHIRString.self, for: "extraDetails", in: json, context: &instCtx, owner: self) ?? extraDetails
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		location = createInstances(of: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		notAvailable = createInstances(of: HealthcareServiceNotAvailable.self, for: "notAvailable", in: json, context: &instCtx, owner: self) ?? notAvailable
		photo = createInstance(type: Attachment.self, for: "photo", in: json, context: &instCtx, owner: self) ?? photo
		programName = createInstances(of: FHIRString.self, for: "programName", in: json, context: &instCtx, owner: self) ?? programName
		providedBy = createInstance(type: Reference.self, for: "providedBy", in: json, context: &instCtx, owner: self) ?? providedBy
		referralMethod = createInstances(of: CodeableConcept.self, for: "referralMethod", in: json, context: &instCtx, owner: self) ?? referralMethod
		serviceProvisionCode = createInstances(of: CodeableConcept.self, for: "serviceProvisionCode", in: json, context: &instCtx, owner: self) ?? serviceProvisionCode
		specialty = createInstances(of: CodeableConcept.self, for: "specialty", in: json, context: &instCtx, owner: self) ?? specialty
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		self.appointmentRequired?.decorate(json: &json, withKey: "appointmentRequired", errors: &errors)
		self.availabilityExceptions?.decorate(json: &json, withKey: "availabilityExceptions", errors: &errors)
		arrayDecorate(json: &json, withKey: "availableTime", using: self.availableTime, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		arrayDecorate(json: &json, withKey: "characteristic", using: self.characteristic, errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		arrayDecorate(json: &json, withKey: "coverageArea", using: self.coverageArea, errors: &errors)
		self.eligibility?.decorate(json: &json, withKey: "eligibility", errors: &errors)
		self.eligibilityNote?.decorate(json: &json, withKey: "eligibilityNote", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		self.extraDetails?.decorate(json: &json, withKey: "extraDetails", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "location", using: self.location, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "notAvailable", using: self.notAvailable, errors: &errors)
		self.photo?.decorate(json: &json, withKey: "photo", errors: &errors)
		arrayDecorate(json: &json, withKey: "programName", using: self.programName, errors: &errors)
		self.providedBy?.decorate(json: &json, withKey: "providedBy", errors: &errors)
		arrayDecorate(json: &json, withKey: "referralMethod", using: self.referralMethod, errors: &errors)
		arrayDecorate(json: &json, withKey: "serviceProvisionCode", using: self.serviceProvisionCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "specialty", using: self.specialty, errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		allDay = createInstance(type: FHIRBool.self, for: "allDay", in: json, context: &instCtx, owner: self) ?? allDay
		availableEndTime = createInstance(type: FHIRTime.self, for: "availableEndTime", in: json, context: &instCtx, owner: self) ?? availableEndTime
		availableStartTime = createInstance(type: FHIRTime.self, for: "availableStartTime", in: json, context: &instCtx, owner: self) ?? availableStartTime
		daysOfWeek = createEnums(of: DaysOfWeek.self, for: "daysOfWeek", in: json, context: &instCtx) ?? daysOfWeek
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		if nil == description_fhir && !instCtx.containsKey("description") {
			instCtx.addError(FHIRValidationError(missing: "description"))
		}
		during = createInstance(type: Period.self, for: "during", in: json, context: &instCtx, owner: self) ?? during
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

