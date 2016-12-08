//
//  RiskAssessment.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/RiskAssessment) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// Comments on the risk assessment.
	public var note: Annotation?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		basedOn = try createInstance(type: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		basis = try createInstances(of: Reference.self, for: "basis", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basis
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		condition = try createInstance(type: Reference.self, for: "condition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? condition
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		method = try createInstance(type: CodeableConcept.self, for: "method", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? method
		mitigation = try createInstance(type: FHIRString.self, for: "mitigation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? mitigation
		note = try createInstance(type: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		occurrenceDateTime = try createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceDateTime
		occurrencePeriod = try createInstance(type: Period.self, for: "occurrencePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrencePeriod
		parent = try createInstance(type: Reference.self, for: "parent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parent
		performer = try createInstance(type: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		prediction = try createInstances(of: RiskAssessmentPrediction.self, for: "prediction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? prediction
		reasonCodeableConcept = try createInstance(type: CodeableConcept.self, for: "reasonCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCodeableConcept
		reasonReference = try createInstance(type: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		status = createEnum(type: ObservationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.basedOn?.decorate(json: &json, withKey: "basedOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basis", using: self.basis, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.condition?.decorate(json: &json, withKey: "condition", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		self.mitigation?.decorate(json: &json, withKey: "mitigation", errors: &errors)
		self.note?.decorate(json: &json, withKey: "note", errors: &errors)
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
	public var probabilityCodeableConcept: CodeableConcept?
	
	/// Likelihood of specified outcome.
	public var probabilityDecimal: FHIRDecimal?
	
	/// Likelihood of specified outcome.
	public var probabilityRange: Range?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		outcome = try createInstance(type: CodeableConcept.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		if nil == outcome && !presentKeys.contains("outcome") {
			errors.append(FHIRValidationError(missing: "outcome"))
		}
		probabilityCodeableConcept = try createInstance(type: CodeableConcept.self, for: "probabilityCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? probabilityCodeableConcept
		probabilityDecimal = try createInstance(type: FHIRDecimal.self, for: "probabilityDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? probabilityDecimal
		probabilityRange = try createInstance(type: Range.self, for: "probabilityRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? probabilityRange
		rationale = try createInstance(type: FHIRString.self, for: "rationale", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rationale
		relativeRisk = try createInstance(type: FHIRDecimal.self, for: "relativeRisk", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relativeRisk
		whenPeriod = try createInstance(type: Period.self, for: "whenPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whenPeriod
		whenRange = try createInstance(type: Range.self, for: "whenRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whenRange
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		if nil == self.outcome {
			errors.append(FHIRValidationError(missing: "outcome"))
		}
		self.probabilityCodeableConcept?.decorate(json: &json, withKey: "probabilityCodeableConcept", errors: &errors)
		self.probabilityDecimal?.decorate(json: &json, withKey: "probabilityDecimal", errors: &errors)
		self.probabilityRange?.decorate(json: &json, withKey: "probabilityRange", errors: &errors)
		self.rationale?.decorate(json: &json, withKey: "rationale", errors: &errors)
		self.relativeRisk?.decorate(json: &json, withKey: "relativeRisk", errors: &errors)
		self.whenPeriod?.decorate(json: &json, withKey: "whenPeriod", errors: &errors)
		self.whenRange?.decorate(json: &json, withKey: "whenRange", errors: &errors)
	}
}

