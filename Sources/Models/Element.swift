//
//  Element.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Element) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Base for all elements.
 *
 *  Base definition for all elements in a resource.
 */
public class Element: FHIRAbstractBase {
	override public class var resourceType: String {
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
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["extension"] {
				presentKeys.insert("extension")
				if let val = exist as? [FHIRJSON] {
					self.extension_fhir = Extension.instantiate(fromArray: val, owner: self) as? [Extension]
				}
				else {
					errors.append(FHIRJSONError(key: "extension", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["id"] {
				presentKeys.insert("id")
				if let val = exist as? String {
					self.id = val
				}
				else {
					errors.append(FHIRJSONError(key: "id", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let extension_fhir = self.extension_fhir {
			json["extension"] = extension_fhir.map() { $0.asJSON() }
		}
		if let id = self.id {
			json["id"] = id.asJSON()
		}
		
		return json
	}
}

