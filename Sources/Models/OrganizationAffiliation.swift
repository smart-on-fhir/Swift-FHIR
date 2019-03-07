//
//  OrganizationAffiliation.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/OrganizationAffiliation) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of relationship/sub-
division relationship.
*/
open class OrganizationAffiliation: DomainResource {
	override open class var resourceType: String {
		get { return "OrganizationAffiliation" }
	}
	
	/// Whether this organization affiliation record is in active use.
	public var active: FHIRBool?
	
	/// Definition of the role the participatingOrganization plays.
	public var code: [CodeableConcept]?
	
	/// Technical endpoints providing access to services operated for this role.
	public var endpoint: [Reference]?
	
	/// Healthcare services provided through the role.
	public var healthcareService: [Reference]?
	
	/// Business identifiers that are specific to this role.
	public var identifier: [Identifier]?
	
	/// The location(s) at which the role occurs.
	public var location: [Reference]?
	
	/// Health insurance provider network in which the participatingOrganization provides the role's services (if
	/// defined) at the indicated locations (if defined).
	public var network: [Reference]?
	
	/// Organization where the role is available.
	public var organization: Reference?
	
	/// Organization that provides/performs the role (e.g. providing services or is a member of).
	public var participatingOrganization: Reference?
	
	/// The period during which the participatingOrganization is affiliated with the primary organization.
	public var period: Period?
	
	/// Specific specialty of the participatingOrganization in the context of the role.
	public var specialty: [CodeableConcept]?
	
	/// Contact details at the participatingOrganization relevant to this Affiliation.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		code = createInstances(of: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		healthcareService = createInstances(of: Reference.self, for: "healthcareService", in: json, context: &instCtx, owner: self) ?? healthcareService
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		location = createInstances(of: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		network = createInstances(of: Reference.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		participatingOrganization = createInstance(type: Reference.self, for: "participatingOrganization", in: json, context: &instCtx, owner: self) ?? participatingOrganization
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		specialty = createInstances(of: CodeableConcept.self, for: "specialty", in: json, context: &instCtx, owner: self) ?? specialty
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "healthcareService", using: self.healthcareService, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "location", using: self.location, errors: &errors)
		arrayDecorate(json: &json, withKey: "network", using: self.network, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.participatingOrganization?.decorate(json: &json, withKey: "participatingOrganization", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "specialty", using: self.specialty, errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}

