//
//  DeviceUseRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DeviceUseRequest) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Medical device request.
 *
 *  Represents a request for a patient to employ a medical device. The device may be an implantable device, or an
 *  external assistive device, such as a walker.
 */
public class DeviceUseRequest: DomainResource {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["authored"] {
				presentKeys.insert("authored")
				if let val = exist as? String {
					self.authored = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "authored", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["basedOn"] {
				presentKeys.insert("basedOn")
				if let val = exist as? [FHIRJSON] {
					self.basedOn = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basedOn", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? [FHIRJSON] {
					self.definition = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["deviceCodeableConcept"] {
				presentKeys.insert("deviceCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.deviceCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "deviceCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["deviceReference"] {
				presentKeys.insert("deviceReference")
				if let val = exist as? FHIRJSON {
					self.deviceReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "deviceReference", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["occurrenceDateTime"] {
				presentKeys.insert("occurrenceDateTime")
				if let val = exist as? String {
					self.occurrenceDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "occurrenceDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["occurrencePeriod"] {
				presentKeys.insert("occurrencePeriod")
				if let val = exist as? FHIRJSON {
					self.occurrencePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "occurrencePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["occurrenceTiming"] {
				presentKeys.insert("occurrenceTiming")
				if let val = exist as? FHIRJSON {
					self.occurrenceTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "occurrenceTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["performerType"] {
				presentKeys.insert("performerType")
				if let val = exist as? FHIRJSON {
					self.performerType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "performerType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonCode"] {
				presentKeys.insert("reasonCode")
				if let val = exist as? [FHIRJSON] {
					self.reasonCode = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? [FHIRJSON] {
					self.reasonReference = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relevantHistory"] {
				presentKeys.insert("relevantHistory")
				if let val = exist as? [FHIRJSON] {
					self.relevantHistory = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "relevantHistory", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["replaces"] {
				presentKeys.insert("replaces")
				if let val = exist as? [FHIRJSON] {
					self.replaces = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "replaces", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["requisition"] {
				presentKeys.insert("requisition")
				if let val = exist as? FHIRJSON {
					self.requisition = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requisition", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["stage"] {
				presentKeys.insert("stage")
				if let val = exist as? FHIRJSON {
					self.stage = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "stage", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "stage"))
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			if let exist: AnyObject = js["supportingInfo"] {
				presentKeys.insert("supportingInfo")
				if let val = exist as? [FHIRJSON] {
					self.supportingInfo = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingInfo", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.deviceReference && nil == self.deviceCodeableConcept {
				errors.append(FHIRJSONError(key: "device*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authored = self.authored {
			json["authored"] = authored.asJSON()
		}
		if let basedOn = self.basedOn {
			json["basedOn"] = Reference.asJSONArray(basedOn)
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = Reference.asJSONArray(definition)
		}
		if let deviceCodeableConcept = self.deviceCodeableConcept {
			json["deviceCodeableConcept"] = deviceCodeableConcept.asJSON()
		}
		if let deviceReference = self.deviceReference {
			json["deviceReference"] = deviceReference.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
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
			json["reasonCode"] = CodeableConcept.asJSONArray(reasonCode)
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = Reference.asJSONArray(reasonReference)
		}
		if let relevantHistory = self.relevantHistory {
			json["relevantHistory"] = Reference.asJSONArray(relevantHistory)
		}
		if let replaces = self.replaces {
			json["replaces"] = Reference.asJSONArray(replaces)
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
			json["supportingInfo"] = Reference.asJSONArray(supportingInfo)
		}
		
		return json
	}
}

