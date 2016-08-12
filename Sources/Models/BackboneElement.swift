//
//  BackboneElement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/BackboneElement) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Base for elements defined inside a resource.
 *
 *  Base definition for all elements that are defined inside a resource - but not those in a data type.
 */
public class BackboneElement: Element {
	override public class var resourceName: String {
		get { return "BackboneElement" }
	}
	
	/// Extensions that cannot be ignored.
	public var modifierExtension: [Extension]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["modifierExtension"] {
				presentKeys.insert("modifierExtension")
				if let val = exist as? [FHIRJSON] {
					self.modifierExtension = Extension.from(val, owner: self) as? [Extension]
				}
				else {
					errors.append(FHIRJSONError(key: "modifierExtension", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let modifierExtension = self.modifierExtension {
			json["modifierExtension"] = Extension.asJSONArray(modifierExtension)
		}
		
		return json
	}
}

