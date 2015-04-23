//
//  FamilyMemberHistory.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Information about patient's relatives, relevant for patient.
 *
 *  Significant health events and conditions for a person related to the patient relevant in the context of care for the
 *  patient.
 */
public class FamilyMemberHistory: DomainResource
{
	override public class var resourceName: String {
		get { return "FamilyMemberHistory" }
	}
	
	/// (approximate) age
	public var ageAge: Age?
	
	/// (approximate) age
	public var ageRange: Range?
	
	/// (approximate) age
	public var ageString: String?
	
	/// (approximate) date of birth
	public var bornDate: Date?
	
	/// (approximate) date of birth
	public var bornPeriod: Period?
	
	/// (approximate) date of birth
	public var bornString: String?
	
	/// Condition that the related person had
	public var condition: [FamilyMemberHistoryCondition]?
	
	/// When history was captured/updated
	public var date: DateTime?
	
	/// Dead? How old/when?
	public var deceasedAge: Age?
	
	/// Dead? How old/when?
	public var deceasedBoolean: Bool?
	
	/// Dead? How old/when?
	public var deceasedDate: Date?
	
	/// Dead? How old/when?
	public var deceasedRange: Range?
	
	/// Dead? How old/when?
	public var deceasedString: String?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// External Id(s) for this record
	public var identifier: [Identifier]?
	
	/// The family member described
	public var name: String?
	
	/// General note about related person
	public var note: String?
	
	/// Patient history is about
	public var patient: Reference?
	
	/// Relationship to the subject
	public var relationship: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(patient: Reference?, relationship: CodeableConcept?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != relationship {
			self.relationship = relationship
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["ageAge"] {
				presentKeys.addObject("ageAge")
				if let val = exist as? FHIRJSON {
					self.ageAge = Age(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ageAge\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["ageRange"] {
				presentKeys.addObject("ageRange")
				if let val = exist as? FHIRJSON {
					self.ageRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ageRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["ageString"] {
				presentKeys.addObject("ageString")
				if let val = exist as? String {
					self.ageString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ageString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bornDate"] {
				presentKeys.addObject("bornDate")
				if let val = exist as? String {
					self.bornDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bornDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bornPeriod"] {
				presentKeys.addObject("bornPeriod")
				if let val = exist as? FHIRJSON {
					self.bornPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bornPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bornString"] {
				presentKeys.addObject("bornString")
				if let val = exist as? String {
					self.bornString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bornString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["condition"] {
				presentKeys.addObject("condition")
				if let val = exist as? [FHIRJSON] {
					self.condition = FamilyMemberHistoryCondition.from(val, owner: self) as? [FamilyMemberHistoryCondition]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"condition\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["deceasedAge"] {
				presentKeys.addObject("deceasedAge")
				if let val = exist as? FHIRJSON {
					self.deceasedAge = Age(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"deceasedAge\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["deceasedBoolean"] {
				presentKeys.addObject("deceasedBoolean")
				if let val = exist as? Bool {
					self.deceasedBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"deceasedBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["deceasedDate"] {
				presentKeys.addObject("deceasedDate")
				if let val = exist as? String {
					self.deceasedDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"deceasedDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["deceasedRange"] {
				presentKeys.addObject("deceasedRange")
				if let val = exist as? FHIRJSON {
					self.deceasedRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"deceasedRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["deceasedString"] {
				presentKeys.addObject("deceasedString")
				if let val = exist as? String {
					self.deceasedString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"deceasedString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["gender"] {
				presentKeys.addObject("gender")
				if let val = exist as? String {
					self.gender = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"gender\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.addObject("note")
				if let val = exist as? String {
					self.note = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"note\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["relationship"] {
				presentKeys.addObject("relationship")
				if let val = exist as? FHIRJSON {
					self.relationship = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"relationship\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"relationship\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let ageAge = self.ageAge {
			json["ageAge"] = ageAge.asJSON()
		}
		if let ageRange = self.ageRange {
			json["ageRange"] = ageRange.asJSON()
		}
		if let ageString = self.ageString {
			json["ageString"] = ageString.asJSON()
		}
		if let bornDate = self.bornDate {
			json["bornDate"] = bornDate.asJSON()
		}
		if let bornPeriod = self.bornPeriod {
			json["bornPeriod"] = bornPeriod.asJSON()
		}
		if let bornString = self.bornString {
			json["bornString"] = bornString.asJSON()
		}
		if let condition = self.condition {
			json["condition"] = FamilyMemberHistoryCondition.asJSONArray(condition)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let deceasedAge = self.deceasedAge {
			json["deceasedAge"] = deceasedAge.asJSON()
		}
		if let deceasedBoolean = self.deceasedBoolean {
			json["deceasedBoolean"] = deceasedBoolean.asJSON()
		}
		if let deceasedDate = self.deceasedDate {
			json["deceasedDate"] = deceasedDate.asJSON()
		}
		if let deceasedRange = self.deceasedRange {
			json["deceasedRange"] = deceasedRange.asJSON()
		}
		if let deceasedString = self.deceasedString {
			json["deceasedString"] = deceasedString.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		
		return json
	}
}


/**
 *  Condition that the related person had.
 *
 *  The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system
 *  to represent more than one condition per resource, though there is nothing stopping multiple resources - one per
 *  condition.
 */
public class FamilyMemberHistoryCondition: FHIRElement
{
	override public class var resourceName: String {
		get { return "FamilyMemberHistoryCondition" }
	}
	
	/// Extra information about condition
	public var note: String?
	
	/// When condition first manifested
	public var onsetAge: Age?
	
	/// When condition first manifested
	public var onsetRange: Range?
	
	/// When condition first manifested
	public var onsetString: String?
	
	/// deceased | permanent disability | etc.
	public var outcome: CodeableConcept?
	
	/// Condition suffered by relation
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["note"] {
				presentKeys.addObject("note")
				if let val = exist as? String {
					self.note = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"note\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["outcome"] {
				presentKeys.addObject("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"outcome\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let onsetAge = self.onsetAge {
			json["onsetAge"] = onsetAge.asJSON()
		}
		if let onsetRange = self.onsetRange {
			json["onsetRange"] = onsetRange.asJSON()
		}
		if let onsetString = self.onsetString {
			json["onsetString"] = onsetString.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

