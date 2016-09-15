//
//  GuidanceResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/GuidanceResponse) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The formal response to a guidance request.
 *
 *  A guidance response is the formal response to a guidance request, including any output parameters returned by the
 *  evaluation, as well as the description of any proposed actions to be taken.
 */
open class GuidanceResponse: DomainResource {
	override open class var resourceType: String {
		get { return "GuidanceResponse" }
	}
	
	/// Proposed actions, if any.
	public var action: [GuidanceResponseAction]?
	
	/// Encounter or Episode during which the response was returned.
	public var context: Reference?
	
	/// Additional required data.
	public var dataRequirement: [DataRequirement]?
	
	/// Messages resulting from the evaluation of the artifact or artifacts.
	public var evaluationMessage: [Reference]?
	
	/// Business identifier.
	public var identifier: Identifier?
	
	/// A reference to a knowledge module.
	public var module: Reference?
	
	/// Additional notes about the response.
	public var note: [Annotation]?
	
	/// When the guidance response was processed.
	public var occurrenceDateTime: DateTime?
	
	/// The output parameters of the evaluation, if any.
	public var outputParameters: Reference?
	
	/// Device returning the guidance.
	public var performer: Reference?
	
	/// Reason for the response.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason for the response.
	public var reasonReference: Reference?
	
	/// The id of the request associated with this response, if any.
	public var requestId: String?
	
	/// success | data-requested | data-required | in-progress | failure.
	public var status: String?
	
