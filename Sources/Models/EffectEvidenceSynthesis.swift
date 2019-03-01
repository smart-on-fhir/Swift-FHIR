//
//  EffectEvidenceSynthesis.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/EffectEvidenceSynthesis) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A quantified estimate of effect based on a body of evidence.

The EffectEvidenceSynthesis resource describes the difference in an outcome between exposures states in a population
where the effect estimate is derived from a combination of research studies.
*/
open class EffectEvidenceSynthesis: DomainResource {
	override open class var resourceType: String {
		get { return "EffectEvidenceSynthesis" }
	}
	
	/// When the effect evidence synthesis was approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Who authored the content.
	public var author: [ContactDetail]?
	
	/// How certain is the effect.
	public var certainty: [EffectEvidenceSynthesisCertainty]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Natural language description of the effect evidence synthesis.
	public var description_fhir: FHIRString?
	
	/// Who edited the content.
	public var editor: [ContactDetail]?
	
	/// What was the estimated effect.
	public var effectEstimate: [EffectEvidenceSynthesisEffectEstimate]?
	
	/// When the effect evidence synthesis is expected to be used.
	public var effectivePeriod: Period?
	
	/// Who endorsed the content.
	public var endorser: [ContactDetail]?
	
	/// What exposure?.
	public var exposure: Reference?
	
	/// What comparison exposure?.
	public var exposureAlternative: Reference?
	
	/// Additional identifier for the effect evidence synthesis.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for effect evidence synthesis (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// When the effect evidence synthesis was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Name for this effect evidence synthesis (computer friendly).
	public var name: FHIRString?
	
	/// Used for footnotes or explanatory notes.
	public var note: [Annotation]?
	
	/// What outcome?.
	public var outcome: Reference?
	
	/// What population?.
	public var population: Reference?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Additional documentation, citations, etc..
	public var relatedArtifact: [RelatedArtifact]?
	
	/// What was the result per exposure?.
	public var resultsByExposure: [EffectEvidenceSynthesisResultsByExposure]?
	
	/// Who reviewed the content.
	public var reviewer: [ContactDetail]?
	
	/// What sample size was involved?.
	public var sampleSize: EffectEvidenceSynthesisSampleSize?
	
	/// The status of this effect evidence synthesis. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Type of study.
	public var studyType: CodeableConcept?
	
	/// Type of synthesis.
	public var synthesisType: CodeableConcept?
	
	/// Name for this effect evidence synthesis (human friendly).
	public var title: FHIRString?
	
	/// The category of the EffectEvidenceSynthesis, such as Education, Treatment, Assessment, etc..
	public var topic: [CodeableConcept]?
	
