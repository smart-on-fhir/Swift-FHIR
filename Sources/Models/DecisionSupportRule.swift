//
//  DecisionSupportRule.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/DecisionSupportRule) on 2016-04-05.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A decision support rule.
 *
 *  This resource defines a decision support rule of the form [on Event] if Condition then Action. It is intended to be
 *  a shareable, computable definition of a actions that should be taken whenever some condition is met in response to a
 *  particular event or events.
 */
public class DecisionSupportRule: DomainResource {
	override public class var resourceName: String {
		get { return "DecisionSupportRule" }
	}
	
	/// "then" perform these actions.
	public var action: [ActionDefinition]?
	
	/// "if" some condition is true.
	public var condition: String?
	
	/// Logic used within the rule.
	public var library: [Reference]?
	
	/// Module information for the rule.
	public var moduleMetadata: ModuleMetadata?
	
	/// "when" the rule should be invoked.
	public var trigger: [TriggerDefinition]?
	
	
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
					self.action = ActionDefinition.from(val, owner: self) as? [ActionDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? String {
					self.condition = val
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["library"] {
				presentKeys.insert("library")
				if let val = exist as? [FHIRJSON] {
					self.library = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "library", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["moduleMetadata"] {
				presentKeys.insert("moduleMetadata")
				if let val = exist as? FHIRJSON {
					self.moduleMetadata = ModuleMetadata(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "moduleMetadata", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["trigger"] {
				presentKeys.insert("trigger")
				if let val = exist as? [FHIRJSON] {
					self.trigger = TriggerDefinition.from(val, owner: self) as? [TriggerDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "trigger", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		if let condition = self.condition {
			json["condition"] = condition.asJSON()
		}
		if let library = self.library {
			json["library"] = Reference.asJSONArray(library)
		}
		if let moduleMetadata = self.moduleMetadata {
			json["moduleMetadata"] = moduleMetadata.asJSON()
		}
		if let trigger = self.trigger {
			json["trigger"] = TriggerDefinition.asJSONArray(trigger)
		}
		
		return json
	}
}

