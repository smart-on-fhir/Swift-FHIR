//
//  RequestGroup.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/RequestGroup) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A group of related requests.
 *
 *  A group of related requests that can be used to capture intended activities that have inter-dependencies such as
 *  "give this medication after that one".
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
 *  Proposed actions, if any.
 *
 *  The actions, if any, produced by the evaluation of the artifact.
 */
open class RequestGroupAction: BackboneElement {
	override open class var resourceType: String {
		get { return "RequestGroupAction" }
	}
	
	/// Sub action.
	public var action: [RequestGroupAction]?
	
	/// Unique identifier.
	public var actionIdentifier: Identifier?
	
	/// single | multiple.
	public var cardinalityBehavior: String?
	
	/// The meaning of the action or its sub-actions.
	public var code: [CodeableConcept]?
	
	/// Short description of the action.
	public var description_fhir: String?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [RelatedArtifact]?
	
	/// visual-group | logical-group | sentence-group.
	public var groupingBehavior: String?
	
	/// User-visible label for the action (e.g. 1. or A.).
	public var label: String?
	
	/// Participant.
	public var participant: [Reference]?
	
	/// yes | no.
	public var precheckBehavior: String?
	
	/// Relationship to another action.
	public var relatedAction: RequestGroupActionRelatedAction?
	
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
				self.cardinalityBehavior = val
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
				self.groupingBehavior = val
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
				self.precheckBehavior = val
			}
			else {
				errors.append(FHIRValidationError(key: "precheckBehavior", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["relatedAction"] {
			presentKeys.insert("relatedAction")
			if let val = exist as? FHIRJSON {
				do {
					self.relatedAction = try RequestGroupActionRelatedAction(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relatedAction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relatedAction", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requiredBehavior"] {
			presentKeys.insert("requiredBehavior")
			if let val = exist as? String {
				self.requiredBehavior = val
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
				self.selectionBehavior = val
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
			json["cardinalityBehavior"] = cardinalityBehavior.asJSON()
		}
		if let code = self.code {
			json["code"] = code.map() { $0.asJSON(errors: &errors) }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.map() { $0.asJSON(errors: &errors) }
		}
		if let groupingBehavior = self.groupingBehavior {
			json["groupingBehavior"] = groupingBehavior.asJSON()
		}
		if let label = self.label {
			json["label"] = label.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = participant.map() { $0.asJSON(errors: &errors) }
		}
		if let precheckBehavior = self.precheckBehavior {
			json["precheckBehavior"] = precheckBehavior.asJSON()
		}
		if let relatedAction = self.relatedAction {
			json["relatedAction"] = relatedAction.asJSON(errors: &errors)
		}
		if let requiredBehavior = self.requiredBehavior {
			json["requiredBehavior"] = requiredBehavior.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON(errors: &errors)
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
			json["timingDuration"] = timingDuration.asJSON(errors: &errors)
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON(errors: &errors)
		}
		if let timingRange = self.timingRange {
			json["timingRange"] = timingRange.asJSON(errors: &errors)
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
 *  Relationship to another action.
 *
 *  A relationship to another action such as "before" or "30-60 minutes after start of".
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
	
	/// before-start | before | before-end | concurrent-with-start | concurrent | concurrent-with-end | after-start | after | after-end.
	public var relationship: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actionIdentifier: Identifier, relationship: String) {
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
				self.relationship = val
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
			json["relationship"] = relationship.asJSON()
		}
		
		return json
	}
}

