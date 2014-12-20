//
//  ClinicalAssessment.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (clinicalassessment.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A clinical assessment performed when planning treatments and management strategies for a patient.
 *
 *  A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning
 *  the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1
 *  with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow.
 */
public class ClinicalAssessment: FHIRResource
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
	public var date: NSDate?
	
	/// Why/how the assessment was performed
	public var description: String?
	
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
	public var protokol: NSURL?
	
	/// A specific referral that lead to this assessment
	public var referral: Reference?
	
	/// Diagnosies/conditions resolved since previous assessment
	public var resolved: [CodeableConcept]?
	
	/// Diagnosis considered not possible
	public var ruledOut: [ClinicalAssessmentRuledOut]?
	
	/// Summary of the assessment
	public var summary: String?
	
	public convenience init(assessor: Reference?, date: NSDate?, patient: Reference?) {
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? [NSDictionary] {
				self.action = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["assessor"] as? NSDictionary {
				self.assessor = Reference(json: val, owner: self)
			}
			if let val = js["careplan"] as? NSDictionary {
				self.careplan = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["diagnosis"] as? [NSDictionary] {
				self.diagnosis = ClinicalAssessmentDiagnosis.from(val, owner: self) as? [ClinicalAssessmentDiagnosis]
			}
			if let val = js["investigations"] as? [NSDictionary] {
				self.investigations = ClinicalAssessmentInvestigations.from(val, owner: self) as? [ClinicalAssessmentInvestigations]
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["plan"] as? NSDictionary {
				self.plan = Reference(json: val, owner: self)
			}
			if let val = js["previous"] as? NSDictionary {
				self.previous = Reference(json: val, owner: self)
			}
			if let val = js["problem"] as? [NSDictionary] {
				self.problem = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["prognosis"] as? String {
				self.prognosis = val
			}
			if let val = js["protocol"] as? String {
				self.protokol = NSURL(json: val)
			}
			if let val = js["referral"] as? NSDictionary {
				self.referral = Reference(json: val, owner: self)
			}
			if let val = js["resolved"] as? [NSDictionary] {
				self.resolved = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["ruledOut"] as? [NSDictionary] {
				self.ruledOut = ClinicalAssessmentRuledOut.from(val, owner: self) as? [ClinicalAssessmentRuledOut]
			}
			if let val = js["summary"] as? String {
				self.summary = val
			}
		}
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["cause"] as? String {
				self.cause = val
			}
			if let val = js["item"] as? NSDictionary {
				self.item = CodeableConcept(json: val, owner: self)
			}
		}
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["item"] as? [NSDictionary] {
				self.item = Reference.from(val, owner: self) as? [Reference]
			}
		}
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["item"] as? NSDictionary {
				self.item = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reason"] as? String {
				self.reason = val
			}
		}
	}
}

