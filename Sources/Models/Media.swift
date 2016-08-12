//
//  Media.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Media) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by
 *  direct reference.
 */
public class Media: DomainResource {
	override public class var resourceName: String {
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
	
	/// photo | video | audio.
	public var type: String?
	
	/// Imaging view, e.g. Lateral or Antero-posterior.
	public var view: CodeableConcept?
	
	/// Width of the image in pixels (photo/video).
	public var width: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Attachment, type: String) {
		self.init(json: nil)
		self.content = content
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["content"] {
				presentKeys.insert("content")
				if let val = exist as? FHIRJSON {
					self.content = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "content", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "content"))
			}
			if let exist: AnyObject = js["deviceName"] {
				presentKeys.insert("deviceName")
				if let val = exist as? String {
					self.deviceName = val
				}
				else {
					errors.append(FHIRJSONError(key: "deviceName", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["duration"] {
				presentKeys.insert("duration")
				if let val = exist as? UInt {
					self.duration = val
				}
				else {
					errors.append(FHIRJSONError(key: "duration", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["frames"] {
				presentKeys.insert("frames")
				if let val = exist as? UInt {
					self.frames = val
				}
				else {
					errors.append(FHIRJSONError(key: "frames", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["height"] {
				presentKeys.insert("height")
				if let val = exist as? UInt {
					self.height = val
				}
				else {
					errors.append(FHIRJSONError(key: "height", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["operator"] {
				presentKeys.insert("operator")
				if let val = exist as? FHIRJSON {
					self.operator_fhir = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "operator", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subtype"] {
				presentKeys.insert("subtype")
				if let val = exist as? FHIRJSON {
					self.subtype = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subtype", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["view"] {
				presentKeys.insert("view")
				if let val = exist as? FHIRJSON {
					self.view = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "view", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["width"] {
				presentKeys.insert("width")
				if let val = exist as? UInt {
					self.width = val
				}
				else {
					errors.append(FHIRJSONError(key: "width", wants: UInt.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let content = self.content {
			json["content"] = content.asJSON()
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
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let operator_fhir = self.operator_fhir {
			json["operator"] = operator_fhir.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let subtype = self.subtype {
			json["subtype"] = subtype.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let view = self.view {
			json["view"] = view.asJSON()
		}
		if let width = self.width {
			json["width"] = width.asJSON()
		}
		
		return json
	}
}

