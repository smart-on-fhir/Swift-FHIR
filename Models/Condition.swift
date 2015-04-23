//
//  Condition.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Condition) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Detailed information about conditions, problems or diagnoses.
 *
 *  Use to record detailed information about conditions, problems or diagnoses recognized by a clinician. There are many
 *  uses including: recording a Diagnosis during an Encounter; populating a problem List or a Summary Statement, such as
 *  a Discharge Summary.
 */
public class Condition: DomainResource
{
	override public class var resourceName: String {
		get { return "Condition" }
	}
	
	/// If/when in resolution/remission
	public var abatementAge: Age?
	
	/// If/when in resolution/remission
	public var abatementBoolean: Bool?
	
	/// If/when in resolution/remission
	public var abatementDate: Date?
	
	/// If/when in resolution/remission
	public var abatementPeriod: Period?
	
	/// If/when in resolution/remission
	public var abatementRange: Range?
	
	/// If/when in resolution/remission
	public var abatementString: String?
	
	/// Person who asserts this condition
	public var asserter: Reference?
	
	/// E.g. complaint | symptom | finding | diagnosis
	public var category: CodeableConcept?
	
	/// provisional | working | confirmed | refuted | entered-in-error | unknown
	public var clinicalStatus: String?
	
	/// Identification of the condition, problem or diagnosis
	public var code: CodeableConcept?
	
	/// When first detected/suspected/entered
	public var dateAsserted: Date?
	
	/// Causes for this Condition
	public var dueTo: [ConditionDueTo]?
	
	/// Encounter when condition first asserted
	public var encounter: Reference?
	
	/// Supporting evidence
	public var evidence: [ConditionEvidence]?
	
	/// External Ids for this condition
	public var identifier: [Identifier]?
	
	/// Anatomical location, if relevant
	public var location: [ConditionLocation]?
	
	/// Additional information about the Condition
	public var notes: String?
	
	/// Precedent for this Condition
	public var occurredFollowing: [ConditionOccurredFollowing]?
	
	/// Estimated or actual date,  date-time, or age
	public var onsetAge: Age?
	
	/// Estimated or actual date,  date-time, or age
	public var onsetDateTime: DateTime?
	
	/// Estimated or actual date,  date-time, or age
	public var onsetPeriod: Period?
	
	/// Estimated or actual date,  date-time, or age
	public var onsetRange: Range?
	
	/// Estimated or actual date,  date-time, or age
	public var onsetString: String?
	
	/// Who has the condition?
	public var patient: Reference?
	
	/// Subjective severity of condition
	public var severity: CodeableConcept?
	
