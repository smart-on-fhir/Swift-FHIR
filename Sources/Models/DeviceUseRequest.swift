//
//  DeviceUseRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/DeviceUseRequest) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Medical device request.

Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external
assistive device, such as a walker.
*/
open class DeviceUseRequest: DomainResource {
	override open class var resourceType: String {
		get { return "DeviceUseRequest" }
	}
	
	/// When recorded.
	public var authored: DateTime?
	
	/// What request fulfills.
	public var basedOn: [Reference]?
	
	/// Encounter or Episode motivating request.
	public var context: Reference?
	
	/// Protocol or definition.
	public var definition: [Reference]?
	
	/// Device requested.
	public var deviceCodeableConcept: CodeableConcept?
	
	/// Device requested.
	public var deviceReference: Reference?
	
	/// Request identifier.
	public var identifier: [Identifier]?
	
	/// Notes or comments.
	public var note: [Annotation]?
	
	/// Desired time or schedule for use.
	public var occurrenceDateTime: DateTime?
	
	/// Desired time or schedule for use.
	public var occurrencePeriod: Period?
	
	/// Desired time or schedule for use.
	public var occurrenceTiming: Timing?
	
	/// Requested Filler.
	public var performer: Reference?
	
	/// Fille role.
	public var performerType: CodeableConcept?
	
	/// Coded Reason for request.
	public var reasonCode: [CodeableConcept]?
	
	/// Linked Reason for request.
	public var reasonReference: [Reference]?
	
	/// Request provenance.
	public var relevantHistory: [Reference]?
	
	/// What request replaces.
	public var replaces: [Reference]?
	
	/// Who/what is requesting diagnostics.
	public var requester: Reference?
	
	/// Identifier of composite request.
	public var requisition: Identifier?
	
	/// proposal | plan | original-order | encoded | reflex-order.
	public var stage: CodeableConcept?
	
	/// draft | active | suspended | completed | entered-in-error | cancelled.
	public var status: String?
	
	/// Focus of request.
	public var subject: Reference?
	
	/// Additional clinical information.
	public var supportingInfo: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(device: Any, stage: CodeableConcept, subject: Reference) {
		self.init()
		if let value = device as? Reference {
			self.deviceReference = value
		}
		else if let value = device as? CodeableConcept {
			self.deviceCodeableConcept = value
		}
		else {
			fhir_warn("Type “\(type(of: device))” for property “\(device)” is invalid, ignoring")
		}
		self.stage = stage
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["authored"] {
			presentKeys.insert("authored")
			if let val = exist as? String {
				self.authored = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "authored", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["basedOn"] {
			presentKeys.insert("basedOn")
			if let val = exist as? [FHIRJSON] {
				do {
					self.basedOn = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "basedOn"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "basedOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? [FHIRJSON] {
				do {
					self.definition = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "definition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["deviceCodeableConcept"] {
			presentKeys.insert("deviceCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.deviceCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "deviceCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "deviceCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["deviceReference"] {
			presentKeys.insert("deviceReference")
			if let val = exist as? FHIRJSON {
				do {
					self.deviceReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "deviceReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "deviceReference", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["occurrenceDateTime"] {
			presentKeys.insert("occurrenceDateTime")
			if let val = exist as? String {
				self.occurrenceDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "occurrenceDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["occurrencePeriod"] {
			presentKeys.insert("occurrencePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.occurrencePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "occurrencePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "occurrencePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["occurrenceTiming"] {
			presentKeys.insert("occurrenceTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.occurrenceTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "occurrenceTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "occurrenceTiming", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["performerType"] {
			presentKeys.insert("performerType")
			if let val = exist as? FHIRJSON {
				do {
					self.performerType = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performerType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performerType", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonCode"] {
			presentKeys.insert("reasonCode")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonCode = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonReference"] {
			presentKeys.insert("reasonReference")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonReference = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["relevantHistory"] {
			presentKeys.insert("relevantHistory")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relevantHistory = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relevantHistory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relevantHistory", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["replaces"] {
			presentKeys.insert("replaces")
			if let val = exist as? [FHIRJSON] {
				do {
					self.replaces = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "replaces"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "replaces", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["requisition"] {
			presentKeys.insert("requisition")
			if let val = exist as? FHIRJSON {
				do {
					self.requisition = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requisition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requisition", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["stage"] {
			presentKeys.insert("stage")
			if let val = exist as? FHIRJSON {
				do {
					self.stage = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "stage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "stage", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "stage"))
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
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
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.deviceReference && nil == self.deviceCodeableConcept {
			errors.append(FHIRValidationError(missing: "device[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let authored = self.authored {
			json["authored"] = authored.asJSON()
		}
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.map() { $0.asJSON(errors: &errors) }
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let definition = self.definition {
			json["definition"] = definition.map() { $0.asJSON(errors: &errors) }
		}
		if let deviceCodeableConcept = self.deviceCodeableConcept {
			json["deviceCodeableConcept"] = deviceCodeableConcept.asJSON(errors: &errors)
		}
		if let deviceReference = self.deviceReference {
			json["deviceReference"] = deviceReference.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let occurrenceDateTime = self.occurrenceDateTime {
			json["occurrenceDateTime"] = occurrenceDateTime.asJSON()
		}
		if let occurrencePeriod = self.occurrencePeriod {
			json["occurrencePeriod"] = occurrencePeriod.asJSON(errors: &errors)
		}
		if let occurrenceTiming = self.occurrenceTiming {
			json["occurrenceTiming"] = occurrenceTiming.asJSON(errors: &errors)
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON(errors: &errors)
		}
		if let performerType = self.performerType {
			json["performerType"] = performerType.asJSON(errors: &errors)
		}
		if let reasonCode = self.reasonCode {
			json["reasonCode"] = reasonCode.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.map() { $0.asJSON(errors: &errors) }
		}
		if let relevantHistory = self.relevantHistory {
			json["relevantHistory"] = relevantHistory.map() { $0.asJSON(errors: &errors) }
		}
		if let replaces = self.replaces {
			json["replaces"] = replaces.map() { $0.asJSON(errors: &errors) }
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON(errors: &errors)
		}
		if let requisition = self.requisition {
			json["requisition"] = requisition.asJSON(errors: &errors)
		}
		if let stage = self.stage {
			json["stage"] = stage.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let supportingInfo = self.supportingInfo {
			json["supportingInfo"] = supportingInfo.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}

