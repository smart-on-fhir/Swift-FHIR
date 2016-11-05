//
//  ClinicalImpression.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/ClinicalImpression) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A clinical assessment performed when planning treatments and management strategies for a patient.

A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the
treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a
clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource is called
"ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the recording of assessment tools such as
Apgar score.
*/
open class ClinicalImpression: DomainResource {
	override open class var resourceType: String {
		get { return "ClinicalImpression" }
	}
	
	/// Actions taken during assessment.
	public var action: [Reference]?
	
	/// The clinician performing the assessment.
	public var assessor: Reference?
	
	/// Kind of assessment performed.
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
	public var investigation: [ClinicalImpressionInvestigation]?
	
	/// Comments made about the ClinicalImpression.
	public var note: [Annotation]?
	
	/// Reference to last assessment.
	public var previous: Reference?
	
	/// Relevant impressions of patient state.
	public var problem: [Reference]?
	
	/// Estimate of likely outcome.
	public var prognosisCodeableConcept: [CodeableConcept]?
	
	/// RiskAssessment expressing likely outcome.
	public var prognosisReference: [Reference]?
	
	/// Clinical Protocol followed.
	public var protocol_fhir: [URL]?
	
	/// Identifies the workflow status of the assessment.
	public var status: ClinicalImpressionStatus?
	
	/// Patient or group assessed.
	public var subject: Reference?
	
	/// Summary of the assessment.
	public var summary: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: ClinicalImpressionStatus, subject: Reference) {
		self.init()
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["assessor"] {
			presentKeys.insert("assessor")
			if let val = exist as? FHIRJSON {
				do {
					self.assessor = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "assessor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "assessor", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["effectiveDateTime"] {
			presentKeys.insert("effectiveDateTime")
			if let val = exist as? String {
				self.effectiveDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "effectiveDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["effectivePeriod"] {
			presentKeys.insert("effectivePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.effectivePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "effectivePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "effectivePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["finding"] {
			presentKeys.insert("finding")
			if let val = exist as? [FHIRJSON] {
				do {
					self.finding = try ClinicalImpressionFinding.instantiate(fromArray: val, owner: self) as? [ClinicalImpressionFinding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "finding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "finding", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["investigation"] {
			presentKeys.insert("investigation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.investigation = try ClinicalImpressionInvestigation.instantiate(fromArray: val, owner: self) as? [ClinicalImpressionInvestigation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "investigation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "investigation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["previous"] {
			presentKeys.insert("previous")
			if let val = exist as? FHIRJSON {
				do {
					self.previous = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "previous"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "previous", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["problem"] {
			presentKeys.insert("problem")
			if let val = exist as? [FHIRJSON] {
				do {
					self.problem = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "problem"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "problem", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["prognosisCodeableConcept"] {
			presentKeys.insert("prognosisCodeableConcept")
			if let val = exist as? [FHIRJSON] {
				do {
					self.prognosisCodeableConcept = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "prognosisCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "prognosisCodeableConcept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["prognosisReference"] {
			presentKeys.insert("prognosisReference")
			if let val = exist as? [FHIRJSON] {
				do {
					self.prognosisReference = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "prognosisReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "prognosisReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["protocol"] {
			presentKeys.insert("protocol")
			if let val = exist as? [String] {
				self.protocol_fhir = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "protocol", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = ClinicalImpressionStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
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
		else {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		if let exist = json["summary"] {
			presentKeys.insert("summary")
			if let val = exist as? String {
				self.summary = val
			}
			else {
				errors.append(FHIRValidationError(key: "summary", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		if let assessor = self.assessor {
			json["assessor"] = assessor.asJSON(errors: &errors)
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
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
			json["effectivePeriod"] = effectivePeriod.asJSON(errors: &errors)
		}
		if let finding = self.finding {
			json["finding"] = finding.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let investigation = self.investigation {
			json["investigation"] = investigation.map() { $0.asJSON(errors: &errors) }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let previous = self.previous {
			json["previous"] = previous.asJSON(errors: &errors)
		}
		if let problem = self.problem {
			json["problem"] = problem.map() { $0.asJSON(errors: &errors) }
		}
		if let prognosisCodeableConcept = self.prognosisCodeableConcept {
			json["prognosisCodeableConcept"] = prognosisCodeableConcept.map() { $0.asJSON(errors: &errors) }
		}
		if let prognosisReference = self.prognosisReference {
			json["prognosisReference"] = prognosisReference.map() { $0.asJSON(errors: &errors) }
		}
		if let protocol_fhir = self.protocol_fhir {
			json["protocol"] = protocol_fhir.map() { $0.asJSON() }
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let summary = self.summary {
			json["summary"] = summary.asJSON()
		}
		
		return json
	}
}


/**
Possible or likely findings and diagnoses.

Specific findings or diagnoses that was considered likely or relevant to ongoing treatment.
*/
open class ClinicalImpressionFinding: BackboneElement {
	override open class var resourceType: String {
		get { return "ClinicalImpressionFinding" }
	}
	
	/// Which investigations support finding.
	public var basis: String?
	
	/// What was found.
	public var itemCodeableConcept: CodeableConcept?
	
	/// What was found.
	public var itemReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Any) {
		self.init()
		if let value = item as? CodeableConcept {
			self.itemCodeableConcept = value
		}
		else if let value = item as? Reference {
			self.itemReference = value
		}
		else {
			fhir_warn("Type “\(type(of: item))” for property “\(item)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["basis"] {
			presentKeys.insert("basis")
			if let val = exist as? String {
				self.basis = val
			}
			else {
				errors.append(FHIRValidationError(key: "basis", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["itemCodeableConcept"] {
			presentKeys.insert("itemCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.itemCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "itemCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "itemCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["itemReference"] {
			presentKeys.insert("itemReference")
			if let val = exist as? FHIRJSON {
				do {
					self.itemReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "itemReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "itemReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let basis = self.basis {
			json["basis"] = basis.asJSON()
		}
		if let itemCodeableConcept = self.itemCodeableConcept {
			json["itemCodeableConcept"] = itemCodeableConcept.asJSON(errors: &errors)
		}
		if let itemReference = self.itemReference {
			json["itemReference"] = itemReference.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
One or more sets of investigations (signs, symptions, etc.).

One or more sets of investigations (signs, symptions, etc.). The actual grouping of investigations vary greatly
depending on the type and context of the assessment. These investigations may include data generated during the
assessment process, or data previously generated and recorded that is pertinent to the outcomes.
*/
open class ClinicalImpressionInvestigation: BackboneElement {
	override open class var resourceType: String {
		get { return "ClinicalImpressionInvestigation" }
	}
	
	/// A name/code for the set.
	public var code: CodeableConcept?
	
	/// Record of a specific investigation.
	public var item: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
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
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["item"] {
			presentKeys.insert("item")
			if let val = exist as? [FHIRJSON] {
				do {
					self.item = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "item"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}

