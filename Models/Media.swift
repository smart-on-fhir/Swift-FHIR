//
//  Media.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Media) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by
 *  direct reference.
 */
public class Media: DomainResource
{
	override public class var resourceName: String {
		get { return "Media" }
	}
	
	/// Actual Media - reference or data
	public var content: Attachment?
	
	/// Name of the device/manufacturer
	public var deviceName: String?
	
	/// Length in seconds (audio / video)
	public var duration: UInt?
	
	/// Number of frames if > 1 (photo)
	public var frames: UInt?
	
	/// Height of the image in pixels(photo/video)
	public var height: UInt?
	
	/// Identifier(s) for the image
	public var identifier: [Identifier]?
	
	/// The person who generated the image
	public var operator_fhir: Reference?
	
	/// Who/What this Media is a record of
	public var subject: Reference?
	
	/// The type of acquisition equipment/process
	public var subtype: CodeableConcept?
	
	/// photo | video | audio
	public var type: String?
	
	/// Imaging view e.g Lateral or Antero-posterior
	public var view: CodeableConcept?
	
	/// Width of the image in pixels (photo/video)
	public var width: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(content: Attachment?, type: String?) {
		self.init(json: nil)
		if nil != content {
			self.content = content
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["content"] {
				presentKeys.addObject("content")
				if let val = exist as? FHIRJSON {
					self.content = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"content\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"content\" but it is missing"))
			}
			if let exist: AnyObject = js["deviceName"] {
				presentKeys.addObject("deviceName")
				if let val = exist as? String {
					self.deviceName = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"deviceName\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["duration"] {
				presentKeys.addObject("duration")
				if let val = exist as? UInt {
					self.duration = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"duration\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["frames"] {
				presentKeys.addObject("frames")
				if let val = exist as? UInt {
					self.frames = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"frames\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["height"] {
				presentKeys.addObject("height")
				if let val = exist as? UInt {
					self.height = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"height\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["operator"] {
				presentKeys.addObject("operator")
				if let val = exist as? FHIRJSON {
					self.operator_fhir = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"operator\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subtype"] {
				presentKeys.addObject("subtype")
				if let val = exist as? FHIRJSON {
					self.subtype = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subtype\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["view"] {
				presentKeys.addObject("view")
				if let val = exist as? FHIRJSON {
					self.view = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"view\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["width"] {
				presentKeys.addObject("width")
				if let val = exist as? UInt {
					self.width = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"width\" to be `UInt`, but is \(exist.dynamicType)"))
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

