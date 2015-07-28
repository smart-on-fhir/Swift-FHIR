//
//  Immunization.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Immunization) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Immunization event information.
 */
public class Immunization: DomainResource
{
	override public class var resourceName: String {
		get { return "Immunization" }
	}
	
	/// Vaccination administration date
	public var date: DateTime?
	
	/// Amount of vaccine administered
	public var doseQuantity: Quantity?
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// Vaccine expiration date
	public var expirationDate: Date?
	
	/// Administration / non-administration reasons
	public var explanation: ImmunizationExplanation?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Where did vaccination occur?
	public var location: Reference?
	
	/// Vaccine lot number
	public var lotNumber: String?
	
	/// Vaccine manufacturer
	public var manufacturer: Reference?
	
	/// Who was immunized?
	public var patient: Reference?
	
	/// Who administered vaccine?
	public var performer: Reference?
	
	/// Details of a reaction that follows immunization
	public var reaction: [ImmunizationReaction]?
	
	/// Is this a self-reported record?
	public var reported: Bool?
	
	/// Who ordered vaccination?
	public var requester: Reference?
	
	/// How vaccine entered body
	public var route: CodeableConcept?
	
	/// Body site vaccine  was administered
	public var site: CodeableConcept?
	
	/// What protocol was followed
	public var vaccinationProtocol: [ImmunizationVaccinationProtocol]?
	
	/// Vaccine product administered
	public var vaccineType: CodeableConcept?
	