	/// Canonical identifier for this effect evidence synthesis, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the effect evidence synthesis.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(exposure: Reference, exposureAlternative: Reference, outcome: Reference, population: Reference, status: PublicationStatus) {
		self.init()
		self.exposure = exposure
		self.exposureAlternative = exposureAlternative
		self.outcome = outcome
		self.population = population
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		approvalDate = createInstance(type: FHIRDate.self, for: "approvalDate", in: json, context: &instCtx, owner: self) ?? approvalDate
		author = createInstances(of: ContactDetail.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		certainty = createInstances(of: EffectEvidenceSynthesisCertainty.self, for: "certainty", in: json, context: &instCtx, owner: self) ?? certainty
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		editor = createInstances(of: ContactDetail.self, for: "editor", in: json, context: &instCtx, owner: self) ?? editor
		effectEstimate = createInstances(of: EffectEvidenceSynthesisEffectEstimate.self, for: "effectEstimate", in: json, context: &instCtx, owner: self) ?? effectEstimate
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		endorser = createInstances(of: ContactDetail.self, for: "endorser", in: json, context: &instCtx, owner: self) ?? endorser
		exposure = createInstance(type: Reference.self, for: "exposure", in: json, context: &instCtx, owner: self) ?? exposure
		if nil == exposure && !instCtx.containsKey("exposure") {
			instCtx.addError(FHIRValidationError(missing: "exposure"))
		}
		exposureAlternative = createInstance(type: Reference.self, for: "exposureAlternative", in: json, context: &instCtx, owner: self) ?? exposureAlternative
		if nil == exposureAlternative && !instCtx.containsKey("exposureAlternative") {
			instCtx.addError(FHIRValidationError(missing: "exposureAlternative"))
		}
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		outcome = createInstance(type: Reference.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		if nil == outcome && !instCtx.containsKey("outcome") {
			instCtx.addError(FHIRValidationError(missing: "outcome"))
		}
		population = createInstance(type: Reference.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		if nil == population && !instCtx.containsKey("population") {
			instCtx.addError(FHIRValidationError(missing: "population"))
		}
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		relatedArtifact = createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, context: &instCtx, owner: self) ?? relatedArtifact
		resultsByExposure = createInstances(of: EffectEvidenceSynthesisResultsByExposure.self, for: "resultsByExposure", in: json, context: &instCtx, owner: self) ?? resultsByExposure
		reviewer = createInstances(of: ContactDetail.self, for: "reviewer", in: json, context: &instCtx, owner: self) ?? reviewer
		sampleSize = createInstance(type: EffectEvidenceSynthesisSampleSize.self, for: "sampleSize", in: json, context: &instCtx, owner: self) ?? sampleSize
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		studyType = createInstance(type: CodeableConcept.self, for: "studyType", in: json, context: &instCtx, owner: self) ?? studyType
		synthesisType = createInstance(type: CodeableConcept.self, for: "synthesisType", in: json, context: &instCtx, owner: self) ?? synthesisType
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		topic = createInstances(of: CodeableConcept.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "certainty", using: self.certainty, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "editor", using: self.editor, errors: &errors)
		arrayDecorate(json: &json, withKey: "effectEstimate", using: self.effectEstimate, errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "endorser", using: self.endorser, errors: &errors)
		self.exposure?.decorate(json: &json, withKey: "exposure", errors: &errors)
		if nil == self.exposure {
			errors.append(FHIRValidationError(missing: "exposure"))
		}
		self.exposureAlternative?.decorate(json: &json, withKey: "exposureAlternative", errors: &errors)
		if nil == self.exposureAlternative {
			errors.append(FHIRValidationError(missing: "exposureAlternative"))
		}
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		if nil == self.outcome {
			errors.append(FHIRValidationError(missing: "outcome"))
		}
		self.population?.decorate(json: &json, withKey: "population", errors: &errors)
		if nil == self.population {
			errors.append(FHIRValidationError(missing: "population"))
		}
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		arrayDecorate(json: &json, withKey: "resultsByExposure", using: self.resultsByExposure, errors: &errors)
		arrayDecorate(json: &json, withKey: "reviewer", using: self.reviewer, errors: &errors)
		self.sampleSize?.decorate(json: &json, withKey: "sampleSize", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.studyType?.decorate(json: &json, withKey: "studyType", errors: &errors)
		self.synthesisType?.decorate(json: &json, withKey: "synthesisType", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
How certain is the effect.

A description of the certainty of the effect estimate.
*/
open class EffectEvidenceSynthesisCertainty: BackboneElement {
	override open class var resourceType: String {
		get { return "EffectEvidenceSynthesisCertainty" }
	}
	
	/// A component that contributes to the overall certainty.
	public var certaintySubcomponent: [EffectEvidenceSynthesisCertaintyCertaintySubcomponent]?
	
	/// Used for footnotes or explanatory notes.
	public var note: [Annotation]?
	
	/// Certainty rating.
	public var rating: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		certaintySubcomponent = createInstances(of: EffectEvidenceSynthesisCertaintyCertaintySubcomponent.self, for: "certaintySubcomponent", in: json, context: &instCtx, owner: self) ?? certaintySubcomponent
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		rating = createInstances(of: CodeableConcept.self, for: "rating", in: json, context: &instCtx, owner: self) ?? rating
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "certaintySubcomponent", using: self.certaintySubcomponent, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "rating", using: self.rating, errors: &errors)
	}
}


/**
A component that contributes to the overall certainty.

A description of a component of the overall certainty.
*/
open class EffectEvidenceSynthesisCertaintyCertaintySubcomponent: BackboneElement {
	override open class var resourceType: String {
		get { return "EffectEvidenceSynthesisCertaintyCertaintySubcomponent" }
	}
	
	/// Used for footnotes or explanatory notes.
	public var note: [Annotation]?
	
	/// Subcomponent certainty rating.
	public var rating: [CodeableConcept]?
	
	/// Type of subcomponent of certainty rating.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		rating = createInstances(of: CodeableConcept.self, for: "rating", in: json, context: &instCtx, owner: self) ?? rating
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "rating", using: self.rating, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
What was the estimated effect.

The estimated effect of the exposure variant.
*/
open class EffectEvidenceSynthesisEffectEstimate: BackboneElement {
	override open class var resourceType: String {
		get { return "EffectEvidenceSynthesisEffectEstimate" }
	}
	
	/// Description of effect estimate.
	public var description_fhir: FHIRString?
	
	/// How precise the estimate is.
	public var precisionEstimate: [EffectEvidenceSynthesisEffectEstimatePrecisionEstimate]?
	
	/// Type of efffect estimate.
	public var type: CodeableConcept?
	
	/// What unit is the outcome described in?.
	public var unitOfMeasure: CodeableConcept?
	
	/// Point estimate.
	public var value: FHIRDecimal?
	
	/// Variant exposure states.
	public var variantState: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		precisionEstimate = createInstances(of: EffectEvidenceSynthesisEffectEstimatePrecisionEstimate.self, for: "precisionEstimate", in: json, context: &instCtx, owner: self) ?? precisionEstimate
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		unitOfMeasure = createInstance(type: CodeableConcept.self, for: "unitOfMeasure", in: json, context: &instCtx, owner: self) ?? unitOfMeasure
		value = createInstance(type: FHIRDecimal.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		variantState = createInstance(type: CodeableConcept.self, for: "variantState", in: json, context: &instCtx, owner: self) ?? variantState
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "precisionEstimate", using: self.precisionEstimate, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.unitOfMeasure?.decorate(json: &json, withKey: "unitOfMeasure", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		self.variantState?.decorate(json: &json, withKey: "variantState", errors: &errors)
	}
}


/**
How precise the estimate is.

A description of the precision of the estimate for the effect.
*/
open class EffectEvidenceSynthesisEffectEstimatePrecisionEstimate: BackboneElement {
	override open class var resourceType: String {
		get { return "EffectEvidenceSynthesisEffectEstimatePrecisionEstimate" }
	}
	
	/// Lower bound.
	public var from: FHIRDecimal?
	
	/// Level of confidence interval.
	public var level: FHIRDecimal?
	
	/// Upper bound.
	public var to: FHIRDecimal?
	
	/// Type of precision estimate.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		from = createInstance(type: FHIRDecimal.self, for: "from", in: json, context: &instCtx, owner: self) ?? from
		level = createInstance(type: FHIRDecimal.self, for: "level", in: json, context: &instCtx, owner: self) ?? level
		to = createInstance(type: FHIRDecimal.self, for: "to", in: json, context: &instCtx, owner: self) ?? to
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.from?.decorate(json: &json, withKey: "from", errors: &errors)
		self.level?.decorate(json: &json, withKey: "level", errors: &errors)
		self.to?.decorate(json: &json, withKey: "to", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
What was the result per exposure?.

A description of the results for each exposure considered in the effect estimate.
*/
open class EffectEvidenceSynthesisResultsByExposure: BackboneElement {
	override open class var resourceType: String {
		get { return "EffectEvidenceSynthesisResultsByExposure" }
	}
	
	/// Description of results by exposure.
	public var description_fhir: FHIRString?
	
	/// Whether these results are for the exposure state or alternative exposure state.
	public var exposureState: ExposureState?
	
	/// Risk evidence synthesis.
	public var riskEvidenceSynthesis: Reference?
	
	/// Variant exposure states.
	public var variantState: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(riskEvidenceSynthesis: Reference) {
		self.init()
		self.riskEvidenceSynthesis = riskEvidenceSynthesis
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		exposureState = createEnum(type: ExposureState.self, for: "exposureState", in: json, context: &instCtx) ?? exposureState
		riskEvidenceSynthesis = createInstance(type: Reference.self, for: "riskEvidenceSynthesis", in: json, context: &instCtx, owner: self) ?? riskEvidenceSynthesis
		if nil == riskEvidenceSynthesis && !instCtx.containsKey("riskEvidenceSynthesis") {
			instCtx.addError(FHIRValidationError(missing: "riskEvidenceSynthesis"))
		}
		variantState = createInstance(type: CodeableConcept.self, for: "variantState", in: json, context: &instCtx, owner: self) ?? variantState
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.exposureState?.decorate(json: &json, withKey: "exposureState", errors: &errors)
		self.riskEvidenceSynthesis?.decorate(json: &json, withKey: "riskEvidenceSynthesis", errors: &errors)
		if nil == self.riskEvidenceSynthesis {
			errors.append(FHIRValidationError(missing: "riskEvidenceSynthesis"))
		}
		self.variantState?.decorate(json: &json, withKey: "variantState", errors: &errors)
	}
}


/**
What sample size was involved?.

A description of the size of the sample involved in the synthesis.
*/
open class EffectEvidenceSynthesisSampleSize: BackboneElement {
	override open class var resourceType: String {
		get { return "EffectEvidenceSynthesisSampleSize" }
	}
	
	/// Description of sample size.
	public var description_fhir: FHIRString?
	
	/// How many participants?.
	public var numberOfParticipants: FHIRInteger?
	
	/// How many studies?.
	public var numberOfStudies: FHIRInteger?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		numberOfParticipants = createInstance(type: FHIRInteger.self, for: "numberOfParticipants", in: json, context: &instCtx, owner: self) ?? numberOfParticipants
		numberOfStudies = createInstance(type: FHIRInteger.self, for: "numberOfStudies", in: json, context: &instCtx, owner: self) ?? numberOfStudies
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.numberOfParticipants?.decorate(json: &json, withKey: "numberOfParticipants", errors: &errors)
		self.numberOfStudies?.decorate(json: &json, withKey: "numberOfStudies", errors: &errors)
	}
}

