//
//  Immunization.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Immunization) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Immunization event information.

Describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient,
a clinician or another party and may include vaccine reaction information and what vaccination protocol was followed.
*/
open class Immunization: DomainResource {
	override open class var resourceType: String {
		get { return "Immunization" }
	}
	
	/// Vaccination administration date.
	public var date: DateTime?
	
	/// Amount of vaccine administered.
	public var doseQuantity: Quantity?
	
	/// Encounter administered as part of.
	public var encounter: Reference?
	
	/// Vaccine expiration date.
	public var expirationDate: FHIRDate?
	
	/// Administration/non-administration reasons.
	public var explanation: ImmunizationExplanation?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Where vaccination occurred.
	public var location: Reference?
	
	/// Vaccine lot number.
	public var lotNumber: String?
	
	/// Vaccine manufacturer.
	public var manufacturer: Reference?
	
	/// Vaccination notes.
	public var note: [Annotation]?
	
	/// Who was immunized.
	public var patient: Reference?
	
	/// Who administered vaccine.
	public var performer: Reference?
	
	/// Indicates context the data was recorded in.
	public var primarySource: Bool?
	
	/// Details of a reaction that follows immunization.
	public var reaction: [ImmunizationReaction]?
	
	/// Indicates the source of a secondarily reported record.
	public var reportOrigin: CodeableConcept?
	
	/// Who ordered vaccination.
	public var requester: Reference?
	
	/// How vaccine entered body.
	public var route: CodeableConcept?
	
	/// Body site vaccine  was administered.
	public var site: CodeableConcept?
	
	/// Indicates the current status of the vaccination event.
	/// Only use: ['completed', 'entered-in-error']
	public var status: MedicationAdministrationStatus?
	
	/// What protocol was followed.
	public var vaccinationProtocol: [ImmunizationVaccinationProtocol]?
	
	/// Vaccine product administered.
	public var vaccineCode: CodeableConcept?
	