	/// Was immunization given?
	public var wasNotGiven: Bool?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime?, patient: Reference?, reported: Bool?, vaccineType: CodeableConcept?, wasNotGiven: Bool?) {
		self.init(json: nil)
		if nil != date {
			self.date = date
		}
		if nil != patient {
			self.patient = patient
		}
		if nil != reported {
			self.reported = reported
		}
		if nil != vaccineType {
			self.vaccineType = vaccineType
		}
		if nil != wasNotGiven {
			self.wasNotGiven = wasNotGiven
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "date"))
			}
			if let exist: AnyObject = js["doseQuantity"] {
				presentKeys.insert("doseQuantity")
				if let val = exist as? FHIRJSON {
					self.doseQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "doseQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["expirationDate"] {
				presentKeys.insert("expirationDate")
				if let val = exist as? String {
					self.expirationDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "expirationDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["explanation"] {
				presentKeys.insert("explanation")
				if let val = exist as? FHIRJSON {
					self.explanation = ImmunizationExplanation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "explanation", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lotNumber"] {
				presentKeys.insert("lotNumber")
				if let val = exist as? String {
					self.lotNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "lotNumber", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["manufacturer"] {
				presentKeys.insert("manufacturer")
				if let val = exist as? FHIRJSON {
					self.manufacturer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "manufacturer", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? FHIRJSON {
					self.performer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reaction"] {
				presentKeys.insert("reaction")
				if let val = exist as? [FHIRJSON] {
					self.reaction = ImmunizationReaction.from(val, owner: self) as? [ImmunizationReaction]
				}
				else {
					errors.append(FHIRJSONError(key: "reaction", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reported"] {
				presentKeys.insert("reported")
				if let val = exist as? Bool {
					self.reported = val
				}
				else {
					errors.append(FHIRJSONError(key: "reported", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "reported"))
			}
			if let exist: AnyObject = js["requester"] {
				presentKeys.insert("requester")
				if let val = exist as? FHIRJSON {
					self.requester = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requester", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["route"] {
				presentKeys.insert("route")
				if let val = exist as? FHIRJSON {
					self.route = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "route", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["site"] {
				presentKeys.insert("site")
				if let val = exist as? FHIRJSON {
					self.site = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "site", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["vaccinationProtocol"] {
				presentKeys.insert("vaccinationProtocol")
				if let val = exist as? [FHIRJSON] {
					self.vaccinationProtocol = ImmunizationVaccinationProtocol.from(val, owner: self) as? [ImmunizationVaccinationProtocol]
				}
				else {
					errors.append(FHIRJSONError(key: "vaccinationProtocol", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["vaccineType"] {
				presentKeys.insert("vaccineType")
				if let val = exist as? FHIRJSON {
					self.vaccineType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "vaccineType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "vaccineType"))
			}
			if let exist: AnyObject = js["wasNotGiven"] {
				presentKeys.insert("wasNotGiven")
				if let val = exist as? Bool {
					self.wasNotGiven = val
				}
				else {
					errors.append(FHIRJSONError(key: "wasNotGiven", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "wasNotGiven"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let doseQuantity = self.doseQuantity {
			json["doseQuantity"] = doseQuantity.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let expirationDate = self.expirationDate {
			json["expirationDate"] = expirationDate.asJSON()
		}
		if let explanation = self.explanation {
			json["explanation"] = explanation.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let lotNumber = self.lotNumber {
			json["lotNumber"] = lotNumber.asJSON()
		}
		if let manufacturer = self.manufacturer {
			json["manufacturer"] = manufacturer.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON()
		}
		if let reaction = self.reaction {
			json["reaction"] = ImmunizationReaction.asJSONArray(reaction)
		}
		if let reported = self.reported {
			json["reported"] = reported.asJSON()
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON()
		}
		if let route = self.route {
			json["route"] = route.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		if let vaccinationProtocol = self.vaccinationProtocol {
			json["vaccinationProtocol"] = ImmunizationVaccinationProtocol.asJSONArray(vaccinationProtocol)
		}
		if let vaccineType = self.vaccineType {
			json["vaccineType"] = vaccineType.asJSON()
		}
		if let wasNotGiven = self.wasNotGiven {
			json["wasNotGiven"] = wasNotGiven.asJSON()
		}
		
		return json
	}
}


/**
 *  Administration / non-administration reasons.
 *
 *  Reasons why a vaccine was or was not administered.
 */
public class ImmunizationExplanation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationExplanation" }
	}
	
	/// Why immunization occurred
	public var reason: [CodeableConcept]?
	
	/// Why immunization did not occur
	public var reasonNotGiven: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonNotGiven"] {
				presentKeys.insert("reasonNotGiven")
				if let val = exist as? [FHIRJSON] {
					self.reasonNotGiven = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonNotGiven", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let reason = self.reason {
			json["reason"] = CodeableConcept.asJSONArray(reason)
		}
		if let reasonNotGiven = self.reasonNotGiven {
			json["reasonNotGiven"] = CodeableConcept.asJSONArray(reasonNotGiven)
		}
		
		return json
	}
}


/**
 *  Details of a reaction that follows immunization.
 *
 *  Categorical data indicating that an adverse event is associated in time to an immunization.
 */
public class ImmunizationReaction: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationReaction" }
	}
	
	/// When did reaction start?
	public var date: DateTime?
	
	/// Additional information on reaction
	public var detail: Reference?
	
	/// Was reaction self-reported?
	public var reported: Bool?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? FHIRJSON {
					self.detail = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reported"] {
				presentKeys.insert("reported")
				if let val = exist as? Bool {
					self.reported = val
				}
				else {
					errors.append(FHIRJSONError(key: "reported", wants: Bool.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let reported = self.reported {
			json["reported"] = reported.asJSON()
		}
		
		return json
	}
}


/**
 *  What protocol was followed.
 *
 *  Contains information about the protocol(s) under which the vaccine was administered.
 */
public class ImmunizationVaccinationProtocol: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationVaccinationProtocol" }
	}
	
	/// Who is responsible for protocol
	public var authority: Reference?
	
	/// Details of vaccine protocol
	public var description_fhir: String?
	
	/// What dose number within series?
	public var doseSequence: UInt?
	
	/// Does dose count towards immunity?
	public var doseStatus: CodeableConcept?
	
	/// Why does does count/not count?
	public var doseStatusReason: CodeableConcept?
	
	/// Disease immunized against
	public var doseTarget: CodeableConcept?
	
	/// Name of vaccine series
	public var series: String?
	
	/// Recommended number of doses for immunity
	public var seriesDoses: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(doseSequence: UInt?, doseStatus: CodeableConcept?, doseTarget: CodeableConcept?) {
		self.init(json: nil)
		if nil != doseSequence {
			self.doseSequence = doseSequence
		}
		if nil != doseStatus {
			self.doseStatus = doseStatus
		}
		if nil != doseTarget {
			self.doseTarget = doseTarget
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["authority"] {
				presentKeys.insert("authority")
				if let val = exist as? FHIRJSON {
					self.authority = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "authority", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["doseSequence"] {
				presentKeys.insert("doseSequence")
				if let val = exist as? UInt {
					self.doseSequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "doseSequence", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "doseSequence"))
			}
			if let exist: AnyObject = js["doseStatus"] {
				presentKeys.insert("doseStatus")
				if let val = exist as? FHIRJSON {
					self.doseStatus = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "doseStatus", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "doseStatus"))
			}
			if let exist: AnyObject = js["doseStatusReason"] {
				presentKeys.insert("doseStatusReason")
				if let val = exist as? FHIRJSON {
					self.doseStatusReason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "doseStatusReason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["doseTarget"] {
				presentKeys.insert("doseTarget")
				if let val = exist as? FHIRJSON {
					self.doseTarget = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "doseTarget", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "doseTarget"))
			}
			if let exist: AnyObject = js["series"] {
				presentKeys.insert("series")
				if let val = exist as? String {
					self.series = val
				}
				else {
					errors.append(FHIRJSONError(key: "series", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["seriesDoses"] {
				presentKeys.insert("seriesDoses")
				if let val = exist as? UInt {
					self.seriesDoses = val
				}
				else {
					errors.append(FHIRJSONError(key: "seriesDoses", wants: UInt.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authority = self.authority {
			json["authority"] = authority.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let doseSequence = self.doseSequence {
			json["doseSequence"] = doseSequence.asJSON()
		}
		if let doseStatus = self.doseStatus {
			json["doseStatus"] = doseStatus.asJSON()
		}
		if let doseStatusReason = self.doseStatusReason {
			json["doseStatusReason"] = doseStatusReason.asJSON()
		}
		if let doseTarget = self.doseTarget {
			json["doseTarget"] = doseTarget.asJSON()
		}
		if let series = self.series {
			json["series"] = series.asJSON()
		}
		if let seriesDoses = self.seriesDoses {
			json["seriesDoses"] = seriesDoses.asJSON()
		}
		
		return json
	}
}

