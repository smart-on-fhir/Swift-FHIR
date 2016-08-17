//
//  DomainResource.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/DomainResource) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A resource with narrative, extensions, and contained resources.
 *
 *  A resource that includes narrative, extensions, and contained resources.
 */
open class DomainResource: Resource {
	override open class var resourceType: String {
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["contained"] {
				presentKeys.insert("contained")
				if let val = exist as? [FHIRJSON] {
					self.contained = Resource.instantiate(fromArray: val, owner: self) as? [Resource]
				}
				else {
					errors.append(FHIRJSONError(key: "contained", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["extension"] {
				presentKeys.insert("extension")
				if let val = exist as? [FHIRJSON] {
					self.extension_fhir = Extension.instantiate(fromArray: val, owner: self) as? [Extension]
				}
				else {
					errors.append(FHIRJSONError(key: "extension", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["modifierExtension"] {
				presentKeys.insert("modifierExtension")
				if let val = exist as? [FHIRJSON] {
					self.modifierExtension = Extension.instantiate(fromArray: val, owner: self) as? [Extension]
				}
				else {
					errors.append(FHIRJSONError(key: "modifierExtension", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? FHIRJSON {
					self.text = Narrative(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contained = self.contained {
			json["contained"] = contained.map() { $0.asJSON() }
		}
		if let extension_fhir = self.extension_fhir {
			json["extension"] = extension_fhir.map() { $0.asJSON() }
		}
		if let modifierExtension = self.modifierExtension {
			json["modifierExtension"] = modifierExtension.map() { $0.asJSON() }
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

