//
//  Media.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Media) on 2017-02-14.
//  2017, SMART Health IT.
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
	public var deviceName: FHIRString?
	
	/// Length in seconds (audio / video).
	public var duration: FHIRInteger?
	
	/// Number of frames if > 1 (photo).
	public var frames: FHIRInteger?
	
	/// Height of the image in pixels (photo/video).
	public var height: FHIRInteger?
	
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
	public var width: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Attachment, type: DigitalMediaType) {
		self.init()
		self.content = content
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		content = try createInstance(type: Attachment.self, for: "content", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? content
		if nil == content && !presentKeys.contains("content") {
			errors.append(FHIRValidationError(missing: "content"))
		}
		deviceName = try createInstance(type: FHIRString.self, for: "deviceName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deviceName
		duration = try createInstance(type: FHIRInteger.self, for: "duration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? duration
		frames = try createInstance(type: FHIRInteger.self, for: "frames", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? frames
		height = try createInstance(type: FHIRInteger.self, for: "height", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? height
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		operator_fhir = try createInstance(type: Reference.self, for: "operator", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? operator_fhir
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		subtype = try createInstance(type: CodeableConcept.self, for: "subtype", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subtype
		type = createEnum(type: DigitalMediaType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		view = try createInstance(type: CodeableConcept.self, for: "view", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? view
		width = try createInstance(type: FHIRInteger.self, for: "width", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? width
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.content?.decorate(json: &json, withKey: "content", errors: &errors)
		if nil == self.content {
			errors.append(FHIRValidationError(missing: "content"))
		}
		self.deviceName?.decorate(json: &json, withKey: "deviceName", errors: &errors)
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.frames?.decorate(json: &json, withKey: "frames", errors: &errors)
		self.height?.decorate(json: &json, withKey: "height", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.operator_fhir?.decorate(json: &json, withKey: "operator", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.subtype?.decorate(json: &json, withKey: "subtype", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.view?.decorate(json: &json, withKey: "view", errors: &errors)
		self.width?.decorate(json: &json, withKey: "width", errors: &errors)
	}
}

