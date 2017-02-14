//
//  EligibilityRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/EligibilityRequest) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Determine insurance validity and scope of coverage.

The EligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the
form of an EligibilityResponse, with information regarding whether the stated coverage is valid and in-force and
optionally to provide the insurance details of the policy.
*/
open class EligibilityRequest: DomainResource {
	override open class var resourceType: String {
		get { return "EligibilityRequest" }
	}
	
	/// Type of services covered.
	public var benefitCategory: CodeableConcept?
	
	/// Detailed services covered within the type.
	public var benefitSubCategory: CodeableConcept?
	
	/// Business agreement.
	public var businessArrangement: FHIRString?
	
	/// Insurance or medical plan.
	public var coverage: Reference?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Author.
	public var enterer: Reference?
	
	/// Servicing Facility.
	public var facility: Reference?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Target.
	public var insurer: Reference?
	
	/// Responsible organization.
	public var organization: Reference?
	
	/// The subject of the Products and Services.
	public var patient: Reference?
	
	/// Desired processing priority.
	public var priority: CodeableConcept?
	
	/// Responsible practitioner.
	public var provider: Reference?
	
	/// Estimated date or dates of Service.
	public var servicedDate: FHIRDate?
	
	/// Estimated date or dates of Service.
	public var servicedPeriod: Period?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		benefitCategory = try createInstance(type: CodeableConcept.self, for: "benefitCategory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? benefitCategory
		benefitSubCategory = try createInstance(type: CodeableConcept.self, for: "benefitSubCategory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? benefitSubCategory
		businessArrangement = try createInstance(type: FHIRString.self, for: "businessArrangement", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? businessArrangement
		coverage = try createInstance(type: Reference.self, for: "coverage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? coverage
		created = try createInstance(type: DateTime.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		enterer = try createInstance(type: Reference.self, for: "enterer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? enterer
		facility = try createInstance(type: Reference.self, for: "facility", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? facility
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		insurer = try createInstance(type: Reference.self, for: "insurer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? insurer
		organization = try createInstance(type: Reference.self, for: "organization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? organization
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		priority = try createInstance(type: CodeableConcept.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priority
		provider = try createInstance(type: Reference.self, for: "provider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? provider
		servicedDate = try createInstance(type: FHIRDate.self, for: "servicedDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? servicedDate
		servicedPeriod = try createInstance(type: Period.self, for: "servicedPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? servicedPeriod
		status = try createInstance(type: FHIRString.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.benefitCategory?.decorate(json: &json, withKey: "benefitCategory", errors: &errors)
		self.benefitSubCategory?.decorate(json: &json, withKey: "benefitSubCategory", errors: &errors)
		self.businessArrangement?.decorate(json: &json, withKey: "businessArrangement", errors: &errors)
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.facility?.decorate(json: &json, withKey: "facility", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.servicedDate?.decorate(json: &json, withKey: "servicedDate", errors: &errors)
		self.servicedPeriod?.decorate(json: &json, withKey: "servicedPeriod", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}

