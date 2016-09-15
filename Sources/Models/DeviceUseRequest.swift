//
//  DeviceUseRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DeviceUseRequest) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Medical device request.
 *
 *  Represents a request for a patient to employ a medical device. The device may be an implantable device, or an
 *  external assistive device, such as a walker.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(deviceCodeableConcept: CodeableConcept, deviceReference: Reference, stage: CodeableConcept, subject: Reference) {
		self.init(json: nil)
		self.deviceCodeableConcept = deviceCodeableConcept
		self.deviceReference = deviceReference
		self.stage = stage
		self.subject = subject
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["authored"] {
				presentKeys.insert("authored")
				if let val = exist as? String {
					self.authored = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "authored", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["basedOn"] {
				presentKeys.insert("basedOn")
				if let val = exist as? [FHIRJSON] {
					self.basedOn = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basedOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? [FHIRJSON] {
					self.definition = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["deviceCodeableConcept"] {
				presentKeys.insert("deviceCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.deviceCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "deviceCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["deviceReference"] {
				presentKeys.insert("deviceReference")
				if let val = exist as? FHIRJSON {
					self.deviceReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "deviceReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["occurrenceDateTime"] {
				presentKeys.insert("occurrenceDateTime")
				if let val = exist as? String {
					self.occurrenceDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "occurrenceDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["occurrencePeriod"] {
				presentKeys.insert("occurrencePeriod")
				if let val = exist as? FHIRJSON {
					self.occurrencePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "occurrencePeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["occurrenceTiming"] {
				presentKeys.insert("occurrenceTiming")
				if let val = exist as? FHIRJSON {
					self.occurrenceTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "occurrenceTiming", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? FHIRJSON {
					self.performer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["performerType"] {
				presentKeys.insert("performerType")
				if let val = exist as? FHIRJSON {
					self.performerType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "performerType", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonCode"] {
				presentKeys.insert("reasonCode")
				if let val = exist as? [FHIRJSON] {
					self.reasonCode = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? [FHIRJSON] {
					self.reasonReference = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["relevantHistory"] {
				presentKeys.insert("relevantHistory")
				if let val = exist as? [FHIRJSON] {
					self.relevantHistory = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "relevantHistory", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["replaces"] {
				presentKeys.insert("replaces")
				if let val = exist as? [FHIRJSON] {
					self.replaces = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "replaces", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["requester"] {
				presentKeys.insert("requester")
				if let val = exist as? FHIRJSON {
					self.requester = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requester", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requisition"] {
				presentKeys.insert("requisition")
				if let val = exist as? FHIRJSON {
					self.requisition = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requisition", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["stage"] {
				presentKeys.insert("stage")
				if let val = exist as? FHIRJSON {
					self.stage = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "stage", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "stage"))
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			if let exist = js["supportingInfo"] {
				presentKeys.insert("supportingInfo")
				if let val = exist as? [FHIRJSON] {
					self.supportingInfo = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingInfo", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.deviceReference && nil == self.deviceCodeableConcept {
				errors.append(FHIRJSONError(key: "device*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authored = self.authored {
			json["authored"] = authored.asJSON()
		}
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.map() { $0.asJSON() }
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = definition.map() { $0.asJSON() }
		}
		if let deviceCodeableConcept = self.deviceCodeableConcept {
			json["deviceCodeableConcept"] = deviceCodeableConcept.asJSON()
		}
		if let deviceReference = self.deviceReference {
			json["deviceReference"] = deviceReference.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON() }
		}
		if let occurrenceDateTime = self.occurrenceDateTime {
			json["occurrenceDateTime"] = occurrenceDateTime.asJSON()
		}
		if let occurrencePeriod = self.occurrencePeriod {
			json["occurrencePeriod"] = occurrencePeriod.asJSON()
		}
		if let occurrenceTiming = self.occurrenceTiming {
			json["occurrenceTiming"] = occurrenceTiming.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON()
		}
		if let performerType = self.performerType {
			json["performerType"] = performerType.asJSON()
		}
		if let reasonCode = self.reasonCode {
			json["reasonCode"] = reasonCode.map() { $0.asJSON() }
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.map() { $0.asJSON() }
		}
		if let relevantHistory = self.relevantHistory {
			json["relevantHistory"] = relevantHistory.map() { $0.asJSON() }
		}
		if let replaces = self.replaces {
			json["replaces"] = replaces.map() { $0.asJSON() }
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON()
		}
		if let requisition = self.requisition {
			json["requisition"] = requisition.asJSON()
		}
		if let stage = self.stage {
			json["stage"] = stage.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let supportingInfo = self.supportingInfo {
			json["supportingInfo"] = supportingInfo.map() { $0.asJSON() }
		}
		
		return json
	}
}

