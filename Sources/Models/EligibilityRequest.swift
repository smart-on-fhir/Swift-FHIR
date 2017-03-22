//
//  EligibilityRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/EligibilityRequest) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		benefitCategory = createInstance(type: CodeableConcept.self, for: "benefitCategory", in: json, context: &instCtx, owner: self) ?? benefitCategory
		benefitSubCategory = createInstance(type: CodeableConcept.self, for: "benefitSubCategory", in: json, context: &instCtx, owner: self) ?? benefitSubCategory
		businessArrangement = createInstance(type: FHIRString.self, for: "businessArrangement", in: json, context: &instCtx, owner: self) ?? businessArrangement
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		enterer = createInstance(type: Reference.self, for: "enterer", in: json, context: &instCtx, owner: self) ?? enterer
		facility = createInstance(type: Reference.self, for: "facility", in: json, context: &instCtx, owner: self) ?? facility
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		priority = createInstance(type: CodeableConcept.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		servicedDate = createInstance(type: FHIRDate.self, for: "servicedDate", in: json, context: &instCtx, owner: self) ?? servicedDate
		servicedPeriod = createInstance(type: Period.self, for: "servicedPeriod", in: json, context: &instCtx, owner: self) ?? servicedPeriod
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
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

