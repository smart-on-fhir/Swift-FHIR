//
//  BackboneElement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/BackboneElement) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Base for elements defined inside a resource.
 *
 *  Base definition for all elements that are defined inside a resource - but not those in a data type.
 */
open class BackboneElement: Element {
	override open class var resourceType: String {
		get { return "BackboneElement" }
	}
	
	/// Extensions that cannot be ignored.
	public var modifierExtension: [Extension]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["modifierExtension"] {
				presentKeys.insert("modifierExtension")
				if let val = exist as? [FHIRJSON] {
					self.modifierExtension = Extension.instantiate(fromArray: val, owner: self) as? [Extension]
				}
				else {
					errors.append(FHIRJSONError(key: "modifierExtension", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let modifierExtension = self.modifierExtension {
			json["modifierExtension"] = modifierExtension.map() { $0.asJSON() }
		}
		
		return json
	}
}

