//
//  ProcedureRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ProcedureRequest) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A request for a procedure to be performed.

A request for a procedure to be performed. May be a proposal or an order.
*/
open class ProcedureRequest: DomainResource {
	override open class var resourceType: String {
		get { return "ProcedureRequest" }
	}
	
	/// Preconditions for procedure.
	public var asNeededBoolean: Bool?
	
	/// Preconditions for procedure.
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// What part of body to perform on.
	public var bodySite: [CodeableConcept]?
	
	/// What procedure to perform.
	public var code: CodeableConcept?
	
	/// Encounter request created during.
	public var encounter: Reference?
	
	/// Unique identifier for the request.
	public var identifier: [Identifier]?
	
	/// Additional information about desired procedure.
	public var notes: [Annotation]?
	
	/// When request was created.
	public var orderedOn: DateTime?
	
	/// Who made request.
	public var orderer: Reference?
	
	/// Who should perform the procedure.
	public var performer: Reference?
	
	/// The clinical priority associated with this order.
	public var priority: ProcedureRequestPriority?
	
	/// Why procedure should occur.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Why procedure should occur.
	public var reasonReference: Reference?
	
	/// When procedure should occur.
	public var scheduledDateTime: DateTime?
	
	/// When procedure should occur.
	public var scheduledPeriod: Period?
	
	/// When procedure should occur.
	public var scheduledTiming: Timing?
	
	/// The status of the order.
	public var status: ProcedureRequestStatus?
	
	/// Who the procedure should be done to.
	public var subject: Reference?
	
	/// Extra information to use in performing request.
	public var supportingInfo: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, subject: Reference) {
		self.init()
		self.code = code
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["asNeededBoolean"] {
			presentKeys.insert("asNeededBoolean")
			if let val = exist as? Bool {
				self.asNeededBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "asNeededBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["asNeededCodeableConcept"] {
			presentKeys.insert("asNeededCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.asNeededCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "asNeededCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "asNeededCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["bodySite"] {
			presentKeys.insert("bodySite")
			if let val = exist as? [FHIRJSON] {
				do {
					self.bodySite = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "bodySite"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "bodySite", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "code"))
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
		if let exist = json["notes"] {
			presentKeys.insert("notes")
			if let val = exist as? [FHIRJSON] {
				do {
					self.notes = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "notes"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "notes", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["orderedOn"] {
			presentKeys.insert("orderedOn")
			if let val = exist as? String {
				self.orderedOn = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "orderedOn", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["orderer"] {
			presentKeys.insert("orderer")
			if let val = exist as? FHIRJSON {
				do {
					self.orderer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "orderer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "orderer", wants: FHIRJSON.self, has: type(of: exist)))
			}
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
		if let exist = json["priority"] {
			presentKeys.insert("priority")
			if let val = exist as? String {
				if let enumval = ProcedureRequestPriority(rawValue: val) {
					self.priority = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "priority", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "priority", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonCodeableConcept"] {
			presentKeys.insert("reasonCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.reasonCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonReference"] {
			presentKeys.insert("reasonReference")
			if let val = exist as? FHIRJSON {
				do {
					self.reasonReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["scheduledDateTime"] {
			presentKeys.insert("scheduledDateTime")
			if let val = exist as? String {
				self.scheduledDateTime = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "scheduledDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["scheduledPeriod"] {
			presentKeys.insert("scheduledPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.scheduledPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "scheduledPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "scheduledPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["scheduledTiming"] {
			presentKeys.insert("scheduledTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.scheduledTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "scheduledTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "scheduledTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = ProcedureRequestStatus(rawValue: val) {
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
		if let exist = json["supportingInfo"] {
			presentKeys.insert("supportingInfo")
			if let val = exist as? [FHIRJSON] {
				do {
					self.supportingInfo = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "supportingInfo"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "supportingInfo", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let asNeededBoolean = self.asNeededBoolean {
			json["asNeededBoolean"] = asNeededBoolean.asJSON()
		}
		if let asNeededCodeableConcept = self.asNeededCodeableConcept {
			json["asNeededCodeableConcept"] = asNeededCodeableConcept.asJSON(errors: &errors)
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.map() { $0.asJSON(errors: &errors) }
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let notes = self.notes {
			json["notes"] = notes.map() { $0.asJSON(errors: &errors) }
		}
		if let orderedOn = self.orderedOn {
			json["orderedOn"] = orderedOn.asJSON()
		}
		if let orderer = self.orderer {
			json["orderer"] = orderer.asJSON(errors: &errors)
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON(errors: &errors)
		}
		if let priority = self.priority {
			json["priority"] = priority.rawValue
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON(errors: &errors)
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON(errors: &errors)
		}
		if let scheduledDateTime = self.scheduledDateTime {
			json["scheduledDateTime"] = scheduledDateTime.asJSON()
		}
		if let scheduledPeriod = self.scheduledPeriod {
			json["scheduledPeriod"] = scheduledPeriod.asJSON(errors: &errors)
		}
		if let scheduledTiming = self.scheduledTiming {
			json["scheduledTiming"] = scheduledTiming.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		if let supportingInfo = self.supportingInfo {
			json["supportingInfo"] = supportingInfo.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}

