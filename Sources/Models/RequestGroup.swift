//
//  RequestGroup.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/RequestGroup) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A group of related requests.

A group of related requests that can be used to capture intended activities that have inter-dependencies such as "give
this medication after that one".
*/
open class RequestGroup: DomainResource {
	override open class var resourceType: String {
		get { return "RequestGroup" }
	}
	
	/// Proposed actions, if any.
	public var action: [RequestGroupAction]?
	
	/// Device or practitioner that authored the request group.
	public var author: Reference?
	
	/// Encounter or Episode for the request group.
	public var context: Reference?
	
	/// Business identifier.
	public var identifier: Identifier?
	
	/// Additional notes about the response.
	public var note: [Annotation]?
	
	/// When the request group was authored.
	public var occurrenceDateTime: DateTime?
	
	/// Reason for the request group.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason for the request group.
	public var reasonReference: Reference?
	
	/// Subject of the request group.
	public var subject: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try RequestGroupAction.instantiate(fromArray: val, owner: self) as? [RequestGroupAction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["author"] {
			presentKeys.insert("author")
			if let val = exist as? FHIRJSON {
				do {
					self.author = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "author"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "author", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		if let author = self.author {
			json["author"] = author.asJSON(errors: &errors)
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let occurrenceDateTime = self.occurrenceDateTime {
			json["occurrenceDateTime"] = occurrenceDateTime.asJSON()
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON(errors: &errors)
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON(errors: &errors)
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Proposed actions, if any.

The actions, if any, produced by the evaluation of the artifact.
*/
open class RequestGroupAction: BackboneElement {
	override open class var resourceType: String {
		get { return "RequestGroupAction" }
	}
	
	/// Sub action.
	public var action: [RequestGroupAction]?
	
	/// Unique identifier.
	public var actionIdentifier: Identifier?
	
	/// Defines whether the action can be selected multiple times.
	public var cardinalityBehavior: PlanActionCardinalityBehavior?
	
	/// The meaning of the action or its sub-actions.
	public var code: [CodeableConcept]?
	
	/// Whether or not the action is applicable.
	public var condition: [RequestGroupActionCondition]?
	
	/// Short description of the action.
	public var description_fhir: String?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [RelatedArtifact]?
	
	/// Defines the grouping behavior for the action and its children.
	public var groupingBehavior: PlanActionGroupingBehavior?
	
	/// User-visible label for the action (e.g. 1. or A.).
	public var label: String?
	
	/// Participant.
	public var participant: [Reference]?
	
	/// Defines whether the action should usually be preselected.
	public var precheckBehavior: PlanActionPrecheckBehavior?
	
	/// Relationship to another action.
	public var relatedAction: [RequestGroupActionRelatedAction]?
	
	/// Defines the requiredness behavior for the action.
	public var requiredBehavior: PlanActionRequiredBehavior?
	
	/// The target of the action.
	public var resource: Reference?
	
	/// Defines the selection behavior for the action and its children.
	public var selectionBehavior: PlanActionSelectionBehavior?
	
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
	
	/// When the action should take place.
	public var timingTiming: Timing?
	
	/// User-visible title.
	public var title: String?
	
	/// create | update | remove | fire-event.
	public var type: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try RequestGroupAction.instantiate(fromArray: val, owner: self) as? [RequestGroupAction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["actionIdentifier"] {
			presentKeys.insert("actionIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.actionIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actionIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actionIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["cardinalityBehavior"] {
			presentKeys.insert("cardinalityBehavior")
			if let val = exist as? String {
				if let enumval = PlanActionCardinalityBehavior(rawValue: val) {
					self.cardinalityBehavior = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "cardinalityBehavior", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "cardinalityBehavior", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? [FHIRJSON] {
				do {
					self.code = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["condition"] {
			presentKeys.insert("condition")
			if let val = exist as? [FHIRJSON] {
				do {
					self.condition = try RequestGroupActionCondition.instantiate(fromArray: val, owner: self) as? [RequestGroupActionCondition]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "condition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "condition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.documentation = try RelatedArtifact.instantiate(fromArray: val, owner: self) as? [RelatedArtifact]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "documentation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["groupingBehavior"] {
			presentKeys.insert("groupingBehavior")
			if let val = exist as? String {
				if let enumval = PlanActionGroupingBehavior(rawValue: val) {
					self.groupingBehavior = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "groupingBehavior", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "groupingBehavior", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["label"] {
			presentKeys.insert("label")
			if let val = exist as? String {
				self.label = val
			}
			else {
				errors.append(FHIRValidationError(key: "label", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["participant"] {
			presentKeys.insert("participant")
			if let val = exist as? [FHIRJSON] {
				do {
					self.participant = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "participant"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "participant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["precheckBehavior"] {
			presentKeys.insert("precheckBehavior")
			if let val = exist as? String {
				if let enumval = PlanActionPrecheckBehavior(rawValue: val) {
					self.precheckBehavior = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "precheckBehavior", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "precheckBehavior", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["relatedAction"] {
			presentKeys.insert("relatedAction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relatedAction = try RequestGroupActionRelatedAction.instantiate(fromArray: val, owner: self) as? [RequestGroupActionRelatedAction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relatedAction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relatedAction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["requiredBehavior"] {
			presentKeys.insert("requiredBehavior")
			if let val = exist as? String {
				if let enumval = PlanActionRequiredBehavior(rawValue: val) {
					self.requiredBehavior = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "requiredBehavior", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requiredBehavior", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? FHIRJSON {
				do {
					self.resource = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["selectionBehavior"] {
			presentKeys.insert("selectionBehavior")
			if let val = exist as? String {
				if let enumval = PlanActionSelectionBehavior(rawValue: val) {
					self.selectionBehavior = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "selectionBehavior", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "selectionBehavior", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["textEquivalent"] {
			presentKeys.insert("textEquivalent")
			if let val = exist as? String {
				self.textEquivalent = val
			}
			else {
				errors.append(FHIRValidationError(key: "textEquivalent", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["timingDateTime"] {
			presentKeys.insert("timingDateTime")
			if let val = exist as? String {
				self.timingDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "timingDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["timingDuration"] {
			presentKeys.insert("timingDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.timingDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timingDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timingDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["timingPeriod"] {
			presentKeys.insert("timingPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.timingPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timingPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timingPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["timingRange"] {
			presentKeys.insert("timingRange")
			if let val = exist as? FHIRJSON {
				do {
					self.timingRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timingRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timingRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["timingTiming"] {
			presentKeys.insert("timingTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.timingTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timingTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timingTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = val
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		if let actionIdentifier = self.actionIdentifier {
			json["actionIdentifier"] = actionIdentifier.asJSON(errors: &errors)
		}
		if let cardinalityBehavior = self.cardinalityBehavior {
			json["cardinalityBehavior"] = cardinalityBehavior.rawValue
		}
		if let code = self.code {
			json["code"] = code.map() { $0.asJSON(errors: &errors) }
		}
		if let condition = self.condition {
			json["condition"] = condition.map() { $0.asJSON(errors: &errors) }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.map() { $0.asJSON(errors: &errors) }
		}
		if let groupingBehavior = self.groupingBehavior {
			json["groupingBehavior"] = groupingBehavior.rawValue
		}
		if let label = self.label {
			json["label"] = label.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = participant.map() { $0.asJSON(errors: &errors) }
		}
		if let precheckBehavior = self.precheckBehavior {
			json["precheckBehavior"] = precheckBehavior.rawValue
		}
		if let relatedAction = self.relatedAction {
			json["relatedAction"] = relatedAction.map() { $0.asJSON(errors: &errors) }
		}
		if let requiredBehavior = self.requiredBehavior {
			json["requiredBehavior"] = requiredBehavior.rawValue
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON(errors: &errors)
		}
		if let selectionBehavior = self.selectionBehavior {
			json["selectionBehavior"] = selectionBehavior.rawValue
		}
		if let textEquivalent = self.textEquivalent {
			json["textEquivalent"] = textEquivalent.asJSON()
		}
		if let timingDateTime = self.timingDateTime {
			json["timingDateTime"] = timingDateTime.asJSON()
		}
		if let timingDuration = self.timingDuration {
			json["timingDuration"] = timingDuration.asJSON(errors: &errors)
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON(errors: &errors)
		}
		if let timingRange = self.timingRange {
			json["timingRange"] = timingRange.asJSON(errors: &errors)
		}
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON(errors: &errors)
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Whether or not the action is applicable.

An expression that describes applicability criteria, or start/stop conditions for the action.
*/
open class RequestGroupActionCondition: BackboneElement {
	override open class var resourceType: String {
		get { return "RequestGroupActionCondition" }
	}
	
	/// Natural language description of the condition.
	public var description_fhir: String?
	
	/// Boolean-valued expression.
	public var expression: String?
	
	/// The kind of condition.
	public var kind: PlanActionConditionKind?
	
	/// Language of the expression.
	public var language: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(kind: PlanActionConditionKind) {
		self.init()
		self.kind = kind
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["expression"] {
			presentKeys.insert("expression")
			if let val = exist as? String {
				self.expression = val
			}
			else {
				errors.append(FHIRValidationError(key: "expression", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["kind"] {
			presentKeys.insert("kind")
			if let val = exist as? String {
				if let enumval = PlanActionConditionKind(rawValue: val) {
					self.kind = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "kind", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "kind", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? String {
				self.language = val
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let expression = self.expression {
			json["expression"] = expression.asJSON()
		}
		if let kind = self.kind {
			json["kind"] = kind.rawValue
		}
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		
		return json
	}
}


/**
Relationship to another action.

A relationship to another action such as "before" or "30-60 minutes after start of".
*/
open class RequestGroupActionRelatedAction: BackboneElement {
	override open class var resourceType: String {
		get { return "RequestGroupActionRelatedAction" }
	}
	
	/// Identifier of the related action.
	public var actionIdentifier: Identifier?
	
	/// Time offset for the relationship.
	public var offsetDuration: Duration?
	
	/// Time offset for the relationship.
	public var offsetRange: Range?
	
	/// The relationship of this action to the related action.
	public var relationship: PlanActionRelationshipType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actionIdentifier: Identifier, relationship: PlanActionRelationshipType) {
		self.init()
		self.actionIdentifier = actionIdentifier
		self.relationship = relationship
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["actionIdentifier"] {
			presentKeys.insert("actionIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.actionIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actionIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actionIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "actionIdentifier"))
		}
		if let exist = json["offsetDuration"] {
			presentKeys.insert("offsetDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.offsetDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "offsetDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "offsetDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["offsetRange"] {
			presentKeys.insert("offsetRange")
			if let val = exist as? FHIRJSON {
				do {
					self.offsetRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "offsetRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "offsetRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["relationship"] {
			presentKeys.insert("relationship")
			if let val = exist as? String {
				if let enumval = PlanActionRelationshipType(rawValue: val) {
					self.relationship = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "relationship", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relationship", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let actionIdentifier = self.actionIdentifier {
			json["actionIdentifier"] = actionIdentifier.asJSON(errors: &errors)
		}
		if let offsetDuration = self.offsetDuration {
			json["offsetDuration"] = offsetDuration.asJSON(errors: &errors)
		}
		if let offsetRange = self.offsetRange {
			json["offsetRange"] = offsetRange.asJSON(errors: &errors)
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.rawValue
		}
		
		return json
	}
}