	/// Stage/grade, usually assessed formally
	public var stage: ConditionStage?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(clinicalStatus: String?, code: CodeableConcept?, patient: Reference?) {
		self.init(json: nil)
		if nil != clinicalStatus {
			self.clinicalStatus = clinicalStatus
		}
		if nil != code {
			self.code = code
		}
		if nil != patient {
			self.patient = patient
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["abatementAge"] {
				presentKeys.addObject("abatementAge")
				if let val = exist as? FHIRJSON {
					self.abatementAge = Age(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"abatementAge\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["abatementBoolean"] {
				presentKeys.addObject("abatementBoolean")
				if let val = exist as? Bool {
					self.abatementBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"abatementBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["abatementDate"] {
				presentKeys.addObject("abatementDate")
				if let val = exist as? String {
					self.abatementDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"abatementDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["abatementPeriod"] {
				presentKeys.addObject("abatementPeriod")
				if let val = exist as? FHIRJSON {
					self.abatementPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"abatementPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["abatementRange"] {
				presentKeys.addObject("abatementRange")
				if let val = exist as? FHIRJSON {
					self.abatementRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"abatementRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["abatementString"] {
				presentKeys.addObject("abatementString")
				if let val = exist as? String {
					self.abatementString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"abatementString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["asserter"] {
				presentKeys.addObject("asserter")
				if let val = exist as? FHIRJSON {
					self.asserter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"asserter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.addObject("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"category\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["clinicalStatus"] {
				presentKeys.addObject("clinicalStatus")
				if let val = exist as? String {
					self.clinicalStatus = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"clinicalStatus\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"clinicalStatus\" but it is missing"))
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["dateAsserted"] {
				presentKeys.addObject("dateAsserted")
				if let val = exist as? String {
					self.dateAsserted = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dateAsserted\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["dueTo"] {
				presentKeys.addObject("dueTo")
				if let val = exist as? [FHIRJSON] {
					self.dueTo = ConditionDueTo.from(val, owner: self) as? [ConditionDueTo]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dueTo\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.addObject("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"encounter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["evidence"] {
				presentKeys.addObject("evidence")
				if let val = exist as? [FHIRJSON] {
					self.evidence = ConditionEvidence.from(val, owner: self) as? [ConditionEvidence]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"evidence\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.addObject("location")
				if let val = exist as? [FHIRJSON] {
					self.location = ConditionLocation.from(val, owner: self) as? [ConditionLocation]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"location\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.addObject("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"notes\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["occurredFollowing"] {
				presentKeys.addObject("occurredFollowing")
				if let val = exist as? [FHIRJSON] {
					self.occurredFollowing = ConditionOccurredFollowing.from(val, owner: self) as? [ConditionOccurredFollowing]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"occurredFollowing\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["onsetAge"] {
				presentKeys.addObject("onsetAge")
				if let val = exist as? FHIRJSON {
					self.onsetAge = Age(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"onsetAge\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["onsetDateTime"] {
				presentKeys.addObject("onsetDateTime")
				if let val = exist as? String {
					self.onsetDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"onsetDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["onsetPeriod"] {
				presentKeys.addObject("onsetPeriod")
				if let val = exist as? FHIRJSON {
					self.onsetPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"onsetPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["onsetRange"] {
				presentKeys.addObject("onsetRange")
				if let val = exist as? FHIRJSON {
					self.onsetRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"onsetRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["onsetString"] {
				presentKeys.addObject("onsetString")
				if let val = exist as? String {
					self.onsetString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"onsetString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"patient\" but it is missing"))
			}
			if let exist: AnyObject = js["severity"] {
				presentKeys.addObject("severity")
				if let val = exist as? FHIRJSON {
					self.severity = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"severity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["stage"] {
				presentKeys.addObject("stage")
				if let val = exist as? FHIRJSON {
					self.stage = ConditionStage(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"stage\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let abatementAge = self.abatementAge {
			json["abatementAge"] = abatementAge.asJSON()
		}
		if let abatementBoolean = self.abatementBoolean {
			json["abatementBoolean"] = abatementBoolean.asJSON()
		}
		if let abatementDate = self.abatementDate {
			json["abatementDate"] = abatementDate.asJSON()
		}
		if let abatementPeriod = self.abatementPeriod {
			json["abatementPeriod"] = abatementPeriod.asJSON()
		}
		if let abatementRange = self.abatementRange {
			json["abatementRange"] = abatementRange.asJSON()
		}
		if let abatementString = self.abatementString {
			json["abatementString"] = abatementString.asJSON()
		}
		if let asserter = self.asserter {
			json["asserter"] = asserter.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let clinicalStatus = self.clinicalStatus {
			json["clinicalStatus"] = clinicalStatus.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let dateAsserted = self.dateAsserted {
			json["dateAsserted"] = dateAsserted.asJSON()
		}
		if let dueTo = self.dueTo {
			json["dueTo"] = ConditionDueTo.asJSONArray(dueTo)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let evidence = self.evidence {
			json["evidence"] = ConditionEvidence.asJSONArray(evidence)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let location = self.location {
			json["location"] = ConditionLocation.asJSONArray(location)
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let occurredFollowing = self.occurredFollowing {
			json["occurredFollowing"] = ConditionOccurredFollowing.asJSONArray(occurredFollowing)
		}
		if let onsetAge = self.onsetAge {
			json["onsetAge"] = onsetAge.asJSON()
		}
		if let onsetDateTime = self.onsetDateTime {
			json["onsetDateTime"] = onsetDateTime.asJSON()
		}
		if let onsetPeriod = self.onsetPeriod {
			json["onsetPeriod"] = onsetPeriod.asJSON()
		}
		if let onsetRange = self.onsetRange {
			json["onsetRange"] = onsetRange.asJSON()
		}
		if let onsetString = self.onsetString {
			json["onsetString"] = onsetString.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let severity = self.severity {
			json["severity"] = severity.asJSON()
		}
		if let stage = self.stage {
			json["stage"] = stage.asJSON()
		}
		
		return json
	}
}


/**
 *  Causes for this Condition.
 *
 *  Further conditions, problems, diagnoses, procedures or events or the substance that caused/triggered this Condition.
 */
public class ConditionDueTo: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConditionDueTo" }
	}
	
	/// Relationship target by means of a predefined code
	public var code: CodeableConcept?
	
	/// Relationship target resource
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}


/**
 *  Supporting evidence.
 *
 *  Supporting Evidence / manifestations that are the basis on which this condition is suspected or confirmed.
 */
public class ConditionEvidence: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConditionEvidence" }
	}
	
	/// Manifestation/symptom
	public var code: CodeableConcept?
	
	/// Supporting information found elsewhere
	public var detail: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.addObject("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"detail\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
		if let detail = self.detail {
			json["detail"] = Reference.asJSONArray(detail)
		}
		
		return json
	}
}


/**
 *  Anatomical location, if relevant.
 *
 *  The anatomical location where this condition manifests itself.
 */
public class ConditionLocation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConditionLocation" }
	}
	
	/// Location - may include laterality
	public var siteCodeableConcept: CodeableConcept?
	
	/// Location - may include laterality
	public var siteReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["siteCodeableConcept"] {
				presentKeys.addObject("siteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.siteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"siteCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["siteReference"] {
				presentKeys.addObject("siteReference")
				if let val = exist as? FHIRJSON {
					self.siteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"siteReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let siteCodeableConcept = self.siteCodeableConcept {
			json["siteCodeableConcept"] = siteCodeableConcept.asJSON()
		}
		if let siteReference = self.siteReference {
			json["siteReference"] = siteReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Precedent for this Condition.
 *
 *  Further conditions, problems, diagnoses, procedures or events or the substance that preceded this Condition.
 */
public class ConditionOccurredFollowing: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConditionOccurredFollowing" }
	}
	
	/// Relationship target by means of a predefined code
	public var code: CodeableConcept?
	
	/// Relationship target resource
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}


/**
 *  Stage/grade, usually assessed formally.
 *
 *  Clinical stage or grade of a condition. May include formal severity assessments.
 */
public class ConditionStage: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConditionStage" }
	}
	
	/// Formal record of assessment
	public var assessment: [Reference]?
	
	/// Simple summary (disease specific)
	public var summary: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["assessment"] {
				presentKeys.addObject("assessment")
				if let val = exist as? [FHIRJSON] {
					self.assessment = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"assessment\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["summary"] {
				presentKeys.addObject("summary")
				if let val = exist as? FHIRJSON {
					self.summary = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"summary\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let assessment = self.assessment {
			json["assessment"] = Reference.asJSONArray(assessment)
		}
		if let summary = self.summary {
			json["summary"] = summary.asJSON()
		}
		
		return json
	}
}

