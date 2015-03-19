//
//  RiskAssessment.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/RiskAssessment) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Potential outcomes for a subject with likelihood.
 *
 *  An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
 */
public class RiskAssessment: DomainResource
{
	override public class var resourceName: String {
		get { return "RiskAssessment" }
	}
	
	/// Information used in assessment
	public var basis: [Reference]?
	
	/// Condition assessed
	public var condition: Reference?
	
	/// When was assessment made?
	public var date: DateTime?
	
	/// Unique identifier for the assessment
	public var identifier: Identifier?
	
	/// Evaluation mechanism
	public var method: CodeableConcept?
	
	/// How to reduce risk
	public var mitigation: String?
	
	/// Who did assessment?
	public var performer: Reference?
	
	/// Outcome predicted
	public var prediction: [RiskAssessmentPrediction]?
	
	/// Who/what does assessment apply to?
	public var subject: Reference?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["basis"] as? [JSONDictionary] {
				self.basis = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["condition"] as? JSONDictionary {
				self.condition = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["method"] as? JSONDictionary {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["mitigation"] as? String {
				self.mitigation = val
			}
			if let val = js["performer"] as? JSONDictionary {
				self.performer = Reference(json: val, owner: self)
			}
			if let val = js["prediction"] as? [JSONDictionary] {
				self.prediction = RiskAssessmentPrediction.from(val, owner: self) as? [RiskAssessmentPrediction]
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let basis = self.basis {
			json["basis"] = Reference.asJSONArray(basis)
		}
		if let condition = self.condition {
			json["condition"] = condition.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
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
			json["prediction"] = RiskAssessmentPrediction.asJSONArray(prediction)
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
public class RiskAssessmentPrediction: FHIRElement
{
	override public class var resourceName: String {
		get { return "RiskAssessmentPrediction" }
	}
	
	/// Possible outcome for the subject
	public var outcome: CodeableConcept?
	
	/// Likelihood of specified outcome
	public var probabilityCodeableConcept: CodeableConcept?
	
	/// Likelihood of specified outcome
	public var probabilityDecimal: NSDecimalNumber?
	
	/// Likelihood of specified outcome
	public var probabilityRange: Range?
	
	/// Explanation of prediction
	public var rationale: String?
	
	/// Relative likelihood
	public var relativeRisk: NSDecimalNumber?
	
	/// Timeframe or age range
	public var whenPeriod: Period?
	
	/// Timeframe or age range
	public var whenRange: Range?
	
	public convenience init(outcome: CodeableConcept?) {
		self.init(json: nil)
		if nil != outcome {
			self.outcome = outcome
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["outcome"] as? JSONDictionary {
				self.outcome = CodeableConcept(json: val, owner: self)
			}
			if let val = js["probabilityCodeableConcept"] as? JSONDictionary {
				self.probabilityCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["probabilityDecimal"] as? NSNumber {
				self.probabilityDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["probabilityRange"] as? JSONDictionary {
				self.probabilityRange = Range(json: val, owner: self)
			}
			if let val = js["rationale"] as? String {
				self.rationale = val
			}
			if let val = js["relativeRisk"] as? NSNumber {
				self.relativeRisk = NSDecimalNumber(json: val)
			}
			if let val = js["whenPeriod"] as? JSONDictionary {
				self.whenPeriod = Period(json: val, owner: self)
			}
			if let val = js["whenRange"] as? JSONDictionary {
				self.whenRange = Range(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

