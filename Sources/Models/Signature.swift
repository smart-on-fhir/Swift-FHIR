//
//  Signature.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Signature) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A digital Signature - XML DigSig, JWT, Graphical image of signature, etc..

A digital signature along with supporting context. The signature may be electronic/cryptographic in nature, or a
graphical image representing a hand-written signature, or a signature process. Different Signature approaches have
different utilities.
*/
open class Signature: Element {
	override open class var resourceType: String {
		get { return "Signature" }
	}
	
	/// The actual signature content (XML DigSig. JWT, picture, etc.).
	public var blob: Base64Binary?
	
	/// The technical format of the signature.
	public var contentType: FHIRString?
	
	/// The party represented.
	public var onBehalfOfReference: Reference?
	
	/// The party represented.
	public var onBehalfOfUri: URL?
	
	/// Indication of the reason the entity signed the object(s).
	public var type: [Coding]?
	
	/// When the signature was created.
	public var when: Instant?
	
	/// Who signed.
	public var whoReference: Reference?
	
	/// Who signed.
	public var whoUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: [Coding], when: Instant, who: Any) {
		self.init()
		self.type = type
		self.when = when
		if let value = who as? URL {
			self.whoUri = value
		}
		else if let value = who as? Reference {
			self.whoReference = value
		}
		else {
			fhir_warn("Type “\(type(of: who))” for property “\(who)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["blob"] {
			presentKeys.insert("blob")
			if let val = exist as? String {
				self.blob = Base64Binary(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "blob", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["contentType"] {
			presentKeys.insert("contentType")
			if let val = exist as? String {
				self.contentType = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "contentType", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["onBehalfOfReference"] {
			presentKeys.insert("onBehalfOfReference")
			if let val = exist as? FHIRJSON {
				do {
					self.onBehalfOfReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "onBehalfOfReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "onBehalfOfReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["onBehalfOfUri"] {
			presentKeys.insert("onBehalfOfUri")
			if let val = exist as? String {
				self.onBehalfOfUri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "onBehalfOfUri", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? [FHIRJSON] {
				do {
					self.type = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["when"] {
			presentKeys.insert("when")
			if let val = exist as? String {
				self.when = Instant(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "when", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "when"))
		}
		if let exist = json["whoReference"] {
			presentKeys.insert("whoReference")
			if let val = exist as? FHIRJSON {
				do {
					self.whoReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "whoReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "whoReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["whoUri"] {
			presentKeys.insert("whoUri")
			if let val = exist as? String {
				self.whoUri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "whoUri", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.whoUri && nil == self.whoReference {
			errors.append(FHIRValidationError(missing: "who[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let blob = self.blob {
			json["blob"] = blob.asJSON()
		}
		if let contentType = self.contentType {
			json["contentType"] = contentType.asJSON()
		}
		if let onBehalfOfReference = self.onBehalfOfReference {
			json["onBehalfOfReference"] = onBehalfOfReference.asJSON(errors: &errors)
		}
		if let onBehalfOfUri = self.onBehalfOfUri {
			json["onBehalfOfUri"] = onBehalfOfUri.asJSON()
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let when = self.when {
			json["when"] = when.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "when"))
		}
		if let whoReference = self.whoReference {
			json["whoReference"] = whoReference.asJSON(errors: &errors)
		}
		if let whoUri = self.whoUri {
			json["whoUri"] = whoUri.asJSON()
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.whoUri && nil == self.whoReference {
			errors.append(FHIRValidationError(missing: "who[x]"))
		}
		
		return json
	}
}

