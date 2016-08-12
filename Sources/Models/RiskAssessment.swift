//
//  RiskAssessment.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/RiskAssessment) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Potential outcomes for a subject with likelihood.
 *
 *  An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
 */
public class RiskAssessment: DomainResource {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["basedOn"] {
				presentKeys.insert("basedOn")
				if let val = exist as? FHIRJSON {
					self.basedOn = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "basedOn", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["basis"] {
				presentKeys.insert("basis")
				if let val = exist as? [FHIRJSON] {
					self.basis = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basis", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? FHIRJSON {
					self.condition = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mitigation"] {
				presentKeys.insert("mitigation")
				if let val = exist as? String {
					self.mitigation = val
				}
				else {
					errors.append(FHIRJSONError(key: "mitigation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? FHIRJSON {
					self.note = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["occurrenceDateTime"] {
				presentKeys.insert("occurrenceDateTime")
				if let val = exist as? String {
					self.occurrenceDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "occurrenceDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["occurrencePeriod"] {
				presentKeys.insert("occurrencePeriod")
				if let val = exist as? FHIRJSON {
					self.occurrencePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "occurrencePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parent"] {
				presentKeys.insert("parent")
				if let val = exist as? FHIRJSON {
					self.parent = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "parent", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? FHIRJSON {
					self.performer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prediction"] {
				presentKeys.insert("prediction")
				if let val = exist as? [FHIRJSON] {
					self.prediction = RiskAssessmentPrediction.from(val, owner: self) as? [RiskAssessmentPrediction]
				}
				else {
					errors.append(FHIRJSONError(key: "prediction", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonCodeableConcept"] {
				presentKeys.insert("reasonCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? FHIRJSON {
					self.reasonReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.asJSON()
		}
		if let basis = self.basis {
			json["basis"] = Reference.asJSONArray(basis)
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let condition = self.condition {
			json["condition"] = condition.asJSON()
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let mitigation = self.mitigation {
			json["mitigation"] = mitigation.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let occurrenceDateTime = self.occurrenceDateTime {
			json["occurrenceDateTime"] = occurrenceDateTime.asJSON()
		}
		if let occurrencePeriod = self.occurrencePeriod {
			json["occurrencePeriod"] = occurrencePeriod.asJSON()
		}
		if let parent = self.parent {
			json["parent"] = parent.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON()
		}
		if let prediction = self.prediction {
			json["prediction"] = RiskAssessmentPrediction.asJSONArray(prediction)
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON()
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		
		return json
	}
}


/**
 *  Outcome predicted.
 *
 *  Describes the expected outcome for the subject.
 */
public class RiskAssessmentPrediction: BackboneElement {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(outcome: CodeableConcept) {
		self.init(json: nil)
		self.outcome = outcome
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "outcome"))
			}
			if let exist: AnyObject = js["probabilityCodeableConcept"] {
				presentKeys.insert("probabilityCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.probabilityCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "probabilityCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["probabilityDecimal"] {
				presentKeys.insert("probabilityDecimal")
				if let val = exist as? NSNumber {
					self.probabilityDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "probabilityDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["probabilityRange"] {
				presentKeys.insert("probabilityRange")
				if let val = exist as? FHIRJSON {
					self.probabilityRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "probabilityRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rationale"] {
				presentKeys.insert("rationale")
				if let val = exist as? String {
					self.rationale = val
				}
				else {
					errors.append(FHIRJSONError(key: "rationale", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relativeRisk"] {
				presentKeys.insert("relativeRisk")
				if let val = exist as? NSNumber {
					self.relativeRisk = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "relativeRisk", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["whenPeriod"] {
				presentKeys.insert("whenPeriod")
				if let val = exist as? FHIRJSON {
					self.whenPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "whenPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["whenRange"] {
				presentKeys.insert("whenRange")
				if let val = exist as? FHIRJSON {
					self.whenRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "whenRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let probabilityCodeableConcept = self.probabilityCodeableConcept {
			json["probabilityCodeableConcept"] = probabilityCodeableConcept.asJSON()
		}
		if let probabilityDecimal = self.probabilityDecimal {
			json["probabilityDecimal"] = probabilityDecimal.asJSON()
		}
		if let probabilityRange = self.probabilityRange {
			json["probabilityRange"] = probabilityRange.asJSON()
		}
		if let rationale = self.rationale {
			json["rationale"] = rationale.asJSON()
		}
		if let relativeRisk = self.relativeRisk {
			json["relativeRisk"] = relativeRisk.asJSON()
		}
		if let whenPeriod = self.whenPeriod {
			json["whenPeriod"] = whenPeriod.asJSON()
		}
		if let whenRange = self.whenRange {
			json["whenRange"] = whenRange.asJSON()
		}
		
		return json
	}
}

