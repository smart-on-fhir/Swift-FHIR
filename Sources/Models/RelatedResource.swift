//
//  RelatedResource.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/RelatedResource) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Related resources for the module.
 *
 *  Related resources such as additional documentation, justification, or bibliographic references.
 */
open class RelatedResource: Element {
	override open class var resourceType: String {
		get { return "RelatedResource" }
	}
	
	/// Bibliographic citation for the resource.
	public var citation: String?
	
	/// Brief description of the related resource.
	public var display: String?
	
	/// The related document.
	public var document: Attachment?
	
	/// The related resource.
	public var resource: Reference?
	
	/// documentation | justification | citation | predecessor | successor | derived-from | depends-on | composed-of.
	public var type: String?
	
	/// Url for the related resource.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init(json: nil)
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["citation"] {
				presentKeys.insert("citation")
				if let val = exist as? String {
					self.citation = val
				}
				else {
					errors.append(FHIRJSONError(key: "citation", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["display"] {
				presentKeys.insert("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(FHIRJSONError(key: "display", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["document"] {
				presentKeys.insert("document")
				if let val = exist as? FHIRJSON {
					self.document = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "document", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let citation = self.citation {
			json["citation"] = citation.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let document = self.document {
			json["document"] = document.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}

