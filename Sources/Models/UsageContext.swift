//
//  UsageContext.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/UsageContext) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Describes the context of use for a module.
 *
 *  Specifies clinical metadata that can be used to retrieve, index and/or categorize the knowledge artifact. This
 *  metadata can either be specific to the applicable population (e.g., age category, DRG) or the specific context of
 *  care (e.g., venue, care setting, provider of care).
 */
public class UsageContext: Element {
	override public class var resourceName: String {
		get { return "UsageContext" }
	}
	
	/// Clinical concepts addressed.
	public var clinicalFocus: [CodeableConcept]?
	
	/// Applicable venue.
	public var clinicalVenue: [CodeableConcept]?
	
	/// Intended jurisdiction.
	public var jurisdiction: [CodeableConcept]?
	
	/// Demographic category.
	public var patientAgeGroup: [CodeableConcept]?
	
	/// Patient gender.
	public var patientGender: [CodeableConcept]?
	
	/// Target user type.
	public var targetUser: [CodeableConcept]?
	
	/// Workflow setting.
	public var workflowSetting: [CodeableConcept]?
	
	/// Clinical task context.
	public var workflowTask: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["clinicalFocus"] {
				presentKeys.insert("clinicalFocus")
				if let val = exist as? [FHIRJSON] {
					self.clinicalFocus = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "clinicalFocus", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["clinicalVenue"] {
				presentKeys.insert("clinicalVenue")
				if let val = exist as? [FHIRJSON] {
					self.clinicalVenue = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "clinicalVenue", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["jurisdiction"] {
				presentKeys.insert("jurisdiction")
				if let val = exist as? [FHIRJSON] {
					self.jurisdiction = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patientAgeGroup"] {
				presentKeys.insert("patientAgeGroup")
				if let val = exist as? [FHIRJSON] {
					self.patientAgeGroup = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "patientAgeGroup", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patientGender"] {
				presentKeys.insert("patientGender")
				if let val = exist as? [FHIRJSON] {
					self.patientGender = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "patientGender", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["targetUser"] {
				presentKeys.insert("targetUser")
				if let val = exist as? [FHIRJSON] {
					self.targetUser = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "targetUser", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["workflowSetting"] {
				presentKeys.insert("workflowSetting")
				if let val = exist as? [FHIRJSON] {
					self.workflowSetting = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "workflowSetting", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["workflowTask"] {
				presentKeys.insert("workflowTask")
				if let val = exist as? [FHIRJSON] {
					self.workflowTask = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "workflowTask", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let clinicalFocus = self.clinicalFocus {
			json["clinicalFocus"] = CodeableConcept.asJSONArray(clinicalFocus)
		}
		if let clinicalVenue = self.clinicalVenue {
			json["clinicalVenue"] = CodeableConcept.asJSONArray(clinicalVenue)
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = CodeableConcept.asJSONArray(jurisdiction)
		}
		if let patientAgeGroup = self.patientAgeGroup {
			json["patientAgeGroup"] = CodeableConcept.asJSONArray(patientAgeGroup)
		}
		if let patientGender = self.patientGender {
			json["patientGender"] = CodeableConcept.asJSONArray(patientGender)
		}
		if let targetUser = self.targetUser {
			json["targetUser"] = CodeableConcept.asJSONArray(targetUser)
		}
		if let workflowSetting = self.workflowSetting {
			json["workflowSetting"] = CodeableConcept.asJSONArray(workflowSetting)
		}
		if let workflowTask = self.workflowTask {
			json["workflowTask"] = CodeableConcept.asJSONArray(workflowTask)
		}
		
		return json
	}
}

