//
//  RiskAssessment.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/RiskAssessment) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["basis"] {
				presentKeys.addObject("basis")
				if let val = exist as? [FHIRJSON] {
					self.basis = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"basis\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["condition"] {
				presentKeys.addObject("condition")
				if let val = exist as? FHIRJSON {
					self.condition = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"condition\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.addObject("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"method\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["mitigation"] {
				presentKeys.addObject("mitigation")
				if let val = exist as? String {
					self.mitigation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mitigation\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["performer"] {
				presentKeys.addObject("performer")
				if let val = exist as? FHIRJSON {
					self.performer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"performer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["prediction"] {
				presentKeys.addObject("prediction")
				if let val = exist as? [FHIRJSON] {
					self.prediction = RiskAssessmentPrediction.from(val, owner: self) as? [RiskAssessmentPrediction]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"prediction\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(outcome: CodeableConcept?) {
		self.init(json: nil)
		if nil != outcome {
			self.outcome = outcome
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["outcome"] {
				presentKeys.addObject("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"outcome\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"outcome\" but it is missing"))
			}
			if let exist: AnyObject = js["probabilityCodeableConcept"] {
				presentKeys.addObject("probabilityCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.probabilityCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"probabilityCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["probabilityDecimal"] {
				presentKeys.addObject("probabilityDecimal")
				if let val = exist as? NSNumber {
					self.probabilityDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"probabilityDecimal\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["probabilityRange"] {
				presentKeys.addObject("probabilityRange")
				if let val = exist as? FHIRJSON {
					self.probabilityRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"probabilityRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["rationale"] {
				presentKeys.addObject("rationale")
				if let val = exist as? String {
					self.rationale = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"rationale\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["relativeRisk"] {
				presentKeys.addObject("relativeRisk")
				if let val = exist as? NSNumber {
					self.relativeRisk = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"relativeRisk\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["whenPeriod"] {
				presentKeys.addObject("whenPeriod")
				if let val = exist as? FHIRJSON {
					self.whenPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"whenPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["whenRange"] {
				presentKeys.addObject("whenRange")
				if let val = exist as? FHIRJSON {
					self.whenRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"whenRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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

