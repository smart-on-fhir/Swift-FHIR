//
//  RelatedArtifact.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/RelatedArtifact) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Related artifacts for a knowledge resource.
 *
 *  Related artifacts such as additional documentation, justification, or bibliographic references.
 */
open class RelatedArtifact: Element {
	override open class var resourceType: String {
		get { return "RelatedArtifact" }
	}
	
	/// Bibliographic citation for the artifact.
	public var citation: String?
	
	/// Brief description of the related artifact.
	public var display: String?
	
	/// The related document.
	public var document: Attachment?
	
	/// The related resource.
	public var resource: Reference?
	
	/// documentation | justification | citation | predecessor | successor | derived-from | depends-on | composed-of.
	public var type: String?
	
	/// Url for the related artifact.
	public var url: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["citation"] {
			presentKeys.insert("citation")
			if let val = exist as? String {
				self.citation = val
			}
			else {
				errors.append(FHIRValidationError(key: "citation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["display"] {
			presentKeys.insert("display")
			if let val = exist as? String {
				self.display = val
			}
			else {
				errors.append(FHIRValidationError(key: "display", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["document"] {
			presentKeys.insert("document")
			if let val = exist as? FHIRJSON {
				do {
					self.document = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "document"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "document", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? FHIRJSON {
				do {
					self.resource = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let citation = self.citation {
			json["citation"] = citation.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let document = self.document {
			json["document"] = document.asJSON(errors: &errors)
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON(errors: &errors)
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

