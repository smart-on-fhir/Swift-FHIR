//
//  Element.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Element) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Base for all elements.
 *
 *  Base definition for all elements in a resource.
 */
public class Element: FHIRAbstractBase {
	override public class var resourceName: String {
		get { return "Element" }
	}
	
	/// Additional Content defined by implementations.
	public var extension_fhir: [Extension]?
	
	/// xml:id (or equivalent in JSON).
	public var id: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["extension"] {
				presentKeys.insert("extension")
				if let val = exist as? [FHIRJSON] {
					self.extension_fhir = Extension.from(val, owner: self) as? [Extension]
				}
				else {
					errors.append(FHIRJSONError(key: "extension", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["id"] {
				presentKeys.insert("id")
				if let val = exist as? String {
					self.id = val
				}
				else {
					errors.append(FHIRJSONError(key: "id", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let extension_fhir = self.extension_fhir {
			json["extension"] = Extension.asJSONArray(extension_fhir)
		}
		if let id = self.id {
			json["id"] = id.asJSON()
		}
		
		return json
	}
}