	/// Flag for whether immunization was given.
	public var wasNotGiven: Bool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, primarySource: Bool, status: MedicationAdministrationStatus, vaccineCode: CodeableConcept, wasNotGiven: Bool) {
		self.init()
		self.patient = patient
		self.primarySource = primarySource
		self.status = status
		self.vaccineCode = vaccineCode
		self.wasNotGiven = wasNotGiven
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["doseQuantity"] {
			presentKeys.insert("doseQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.doseQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "doseQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "doseQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["encounter"] {
			presentKeys.insert("encounter")
			if let val = exist as? FHIRJSON {
				do {
					self.encounter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "encounter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["expirationDate"] {
			presentKeys.insert("expirationDate")
			if let val = exist as? String {
				self.expirationDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "expirationDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["explanation"] {
			presentKeys.insert("explanation")
			if let val = exist as? FHIRJSON {
				do {
					self.explanation = try ImmunizationExplanation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "explanation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "explanation", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? FHIRJSON {
				do {
					self.location = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "location"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["lotNumber"] {
			presentKeys.insert("lotNumber")
			if let val = exist as? String {
				self.lotNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "lotNumber", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["manufacturer"] {
			presentKeys.insert("manufacturer")
			if let val = exist as? FHIRJSON {
				do {
					self.manufacturer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "manufacturer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "manufacturer", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let exist = json["performer"] {
			presentKeys.insert("performer")
			if let val = exist as? FHIRJSON {
				do {
					self.performer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["primarySource"] {
			presentKeys.insert("primarySource")
			if let val = exist as? Bool {
				self.primarySource = val
			}
			else {
				errors.append(FHIRValidationError(key: "primarySource", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "primarySource"))
		}
		if let exist = json["reaction"] {
			presentKeys.insert("reaction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reaction = try ImmunizationReaction.instantiate(fromArray: val, owner: self) as? [ImmunizationReaction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reaction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reaction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reportOrigin"] {
			presentKeys.insert("reportOrigin")
			if let val = exist as? FHIRJSON {
				do {
					self.reportOrigin = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reportOrigin"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reportOrigin", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requester"] {
			presentKeys.insert("requester")
			if let val = exist as? FHIRJSON {
				do {
					self.requester = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requester"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requester", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["route"] {
			presentKeys.insert("route")
			if let val = exist as? FHIRJSON {
				do {
					self.route = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "route"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "route", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["site"] {
			presentKeys.insert("site")
			if let val = exist as? FHIRJSON {
				do {
					self.site = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "site"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "site", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = MedicationAdministrationStatus(rawValue: val) {
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
		if let exist = json["vaccinationProtocol"] {
			presentKeys.insert("vaccinationProtocol")
			if let val = exist as? [FHIRJSON] {
				do {
					self.vaccinationProtocol = try ImmunizationVaccinationProtocol.instantiate(fromArray: val, owner: self) as? [ImmunizationVaccinationProtocol]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "vaccinationProtocol"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "vaccinationProtocol", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["vaccineCode"] {
			presentKeys.insert("vaccineCode")
			if let val = exist as? FHIRJSON {
				do {
					self.vaccineCode = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "vaccineCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "vaccineCode", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "vaccineCode"))
		}
		if let exist = json["wasNotGiven"] {
			presentKeys.insert("wasNotGiven")
			if let val = exist as? Bool {
				self.wasNotGiven = val
			}
			else {
				errors.append(FHIRValidationError(key: "wasNotGiven", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "wasNotGiven"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let doseQuantity = self.doseQuantity {
			json["doseQuantity"] = doseQuantity.asJSON(errors: &errors)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let expirationDate = self.expirationDate {
			json["expirationDate"] = expirationDate.asJSON()
		}
		if let explanation = self.explanation {
			json["explanation"] = explanation.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let location = self.location {
			json["location"] = location.asJSON(errors: &errors)
		}
		if let lotNumber = self.lotNumber {
			json["lotNumber"] = lotNumber.asJSON()
		}
		if let manufacturer = self.manufacturer {
			json["manufacturer"] = manufacturer.asJSON(errors: &errors)
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON(errors: &errors)
		}
		if let primarySource = self.primarySource {
			json["primarySource"] = primarySource.asJSON()
		}
		if let reaction = self.reaction {
			json["reaction"] = reaction.map() { $0.asJSON(errors: &errors) }
		}
		if let reportOrigin = self.reportOrigin {
			json["reportOrigin"] = reportOrigin.asJSON(errors: &errors)
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON(errors: &errors)
		}
		if let route = self.route {
			json["route"] = route.asJSON(errors: &errors)
		}
		if let site = self.site {
			json["site"] = site.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let vaccinationProtocol = self.vaccinationProtocol {
			json["vaccinationProtocol"] = vaccinationProtocol.map() { $0.asJSON(errors: &errors) }
		}
		if let vaccineCode = self.vaccineCode {
			json["vaccineCode"] = vaccineCode.asJSON(errors: &errors)
		}
		if let wasNotGiven = self.wasNotGiven {
			json["wasNotGiven"] = wasNotGiven.asJSON()
		}
		
		return json
	}
}


/**
Administration/non-administration reasons.

Reasons why a vaccine was or was not administered.
*/
open class ImmunizationExplanation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationExplanation" }
	}
	
	/// Why immunization occurred.
	public var reason: [CodeableConcept]?
	
	/// Why immunization did not occur.
	public var reasonNotGiven: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reason = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonNotGiven"] {
			presentKeys.insert("reasonNotGiven")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonNotGiven = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonNotGiven"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonNotGiven", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonNotGiven = self.reasonNotGiven {
			json["reasonNotGiven"] = reasonNotGiven.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Details of a reaction that follows immunization.

Categorical data indicating that an adverse event is associated in time to an immunization.
*/
open class ImmunizationReaction: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationReaction" }
	}
	
	/// When reaction started.
	public var date: DateTime?
	
	/// Additional information on reaction.
	public var detail: Reference?
	
	/// Indicates self-reported reaction.
	public var reported: Bool?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? FHIRJSON {
				do {
					self.detail = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "detail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reported"] {
			presentKeys.insert("reported")
			if let val = exist as? Bool {
				self.reported = val
			}
			else {
				errors.append(FHIRValidationError(key: "reported", wants: Bool.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON(errors: &errors)
		}
		if let reported = self.reported {
			json["reported"] = reported.asJSON()
		}
		
		return json
	}
}


/**
What protocol was followed.

Contains information about the protocol(s) under which the vaccine was administered.
*/
open class ImmunizationVaccinationProtocol: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationVaccinationProtocol" }
	}
	
	/// Who is responsible for protocol.
	public var authority: Reference?
	
	/// Details of vaccine protocol.
	public var description_fhir: String?
	
	/// Dose number within series.
	public var doseSequence: UInt?
	
	/// Indicates if dose counts towards immunity.
	public var doseStatus: CodeableConcept?
	
	/// Why dose does (not) count.
	public var doseStatusReason: CodeableConcept?
	
	/// Name of vaccine series.
	public var series: String?
	
	/// Recommended number of doses for immunity.
	public var seriesDoses: UInt?
	
	/// Disease immunized against.
	public var targetDisease: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(doseStatus: CodeableConcept, targetDisease: [CodeableConcept]) {
		self.init()
		self.doseStatus = doseStatus
		self.targetDisease = targetDisease
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["authority"] {
			presentKeys.insert("authority")
			if let val = exist as? FHIRJSON {
				do {
					self.authority = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "authority"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "authority", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["doseSequence"] {
			presentKeys.insert("doseSequence")
			if let val = exist as? UInt {
				self.doseSequence = val
			}
			else {
				errors.append(FHIRValidationError(key: "doseSequence", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["doseStatus"] {
			presentKeys.insert("doseStatus")
			if let val = exist as? FHIRJSON {
				do {
					self.doseStatus = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "doseStatus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "doseStatus", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "doseStatus"))
		}
		if let exist = json["doseStatusReason"] {
			presentKeys.insert("doseStatusReason")
			if let val = exist as? FHIRJSON {
				do {
					self.doseStatusReason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "doseStatusReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "doseStatusReason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["series"] {
			presentKeys.insert("series")
			if let val = exist as? String {
				self.series = val
			}
			else {
				errors.append(FHIRValidationError(key: "series", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["seriesDoses"] {
			presentKeys.insert("seriesDoses")
			if let val = exist as? UInt {
				self.seriesDoses = val
			}
			else {
				errors.append(FHIRValidationError(key: "seriesDoses", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["targetDisease"] {
			presentKeys.insert("targetDisease")
			if let val = exist as? [FHIRJSON] {
				do {
					self.targetDisease = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "targetDisease"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "targetDisease", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "targetDisease"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let authority = self.authority {
			json["authority"] = authority.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let doseSequence = self.doseSequence {
			json["doseSequence"] = doseSequence.asJSON()
		}
		if let doseStatus = self.doseStatus {
			json["doseStatus"] = doseStatus.asJSON(errors: &errors)
		}
		if let doseStatusReason = self.doseStatusReason {
			json["doseStatusReason"] = doseStatusReason.asJSON(errors: &errors)
		}
		if let series = self.series {
			json["series"] = series.asJSON()
		}
		if let seriesDoses = self.seriesDoses {
			json["seriesDoses"] = seriesDoses.asJSON()
		}
		if let targetDisease = self.targetDisease {
			json["targetDisease"] = targetDisease.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}

