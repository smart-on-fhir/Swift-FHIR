//
//  OrderSet.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/OrderSet) on 2016-04-05.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The definition of an order set.
 *
 *  This resource allows for the definition of an order set as a sharable, consumable, and executable artifact in
 *  support of clinical decision support.
 */
public class OrderSet: DomainResource {
	override public class var resourceName: String {
		get { return "OrderSet" }
	}
	
	/// Groups, sections, and line items of the order set.
	public var action: [ActionDefinition]?
	
	/// Logic used by the orderset.
	public var library: [Reference]?
	
	/// The metadata for the orderset.
	public var moduleMetadata: ModuleMetadata?
	
	
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = ActionDefinition.asJSONArray(action)
		}
		if let library = self.library {
			json["library"] = Reference.asJSONArray(library)
		}
		if let moduleMetadata = self.moduleMetadata {
			json["moduleMetadata"] = moduleMetadata.asJSON()
		}
		
		return json
	}
}

