//
//  DiagnosticRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DiagnosticRequest) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A request for a diagnostic service.
 *
 *  A record of a request for a diagnostic investigation service to be performed.
 */
public class DiagnosticRequest: DomainResource {
	override public class var resourceName: String {
		get { return "DiagnosticRequest" }
	}
	
	/// Date request signed.
	public var authored: DateTime?
	
	/// What request fulfills.
	public var basedOn: [Reference]?
	
	/// What’s being requested/ordered.
	public var code: CodeableConcept?
	
	/// Encounter or Episode during which request was created.
	public var context: Reference?
	
	/// Protocol or definition.
	public var definition: [Reference]?
	
	/// Identifiers assigned to this order.
	public var identifier: [Identifier]?
	
	/// Comments.
	public var note: [Annotation]?
	
	/// When testing should occur.
	public var occurrenceDateTime: DateTime?
	
	/// When testing should occur.
	public var occurrencePeriod: Period?
	
	/// When testing should occur.
	public var occurrenceTiming: Timing?
	
	/// Requested perfomer.
	public var performer: Reference?
	
	/// Performer role.
	public var performerType: CodeableConcept?
	
	/// Explanation/Justification for test.
	public var reason: [CodeableConcept]?
	
	/// Request provenance.
	public var relevantHistory: [Reference]?
	
	/// What request replaces.
	public var replaces: [Reference]?
	
	/// Who/what is requesting diagnostics.
	public var requester: Reference?
	
	/// Identifier of composite request.
	public var requisition: Identifier?
	
	/// proposal | plan | original-order | reflex-order.
	public var stage: CodeableConcept?
	
	/// draft | active | suspended | completed | entered-in-error | cancelled.
	public var status: String?
	
	/// Individual the test is ordered for.
	public var subject: Reference?
	
	/// Additional clinical information.
	public var supportingInformation: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, stage: CodeableConcept, subject: Reference) {
		self.init(json: nil)
		self.code = code
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
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
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
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["supportingInformation"] {
				presentKeys.insert("supportingInformation")
				if let val = exist as? [FHIRJSON] {
					self.supportingInformation = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingInformation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
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
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = Reference.asJSONArray(definition)
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
		if let reason = self.reason {
			json["reason"] = CodeableConcept.asJSONArray(reason)
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
		if let supportingInformation = self.supportingInformation {
			json["supportingInformation"] = Reference.asJSONArray(supportingInformation)
		}
		
		return json
	}
}

