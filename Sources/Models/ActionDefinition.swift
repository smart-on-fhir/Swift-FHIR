//
//  ActionDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/ActionDefinition) on 2016-07-07.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The definition of an action to be performed.
 *
 *  The definition of an action to be performed. Some aspects of the definition are specified statically, and some
 *  aspects can be specified dynamically by referencing logic defined in a library.
 */
public class ActionDefinition: Element {
	override public class var resourceName: String {
		get { return "ActionDefinition" }
	}
	
	/// A sub-action.
	public var action: [ActionDefinition]?
	
	/// Unique identifier.
	public var actionIdentifier: Identifier?
	
	/// Defines behaviors such as selection and grouping.
	public var behavior: [ActionDefinitionBehavior]?
	
	/// The meaning of the action or its sub-actions.
	public var concept: [CodeableConcept]?
	
	/// Dynamic aspects of the definition.
	public var customization: [ActionDefinitionCustomization]?
	
	/// Short description of the action.
	public var description_fhir: String?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [Attachment]?
	
	/// User-visible label for the action (e.g. 1. or A.).
	public var label: String?
	
	/// patient | practitioner | related-person.
	public var participantType: [String]?
	
	/// Relationship to another action.
	public var relatedAction: ActionDefinitionRelatedAction?
	
	/// Static portion of the action definition.
	public var resource: Reference?
	
	/// Evidence that supports taking the action.
	public var supportingEvidence: [Attachment]?
	
	/// Static text equivalent of the action, used if the dynamic aspects cannot be interpreted by the receiving system.
	public var textEquivalent: String?
	
	/// User-visible title.
	public var title: String?
	
