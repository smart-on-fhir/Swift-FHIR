//
//  RiskAssessment.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/RiskAssessment) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Potential outcomes for a subject with likelihood.
 *
 *  An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
 */
public class RiskAssessment: DomainResource {
	override public class var resourceType: String {
		get { return "RiskAssessment" }
	}
	
	/// Information used in assessment.
	public var basis: [Reference]?
	
	/// Condition assessed.
	public var condition: Reference?
	
	/// When was assessment made?.
	public var date: DateTime?
	
	/// Where was assessment performed?.
	public var encounter: Reference?
	
	/// Unique identifier for the assessment.
	public var identifier: Identifier?
	
	/// Evaluation mechanism.
	public var method: CodeableConcept?
	
	/// How to reduce risk.
	public var mitigation: String?
	
	/// Who did assessment?.
	public var performer: Reference?
	
	/// Outcome predicted.
	public var prediction: [RiskAssessmentPrediction]?
	
	/// Who/what does assessment apply to?.
	public var subject: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["basis"] {
				presentKeys.insert("basis")
				if let val = exist as? [FHIRJSON] {
					self.basis = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? FHIRJSON {
					self.condition = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["mitigation"] {
				presentKeys.insert("mitigation")
				if let val = exist as? String {
					self.mitigation = val
				}
				else {
					errors.append(FHIRJSONError(key: "mitigation", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? FHIRJSON {
					self.performer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["prediction"] {
				presentKeys.insert("prediction")
				if let val = exist as? [FHIRJSON] {
					self.prediction = RiskAssessmentPrediction.instantiate(fromArray: val, owner: self) as? [RiskAssessmentPrediction]
				}
				else {
					errors.append(FHIRJSONError(key: "prediction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let basis = self.basis {
			json["basis"] = basis.map() { $0.asJSON() }
		}
		if let condition = self.condition {
			json["condition"] = condition.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
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
		if let performer = self.performer {
			json["performer"] = performer.asJSON()
		}
		if let prediction = self.prediction {
			json["prediction"] = prediction.map() { $0.asJSON() }
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
	override public class var resourceType: String {
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
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "outcome"))
			}
			if let exist = js["probabilityCodeableConcept"] {
				presentKeys.insert("probabilityCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.probabilityCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "probabilityCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["probabilityDecimal"] {
				presentKeys.insert("probabilityDecimal")
				if let val = exist as? NSNumber {
					self.probabilityDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "probabilityDecimal", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["probabilityRange"] {
				presentKeys.insert("probabilityRange")
				if let val = exist as? FHIRJSON {
					self.probabilityRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "probabilityRange", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["rationale"] {
				presentKeys.insert("rationale")
				if let val = exist as? String {
					self.rationale = val
				}
				else {
					errors.append(FHIRJSONError(key: "rationale", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["relativeRisk"] {
				presentKeys.insert("relativeRisk")
				if let val = exist as? NSNumber {
					self.relativeRisk = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "relativeRisk", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["whenPeriod"] {
				presentKeys.insert("whenPeriod")
				if let val = exist as? FHIRJSON {
					self.whenPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "whenPeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["whenRange"] {
				presentKeys.insert("whenRange")
				if let val = exist as? FHIRJSON {
					self.whenRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "whenRange", wants: FHIRJSON.self, has: type(of: exist)))
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

