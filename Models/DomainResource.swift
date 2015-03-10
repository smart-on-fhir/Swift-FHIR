//
//  DomainResource.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/DomainResource) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A resource with narrative, extensions, and contained resources.
 *
 *  A resource that includes narrative, extensions, and contained resources.
 */
public class DomainResource: Resource
{
	override public class var resourceName: String {
		get { return "DomainResource" }
	}
	
	/// Additional Content defined by implementations
	public var extension_fhir: [Extension]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["extension"] as? [JSONDictionary] {
				self.extension_fhir = Extension.from(val, owner: self) as? [Extension]
			}
			if let val = js["modifierExtension"] as? [JSONDictionary] {
				self.modifierExtension = Extension.from(val, owner: self) as? [Extension]
			}
			if let val = js["text"] as? JSONDictionary {
				self.text = Narrative(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
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

