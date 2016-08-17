//
//  DecisionSupportRule.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/DecisionSupportRule) on 2016-08-17.
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
open class DecisionSupportRule: DomainResource {
	override open class var resourceType: String {
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = ActionDefinition.instantiate(fromArray: val, owner: self) as? [ActionDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? String {
					self.condition = val
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: String.self, has: type(of: exist)))
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
			if let exist = js["moduleMetadata"] {
				presentKeys.insert("moduleMetadata")
				if let val = exist as? FHIRJSON {
					self.moduleMetadata = ModuleMetadata(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "moduleMetadata", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["trigger"] {
				presentKeys.insert("trigger")
				if let val = exist as? [FHIRJSON] {
					self.trigger = TriggerDefinition.instantiate(fromArray: val, owner: self) as? [TriggerDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "trigger", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let condition = self.condition {
			json["condition"] = condition.asJSON()
		}
		if let library = self.library {
			json["library"] = library.map() { $0.asJSON() }
		}
		if let moduleMetadata = self.moduleMetadata {
			json["moduleMetadata"] = moduleMetadata.asJSON()
		}
		if let trigger = self.trigger {
			json["trigger"] = trigger.map() { $0.asJSON() }
		}
		
		return json
	}
}

