//
//  Narrative.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Narrative) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A human-readable formatted text, including images.
 */
open class Narrative: Element {
	override open class var resourceType: String {
		get { return "Narrative" }
	}
	
	/// Limited xhtml content.
	public var div: String?
	
	/// generated | extensions | additional | empty.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(div: String, status: String) {
		self.init(json: nil)
		self.div = div
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["div"] {
				presentKeys.insert("div")
				if let val = exist as? String {
					self.div = val
				}
				else {
					errors.append(FHIRJSONError(key: "div", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "div"))
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let div = self.div {
			json["div"] = div.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

