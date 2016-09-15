//
//  UsageContext.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/UsageContext) on 2016-09-15.
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
open class UsageContext: Element {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["clinicalFocus"] {
				presentKeys.insert("clinicalFocus")
				if let val = exist as? [FHIRJSON] {
					self.clinicalFocus = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "clinicalFocus", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["clinicalVenue"] {
				presentKeys.insert("clinicalVenue")
				if let val = exist as? [FHIRJSON] {
					self.clinicalVenue = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "clinicalVenue", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["jurisdiction"] {
				presentKeys.insert("jurisdiction")
				if let val = exist as? [FHIRJSON] {
					self.jurisdiction = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["patientAgeGroup"] {
				presentKeys.insert("patientAgeGroup")
				if let val = exist as? [FHIRJSON] {
					self.patientAgeGroup = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "patientAgeGroup", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["patientGender"] {
				presentKeys.insert("patientGender")
				if let val = exist as? [FHIRJSON] {
					self.patientGender = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "patientGender", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["targetUser"] {
				presentKeys.insert("targetUser")
				if let val = exist as? [FHIRJSON] {
					self.targetUser = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "targetUser", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["workflowSetting"] {
				presentKeys.insert("workflowSetting")
				if let val = exist as? [FHIRJSON] {
					self.workflowSetting = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "workflowSetting", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["workflowTask"] {
				presentKeys.insert("workflowTask")
				if let val = exist as? [FHIRJSON] {
					self.workflowTask = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "workflowTask", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let clinicalFocus = self.clinicalFocus {
			json["clinicalFocus"] = clinicalFocus.map() { $0.asJSON() }
		}
		if let clinicalVenue = self.clinicalVenue {
			json["clinicalVenue"] = clinicalVenue.map() { $0.asJSON() }
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON() }
		}
		if let patientAgeGroup = self.patientAgeGroup {
			json["patientAgeGroup"] = patientAgeGroup.map() { $0.asJSON() }
		}
		if let patientGender = self.patientGender {
			json["patientGender"] = patientGender.map() { $0.asJSON() }
		}
		if let targetUser = self.targetUser {
			json["targetUser"] = targetUser.map() { $0.asJSON() }
		}
		if let workflowSetting = self.workflowSetting {
			json["workflowSetting"] = workflowSetting.map() { $0.asJSON() }
		}
		if let workflowTask = self.workflowTask {
			json["workflowTask"] = workflowTask.map() { $0.asJSON() }
		}
		
		return json
	}
}

