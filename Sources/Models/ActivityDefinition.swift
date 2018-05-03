//
//  ActivityDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/ActivityDefinition) on 2018-05-03.
//  2018, SMART Health IT.
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
	
	/// When the activity definition was approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// What part of body to perform on.
	public var bodySite: [CodeableConcept]?
	
	/// Detail type of activity.
	public var code: CodeableConcept?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Natural language description of the activity definition.
	public var description_fhir: FHIRString?
	
	/// True if the activity should not be performed.
	public var doNotPerform: FHIRBool?
	
	/// Detailed dosage instructions.
	public var dosage: [Dosage]?
	
	/// Dynamic aspects of the definition.
	public var dynamicValue: [ActivityDefinitionDynamicValue]?
	
	/// When the activity definition is expected to be used.
	public var effectivePeriod: Period?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Additional identifier for the activity definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for activity definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// A description of the kind of resource the activity definition is representing. For example, a MedicationRequest,
	/// a ServiceRequest, or a CommunicationRequest. Typically, but not always, this is a Request resource.
	public var kind: ResourceType?
	
	/// When the activity definition was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the activity definition.
	public var library: [FHIRURL]?
	
	/// Where it should happen.
	public var location: Reference?
	
	/// Name for this activity definition (computer friendly).
	public var name: FHIRString?
	
	/// Who should participate in the action.
	public var participant: [ActivityDefinitionParticipant]?
	
	/// What's administered/supplied.
	public var productCodeableConcept: CodeableConcept?
	
	/// What's administered/supplied.
	public var productReference: Reference?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this activity definition is defined.
	public var purpose: FHIRString?
	
	/// How much is administered/consumed/supplied.
	public var quantity: Quantity?
	
	/// Additional documentation, citations, etc..
	public var relatedArtifact: [RelatedArtifact]?
	
	/// What specimens are required to perform this action.
	public var specimenRequirement: [Reference]?
	
	/// The status of this activity definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Type of individual the activity definition is intended for.
	public var subjectCodeableConcept: CodeableConcept?
	
	/// Type of individual the activity definition is intended for.
	public var subjectReference: Reference?
	
	/// Subordinate title of the activity definition.
	public var subtitle: FHIRString?
	
	/// When activity is to occur.
	public var timingAge: Age?
	
	/// When activity is to occur.
	public var timingDateTime: DateTime?
	
	/// When activity is to occur.
	public var timingDuration: Duration?
	
	/// When activity is to occur.
	public var timingPeriod: Period?
	
	/// When activity is to occur.
	public var timingRange: Range?
	
	/// When activity is to occur.
	public var timingTiming: Timing?
	
	/// Name for this activity definition (human friendly).
	public var title: FHIRString?
	
	/// E.g. Education, Treatment, Assessment, etc..
	public var topic: [CodeableConcept]?
	
	/// Transform to apply the template.
	public var transform: FHIRURL?
	
	/// Canonical identifier for this activity definition, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the activity definition.
	public var usage: FHIRString?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the activity definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		approvalDate = createInstance(type: FHIRDate.self, for: "approvalDate", in: json, context: &instCtx, owner: self) ?? approvalDate
		bodySite = createInstances(of: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		contributor = createInstances(of: Contributor.self, for: "contributor", in: json, context: &instCtx, owner: self) ?? contributor
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		doNotPerform = createInstance(type: FHIRBool.self, for: "doNotPerform", in: json, context: &instCtx, owner: self) ?? doNotPerform
		dosage = createInstances(of: Dosage.self, for: "dosage", in: json, context: &instCtx, owner: self) ?? dosage
		dynamicValue = createInstances(of: ActivityDefinitionDynamicValue.self, for: "dynamicValue", in: json, context: &instCtx, owner: self) ?? dynamicValue
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		kind = createEnum(type: ResourceType.self, for: "kind", in: json, context: &instCtx) ?? kind
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		library = createInstances(of: FHIRURL.self, for: "library", in: json, context: &instCtx, owner: self) ?? library
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		participant = createInstances(of: ActivityDefinitionParticipant.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		productCodeableConcept = createInstance(type: CodeableConcept.self, for: "productCodeableConcept", in: json, context: &instCtx, owner: self) ?? productCodeableConcept
		productReference = createInstance(type: Reference.self, for: "productReference", in: json, context: &instCtx, owner: self) ?? productReference
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		relatedArtifact = createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, context: &instCtx, owner: self) ?? relatedArtifact
		specimenRequirement = createInstances(of: Reference.self, for: "specimenRequirement", in: json, context: &instCtx, owner: self) ?? specimenRequirement
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subjectCodeableConcept = createInstance(type: CodeableConcept.self, for: "subjectCodeableConcept", in: json, context: &instCtx, owner: self) ?? subjectCodeableConcept
		subjectReference = createInstance(type: Reference.self, for: "subjectReference", in: json, context: &instCtx, owner: self) ?? subjectReference
		subtitle = createInstance(type: FHIRString.self, for: "subtitle", in: json, context: &instCtx, owner: self) ?? subtitle
		timingAge = createInstance(type: Age.self, for: "timingAge", in: json, context: &instCtx, owner: self) ?? timingAge
		timingDateTime = createInstance(type: DateTime.self, for: "timingDateTime", in: json, context: &instCtx, owner: self) ?? timingDateTime
		timingDuration = createInstance(type: Duration.self, for: "timingDuration", in: json, context: &instCtx, owner: self) ?? timingDuration
		timingPeriod = createInstance(type: Period.self, for: "timingPeriod", in: json, context: &instCtx, owner: self) ?? timingPeriod
		timingRange = createInstance(type: Range.self, for: "timingRange", in: json, context: &instCtx, owner: self) ?? timingRange
		timingTiming = createInstance(type: Timing.self, for: "timingTiming", in: json, context: &instCtx, owner: self) ?? timingTiming
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		topic = createInstances(of: CodeableConcept.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		transform = createInstance(type: FHIRURL.self, for: "transform", in: json, context: &instCtx, owner: self) ?? transform
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		usage = createInstance(type: FHIRString.self, for: "usage", in: json, context: &instCtx, owner: self) ?? usage
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "bodySite", using: self.bodySite, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "contributor", using: self.contributor, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.doNotPerform?.decorate(json: &json, withKey: "doNotPerform", errors: &errors)
		arrayDecorate(json: &json, withKey: "dosage", using: self.dosage, errors: &errors)
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
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.productCodeableConcept?.decorate(json: &json, withKey: "productCodeableConcept", errors: &errors)
		self.productReference?.decorate(json: &json, withKey: "productReference", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		arrayDecorate(json: &json, withKey: "specimenRequirement", using: self.specimenRequirement, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subjectCodeableConcept?.decorate(json: &json, withKey: "subjectCodeableConcept", errors: &errors)
		self.subjectReference?.decorate(json: &json, withKey: "subjectReference", errors: &errors)
		self.subtitle?.decorate(json: &json, withKey: "subtitle", errors: &errors)
		self.timingAge?.decorate(json: &json, withKey: "timingAge", errors: &errors)
		self.timingDateTime?.decorate(json: &json, withKey: "timingDateTime", errors: &errors)
		self.timingDuration?.decorate(json: &json, withKey: "timingDuration", errors: &errors)
		self.timingPeriod?.decorate(json: &json, withKey: "timingPeriod", errors: &errors)
		self.timingRange?.decorate(json: &json, withKey: "timingRange", errors: &errors)
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
expression that calculated the weight, and the path on the request resource that would contain the result.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		expression = createInstance(type: FHIRString.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		language = createInstance(type: FHIRString.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
	}
}


/**
Who should participate in the action.

Indicates who should participate in performing the action described.
*/
open class ActivityDefinitionParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "ActivityDefinitionParticipant" }
	}
	
	/// E.g. Nurse, Surgeon, Parent, etc..
	public var role: CodeableConcept?
	
	/// The type of participant in the action.
	public var type: ActionParticipantType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: ActionParticipantType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		type = createEnum(type: ActionParticipantType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

