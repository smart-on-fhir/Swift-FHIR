//
//  PlanDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/PlanDefinition) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The definition of a plan for a series of actions, independent of any specific patient or context.
 *
 *  This resource allows for the definition of various types of plans as a sharable, consumable, and executable
 *  artifact. The resource is general enough to support the description of a broad range of clinical artifacts such as
 *  clinical decision support rules, order sets and protocols.
 */
open class PlanDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "PlanDefinition" }
	}
	
	/// Action defined by the plan.
	public var actionDefinition: [PlanDefinitionActionDefinition]?
	
	/// When plan definition approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the plan definition.
	public var description_fhir: String?
	
	/// The effective date range for the plan definition.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Additional identifier for the plan definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for plan definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Last review date for the plan definition.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the plan definition.
	public var library: [Reference]?
	
	/// Name for this plan definition (Computer friendly).
	public var name: String?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this plan definition is defined.
	public var purpose: String?
	
	/// Related artifacts for the asset.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Name for this plan definition (Human friendly).
	public var title: String?
	
	/// Descriptional topics for the asset.
	public var topic: [CodeableConcept]?
	
	/// order-set | protocol | eca-rule.
	public var type: CodeableConcept?
	
	/// Logical uri to reference this plan definition (globally unique).
	public var url: URL?
	
	/// Describes the clinical usage of the asset.
	public var usage: String?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the plan definition.
	public var version: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["actionDefinition"] {
			presentKeys.insert("actionDefinition")
			if let val = exist as? [FHIRJSON] {
				do {
					self.actionDefinition = try PlanDefinitionActionDefinition.instantiate(fromArray: val, owner: self) as? [PlanDefinitionActionDefinition]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actionDefinition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actionDefinition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["approvalDate"] {
			presentKeys.insert("approvalDate")
			if let val = exist as? String {
				self.approvalDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "approvalDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["contributor"] {
			presentKeys.insert("contributor")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contributor = try Contributor.instantiate(fromArray: val, owner: self) as? [Contributor]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contributor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contributor", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["copyright"] {
			presentKeys.insert("copyright")
			if let val = exist as? String {
				self.copyright = val
			}
			else {
				errors.append(FHIRValidationError(key: "copyright", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
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
		if let exist = json["effectivePeriod"] {
			presentKeys.insert("effectivePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.effectivePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "effectivePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "effectivePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
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
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["lastReviewDate"] {
			presentKeys.insert("lastReviewDate")
			if let val = exist as? String {
				self.lastReviewDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lastReviewDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["library"] {
			presentKeys.insert("library")
			if let val = exist as? [FHIRJSON] {
				do {
					self.library = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "library"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "library", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = val
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = val
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["relatedArtifact"] {
			presentKeys.insert("relatedArtifact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relatedArtifact = try RelatedArtifact.instantiate(fromArray: val, owner: self) as? [RelatedArtifact]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relatedArtifact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relatedArtifact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
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
		else {
			errors.append(FHIRValidationError(missing: "status"))
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
		if let exist = json["topic"] {
			presentKeys.insert("topic")
			if let val = exist as? [FHIRJSON] {
				do {
					self.topic = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "topic"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "topic", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["usage"] {
			presentKeys.insert("usage")
			if let val = exist as? String {
				self.usage = val
			}
			else {
				errors.append(FHIRValidationError(key: "usage", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "useContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = val
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let actionDefinition = self.actionDefinition {
			json["actionDefinition"] = actionDefinition.map() { $0.asJSON(errors: &errors) }
		}
		if let approvalDate = self.approvalDate {
			json["approvalDate"] = approvalDate.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let contributor = self.contributor {
			json["contributor"] = contributor.map() { $0.asJSON(errors: &errors) }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON(errors: &errors)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let lastReviewDate = self.lastReviewDate {
			json["lastReviewDate"] = lastReviewDate.asJSON()
		}
		if let library = self.library {
			json["library"] = library.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let relatedArtifact = self.relatedArtifact {
			json["relatedArtifact"] = relatedArtifact.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = topic.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let usage = self.usage {
			json["usage"] = usage.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Action defined by the plan.
 *
 *  An action to be taken as part of the plan.
 */
open class PlanDefinitionActionDefinition: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionDefinition" }
	}
	
	/// A sub-action.
	public var actionDefinition: [PlanDefinitionActionDefinition]?
	
	/// Unique identifier.
	public var actionIdentifier: Identifier?
	
	/// Description of the activity to be performed.
	public var activityDefinition: Reference?
	
	/// single | multiple.
	public var cardinalityBehavior: String?
	
	/// The meaning of the action or its sub-actions.
	public var code: [CodeableConcept]?
	
	/// Whether or not the action is applicable.
	public var condition: PlanDefinitionActionDefinitionCondition?
	
	/// Short description of the action.
	public var description_fhir: String?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [RelatedArtifact]?
	
	/// Dynamic aspects of the definition.
	public var dynamicValue: [PlanDefinitionActionDefinitionDynamicValue]?
	
	/// visual-group | logical-group | sentence-group.
	public var groupingBehavior: String?
	
	/// User-visible label for the action (e.g. 1. or A.).
	public var label: String?
	
	/// patient | practitioner | related-person.
	public var participantType: [String]?
	
	/// yes | no.
	public var precheckBehavior: String?
	
	/// Relationship to another action.
	public var relatedAction: [PlanDefinitionActionDefinitionRelatedAction]?
	
	/// must | could | must-unless-documented.
	public var requiredBehavior: String?
	
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
	
	/// When the action should take place.
	public var timingTiming: Timing?
	
	/// User-visible title.
	public var title: String?
	
	/// Transform to apply the template.
	public var transform: Reference?
	
	/// When the action should be triggered.
	public var triggerDefinition: [TriggerDefinition]?
	
	/// create | update | remove | fire-event.
	public var type: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["actionDefinition"] {
			presentKeys.insert("actionDefinition")
			if let val = exist as? [FHIRJSON] {
				do {
					self.actionDefinition = try PlanDefinitionActionDefinition.instantiate(fromArray: val, owner: self) as? [PlanDefinitionActionDefinition]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actionDefinition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actionDefinition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["activityDefinition"] {
			presentKeys.insert("activityDefinition")
			if let val = exist as? FHIRJSON {
				do {
					self.activityDefinition = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "activityDefinition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "activityDefinition", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["condition"] {
			presentKeys.insert("condition")
			if let val = exist as? FHIRJSON {
				do {
					self.condition = try PlanDefinitionActionDefinitionCondition(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "condition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "condition", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["dynamicValue"] {
			presentKeys.insert("dynamicValue")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dynamicValue = try PlanDefinitionActionDefinitionDynamicValue.instantiate(fromArray: val, owner: self) as? [PlanDefinitionActionDefinitionDynamicValue]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dynamicValue"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dynamicValue", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["participantType"] {
			presentKeys.insert("participantType")
			if let val = exist as? [String] {
				self.participantType = val
			}
			else {
				errors.append(FHIRValidationError(key: "participantType", wants: Array<String>.self, has: type(of: exist)))
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
			if let val = exist as? [FHIRJSON] {
				do {
					self.relatedAction = try PlanDefinitionActionDefinitionRelatedAction.instantiate(fromArray: val, owner: self) as? [PlanDefinitionActionDefinitionRelatedAction]
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
				self.requiredBehavior = val
			}
			else {
				errors.append(FHIRValidationError(key: "requiredBehavior", wants: String.self, has: type(of: exist)))
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
		if let exist = json["transform"] {
			presentKeys.insert("transform")
			if let val = exist as? FHIRJSON {
				do {
					self.transform = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "transform"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "transform", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["triggerDefinition"] {
			presentKeys.insert("triggerDefinition")
			if let val = exist as? [FHIRJSON] {
				do {
					self.triggerDefinition = try TriggerDefinition.instantiate(fromArray: val, owner: self) as? [TriggerDefinition]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "triggerDefinition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "triggerDefinition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		
		if let actionDefinition = self.actionDefinition {
			json["actionDefinition"] = actionDefinition.map() { $0.asJSON(errors: &errors) }
		}
		if let actionIdentifier = self.actionIdentifier {
			json["actionIdentifier"] = actionIdentifier.asJSON(errors: &errors)
		}
		if let activityDefinition = self.activityDefinition {
			json["activityDefinition"] = activityDefinition.asJSON(errors: &errors)
		}
		if let cardinalityBehavior = self.cardinalityBehavior {
			json["cardinalityBehavior"] = cardinalityBehavior.asJSON()
		}
		if let code = self.code {
			json["code"] = code.map() { $0.asJSON(errors: &errors) }
		}
		if let condition = self.condition {
			json["condition"] = condition.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.map() { $0.asJSON(errors: &errors) }
		}
		if let dynamicValue = self.dynamicValue {
			json["dynamicValue"] = dynamicValue.map() { $0.asJSON(errors: &errors) }
		}
		if let groupingBehavior = self.groupingBehavior {
			json["groupingBehavior"] = groupingBehavior.asJSON()
		}
		if let label = self.label {
			json["label"] = label.asJSON()
		}
		if let participantType = self.participantType {
			var arr = [Any]()
			for val in participantType {
				arr.append(val.asJSON())
			}
			json["participantType"] = arr
		}
		if let precheckBehavior = self.precheckBehavior {
			json["precheckBehavior"] = precheckBehavior.asJSON()
		}
		if let relatedAction = self.relatedAction {
			json["relatedAction"] = relatedAction.map() { $0.asJSON(errors: &errors) }
		}
		if let requiredBehavior = self.requiredBehavior {
			json["requiredBehavior"] = requiredBehavior.asJSON()
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
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON(errors: &errors)
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let transform = self.transform {
			json["transform"] = transform.asJSON(errors: &errors)
		}
		if let triggerDefinition = self.triggerDefinition {
			json["triggerDefinition"] = triggerDefinition.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Whether or not the action is applicable.
 *
 *  An expression specifying whether or not the action is applicable in a given context.
 */
open class PlanDefinitionActionDefinitionCondition: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionDefinitionCondition" }
	}
	
	/// Natural language description of the condition.
	public var description_fhir: String?
	
	/// Boolean-valued expression.
	public var expression: String?
	
	/// Language of the expression.
	public var language: String?
	
	
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
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		
		return json
	}
}


/**
 *  Dynamic aspects of the definition.
 *
 *  Customizations that should be applied to the statically defined resource. For example, if the dosage of a medication
 *  must be computed based on the patient's weight, a customization would be used to specify an expression that
 *  calculated the weight, and the path on the resource that would contain the result.
 */
open class PlanDefinitionActionDefinitionDynamicValue: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionDefinitionDynamicValue" }
	}
	
	/// Natural language description of the dynamic value.
	public var description_fhir: String?
	
	/// An expression that provides the dynamic value for the customization.
	public var expression: String?
	
	/// Language of the expression.
	public var language: String?
	
	/// The path to the element to be set dynamically.
	public var path: String?
	
	
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
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? String {
				self.language = val
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["path"] {
			presentKeys.insert("path")
			if let val = exist as? String {
				self.path = val
			}
			else {
				errors.append(FHIRValidationError(key: "path", wants: String.self, has: type(of: exist)))
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
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		
		return json
	}
}


/**
 *  Relationship to another action.
 *
 *  A relationship to another action such as "before" or "30-60 minutes after start of".
 */
open class PlanDefinitionActionDefinitionRelatedAction: BackboneElement {
	override open class var resourceType: String {
		get { return "PlanDefinitionActionDefinitionRelatedAction" }
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

