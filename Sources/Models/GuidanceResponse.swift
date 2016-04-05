//
//  GuidanceResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/GuidanceResponse) on 2016-04-05.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The formal response to a guidance request.
 *
 *  A guidance response is the formal response to a guidance request, including any output parameters returned by the
 *  evaluation, as well as the description of any proposed actions to be taken.
 */
public class GuidanceResponse: DomainResource {
	override public class var resourceName: String {
		get { return "GuidanceResponse" }
	}
	
	/// Proposed actions, if any.
	public var action: [GuidanceResponseAction]?
	
	/// Additional required data.
	public var dataRequirement: [DataRequirement]?
	
	/// Messages resulting from the evaluation of the artifact or artifacts.
	public var evaluationMessage: [Reference]?
	
	/// A reference to a knowledge module.
	public var module: Reference?
	
	/// The output parameters of the evaluation, if any.
	public var outputParameters: Reference?
	
	/// The id of the request associated with this response, if any.
	public var requestId: String?
	
	/// success | data-requested | data-required | in-progress | failure.
	public var status: String?
	
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = GuidanceResponseAction.from(val, owner: self) as? [GuidanceResponseAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dataRequirement"] {
				presentKeys.insert("dataRequirement")
				if let val = exist as? [FHIRJSON] {
					self.dataRequirement = DataRequirement.from(val, owner: self) as? [DataRequirement]
				}
				else {
					errors.append(FHIRJSONError(key: "dataRequirement", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["evaluationMessage"] {
				presentKeys.insert("evaluationMessage")
				if let val = exist as? [FHIRJSON] {
					self.evaluationMessage = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "evaluationMessage", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["module"] {
				presentKeys.insert("module")
				if let val = exist as? FHIRJSON {
					self.module = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "module", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "module"))
			}
			if let exist: AnyObject = js["outputParameters"] {
				presentKeys.insert("outputParameters")
				if let val = exist as? FHIRJSON {
					self.outputParameters = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outputParameters", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestId"] {
				presentKeys.insert("requestId")
				if let val = exist as? String {
					self.requestId = val
				}
				else {
					errors.append(FHIRJSONError(key: "requestId", wants: String.self, has: exist.dynamicType))
				}
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
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = GuidanceResponseAction.asJSONArray(action)
		}
		if let dataRequirement = self.dataRequirement {
			json["dataRequirement"] = DataRequirement.asJSONArray(dataRequirement)
		}
		if let evaluationMessage = self.evaluationMessage {
			json["evaluationMessage"] = Reference.asJSONArray(evaluationMessage)
		}
		if let module = self.module {
			json["module"] = module.asJSON()
		}
		if let outputParameters = self.outputParameters {
			json["outputParameters"] = outputParameters.asJSON()
		}
		if let requestId = self.requestId {
			json["requestId"] = requestId.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
 *  Proposed actions, if any.
 *
 *  The actions, if any, produced by the evaluation of the artifact.
 */
public class GuidanceResponseAction: BackboneElement {
	override public class var resourceName: String {
		get { return "GuidanceResponseAction" }
	}
	
	/// Sub action.
	public var action: [GuidanceResponseAction]?
	
	/// Unique identifier.
	public var actionIdentifier: Identifier?
	
	/// Defines behaviors such as selection and grouping.
	public var behavior: [GuidanceResponseActionBehavior]?
	
	/// The meaning of the action or its sub-actions.
	public var concept: [CodeableConcept]?
	
	/// Short description of the action.
	public var description_fhir: String?
	
	/// Supporting documentation for the intended performer of the action.
	public var documentation: [Attachment]?
	
	/// User-visible label for the action (e.g. 1. or A.).
	public var label: String?
	
	/// Participant.
	public var participant: [Reference]?
	
	/// Relationship to another action.
	public var relatedAction: GuidanceResponseActionRelatedAction?
	
	/// The target of the action.
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = GuidanceResponseAction.from(val, owner: self) as? [GuidanceResponseAction]
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
					self.behavior = GuidanceResponseActionBehavior.from(val, owner: self) as? [GuidanceResponseActionBehavior]
				}
				else {
					errors.append(FHIRJSONError(key: "behavior", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["concept"] {
				presentKeys.insert("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "concept", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
					self.documentation = Attachment.from(val, owner: self) as? [Attachment]
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
			if let exist: AnyObject = js["participant"] {
				presentKeys.insert("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "participant", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relatedAction"] {
				presentKeys.insert("relatedAction")
				if let val = exist as? FHIRJSON {
					self.relatedAction = GuidanceResponseActionRelatedAction(json: val, owner: self)
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
					self.supportingEvidence = Attachment.from(val, owner: self) as? [Attachment]
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
			json["action"] = GuidanceResponseAction.asJSONArray(action)
		}
		if let actionIdentifier = self.actionIdentifier {
			json["actionIdentifier"] = actionIdentifier.asJSON()
		}
		if let behavior = self.behavior {
			json["behavior"] = GuidanceResponseActionBehavior.asJSONArray(behavior)
		}
		if let concept = self.concept {
			json["concept"] = CodeableConcept.asJSONArray(concept)
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
		if let participant = self.participant {
			json["participant"] = Reference.asJSONArray(participant)
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
public class GuidanceResponseActionBehavior: BackboneElement {
	override public class var resourceName: String {
		get { return "GuidanceResponseActionBehavior" }
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
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
 *  Relationship to another action.
 *
 *  A relationship to another action such as "before" or "30-60 minutes after start of".
 */
public class GuidanceResponseActionRelatedAction: BackboneElement {
	override public class var resourceName: String {
		get { return "GuidanceResponseActionRelatedAction" }
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
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

