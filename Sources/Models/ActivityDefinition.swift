//
//  ActivityDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ActivityDefinition) on 2017-03-22.
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
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the activity definition.
	public var description_fhir: FHIRString?
	
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
	
	/// Kind of resource.
	public var kind: FHIRString?
	
	/// When the activity definition was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the asset.
	public var library: [Reference]?
	
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
	
	/// Additional documentation, citations, etc.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// The status of this activity definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// When activity is to occur.
	public var timingDateTime: DateTime?
	
	/// When activity is to occur.
	public var timingPeriod: Period?
	
	/// When activity is to occur.
	public var timingRange: Range?
	
	/// When activity is to occur.
	public var timingTiming: Timing?
	
	/// Name for this activity definition (human friendly).
	public var title: FHIRString?
	
	/// E.g. Education, Treatment, Assessment, etc.
	public var topic: [CodeableConcept]?
	
	/// Transform to apply the template.
	public var transform: Reference?
	
	/// Logical URI to reference this activity definition (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the asset.
	public var usage: FHIRString?
	
	/// Context the content is intended to support.
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
		dosage = createInstances(of: Dosage.self, for: "dosage", in: json, context: &instCtx, owner: self) ?? dosage
		dynamicValue = createInstances(of: ActivityDefinitionDynamicValue.self, for: "dynamicValue", in: json, context: &instCtx, owner: self) ?? dynamicValue
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		kind = createInstance(type: FHIRString.self, for: "kind", in: json, context: &instCtx, owner: self) ?? kind
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		library = createInstances(of: Reference.self, for: "library", in: json, context: &instCtx, owner: self) ?? library
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		participant = createInstances(of: ActivityDefinitionParticipant.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		productCodeableConcept = createInstance(type: CodeableConcept.self, for: "productCodeableConcept", in: json, context: &instCtx, owner: self) ?? productCodeableConcept
		productReference = createInstance(type: Reference.self, for: "productReference", in: json, context: &instCtx, owner: self) ?? productReference
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		relatedArtifact = createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, context: &instCtx, owner: self) ?? relatedArtifact
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		timingDateTime = createInstance(type: DateTime.self, for: "timingDateTime", in: json, context: &instCtx, owner: self) ?? timingDateTime
		timingPeriod = createInstance(type: Period.self, for: "timingPeriod", in: json, context: &instCtx, owner: self) ?? timingPeriod
		timingRange = createInstance(type: Range.self, for: "timingRange", in: json, context: &instCtx, owner: self) ?? timingRange
		timingTiming = createInstance(type: Timing.self, for: "timingTiming", in: json, context: &instCtx, owner: self) ?? timingTiming
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		topic = createInstances(of: CodeableConcept.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		transform = createInstance(type: Reference.self, for: "transform", in: json, context: &instCtx, owner: self) ?? transform
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
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.timingDateTime?.decorate(json: &json, withKey: "timingDateTime", errors: &errors)
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
	
	/// E.g. Nurse, Surgeon, Parent, etc.
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

