//
//  ServiceDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/ServiceDefinition) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
A description of decision support service functionality.

The ServiceDefinition describes a unit of decision support functionality that is made available as a service, such as
immunization modules or drug-drug interaction checking.
*/
open class ServiceDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "ServiceDefinition" }
	}
	
	/// When service definition approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Data requirements for the module.
	public var dataRequirement: [DataRequirement]?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the service definition.
	public var description_fhir: FHIRString?
	
	/// The effective date range for the service definition.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Additional identifier for the service definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for service definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Last review date for the service definition.
	public var lastReviewDate: FHIRDate?
	
	/// Name for this service definition (Computer friendly).
	public var name: FHIRString?
	
	/// Operation to invoke.
	public var operationDefinition: Reference?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this service definition is defined.
	public var purpose: FHIRString?
	
	/// Related resources for the module.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// The status of this service definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this service definition (Human friendly).
	public var title: FHIRString?
	
	/// Descriptional topics for the module.
	public var topic: [CodeableConcept]?
	
	/// "when" the module should be invoked.
	public var trigger: [TriggerDefinition]?
	
	/// Logical uri to reference this service definition (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the module.
	public var usage: FHIRString?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the service definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		approvalDate = try createInstance(type: FHIRDate.self, for: "approvalDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? approvalDate
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		contributor = try createInstances(of: Contributor.self, for: "contributor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contributor
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		dataRequirement = try createInstances(of: DataRequirement.self, for: "dataRequirement", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dataRequirement
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		effectivePeriod = try createInstance(type: Period.self, for: "effectivePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectivePeriod
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		lastReviewDate = try createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lastReviewDate
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		operationDefinition = try createInstance(type: Reference.self, for: "operationDefinition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? operationDefinition
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		relatedArtifact = try createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatedArtifact
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		topic = try createInstances(of: CodeableConcept.self, for: "topic", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? topic
		trigger = try createInstances(of: TriggerDefinition.self, for: "trigger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? trigger
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		usage = try createInstance(type: FHIRString.self, for: "usage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? usage
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "contributor", using: self.contributor, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		arrayDecorate(json: &json, withKey: "dataRequirement", using: self.dataRequirement, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.operationDefinition?.decorate(json: &json, withKey: "operationDefinition", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
		arrayDecorate(json: &json, withKey: "trigger", using: self.trigger, errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.usage?.decorate(json: &json, withKey: "usage", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}

