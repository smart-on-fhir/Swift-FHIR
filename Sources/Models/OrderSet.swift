//
//  OrderSet.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/OrderSet) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The definition of an order set.
 *
 *  This resource allows for the definition of an order set as a sharable, consumable, and executable artifact in
 *  support of clinical decision support.
 */
open class OrderSet: DomainResource {
	override open class var resourceType: String {
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
		}
		if let library = self.library {
			json["library"] = library.map() { $0.asJSON() }
		}
		if let moduleMetadata = self.moduleMetadata {
			json["moduleMetadata"] = moduleMetadata.asJSON()
		}
		
		return json
	}
}

