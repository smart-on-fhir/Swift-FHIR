//
//  ClinicalImpression.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ClinicalImpression) on 2015-12-11.
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
public class ClinicalImpression: DomainResource {
	override public class var resourceName: String {
		get { return "ClinicalImpression" }
	}
	
	/// Actions taken during assessment.
	public var action: [Reference]?
	
	/// The clinician performing the assessment.
	public var assessor: Reference?
	
	/// When the assessment occurred.
	public var date: DateTime?
	
	/// Why/how the assessment was performed.
	public var description_fhir: String?
	
	/// Possible or likely findings and diagnoses.
	public var finding: [ClinicalImpressionFinding]?
	
	/// One or more sets of investigations (signs, symptions, etc.).
	public var investigations: [ClinicalImpressionInvestigations]?
	
	/// The patient being assessed.
	public var patient: Reference?
	
	/// Plan of action after assessment.
	public var plan: [Reference]?
	
	/// Reference to last assessment.
	public var previous: Reference?
	
	/// General assessment of patient state.
	public var problem: [Reference]?
	
	/// Estimate of likely outcome.
	public var prognosis: String?
	
	/// Clinical Protocol followed.
	public var protocol_fhir: NSURL?
	
	/// Diagnoses/conditions resolved since previous assessment.
	public var resolved: [CodeableConcept]?
	
	/// Diagnosis considered not possible.
	public var ruledOut: [ClinicalImpressionRuledOut]?
	
	/// in-progress | completed | entered-in-error.
	public var status: String?
	
	/// Summary of the assessment.
	public var summary: String?
	
	/// Request or event that necessitated this assessment.
	public var triggerCodeableConcept: CodeableConcept?
	
	/// Request or event that necessitated this assessment.
	public var triggerReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, status: String) {
		self.init(json: nil)
		self.patient = patient
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["assessor"] {
				presentKeys.insert("assessor")
				if let val = exist as? FHIRJSON {
					self.assessor = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "assessor", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["finding"] {
				presentKeys.insert("finding")
				if let val = exist as? [FHIRJSON] {
					self.finding = ClinicalImpressionFinding.from(val, owner: self) as? [ClinicalImpressionFinding]
				}
				else {
					errors.append(FHIRJSONError(key: "finding", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["investigations"] {
				presentKeys.insert("investigations")
				if let val = exist as? [FHIRJSON] {
					self.investigations = ClinicalImpressionInvestigations.from(val, owner: self) as? [ClinicalImpressionInvestigations]
				}
				else {
					errors.append(FHIRJSONError(key: "investigations", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist: AnyObject = js["plan"] {
				presentKeys.insert("plan")
				if let val = exist as? [FHIRJSON] {
					self.plan = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "plan", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["previous"] {
				presentKeys.insert("previous")
				if let val = exist as? FHIRJSON {
					self.previous = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "previous", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["problem"] {
				presentKeys.insert("problem")
				if let val = exist as? [FHIRJSON] {
					self.problem = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "problem", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prognosis"] {
				presentKeys.insert("prognosis")
				if let val = exist as? String {
					self.prognosis = val
				}
				else {
					errors.append(FHIRJSONError(key: "prognosis", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["protocol"] {
				presentKeys.insert("protocol")
				if let val = exist as? String {
					self.protocol_fhir = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "protocol", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resolved"] {
				presentKeys.insert("resolved")
				if let val = exist as? [FHIRJSON] {
					self.resolved = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "resolved", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ruledOut"] {
				presentKeys.insert("ruledOut")
				if let val = exist as? [FHIRJSON] {
					self.ruledOut = ClinicalImpressionRuledOut.from(val, owner: self) as? [ClinicalImpressionRuledOut]
				}
				else {
					errors.append(FHIRJSONError(key: "ruledOut", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["summary"] {
				presentKeys.insert("summary")
				if let val = exist as? String {
					self.summary = val
				}
				else {
					errors.append(FHIRJSONError(key: "summary", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["triggerCodeableConcept"] {
				presentKeys.insert("triggerCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.triggerCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "triggerCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["triggerReference"] {
				presentKeys.insert("triggerReference")
				if let val = exist as? FHIRJSON {
					self.triggerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "triggerReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
public class ClinicalImpressionFinding: BackboneElement {
	override public class var resourceName: String {
		get { return "ClinicalImpressionFinding" }
	}
	
	/// Which investigations support finding.
	public var cause: String?
	
	/// Specific text or code for finding.
	public var item: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: CodeableConcept) {
		self.init(json: nil)
		self.item = item
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["cause"] {
				presentKeys.insert("cause")
				if let val = exist as? String {
					self.cause = val
				}
				else {
					errors.append(FHIRJSONError(key: "cause", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? FHIRJSON {
					self.item = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "item"))
			}
		}
		return errors.isEmpty ? nil : errors
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
 *  One or more sets of investigations (signs, symptions, etc.).
 *
 *  One or more sets of investigations (signs, symptions, etc.). The actual grouping of investigations vary greatly
 *  depending on the type and context of the assessment. These investigations may include data generated during the
 *  assessment process, or data previously generated and recorded that is pertinent to the outcomes.
 */
public class ClinicalImpressionInvestigations: BackboneElement {
	override public class var resourceName: String {
		get { return "ClinicalImpressionInvestigations" }
	}
	
	/// A name/code for the set.
	public var code: CodeableConcept?
	
	/// Record of a specific investigation.
	public var item: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
public class ClinicalImpressionRuledOut: BackboneElement {
	override public class var resourceName: String {
		get { return "ClinicalImpressionRuledOut" }
	}
	
	/// Specific text of code for diagnosis.
	public var item: CodeableConcept?
	
	/// Grounds for elimination.
	public var reason: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: CodeableConcept) {
		self.init(json: nil)
		self.item = item
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? FHIRJSON {
					self.item = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "item"))
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? String {
					self.reason = val
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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

