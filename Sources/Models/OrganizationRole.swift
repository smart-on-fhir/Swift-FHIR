//
//  OrganizationRole.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/OrganizationRole) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Roles/organizations the practitioner is associated with.

A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period
of time.
*/
open class OrganizationRole: DomainResource {
	override open class var resourceType: String {
		get { return "OrganizationRole" }
	}
	
	/// Whether this practitioner role record is in active use.
	public var active: FHIRBool?
	
	/// Description of availability exceptions.
	public var availabilityExceptions: FHIRString?
	
	/// Times the Service Site is available.
	public var availableTime: [OrganizationRoleAvailableTime]?
	
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
	
	/// The network(s) this association applies to.
	public var network: [Reference]?
	
	/// Not available during this time due to provided reason.
	public var notAvailable: [OrganizationRoleNotAvailable]?
	
	/// Organization where the roles are available.
	public var organization: Reference?
	
	/// Practitioner that is able to provide the defined services for the organization.
	public var participatingOrganization: Reference?
	
	/// The period during which the practitioner is authorized to perform in these role(s).
	public var period: Period?
	
	/// Specific specialty of the practitioner.
	public var specialty: [CodeableConcept]?
	
	/// Contact details that are specific to the role/location/service.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		availabilityExceptions = createInstance(type: FHIRString.self, for: "availabilityExceptions", in: json, context: &instCtx, owner: self) ?? availabilityExceptions
		availableTime = createInstances(of: OrganizationRoleAvailableTime.self, for: "availableTime", in: json, context: &instCtx, owner: self) ?? availableTime
		code = createInstances(of: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		healthcareService = createInstances(of: Reference.self, for: "healthcareService", in: json, context: &instCtx, owner: self) ?? healthcareService
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		location = createInstances(of: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		network = createInstances(of: Reference.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		notAvailable = createInstances(of: OrganizationRoleNotAvailable.self, for: "notAvailable", in: json, context: &instCtx, owner: self) ?? notAvailable
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		participatingOrganization = createInstance(type: Reference.self, for: "participatingOrganization", in: json, context: &instCtx, owner: self) ?? participatingOrganization
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		specialty = createInstances(of: CodeableConcept.self, for: "specialty", in: json, context: &instCtx, owner: self) ?? specialty
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		self.availabilityExceptions?.decorate(json: &json, withKey: "availabilityExceptions", errors: &errors)
		arrayDecorate(json: &json, withKey: "availableTime", using: self.availableTime, errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "healthcareService", using: self.healthcareService, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "location", using: self.location, errors: &errors)
		arrayDecorate(json: &json, withKey: "network", using: self.network, errors: &errors)
		arrayDecorate(json: &json, withKey: "notAvailable", using: self.notAvailable, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.participatingOrganization?.decorate(json: &json, withKey: "participatingOrganization", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "specialty", using: self.specialty, errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}


/**
Times the Service Site is available.

A collection of times that the Service Site is available.
*/
open class OrganizationRoleAvailableTime: BackboneElement {
	override open class var resourceType: String {
		get { return "OrganizationRoleAvailableTime" }
	}
	
	/// Always available? e.g. 24-hour service.
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
open class OrganizationRoleNotAvailable: BackboneElement {
	override open class var resourceType: String {
		get { return "OrganizationRoleNotAvailable" }
	}
	
	/// Reason presented to the user explaining why time not available.
	public var description_fhir: FHIRString?
	
	/// Service not available from this date.
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

