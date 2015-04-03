//
//  ClinicalImpression.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ClinicalImpression) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A clinical assessment performed when planning treatments and management strategies for a patient.
 *
 *  A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning
 *  the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1
 *  with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource
 *  is called "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the recording of assessment
 *  tools such as Apgar score.
 */
public class ClinicalImpression: DomainResource
{
	override public class var resourceName: String {
		get { return "ClinicalImpression" }
	}
	
	/// Actions taken during assessment
	public var action: [Reference]?
	
	/// The clinician performing the assessment
	public var assessor: Reference?
	
	/// When the assessment occurred
	public var date: DateTime?
	
	/// Why/how the assessment was performed
	public var description_fhir: String?
	
	/// Possible or likely findings and diagnoses
	public var finding: [ClinicalImpressionFinding]?
	
	/// One or more sets of investigations (signs, symptions, etc)
	public var investigations: [ClinicalImpressionInvestigations]?
	
	/// The patient being asssesed
	public var patient: Reference?
	
	/// Plan of action after assessment
	public var plan: [Reference]?
	
	/// Reference to last assessment
	public var previous: Reference?
	
	/// General assessment of patient state
	public var problem: [Reference]?
	
	/// Estimate of likely outcome
	public var prognosis: String?
	
	/// Clinical Protocol followed
	public var protocol_fhir: NSURL?
	
	/// Diagnosies/conditions resolved since previous assessment
	public var resolved: [CodeableConcept]?
	
	/// Diagnosis considered not possible
	public var ruledOut: [ClinicalImpressionRuledOut]?
	
	/// in-progress | completed | entered-in-error
	public var status: String?
	
	/// Summary of the assessment
	public var summary: String?
	
	/// Request or event that necessitated this assessment
	public var triggerCodeableConcept: CodeableConcept?
	
	/// Request or event that necessitated this assessment
	public var triggerReference: Reference?
	
	public convenience init(patient: Reference?, status: String?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? [FHIRJSON] {
				self.action = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["assessor"] as? FHIRJSON {
				self.assessor = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["finding"] as? [FHIRJSON] {
				self.finding = ClinicalImpressionFinding.from(val, owner: self) as? [ClinicalImpressionFinding]
			}
			if let val = js["investigations"] as? [FHIRJSON] {
				self.investigations = ClinicalImpressionInvestigations.from(val, owner: self) as? [ClinicalImpressionInvestigations]
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["plan"] as? [FHIRJSON] {
				self.plan = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["previous"] as? FHIRJSON {
				self.previous = Reference(json: val, owner: self)
			}
			if let val = js["problem"] as? [FHIRJSON] {
				self.problem = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["prognosis"] as? String {
				self.prognosis = val
			}
			if let val = js["protocol"] as? String {
				self.protocol_fhir = NSURL(string: val)
			}
			if let val = js["resolved"] as? [FHIRJSON] {
				self.resolved = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["ruledOut"] as? [FHIRJSON] {
				self.ruledOut = ClinicalImpressionRuledOut.from(val, owner: self) as? [ClinicalImpressionRuledOut]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["summary"] as? String {
				self.summary = val
			}
			if let val = js["triggerCodeableConcept"] as? FHIRJSON {
				self.triggerCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["triggerReference"] as? FHIRJSON {
				self.triggerReference = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = Reference.asJSONArray(action)
		}
		if let assessor = self.assessor {
			json["assessor"] = assessor.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let finding = self.finding {
			json["finding"] = ClinicalImpressionFinding.asJSONArray(finding)
		}
		if let investigations = self.investigations {
			json["investigations"] = ClinicalImpressionInvestigations.asJSONArray(investigations)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let plan = self.plan {
			json["plan"] = Reference.asJSONArray(plan)
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
		if let resolved = self.resolved {
			json["resolved"] = CodeableConcept.asJSONArray(resolved)
		}
		if let ruledOut = self.ruledOut {
			json["ruledOut"] = ClinicalImpressionRuledOut.asJSONArray(ruledOut)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let summary = self.summary {
			json["summary"] = summary.asJSON()
		}
		if let triggerCodeableConcept = self.triggerCodeableConcept {
			json["triggerCodeableConcept"] = triggerCodeableConcept.asJSON()
		}
		if let triggerReference = self.triggerReference {
			json["triggerReference"] = triggerReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Possible or likely findings and diagnoses.
 *
 *  Specific findings or diagnoses that was considered likely or relevant to ongoing treatment.
 */
public class ClinicalImpressionFinding: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClinicalImpressionFinding" }
	}
	
	/// Which investigations support finding
	public var cause: String?
	
	/// Specific text or code for finding
	public var item: CodeableConcept?
	
	public convenience init(item: CodeableConcept?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["cause"] as? String {
				self.cause = val
			}
			if let val = js["item"] as? FHIRJSON {
				self.item = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class ClinicalImpressionInvestigations: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClinicalImpressionInvestigations" }
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["item"] as? [FHIRJSON] {
				self.item = Reference.from(val, owner: self) as? [Reference]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class ClinicalImpressionRuledOut: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClinicalImpressionRuledOut" }
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["item"] as? FHIRJSON {
				self.item = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reason"] as? String {
				self.reason = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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

