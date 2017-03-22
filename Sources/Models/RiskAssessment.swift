//
//  RiskAssessment.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/RiskAssessment) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Potential outcomes for a subject with likelihood.

An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
*/
open class RiskAssessment: DomainResource {
	override open class var resourceType: String {
		get { return "RiskAssessment" }
	}
	
	/// Request fulfilled by this assessment.
	public var basedOn: Reference?
	
	/// Information used in assessment.
	public var basis: [Reference]?
	
	/// Type of assessment.
	public var code: CodeableConcept?
	
	/// Comments on the risk assessment.
	public var comment: FHIRString?
	
	/// Condition assessed.
	public var condition: Reference?
	
	/// Where was assessment performed?.
	public var context: Reference?
	
	/// Unique identifier for the assessment.
	public var identifier: Identifier?
	
	/// Evaluation mechanism.
	public var method: CodeableConcept?
	
	/// How to reduce risk.
	public var mitigation: FHIRString?
	
	/// When was assessment made?.
	public var occurrenceDateTime: DateTime?
	
	/// When was assessment made?.
	public var occurrencePeriod: Period?
	
	/// Part of this occurrence.
	public var parent: Reference?
	
	/// Who did assessment?.
	public var performer: Reference?
	
	/// Outcome predicted.
	public var prediction: [RiskAssessmentPrediction]?
	
	/// Why the assessment was necessary?.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Why the assessment was necessary?.
	public var reasonReference: Reference?
	
	/// The status of the RiskAssessment, using the same statuses as an Observation.
	public var status: ObservationStatus?
	
	/// Who/what does assessment apply to?.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: ObservationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basedOn = createInstance(type: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		basis = createInstances(of: Reference.self, for: "basis", in: json, context: &instCtx, owner: self) ?? basis
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		condition = createInstance(type: Reference.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		mitigation = createInstance(type: FHIRString.self, for: "mitigation", in: json, context: &instCtx, owner: self) ?? mitigation
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		occurrencePeriod = createInstance(type: Period.self, for: "occurrencePeriod", in: json, context: &instCtx, owner: self) ?? occurrencePeriod
		parent = createInstance(type: Reference.self, for: "parent", in: json, context: &instCtx, owner: self) ?? parent
		performer = createInstance(type: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		prediction = createInstances(of: RiskAssessmentPrediction.self, for: "prediction", in: json, context: &instCtx, owner: self) ?? prediction
		reasonCodeableConcept = createInstance(type: CodeableConcept.self, for: "reasonCodeableConcept", in: json, context: &instCtx, owner: self) ?? reasonCodeableConcept
		reasonReference = createInstance(type: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		status = createEnum(type: ObservationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.basedOn?.decorate(json: &json, withKey: "basedOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basis", using: self.basis, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.condition?.decorate(json: &json, withKey: "condition", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		self.mitigation?.decorate(json: &json, withKey: "mitigation", errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.parent?.decorate(json: &json, withKey: "parent", errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		arrayDecorate(json: &json, withKey: "prediction", using: self.prediction, errors: &errors)
		self.reasonCodeableConcept?.decorate(json: &json, withKey: "reasonCodeableConcept", errors: &errors)
		self.reasonReference?.decorate(json: &json, withKey: "reasonReference", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
	}
}


/**
Outcome predicted.

Describes the expected outcome for the subject.
*/
open class RiskAssessmentPrediction: BackboneElement {
	override open class var resourceType: String {
		get { return "RiskAssessmentPrediction" }
	}
	
	/// Possible outcome for the subject.
	public var outcome: CodeableConcept?
	
	/// Likelihood of specified outcome.
	public var probabilityDecimal: FHIRDecimal?
	
	/// Likelihood of specified outcome.
	public var probabilityRange: Range?
	
	/// Likelihood of specified outcome as a qualitative value.
	public var qualitativeRisk: CodeableConcept?
	
	/// Explanation of prediction.
	public var rationale: FHIRString?
	
	/// Relative likelihood.
	public var relativeRisk: FHIRDecimal?
	
	/// Timeframe or age range.
	public var whenPeriod: Period?
	
	/// Timeframe or age range.
	public var whenRange: Range?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(outcome: CodeableConcept) {
		self.init()
		self.outcome = outcome
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		outcome = createInstance(type: CodeableConcept.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		if nil == outcome && !instCtx.containsKey("outcome") {
			instCtx.addError(FHIRValidationError(missing: "outcome"))
		}
		probabilityDecimal = createInstance(type: FHIRDecimal.self, for: "probabilityDecimal", in: json, context: &instCtx, owner: self) ?? probabilityDecimal
		probabilityRange = createInstance(type: Range.self, for: "probabilityRange", in: json, context: &instCtx, owner: self) ?? probabilityRange
		qualitativeRisk = createInstance(type: CodeableConcept.self, for: "qualitativeRisk", in: json, context: &instCtx, owner: self) ?? qualitativeRisk
		rationale = createInstance(type: FHIRString.self, for: "rationale", in: json, context: &instCtx, owner: self) ?? rationale
		relativeRisk = createInstance(type: FHIRDecimal.self, for: "relativeRisk", in: json, context: &instCtx, owner: self) ?? relativeRisk
		whenPeriod = createInstance(type: Period.self, for: "whenPeriod", in: json, context: &instCtx, owner: self) ?? whenPeriod
		whenRange = createInstance(type: Range.self, for: "whenRange", in: json, context: &instCtx, owner: self) ?? whenRange
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		if nil == self.outcome {
			errors.append(FHIRValidationError(missing: "outcome"))
		}
		self.probabilityDecimal?.decorate(json: &json, withKey: "probabilityDecimal", errors: &errors)
		self.probabilityRange?.decorate(json: &json, withKey: "probabilityRange", errors: &errors)
		self.qualitativeRisk?.decorate(json: &json, withKey: "qualitativeRisk", errors: &errors)
		self.rationale?.decorate(json: &json, withKey: "rationale", errors: &errors)
		self.relativeRisk?.decorate(json: &json, withKey: "relativeRisk", errors: &errors)
		self.whenPeriod?.decorate(json: &json, withKey: "whenPeriod", errors: &errors)
		self.whenRange?.decorate(json: &json, withKey: "whenRange", errors: &errors)
	}
}

