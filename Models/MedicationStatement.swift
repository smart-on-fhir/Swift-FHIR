//
//  MedicationStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/MedicationStatement) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Administration of medication to a patient.
 *
 *  A record of medication being taken by a patient, or that the medication has been given to a patient where the record
 *  is the result of a report from the patient or another clinician.
 */
public class MedicationStatement: DomainResource
{
	override public class var resourceName: String {
		get { return "MedicationStatement" }
	}
	
	/// When the statement was asserted?
	public var dateAsserted: DateTime?
	
	/// Details of how medication was taken
	public var dosage: [MedicationStatementDosage]?
	
	/// Over what period was medication consumed?
	public var effectiveDateTime: DateTime?
	
	/// Over what period was medication consumed?
	public var effectivePeriod: Period?
	
	/// External Identifier
	public var identifier: [Identifier]?
	
	/// The person who provided the information about the taking of this medication.
	public var informationSource: Reference?
	
	/// What medication was taken?
	public var medication: Reference?
	
	/// Further information about the statement
	public var note: String?
	
	/// Who was/is taking medication
	public var patient: Reference?
	
	/// A reason for why the medication is being/was taken.
	public var reasonForUseCodeableConcept: CodeableConcept?
	
	/// A reason for why the medication is being/was taken.
	public var reasonForUseReference: Reference?
	
	/// True if asserting medication was not given
	public var reasonNotGiven: [CodeableConcept]?
	
	/// in-progress | completed | entered-in-error
	public var status: String?
	
	/// True if medication is/was not being taken
	public var wasNotGiven: Bool?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["dateAsserted"] {
				presentKeys.addObject("dateAsserted")
				if let val = exist as? String {
					self.dateAsserted = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dateAsserted\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["dosage"] {
				presentKeys.addObject("dosage")
				if let val = exist as? [FHIRJSON] {
					self.dosage = MedicationStatementDosage.from(val, owner: self) as? [MedicationStatementDosage]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dosage\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["effectiveDateTime"] {
				presentKeys.addObject("effectiveDateTime")
				if let val = exist as? String {
					self.effectiveDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"effectiveDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["effectivePeriod"] {
				presentKeys.addObject("effectivePeriod")
				if let val = exist as? FHIRJSON {
					self.effectivePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"effectivePeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["informationSource"] {
				presentKeys.addObject("informationSource")
				if let val = exist as? FHIRJSON {
					self.informationSource = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"informationSource\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["medication"] {
				presentKeys.addObject("medication")
				if let val = exist as? FHIRJSON {
					self.medication = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"medication\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["reasonForUseCodeableConcept"] {
				presentKeys.addObject("reasonForUseCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.reasonForUseCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reasonForUseCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reasonForUseReference"] {
				presentKeys.addObject("reasonForUseReference")
				if let val = exist as? FHIRJSON {
					self.reasonForUseReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reasonForUseReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reasonNotGiven"] {
				presentKeys.addObject("reasonNotGiven")
				if let val = exist as? [FHIRJSON] {
					self.reasonNotGiven = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reasonNotGiven\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["wasNotGiven"] {
				presentKeys.addObject("wasNotGiven")
				if let val = exist as? Bool {
					self.wasNotGiven = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"wasNotGiven\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dateAsserted = self.dateAsserted {
			json["dateAsserted"] = dateAsserted.asJSON()
		}
		if let dosage = self.dosage {
			json["dosage"] = MedicationStatementDosage.asJSONArray(dosage)
		}
		if let effectiveDateTime = self.effectiveDateTime {
			json["effectiveDateTime"] = effectiveDateTime.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let informationSource = self.informationSource {
			json["informationSource"] = informationSource.asJSON()
		}
		if let medication = self.medication {
			json["medication"] = medication.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let reasonForUseCodeableConcept = self.reasonForUseCodeableConcept {
			json["reasonForUseCodeableConcept"] = reasonForUseCodeableConcept.asJSON()
		}
		if let reasonForUseReference = self.reasonForUseReference {
			json["reasonForUseReference"] = reasonForUseReference.asJSON()
		}
		if let reasonNotGiven = self.reasonNotGiven {
			json["reasonNotGiven"] = CodeableConcept.asJSONArray(reasonNotGiven)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let wasNotGiven = self.wasNotGiven {
			json["wasNotGiven"] = wasNotGiven.asJSON()
		}
		
		return json
	}
}


/**
 *  Details of how medication was taken.
 *
 *  Indicates how the medication is/was used by the patient.
 */
public class MedicationStatementDosage: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationStatementDosage" }
	}
	
	/// Take "as needed" f(or x)
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" f(or x)
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Maximum dose that was consumed per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique used to administer medication
	public var method: CodeableConcept?
	
	/// Amount administered in one dose
	public var quantity: Quantity?
	
	/// Dose quantity per unit of time
	public var rate: Ratio?
	
	/// How did the medication enter the body?
	public var route: CodeableConcept?
	
	/// When/how often was medication taken?
	public var schedule: Timing?
	
	/// Where on body was medication administered?
	public var site: CodeableConcept?
	
	/// Dosage Instructions
	public var text: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["asNeededBoolean"] {
				presentKeys.addObject("asNeededBoolean")
				if let val = exist as? Bool {
					self.asNeededBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"asNeededBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["asNeededCodeableConcept"] {
				presentKeys.addObject("asNeededCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"asNeededCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["maxDosePerPeriod"] {
				presentKeys.addObject("maxDosePerPeriod")
				if let val = exist as? FHIRJSON {
					self.maxDosePerPeriod = Ratio(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"maxDosePerPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.addObject("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"method\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["rate"] {
				presentKeys.addObject("rate")
				if let val = exist as? FHIRJSON {
					self.rate = Ratio(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"rate\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["route"] {
				presentKeys.addObject("route")
				if let val = exist as? FHIRJSON {
					self.route = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"route\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["schedule"] {
				presentKeys.addObject("schedule")
				if let val = exist as? FHIRJSON {
					self.schedule = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"schedule\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["site"] {
				presentKeys.addObject("site")
				if let val = exist as? FHIRJSON {
					self.site = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"site\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let asNeededBoolean = self.asNeededBoolean {
			json["asNeededBoolean"] = asNeededBoolean.asJSON()
		}
		if let asNeededCodeableConcept = self.asNeededCodeableConcept {
			json["asNeededCodeableConcept"] = asNeededCodeableConcept.asJSON()
		}
		if let maxDosePerPeriod = self.maxDosePerPeriod {
			json["maxDosePerPeriod"] = maxDosePerPeriod.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let rate = self.rate {
			json["rate"] = rate.asJSON()
		}
		if let route = self.route {
			json["route"] = route.asJSON()
		}
		if let schedule = self.schedule {
			json["schedule"] = schedule.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

