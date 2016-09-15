//
//  PlanDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/PlanDefinition) on 2016-08-17.
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
	
	/// Contact details of the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Describes the context of use for this asset.
	public var coverage: [UsageContext]?
	
	/// Natural language description of the asset.
	public var description_fhir: String?
	
	/// The effective date range for the asset.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Logical identifier(s) for the asset.
	public var identifier: [Identifier]?
	
	/// Last review date for the asset.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the plan definition.
	public var library: [Reference]?
	
	/// A machine-friendly name for the asset.
	public var name: String?
	
	/// Publication date for this version of the asset.
	public var publicationDate: FHIRDate?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Describes the purpose of the asset.
	public var purpose: String?
	
	/// Related resources for the asset.
	public var relatedResource: [RelatedResource]?
	
	/// draft | active | inactive.
	public var status: String?
	
	/// A user-friendly title for the asset.
	public var title: String?
	
	/// Descriptional topics for the asset.
	public var topic: [CodeableConcept]?
	
	/// order-set | protocol | eca-rule.
	public var type: CodeableConcept?
	
	/// Logical URL to reference this asset.
	public var url: URL?
	
	/// Describes the clinical usage of the asset.
	public var usage: String?
	
	/// The version of the asset, if any.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["actionDefinition"] {
				presentKeys.insert("actionDefinition")
				if let val = exist as? [FHIRJSON] {
					self.actionDefinition = PlanDefinitionActionDefinition.instantiate(fromArray: val, owner: self) as? [PlanDefinitionActionDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "actionDefinition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["contributor"] {
				presentKeys.insert("contributor")
				if let val = exist as? [FHIRJSON] {
					self.contributor = Contributor.instantiate(fromArray: val, owner: self) as? [Contributor]
				}
				else {
					errors.append(FHIRJSONError(key: "contributor", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["coverage"] {
				presentKeys.insert("coverage")
				if let val = exist as? [FHIRJSON] {
					self.coverage = UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				else {
					errors.append(FHIRJSONError(key: "coverage", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["effectivePeriod"] {
				presentKeys.insert("effectivePeriod")
				if let val = exist as? FHIRJSON {
					self.effectivePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "effectivePeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: type(of: exist)))
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
			if let exist = js["lastReviewDate"] {
				presentKeys.insert("lastReviewDate")
				if let val = exist as? String {
					self.lastReviewDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lastReviewDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["library"] {
				presentKeys.insert("library")
				if let val = exist as? [FHIRJSON] {
					self.library = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "library", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["publicationDate"] {
				presentKeys.insert("publicationDate")
				if let val = exist as? String {
					self.publicationDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "publicationDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? String {
					self.purpose = val
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["relatedResource"] {
				presentKeys.insert("relatedResource")
				if let val = exist as? [FHIRJSON] {
					self.relatedResource = RelatedResource.instantiate(fromArray: val, owner: self) as? [RelatedResource]
				}
				else {
					errors.append(FHIRJSONError(key: "relatedResource", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["topic"] {
				presentKeys.insert("topic")
				if let val = exist as? [FHIRJSON] {
					self.topic = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "topic", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["usage"] {
				presentKeys.insert("usage")
				if let val = exist as? String {
					self.usage = val
				}
				else {
					errors.append(FHIRJSONError(key: "usage", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actionDefinition = self.actionDefinition {
			json["actionDefinition"] = actionDefinition.map() { $0.asJSON() }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let contributor = self.contributor {
			json["contributor"] = contributor.map() { $0.asJSON() }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.map() { $0.asJSON() }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let lastReviewDate = self.lastReviewDate {
			json["lastReviewDate"] = lastReviewDate.asJSON()
		}
		if let library = self.library {
			json["library"] = library.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publicationDate = self.publicationDate {
			json["publicationDate"] = publicationDate.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let relatedResource = self.relatedResource {
			json["relatedResource"] = relatedResource.map() { $0.asJSON() }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = topic.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let usage = self.usage {
			json["usage"] = usage.asJSON()
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
	public var concept: [CodeableConcept]?
	
	/// Whether or not the action is applicable.
	public var condition: PlanDefinitionActionDefinitionCondition?
	
	/// Short description of the action.
	public var description_fhir: String?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [RelatedResource]?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["actionDefinition"] {
				presentKeys.insert("actionDefinition")
				if let val = exist as? [FHIRJSON] {
					self.actionDefinition = PlanDefinitionActionDefinition.instantiate(fromArray: val, owner: self) as? [PlanDefinitionActionDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "actionDefinition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["activityDefinition"] {
				presentKeys.insert("activityDefinition")
				if let val = exist as? FHIRJSON {
					self.activityDefinition = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "activityDefinition", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? FHIRJSON {
					self.condition = PlanDefinitionActionDefinitionCondition(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["dynamicValue"] {
				presentKeys.insert("dynamicValue")
				if let val = exist as? [FHIRJSON] {
					self.dynamicValue = PlanDefinitionActionDefinitionDynamicValue.instantiate(fromArray: val, owner: self) as? [PlanDefinitionActionDefinitionDynamicValue]
				}
				else {
					errors.append(FHIRJSONError(key: "dynamicValue", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["participantType"] {
				presentKeys.insert("participantType")
				if let val = exist as? [String] {
					self.participantType = val
				}
				else {
					errors.append(FHIRJSONError(key: "participantType", wants: Array<String>.self, has: type(of: exist)))
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
				if let val = exist as? [FHIRJSON] {
					self.relatedAction = PlanDefinitionActionDefinitionRelatedAction.instantiate(fromArray: val, owner: self) as? [PlanDefinitionActionDefinitionRelatedAction]
				}
				else {
					errors.append(FHIRJSONError(key: "relatedAction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["timingTiming"] {
				presentKeys.insert("timingTiming")
				if let val = exist as? FHIRJSON {
					self.timingTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingTiming", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["transform"] {
				presentKeys.insert("transform")
				if let val = exist as? FHIRJSON {
					self.transform = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "transform", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["triggerDefinition"] {
				presentKeys.insert("triggerDefinition")
				if let val = exist as? [FHIRJSON] {
					self.triggerDefinition = TriggerDefinition.instantiate(fromArray: val, owner: self) as? [TriggerDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "triggerDefinition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		
		if let actionDefinition = self.actionDefinition {
			json["actionDefinition"] = actionDefinition.map() { $0.asJSON() }
		}
		if let actionIdentifier = self.actionIdentifier {
			json["actionIdentifier"] = actionIdentifier.asJSON()
		}
		if let activityDefinition = self.activityDefinition {
			json["activityDefinition"] = activityDefinition.asJSON()
		}
		if let cardinalityBehavior = self.cardinalityBehavior {
			json["cardinalityBehavior"] = cardinalityBehavior.asJSON()
		}
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON() }
		}
		if let condition = self.condition {
			json["condition"] = condition.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.map() { $0.asJSON() }
		}
		if let dynamicValue = self.dynamicValue {
			json["dynamicValue"] = dynamicValue.map() { $0.asJSON() }
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
			json["relatedAction"] = relatedAction.map() { $0.asJSON() }
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
			json["timingDuration"] = timingDuration.asJSON()
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON()
		}
		if let timingRange = self.timingRange {
			json["timingRange"] = timingRange.asJSON()
		}
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let transform = self.transform {
			json["transform"] = transform.asJSON()
		}
		if let triggerDefinition = self.triggerDefinition {
			json["triggerDefinition"] = triggerDefinition.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["expression"] {
				presentKeys.insert("expression")
				if let val = exist as? String {
					self.expression = val
				}
				else {
					errors.append(FHIRJSONError(key: "expression", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["expression"] {
				presentKeys.insert("expression")
				if let val = exist as? String {
					self.expression = val
				}
				else {
					errors.append(FHIRJSONError(key: "expression", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
	
	/// start | end.
	public var anchor: String?
	
	/// Time offset for the relationship.
	public var offsetDuration: Duration?
	
	/// Time offset for the relationship.
	public var offsetRange: Range?
	
	/// before | after | concurrent.
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
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

