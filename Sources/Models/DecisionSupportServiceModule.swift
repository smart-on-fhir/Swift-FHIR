//
//  DecisionSupportServiceModule.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/DecisionSupportServiceModule) on 2016-04-05.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A description of decision support service functionality.
 *
 *  The DecisionSupportServiceModule describes a unit of decision support functionality that is made available as a
 *  service, such as immunization modules or drug-drug interaction checking.
 */
public class DecisionSupportServiceModule: DomainResource {
	override public class var resourceName: String {
		get { return "DecisionSupportServiceModule" }
	}
	
	/// Data requirements for the module.
	public var dataRequirement: [DataRequirement]?
	
	/// Metadata for the service module.
	public var moduleMetadata: ModuleMetadata?
	
	/// Parameters to the module.
	public var parameter: [ParameterDefinition]?
	
	/// "when" the module should be invoked.
	public var trigger: [TriggerDefinition]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["dataRequirement"] {
				presentKeys.insert("dataRequirement")
				if let val = exist as? [FHIRJSON] {
					self.dataRequirement = DataRequirement.from(val, owner: self) as? [DataRequirement]
				}
				else {
					errors.append(FHIRJSONError(key: "dataRequirement", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = ParameterDefinition.from(val, owner: self) as? [ParameterDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		
		if let dataRequirement = self.dataRequirement {
			json["dataRequirement"] = DataRequirement.asJSONArray(dataRequirement)
		}
		if let moduleMetadata = self.moduleMetadata {
			json["moduleMetadata"] = moduleMetadata.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = ParameterDefinition.asJSONArray(parameter)
		}
		if let trigger = self.trigger {
			json["trigger"] = TriggerDefinition.asJSONArray(trigger)
		}
		
		return json
	}
}