	/// Patient the request was performed for.
	public var subject: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(module: Reference, status: String) {
		self.init(json: nil)
		self.module = module
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = GuidanceResponseAction.instantiate(fromArray: val, owner: self) as? [GuidanceResponseAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["dataRequirement"] {
				presentKeys.insert("dataRequirement")
				if let val = exist as? [FHIRJSON] {
					self.dataRequirement = DataRequirement.instantiate(fromArray: val, owner: self) as? [DataRequirement]
				}
				else {
					errors.append(FHIRJSONError(key: "dataRequirement", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["evaluationMessage"] {
				presentKeys.insert("evaluationMessage")
				if let val = exist as? [FHIRJSON] {
					self.evaluationMessage = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "evaluationMessage", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["module"] {
				presentKeys.insert("module")
				if let val = exist as? FHIRJSON {
					self.module = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "module", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "module"))
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
			if let exist = js["outputParameters"] {
				presentKeys.insert("outputParameters")
				if let val = exist as? FHIRJSON {
					self.outputParameters = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outputParameters", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["reasonCodeableConcept"] {
				presentKeys.insert("reasonCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? FHIRJSON {
					self.reasonReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestId"] {
				presentKeys.insert("requestId")
				if let val = exist as? String {
					self.requestId = val
				}
				else {
					errors.append(FHIRJSONError(key: "requestId", wants: String.self, has: type(of: exist)))
				}
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
			else {
				errors.append(FHIRJSONError(key: "status"))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let dataRequirement = self.dataRequirement {
			json["dataRequirement"] = dataRequirement.map() { $0.asJSON() }
		}
		if let evaluationMessage = self.evaluationMessage {
			json["evaluationMessage"] = evaluationMessage.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let module = self.module {
			json["module"] = module.asJSON()
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON() }
		}
		if let occurrenceDateTime = self.occurrenceDateTime {
			json["occurrenceDateTime"] = occurrenceDateTime.asJSON()
		}
		if let outputParameters = self.outputParameters {
			json["outputParameters"] = outputParameters.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON()
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON()
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON()
		}
		if let requestId = self.requestId {
			json["requestId"] = requestId.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		
		return json
	}
}


/**
 *  Proposed actions, if any.
 *
 *  The actions, if any, produced by the evaluation of the artifact.
 */
open class GuidanceResponseAction: BackboneElement {
	override open class var resourceType: String {
		get { return "GuidanceResponseAction" }
	}
	
	/// Sub action.
	public var action: [GuidanceResponseAction]?
	
	/// Unique identifier.
	public var actionIdentifier: Identifier?
	
	/// single | multiple.
	public var cardinalityBehavior: String?
	
	/// The meaning of the action or its sub-actions.
	public var concept: [CodeableConcept]?
	
	/// Short description of the action.
	public var description_fhir: String?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [RelatedResource]?
	
	/// visual-group | logical-group | sentence-group.
	public var groupingBehavior: String?
	
	/// User-visible label for the action (e.g. 1. or A.).
	public var label: String?
	
	/// Participant.
	public var participant: [Reference]?
	
	/// yes | no.
	public var precheckBehavior: String?
	
	/// Relationship to another action.
	public var relatedAction: GuidanceResponseActionRelatedAction?
	
	/// must | could | must-unless-documented.
	public var requiredBehavior: String?
	
	/// The target of the action.
	public var resource: Reference?
	
	/// any | all | all-or-none | exactly-one | at-most-one | one-or-more.
	public var selectionBehavior: String?
	
	/// Static text equivalent of the action, used if the dynamic aspects cannot be interpreted by the receiving system.
	public var textEquivalent: String?
	
	/// When the action should take place.
	public var timingDateTime: DateTime?
	
	/// When the action should take place.
	public var timingDuration: Duration?
	
	/// When the action should take place.
	public var timingPeriod: Period?
	
	/// When the action should take place.
	public var timingRange: Range?
	
	/// User-visible title.
	public var title: String?
	
	/// create | update | remove | fire-event.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = GuidanceResponseAction.instantiate(fromArray: val, owner: self) as? [GuidanceResponseAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["actionIdentifier"] {
				presentKeys.insert("actionIdentifier")
				if let val = exist as? FHIRJSON {
					self.actionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actionIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["cardinalityBehavior"] {
				presentKeys.insert("cardinalityBehavior")
				if let val = exist as? String {
					self.cardinalityBehavior = val
				}
				else {
					errors.append(FHIRJSONError(key: "cardinalityBehavior", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["concept"] {
				presentKeys.insert("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "concept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? [FHIRJSON] {
					self.documentation = RelatedResource.instantiate(fromArray: val, owner: self) as? [RelatedResource]
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["groupingBehavior"] {
				presentKeys.insert("groupingBehavior")
				if let val = exist as? String {
					self.groupingBehavior = val
				}
				else {
					errors.append(FHIRJSONError(key: "groupingBehavior", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["label"] {
				presentKeys.insert("label")
				if let val = exist as? String {
					self.label = val
				}
				else {
					errors.append(FHIRJSONError(key: "label", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["participant"] {
				presentKeys.insert("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "participant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["precheckBehavior"] {
				presentKeys.insert("precheckBehavior")
				if let val = exist as? String {
					self.precheckBehavior = val
				}
				else {
					errors.append(FHIRJSONError(key: "precheckBehavior", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["relatedAction"] {
				presentKeys.insert("relatedAction")
				if let val = exist as? FHIRJSON {
					self.relatedAction = GuidanceResponseActionRelatedAction(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "relatedAction", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requiredBehavior"] {
				presentKeys.insert("requiredBehavior")
				if let val = exist as? String {
					self.requiredBehavior = val
				}
				else {
					errors.append(FHIRJSONError(key: "requiredBehavior", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["selectionBehavior"] {
				presentKeys.insert("selectionBehavior")
				if let val = exist as? String {
					self.selectionBehavior = val
				}
				else {
					errors.append(FHIRJSONError(key: "selectionBehavior", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["textEquivalent"] {
				presentKeys.insert("textEquivalent")
				if let val = exist as? String {
					self.textEquivalent = val
				}
				else {
					errors.append(FHIRJSONError(key: "textEquivalent", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["timingDateTime"] {
				presentKeys.insert("timingDateTime")
				if let val = exist as? String {
					self.timingDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "timingDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["timingDuration"] {
				presentKeys.insert("timingDuration")
				if let val = exist as? FHIRJSON {
					self.timingDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingDuration", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["timingPeriod"] {
				presentKeys.insert("timingPeriod")
				if let val = exist as? FHIRJSON {
					self.timingPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingPeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["timingRange"] {
				presentKeys.insert("timingRange")
				if let val = exist as? FHIRJSON {
					self.timingRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingRange", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
		}
		if let actionIdentifier = self.actionIdentifier {
			json["actionIdentifier"] = actionIdentifier.asJSON()
		}
		if let cardinalityBehavior = self.cardinalityBehavior {
			json["cardinalityBehavior"] = cardinalityBehavior.asJSON()
		}
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON() }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.map() { $0.asJSON() }
		}
		if let groupingBehavior = self.groupingBehavior {
			json["groupingBehavior"] = groupingBehavior.asJSON()
		}
		if let label = self.label {
			json["label"] = label.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = participant.map() { $0.asJSON() }
		}
		if let precheckBehavior = self.precheckBehavior {
			json["precheckBehavior"] = precheckBehavior.asJSON()
		}
		if let relatedAction = self.relatedAction {
			json["relatedAction"] = relatedAction.asJSON()
		}
		if let requiredBehavior = self.requiredBehavior {
			json["requiredBehavior"] = requiredBehavior.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let selectionBehavior = self.selectionBehavior {
			json["selectionBehavior"] = selectionBehavior.asJSON()
		}
		if let textEquivalent = self.textEquivalent {
			json["textEquivalent"] = textEquivalent.asJSON()
		}
		if let timingDateTime = self.timingDateTime {
			json["timingDateTime"] = timingDateTime.asJSON()
		}
		if let timingDuration = self.timingDuration {
			json["timingDuration"] = timingDuration.asJSON()
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON()
		}
		if let timingRange = self.timingRange {
			json["timingRange"] = timingRange.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Relationship to another action.
 *
 *  A relationship to another action such as "before" or "30-60 minutes after start of".
 */
open class GuidanceResponseActionRelatedAction: BackboneElement {
	override open class var resourceType: String {
		get { return "GuidanceResponseActionRelatedAction" }
	}
	
	/// Identifier of the related action.
	public var actionIdentifier: Identifier?
	
	/// start | end.
	public var anchor: String?
	
	/// Time offset for the relationship.
	public var offsetDuration: Duration?
	
	/// Time offset for the relationship.
	public var offsetRange: Range?
	
	/// before | after.
	public var relationship: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actionIdentifier: Identifier, relationship: String) {
		self.init(json: nil)
		self.actionIdentifier = actionIdentifier
		self.relationship = relationship
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["actionIdentifier"] {
				presentKeys.insert("actionIdentifier")
				if let val = exist as? FHIRJSON {
					self.actionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actionIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "actionIdentifier"))
			}
			if let exist = js["anchor"] {
				presentKeys.insert("anchor")
				if let val = exist as? String {
					self.anchor = val
				}
				else {
					errors.append(FHIRJSONError(key: "anchor", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["offsetDuration"] {
				presentKeys.insert("offsetDuration")
				if let val = exist as? FHIRJSON {
					self.offsetDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "offsetDuration", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["offsetRange"] {
				presentKeys.insert("offsetRange")
				if let val = exist as? FHIRJSON {
					self.offsetRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "offsetRange", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["relationship"] {
				presentKeys.insert("relationship")
				if let val = exist as? String {
					self.relationship = val
				}
				else {
					errors.append(FHIRJSONError(key: "relationship", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "relationship"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actionIdentifier = self.actionIdentifier {
			json["actionIdentifier"] = actionIdentifier.asJSON()
		}
		if let anchor = self.anchor {
			json["anchor"] = anchor.asJSON()
		}
		if let offsetDuration = self.offsetDuration {
			json["offsetDuration"] = offsetDuration.asJSON()
		}
		if let offsetRange = self.offsetRange {
			json["offsetRange"] = offsetRange.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		
		return json
	}
}

