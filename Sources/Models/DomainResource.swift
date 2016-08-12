//
//  DomainResource.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DomainResource) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A resource with narrative, extensions, and contained resources.
 *
 *  A resource that includes narrative, extensions, and contained resources.
 */
public class DomainResource: Resource {
	override public class var resourceName: String {
		get { return "DomainResource" }
	}
	
	/// Contained, inline Resources.
	public var contained: [Resource]?
	
	/// Additional Content defined by implementations.
	public var extension_fhir: [Extension]?
	
	/// Extensions that cannot be ignored.
	public var modifierExtension: [Extension]?
	
	/// Text summary of the resource, for human interpretation.
	public var text: Narrative?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["contained"] {
				presentKeys.insert("contained")
				if let val = exist as? [FHIRJSON] {
					self.contained = Resource.from(val, owner: self) as? [Resource]
				}
				else {
					errors.append(FHIRJSONError(key: "contained", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["extension"] {
				presentKeys.insert("extension")
				if let val = exist as? [FHIRJSON] {
					self.extension_fhir = Extension.from(val, owner: self) as? [Extension]
				}
				else {
					errors.append(FHIRJSONError(key: "extension", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["modifierExtension"] {
				presentKeys.insert("modifierExtension")
				if let val = exist as? [FHIRJSON] {
					self.modifierExtension = Extension.from(val, owner: self) as? [Extension]
				}
				else {
					errors.append(FHIRJSONError(key: "modifierExtension", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? FHIRJSON {
					self.text = Narrative(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contained = self.contained {
			json["contained"] = Resource.asJSONArray(contained)
		}
		if let extension_fhir = self.extension_fhir {
			json["extension"] = Extension.asJSONArray(extension_fhir)
		}
		if let modifierExtension = self.modifierExtension {
			json["modifierExtension"] = Extension.asJSONArray(modifierExtension)
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

