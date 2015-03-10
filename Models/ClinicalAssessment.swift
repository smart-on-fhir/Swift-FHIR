//
//  ClinicalAssessment.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/ClinicalAssessment) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A clinical assessment performed when planning treatments and management strategies for a patient.
 *
 *  A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning
 *  the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1
 *  with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow.
 */
public class ClinicalAssessment: DomainResource
{
	override public class var resourceName: String {
		get { return "ClinicalAssessment" }
	}
	
	/// Actions taken during assessment
	public var action: [Reference]?
	
	/// The clinicial performing the assessment
	public var assessor: Reference?
	
	/// A specific careplan that prompted this assessment
	public var careplan: Reference?
	
	/// When the assessment occurred
	public var date: DateTime?
	
	/// Why/how the assessment was performed
	public var description_fhir: String?
	
	/// Possible or likely diagnosis
	public var diagnosis: [ClinicalAssessmentDiagnosis]?
	
	/// One or more sets of investigations (signs, symptions, etc)
	public var investigations: [ClinicalAssessmentInvestigations]?
	
	/// The patient being asssesed
	public var patient: Reference?
	
	/// Plan of action after assessment
	public var plan: Reference?
	
	/// Reference to last assessment
	public var previous: Reference?
	
	/// General assessment of patient state
	public var problem: [Reference]?
	
	/// Estimate of likely outcome
	public var prognosis: String?
	
	/// Clinical Protocol followed
	public var protocol_fhir: NSURL?
	
	/// A specific referral that lead to this assessment
	public var referral: Reference?
	
	/// Diagnosies/conditions resolved since previous assessment
	public var resolved: [CodeableConcept]?
	
	/// Diagnosis considered not possible
	public var ruledOut: [ClinicalAssessmentRuledOut]?
	
	/// Summary of the assessment
	public var summary: String?
	
	public convenience init(assessor: Reference?, date: DateTime?, patient: Reference?) {
		self.init(json: nil)
		if nil != assessor {
			self.assessor = assessor
		}
		if nil != date {
			self.date = date
		}
		if nil != patient {
			self.patient = patient
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? [JSONDictionary] {
				self.action = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["assessor"] as? JSONDictionary {
				self.assessor = Reference(json: val, owner: self)
			}
			if let val = js["careplan"] as? JSONDictionary {
				self.careplan = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["diagnosis"] as? [JSONDictionary] {
				self.diagnosis = ClinicalAssessmentDiagnosis.from(val, owner: self) as? [ClinicalAssessmentDiagnosis]
			}
			if let val = js["investigations"] as? [JSONDictionary] {
				self.investigations = ClinicalAssessmentInvestigations.from(val, owner: self) as? [ClinicalAssessmentInvestigations]
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["plan"] as? JSONDictionary {
				self.plan = Reference(json: val, owner: self)
			}
			if let val = js["previous"] as? JSONDictionary {
				self.previous = Reference(json: val, owner: self)
			}
			if let val = js["problem"] as? [JSONDictionary] {
				self.problem = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["prognosis"] as? String {
				self.prognosis = val
			}
			if let val = js["protocol"] as? String {
				self.protocol_fhir = NSURL(string: val)
			}
			if let val = js["referral"] as? JSONDictionary {
				self.referral = Reference(json: val, owner: self)
			}
			if let val = js["resolved"] as? [JSONDictionary] {
				self.resolved = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["ruledOut"] as? [JSONDictionary] {
				self.ruledOut = ClinicalAssessmentRuledOut.from(val, owner: self) as? [ClinicalAssessmentRuledOut]
			}
			if let val = js["summary"] as? String {
				self.summary = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = Reference.asJSONArray(action)
		}
		if let assessor = self.assessor {
			json["assessor"] = assessor.asJSON()
		}
		if let careplan = self.careplan {
			json["careplan"] = careplan.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let diagnosis = self.diagnosis {
			json["diagnosis"] = ClinicalAssessmentDiagnosis.asJSONArray(diagnosis)
		}
		if let investigations = self.investigations {
			json["investigations"] = ClinicalAssessmentInvestigations.asJSONArray(investigations)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let plan = self.plan {
			json["plan"] = plan.asJSON()
		}
		if let previous = self.previous {
			json["previous"] = previous.asJSON()
		}
		if let problem = self.problem {
			json["problem"] = Reference.asJSONArray(problem)
		}
		if let prognosis = self.prognosis {
			json["prognosis"] = prognosis.asJSON()
		}
		if let protocol_fhir = self.protocol_fhir {
			json["protocol"] = protocol_fhir.asJSON()
		}
		if let referral = self.referral {
			json["referral"] = referral.asJSON()
		}
		if let resolved = self.resolved {
			json["resolved"] = CodeableConcept.asJSONArray(resolved)
		}
		if let ruledOut = self.ruledOut {
			json["ruledOut"] = ClinicalAssessmentRuledOut.asJSONArray(ruledOut)
		}
		if let summary = self.summary {
			json["summary"] = summary.asJSON()
		}
		
		return json
	}
}


/**
 *  Possible or likely diagnosis.
 *
 *  An specific diagnosis that was considered likely or relevant to ongoing treatment.
 */
public class ClinicalAssessmentDiagnosis: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClinicalAssessmentDiagnosis" }
	}
	
	/// Which investigations support diagnosis
	public var cause: String?
	
	/// Specific text or code for diagnosis
	public var item: CodeableConcept?
	
	public convenience init(item: CodeableConcept?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["cause"] as? String {
				self.cause = val
			}
			if let val = js["item"] as? JSONDictionary {
				self.item = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let cause = self.cause {
			json["cause"] = cause.asJSON()
		}
		if let item = self.item {
			json["item"] = item.asJSON()
		}
		
		return json
	}
}


/**
 *  One or more sets of investigations (signs, symptions, etc).
 *
 *  One or more sets of investigations (signs, symptions, etc). The actual grouping of investigations vary greatly
 *  depending on the type and context of the assessment. These investigations may include data generated during the
 *  assessment process, or data previously generated and recorded that is pertinent to the outcomes.
 */
public class ClinicalAssessmentInvestigations: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClinicalAssessmentInvestigations" }
	}
	
	/// A name/code for the set
	public var code: CodeableConcept?
	
	/// Record of a specific investigation
	public var item: [Reference]?
	
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["item"] as? [JSONDictionary] {
				self.item = Reference.from(val, owner: self) as? [Reference]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let item = self.item {
			json["item"] = Reference.asJSONArray(item)
		}
		
		return json
	}
}


/**
 *  Diagnosis considered not possible.
 */
public class ClinicalAssessmentRuledOut: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClinicalAssessmentRuledOut" }
	}
	
	/// Specific text of code for diagnosis
	public var item: CodeableConcept?
	
	/// Grounds for elimination
	public var reason: String?
	
	public convenience init(item: CodeableConcept?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["item"] as? JSONDictionary {
				self.item = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reason"] as? String {
				self.reason = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let item = self.item {
			json["item"] = item.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		
		return json
	}
}

