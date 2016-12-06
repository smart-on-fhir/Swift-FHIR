//
//  Annotation.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Annotation) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Text node with attribution.

A  text note which also  contains information about who made the statement and when.
*/
open class Annotation: Element {
	override open class var resourceType: String {
		get { return "Annotation" }
	}
	
	/// Individual responsible for the annotation.
	public var authorReference: Reference?
	
	/// Individual responsible for the annotation.
	public var authorString: String?
	
	/// The annotation  - text content.
	public var text: String?
	
	/// When the annotation was made.
	public var time: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(text: String) {
		self.init()
		self.text = text
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["authorReference"] {
			presentKeys.insert("authorReference")
			if let val = exist as? FHIRJSON {
				do {
					self.authorReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "authorReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "authorReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["authorString"] {
			presentKeys.insert("authorString")
			if let val = exist as? String {
				self.authorString = val
			}
			else {
				errors.append(FHIRValidationError(key: "authorString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? String {
				self.text = val
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "text"))
		}
		if let exist = json["time"] {
			presentKeys.insert("time")
			if let val = exist as? String {
				self.time = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "time", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let authorReference = self.authorReference {
			json["authorReference"] = authorReference.asJSON(errors: &errors)
		}
		if let authorString = self.authorString {
			json["authorString"] = authorString.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let time = self.time {
			json["time"] = time.asJSON()
		}
		
		return json
	}
}

