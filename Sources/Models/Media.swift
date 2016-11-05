//
//  Media.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Media) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by
direct reference.
*/
open class Media: DomainResource {
	override open class var resourceType: String {
		get { return "Media" }
	}
	
	/// Actual Media - reference or data.
	public var content: Attachment?
	
	/// Name of the device/manufacturer.
	public var deviceName: String?
	
	/// Length in seconds (audio / video).
	public var duration: UInt?
	
	/// Number of frames if > 1 (photo).
	public var frames: UInt?
	
	/// Height of the image in pixels (photo/video).
	public var height: UInt?
	
	/// Identifier(s) for the image.
	public var identifier: [Identifier]?
	
	/// The person who generated the image.
	public var operator_fhir: Reference?
	
	/// Who/What this Media is a record of.
	public var subject: Reference?
	
	/// The type of acquisition equipment/process.
	public var subtype: CodeableConcept?
	
	/// Whether the media is a photo (still image), an audio recording, or a video recording.
	public var type: DigitalMediaType?
	
	/// Imaging view, e.g. Lateral or Antero-posterior.
	public var view: CodeableConcept?
	
	/// Width of the image in pixels (photo/video).
	public var width: UInt?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Attachment, type: DigitalMediaType) {
		self.init()
		self.content = content
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["content"] {
			presentKeys.insert("content")
			if let val = exist as? FHIRJSON {
				do {
					self.content = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "content"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "content", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "content"))
		}
		if let exist = json["deviceName"] {
			presentKeys.insert("deviceName")
			if let val = exist as? String {
				self.deviceName = val
			}
			else {
				errors.append(FHIRValidationError(key: "deviceName", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["duration"] {
			presentKeys.insert("duration")
			if let val = exist as? UInt {
				self.duration = val
			}
			else {
				errors.append(FHIRValidationError(key: "duration", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["frames"] {
			presentKeys.insert("frames")
			if let val = exist as? UInt {
				self.frames = val
			}
			else {
				errors.append(FHIRValidationError(key: "frames", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["height"] {
			presentKeys.insert("height")
			if let val = exist as? UInt {
				self.height = val
			}
			else {
				errors.append(FHIRValidationError(key: "height", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["operator"] {
			presentKeys.insert("operator")
			if let val = exist as? FHIRJSON {
				do {
					self.operator_fhir = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operator"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operator", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["subtype"] {
			presentKeys.insert("subtype")
			if let val = exist as? FHIRJSON {
				do {
					self.subtype = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subtype"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subtype", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = DigitalMediaType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["view"] {
			presentKeys.insert("view")
			if let val = exist as? FHIRJSON {
				do {
					self.view = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "view"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "view", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["width"] {
			presentKeys.insert("width")
			if let val = exist as? UInt {
				self.width = val
			}
			else {
				errors.append(FHIRValidationError(key: "width", wants: UInt.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let content = self.content {
			json["content"] = content.asJSON(errors: &errors)
		}
		if let deviceName = self.deviceName {
			json["deviceName"] = deviceName.asJSON()
		}
		if let duration = self.duration {
			json["duration"] = duration.asJSON()
		}
		if let frames = self.frames {
			json["frames"] = frames.asJSON()
		}
		if let height = self.height {
			json["height"] = height.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let operator_fhir = self.operator_fhir {
			json["operator"] = operator_fhir.asJSON(errors: &errors)
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let subtype = self.subtype {
			json["subtype"] = subtype.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		if let view = self.view {
			json["view"] = view.asJSON(errors: &errors)
		}
		if let width = self.width {
			json["width"] = width.asJSON()
		}
		
		return json
	}
}

