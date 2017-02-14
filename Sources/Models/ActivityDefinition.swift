//
//  ActivityDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/ActivityDefinition) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
The definition of a specific activity to be taken, independent of any particular patient or context.

This resource allows for the definition of some activity to be performed, independent of a particular patient,
practitioner, or other performance context.
*/
open class ActivityDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "ActivityDefinition" }
	}
	
	/// When activity definition approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// What part of body to perform on.
	public var bodySite: [CodeableConcept]?
	
	/// E.g. Education, Assessment, Treatment, etc.
	public var category: CodeableConcept?
	
	/// Detail type of activity.
	public var code: CodeableConcept?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the activity definition.
	public var description_fhir: FHIRString?
	
	/// Detailed dosage instructions.
	public var dosageInstruction: [DosageInstruction]?
	
	/// Dynamic aspects of the definition.
	public var dynamicValue: [ActivityDefinitionDynamicValue]?
	
	/// The effective date range for the activity definition.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Additional identifier for the activity definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for activity definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Kind of resource.
	public var kind: FHIRString?
	
	/// Last review date for the activity definition.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the asset.
	public var library: [Reference]?
	
	/// Where it should happen.
	public var location: Reference?
	
	/// Name for this activity definition (Computer friendly).
	public var name: FHIRString?
	
	/// The type of participant in the action.
	public var participantType: [ActionParticipantType]?
	
	/// What's administered/supplied.
	public var productCodeableConcept: CodeableConcept?
	
	/// What's administered/supplied.
	public var productReference: Reference?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this activity definition is defined.
	public var purpose: FHIRString?
	
	/// How much is administered/consumed/supplied.
	public var quantity: Quantity?
	
	/// Related artifacts for the asset.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// The status of this activity definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// When activity is to occur.
	public var timingCodeableConcept: CodeableConcept?
	
	/// When activity is to occur.
	public var timingTiming: Timing?
	
	/// Name for this activity definition (Human friendly).
	public var title: FHIRString?
	
	/// Descriptional topics for the asset.
	public var topic: [CodeableConcept]?
	
	/// Transform to apply the template.
	public var transform: Reference?
	
	/// Logical uri to reference this activity definition (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the asset.
	public var usage: FHIRString?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the activity definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		approvalDate = try createInstance(type: FHIRDate.self, for: "approvalDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? approvalDate
		bodySite = try createInstances(of: CodeableConcept.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		contributor = try createInstances(of: Contributor.self, for: "contributor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contributor
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		dosageInstruction = try createInstances(of: DosageInstruction.self, for: "dosageInstruction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dosageInstruction
		dynamicValue = try createInstances(of: ActivityDefinitionDynamicValue.self, for: "dynamicValue", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dynamicValue
		effectivePeriod = try createInstance(type: Period.self, for: "effectivePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectivePeriod
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		kind = try createInstance(type: FHIRString.self, for: "kind", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? kind
		lastReviewDate = try createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lastReviewDate
		library = try createInstances(of: Reference.self, for: "library", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? library
		location = try createInstance(type: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		participantType = createEnums(of: ActionParticipantType.self, for: "participantType", in: json, presentKeys: &presentKeys, errors: &errors) ?? participantType
		productCodeableConcept = try createInstance(type: CodeableConcept.self, for: "productCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? productCodeableConcept
		productReference = try createInstance(type: Reference.self, for: "productReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? productReference
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		relatedArtifact = try createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatedArtifact
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		timingCodeableConcept = try createInstance(type: CodeableConcept.self, for: "timingCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingCodeableConcept
		timingTiming = try createInstance(type: Timing.self, for: "timingTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingTiming
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		topic = try createInstances(of: CodeableConcept.self, for: "topic", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? topic
		transform = try createInstance(type: Reference.self, for: "transform", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? transform
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		usage = try createInstance(type: FHIRString.self, for: "usage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? usage
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "bodySite", using: self.bodySite, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "contributor", using: self.contributor, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "dosageInstruction", using: self.dosageInstruction, errors: &errors)
		arrayDecorate(json: &json, withKey: "dynamicValue", using: self.dynamicValue, errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "library", using: self.library, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "participantType", using: self.participantType, errors: &errors)
		self.productCodeableConcept?.decorate(json: &json, withKey: "productCodeableConcept", errors: &errors)
		self.productReference?.decorate(json: &json, withKey: "productReference", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.timingCodeableConcept?.decorate(json: &json, withKey: "timingCodeableConcept", errors: &errors)
		self.timingTiming?.decorate(json: &json, withKey: "timingTiming", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
		self.transform?.decorate(json: &json, withKey: "transform", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.usage?.decorate(json: &json, withKey: "usage", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Dynamic aspects of the definition.

Dynamic values that will be evaluated to produce values for elements of the resulting resource. For example, if the
dosage of a medication must be computed based on the patient's weight, a dynamic value would be used to specify an
expression that calculated the weight, and the path on the intent resource that would contain the result.
*/
open class ActivityDefinitionDynamicValue: BackboneElement {
	override open class var resourceType: String {
		get { return "ActivityDefinitionDynamicValue" }
	}
	
	/// Natural language description of the dynamic value.
	public var description_fhir: FHIRString?
	
	/// An expression that provides the dynamic value for the customization.
	public var expression: FHIRString?
	
	/// Language of the expression.
	public var language: FHIRString?
	
	/// The path to the element to be set dynamically.
	public var path: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		expression = try createInstance(type: FHIRString.self, for: "expression", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expression
		language = try createInstance(type: FHIRString.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		path = try createInstance(type: FHIRString.self, for: "path", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? path
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
	}
}