	/// create | update | remove | fire-event.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = ActionDefinition.instantiate(fromArray: val, owner: self) as? [ActionDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["actionIdentifier"] {
				presentKeys.insert("actionIdentifier")
				if let val = exist as? FHIRJSON {
					self.actionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actionIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["behavior"] {
				presentKeys.insert("behavior")
				if let val = exist as? [FHIRJSON] {
					self.behavior = ActionDefinitionBehavior.instantiate(fromArray: val, owner: self) as? [ActionDefinitionBehavior]
				}
				else {
					errors.append(FHIRJSONError(key: "behavior", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["concept"] {
				presentKeys.insert("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "concept", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["customization"] {
				presentKeys.insert("customization")
				if let val = exist as? [FHIRJSON] {
					self.customization = ActionDefinitionCustomization.instantiate(fromArray: val, owner: self) as? [ActionDefinitionCustomization]
				}
				else {
					errors.append(FHIRJSONError(key: "customization", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? [FHIRJSON] {
					self.documentation = Attachment.instantiate(fromArray: val, owner: self) as? [Attachment]
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["label"] {
				presentKeys.insert("label")
				if let val = exist as? String {
					self.label = val
				}
				else {
					errors.append(FHIRJSONError(key: "label", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["participantType"] {
				presentKeys.insert("participantType")
				if let val = exist as? [String] {
					self.participantType = val
				}
				else {
					errors.append(FHIRJSONError(key: "participantType", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relatedAction"] {
				presentKeys.insert("relatedAction")
				if let val = exist as? FHIRJSON {
					self.relatedAction = ActionDefinitionRelatedAction(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "relatedAction", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["supportingEvidence"] {
				presentKeys.insert("supportingEvidence")
				if let val = exist as? [FHIRJSON] {
					self.supportingEvidence = Attachment.instantiate(fromArray: val, owner: self) as? [Attachment]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingEvidence", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["textEquivalent"] {
				presentKeys.insert("textEquivalent")
				if let val = exist as? String {
					self.textEquivalent = val
				}
				else {
					errors.append(FHIRJSONError(key: "textEquivalent", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = ActionDefinition.asJSONArray(action)
		}
		if let actionIdentifier = self.actionIdentifier {
			json["actionIdentifier"] = actionIdentifier.asJSON()
		}
		if let behavior = self.behavior {
			json["behavior"] = ActionDefinitionBehavior.asJSONArray(behavior)
		}
		if let concept = self.concept {
			json["concept"] = CodeableConcept.asJSONArray(concept)
		}
		if let customization = self.customization {
			json["customization"] = ActionDefinitionCustomization.asJSONArray(customization)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = Attachment.asJSONArray(documentation)
		}
		if let label = self.label {
			json["label"] = label.asJSON()
		}
		if let participantType = self.participantType {
			var arr = [AnyObject]()
			for val in participantType {
				arr.append(val.asJSON())
			}
			json["participantType"] = arr
		}
		if let relatedAction = self.relatedAction {
			json["relatedAction"] = relatedAction.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let supportingEvidence = self.supportingEvidence {
			json["supportingEvidence"] = Attachment.asJSONArray(supportingEvidence)
		}
		if let textEquivalent = self.textEquivalent {
			json["textEquivalent"] = textEquivalent.asJSON()
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
 *  Defines behaviors such as selection and grouping.
 *
 *  A behavior associated with the action. Behaviors define how the action is to be presented and/or executed within the
 *  receiving environment.
 */
public class ActionDefinitionBehavior: Element {
	override public class var resourceName: String {
		get { return "ActionDefinitionBehavior" }
	}
	
	/// The type of behavior (grouping, precheck, selection, cardinality, etc).
	public var type: Coding?
	
	/// Specific behavior (e.g. required, at-most-one, single, etc).
	public var value: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding, value: Coding) {
		self.init(json: nil)
		self.type = type
		self.value = value
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? FHIRJSON {
					self.value = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
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
public class ActionDefinitionCustomization: Element {
	override public class var resourceName: String {
		get { return "ActionDefinitionCustomization" }
	}
	
	/// An expression that provides the dynamic value for the customization.
	public var expression: String?
	
	/// The path to the element to be set dynamically.
	public var path: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(expression: String, path: String) {
		self.init(json: nil)
		self.expression = expression
		self.path = path
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["expression"] {
				presentKeys.insert("expression")
				if let val = exist as? String {
					self.expression = val
				}
				else {
					errors.append(FHIRJSONError(key: "expression", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "expression"))
			}
			if let exist: AnyObject = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "path"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let expression = self.expression {
			json["expression"] = expression.asJSON()
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
public class ActionDefinitionRelatedAction: Element {
	override public class var resourceName: String {
		get { return "ActionDefinitionRelatedAction" }
	}
	
	/// Identifier of the related action.
	public var actionIdentifier: Identifier?
	
	/// start | end.
	public var anchor: String?
	
	/// Time offset for the relationship.
	public var offsetQuantity: Quantity?
	
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
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["actionIdentifier"] {
				presentKeys.insert("actionIdentifier")
				if let val = exist as? FHIRJSON {
					self.actionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actionIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "actionIdentifier"))
			}
			if let exist: AnyObject = js["anchor"] {
				presentKeys.insert("anchor")
				if let val = exist as? String {
					self.anchor = val
				}
				else {
					errors.append(FHIRJSONError(key: "anchor", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["offsetQuantity"] {
				presentKeys.insert("offsetQuantity")
				if let val = exist as? FHIRJSON {
					self.offsetQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "offsetQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["offsetRange"] {
				presentKeys.insert("offsetRange")
				if let val = exist as? FHIRJSON {
					self.offsetRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "offsetRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relationship"] {
				presentKeys.insert("relationship")
				if let val = exist as? String {
					self.relationship = val
				}
				else {
					errors.append(FHIRJSONError(key: "relationship", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "relationship"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actionIdentifier = self.actionIdentifier {
			json["actionIdentifier"] = actionIdentifier.asJSON()
		}
		if let anchor = self.anchor {
			json["anchor"] = anchor.asJSON()
		}
		if let offsetQuantity = self.offsetQuantity {
			json["offsetQuantity"] = offsetQuantity.asJSON()
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

