//
//  ClinicalImpression.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ClinicalImpression) on 2016-08-12.
//  2016, SMART Health IT.
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
	
	/// Kind of impression performed.
	public var code: CodeableConcept?
	
	/// Encounter or Episode created from.
	public var context: Reference?
	
	/// When the assessment was documented.
	public var date: DateTime?
	
	/// Why/how the assessment was performed.
	public var description_fhir: String?
	
	/// Time of assessment.
	public var effectiveDateTime: DateTime?
	
	/// Time of assessment.
	public var effectivePeriod: Period?
	
	/// Possible or likely findings and diagnoses.
	public var finding: [ClinicalImpressionFinding]?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// One or more sets of investigations (signs, symptions, etc.).
	public var investigations: [ClinicalImpressionInvestigations]?
	
	/// Comments made about the ClinicalImpression.
	public var note: [Annotation]?
	
	/// Plan of action after assessment.
	public var plan: [Reference]?
	
	/// Reference to last assessment.
	public var previous: Reference?
	
	/// Relevant impressions of patient state.
	public var problem: [Reference]?
	
	/// Estimate of likely outcome.
	public var prognosisCodeableConcept: [CodeableConcept]?
	
	/// RiskAssessment expressing likely outcome.
	public var prognosisReference: [Reference]?
	
	/// Clinical Protocol followed.
	public var protocol_fhir: [NSURL]?
	
	/// draft | completed | entered-in-error.
	public var status: String?
	
	/// Patient or group assessed.
	public var subject: Reference?
	
	/// Summary of the assessment.
	public var summary: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String, subject: Reference) {
		self.init(json: nil)
		self.status = status
		self.subject = subject
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
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["effectiveDateTime"] {
				presentKeys.insert("effectiveDateTime")
				if let val = exist as? String {
					self.effectiveDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "effectiveDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["effectivePeriod"] {
				presentKeys.insert("effectivePeriod")
				if let val = exist as? FHIRJSON {
					self.effectivePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "effectivePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["prognosisCodeableConcept"] {
				presentKeys.insert("prognosisCodeableConcept")
				if let val = exist as? [FHIRJSON] {
					self.prognosisCodeableConcept = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "prognosisCodeableConcept", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prognosisReference"] {
				presentKeys.insert("prognosisReference")
				if let val = exist as? [FHIRJSON] {
					self.prognosisReference = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "prognosisReference", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["protocol"] {
				presentKeys.insert("protocol")
				if let val = exist as? [String] {
					self.protocol_fhir = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "protocol", wants: Array<String>.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "subject"))
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
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let effectiveDateTime = self.effectiveDateTime {
			json["effectiveDateTime"] = effectiveDateTime.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON()
		}
		if let finding = self.finding {
			json["finding"] = ClinicalImpressionFinding.asJSONArray(finding)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let investigations = self.investigations {
			json["investigations"] = ClinicalImpressionInvestigations.asJSONArray(investigations)
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
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
		if let prognosisCodeableConcept = self.prognosisCodeableConcept {
			json["prognosisCodeableConcept"] = CodeableConcept.asJSONArray(prognosisCodeableConcept)
		}
		if let prognosisReference = self.prognosisReference {
			json["prognosisReference"] = Reference.asJSONArray(prognosisReference)
		}
		if let protocol_fhir = self.protocol_fhir {
			var arr = [AnyObject]()
			for val in protocol_fhir {
				arr.append(val.asJSON())
			}
			json["protocol"] = arr
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let summary = self.summary {
			json["summary"] = summary.asJSON()
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
	
	/// What was found.
	public var itemCodeableConcept: CodeableConcept?
	
	/// What was found.
	public var itemReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(itemCodeableConcept: CodeableConcept, itemReference: Reference) {
		self.init(json: nil)
		self.itemCodeableConcept = itemCodeableConcept
		self.itemReference = itemReference
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
			if let exist: AnyObject = js["itemCodeableConcept"] {
				presentKeys.insert("itemCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.itemCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "itemCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["itemReference"] {
				presentKeys.insert("itemReference")
				if let val = exist as? FHIRJSON {
					self.itemReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "itemReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.itemCodeableConcept && nil == self.itemReference {
				errors.append(FHIRJSONError(key: "item*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let cause = self.cause {
			json["cause"] = cause.asJSON()
		}
		if let itemCodeableConcept = self.itemCodeableConcept {
			json["itemCodeableConcept"] = itemCodeableConcept.asJSON()
		}
		if let itemReference = self.itemReference {
			json["itemReference"] = itemReference.asJSON()
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

