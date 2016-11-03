//
//  RiskAssessment.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/RiskAssessment) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Potential outcomes for a subject with likelihood.
 *
 *  An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
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
	public var mitigation: String?
	
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
	
	/// registered | preliminary | final | amended +.
	public var status: String?
	
	/// Who/what does assessment apply to?.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["basedOn"] {
			presentKeys.insert("basedOn")
			if let val = exist as? FHIRJSON {
				do {
					self.basedOn = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "basedOn"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "basedOn", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["basis"] {
			presentKeys.insert("basis")
			if let val = exist as? [FHIRJSON] {
				do {
					self.basis = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "basis"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "basis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["condition"] {
			presentKeys.insert("condition")
			if let val = exist as? FHIRJSON {
				do {
					self.condition = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "condition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "condition", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? FHIRJSON {
				do {
					self.context = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "context"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["method"] {
			presentKeys.insert("method")
			if let val = exist as? FHIRJSON {
				do {
					self.method = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "method"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "method", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["mitigation"] {
			presentKeys.insert("mitigation")
			if let val = exist as? String {
				self.mitigation = val
			}
			else {
				errors.append(FHIRValidationError(key: "mitigation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? FHIRJSON {
				do {
					self.note = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["occurrenceDateTime"] {
			presentKeys.insert("occurrenceDateTime")
			if let val = exist as? String {
				self.occurrenceDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "occurrenceDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["occurrencePeriod"] {
			presentKeys.insert("occurrencePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.occurrencePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "occurrencePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "occurrencePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["parent"] {
			presentKeys.insert("parent")
			if let val = exist as? FHIRJSON {
				do {
					self.parent = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "parent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "parent", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["performer"] {
			presentKeys.insert("performer")
			if let val = exist as? FHIRJSON {
				do {
					self.performer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["prediction"] {
			presentKeys.insert("prediction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.prediction = try RiskAssessmentPrediction.instantiate(fromArray: val, owner: self) as? [RiskAssessmentPrediction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "prediction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "prediction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonCodeableConcept"] {
			presentKeys.insert("reasonCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.reasonCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonReference"] {
			presentKeys.insert("reasonReference")
			if let val = exist as? FHIRJSON {
				do {
					self.reasonReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.asJSON(errors: &errors)
		}
		if let basis = self.basis {
			json["basis"] = basis.map() { $0.asJSON(errors: &errors) }
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let condition = self.condition {
			json["condition"] = condition.asJSON(errors: &errors)
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let method = self.method {
			json["method"] = method.asJSON(errors: &errors)
		}
		if let mitigation = self.mitigation {
			json["mitigation"] = mitigation.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON(errors: &errors)
		}
		if let occurrenceDateTime = self.occurrenceDateTime {
			json["occurrenceDateTime"] = occurrenceDateTime.asJSON()
		}
		if let occurrencePeriod = self.occurrencePeriod {
			json["occurrencePeriod"] = occurrencePeriod.asJSON(errors: &errors)
		}
		if let parent = self.parent {
			json["parent"] = parent.asJSON(errors: &errors)
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON(errors: &errors)
		}
		if let prediction = self.prediction {
			json["prediction"] = prediction.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON(errors: &errors)
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Outcome predicted.
 *
 *  Describes the expected outcome for the subject.
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
	public var probabilityDecimal: NSDecimalNumber?
	
	/// Likelihood of specified outcome.
	public var probabilityRange: Range?
	
	/// Explanation of prediction.
	public var rationale: String?
	
	/// Relative likelihood.
	public var relativeRisk: NSDecimalNumber?
	
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
		if let exist = json["outcome"] {
			presentKeys.insert("outcome")
			if let val = exist as? FHIRJSON {
				do {
					self.outcome = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outcome"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "outcome"))
		}
		if let exist = json["probabilityCodeableConcept"] {
			presentKeys.insert("probabilityCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.probabilityCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "probabilityCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "probabilityCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["probabilityDecimal"] {
			presentKeys.insert("probabilityDecimal")
			if let val = exist as? NSNumber {
				self.probabilityDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "probabilityDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["probabilityRange"] {
			presentKeys.insert("probabilityRange")
			if let val = exist as? FHIRJSON {
				do {
					self.probabilityRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "probabilityRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "probabilityRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["rationale"] {
			presentKeys.insert("rationale")
			if let val = exist as? String {
				self.rationale = val
			}
			else {
				errors.append(FHIRValidationError(key: "rationale", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["relativeRisk"] {
			presentKeys.insert("relativeRisk")
			if let val = exist as? NSNumber {
				self.relativeRisk = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "relativeRisk", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["whenPeriod"] {
			presentKeys.insert("whenPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.whenPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "whenPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "whenPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["whenRange"] {
			presentKeys.insert("whenRange")
			if let val = exist as? FHIRJSON {
				do {
					self.whenRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "whenRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "whenRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON(errors: &errors)
		}
		if let probabilityCodeableConcept = self.probabilityCodeableConcept {
			json["probabilityCodeableConcept"] = probabilityCodeableConcept.asJSON(errors: &errors)
		}
		if let probabilityDecimal = self.probabilityDecimal {
			json["probabilityDecimal"] = probabilityDecimal.asJSON()
		}
		if let probabilityRange = self.probabilityRange {
			json["probabilityRange"] = probabilityRange.asJSON(errors: &errors)
		}
		if let rationale = self.rationale {
			json["rationale"] = rationale.asJSON()
		}
		if let relativeRisk = self.relativeRisk {
			json["relativeRisk"] = relativeRisk.asJSON()
		}
		if let whenPeriod = self.whenPeriod {
			json["whenPeriod"] = whenPeriod.asJSON(errors: &errors)
		}
		if let whenRange = self.whenRange {
			json["whenRange"] = whenRange.asJSON(errors: &errors)
		}
		
		return json
	}
}

