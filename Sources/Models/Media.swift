//
//  Media.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Media) on 2017-03-22.
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
	
	/// Procedure that caused this media to be created.
	public var basedOn: [Reference]?
	
	/// Body part in media.
	public var bodySite: CodeableConcept?
	
	/// Actual Media - reference or data.
	public var content: Attachment?
	
	/// Encounter / Episode associated with media.
	public var context: Reference?
	
	/// Observing Device.
	public var device: Reference?
	
	/// Length in seconds (audio / video).
	public var duration: FHIRInteger?
	
	/// Number of frames if > 1 (photo).
	public var frames: FHIRInteger?
	
	/// Height of the image in pixels (photo/video).
	public var height: FHIRInteger?
	
	/// Identifier(s) for the image.
	public var identifier: [Identifier]?
	
	/// Comments made about the media.
	public var note: [Annotation]?
	
	/// When Media was collected.
	public var occurrenceDateTime: DateTime?
	
	/// When Media was collected.
	public var occurrencePeriod: Period?
	
	/// The person who generated the image.
	public var operator_fhir: Reference?
	
	/// Why was event performed?.
	public var reasonCode: [CodeableConcept]?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		bodySite = createInstance(type: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		content = createInstance(type: Attachment.self, for: "content", in: json, context: &instCtx, owner: self) ?? content
		if nil == content && !instCtx.containsKey("content") {
			instCtx.addError(FHIRValidationError(missing: "content"))
		}
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		device = createInstance(type: Reference.self, for: "device", in: json, context: &instCtx, owner: self) ?? device
		duration = createInstance(type: FHIRInteger.self, for: "duration", in: json, context: &instCtx, owner: self) ?? duration
		frames = createInstance(type: FHIRInteger.self, for: "frames", in: json, context: &instCtx, owner: self) ?? frames
		height = createInstance(type: FHIRInteger.self, for: "height", in: json, context: &instCtx, owner: self) ?? height
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		occurrencePeriod = createInstance(type: Period.self, for: "occurrencePeriod", in: json, context: &instCtx, owner: self) ?? occurrencePeriod
		operator_fhir = createInstance(type: Reference.self, for: "operator", in: json, context: &instCtx, owner: self) ?? operator_fhir
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		subtype = createInstance(type: CodeableConcept.self, for: "subtype", in: json, context: &instCtx, owner: self) ?? subtype
		type = createEnum(type: DigitalMediaType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		view = createInstance(type: CodeableConcept.self, for: "view", in: json, context: &instCtx, owner: self) ?? view
		width = createInstance(type: FHIRInteger.self, for: "width", in: json, context: &instCtx, owner: self) ?? width
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		self.content?.decorate(json: &json, withKey: "content", errors: &errors)
		if nil == self.content {
			errors.append(FHIRValidationError(missing: "content"))
		}
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.device?.decorate(json: &json, withKey: "device", errors: &errors)
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.frames?.decorate(json: &json, withKey: "frames", errors: &errors)
		self.height?.decorate(json: &json, withKey: "height", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.operator_fhir?.decorate(json: &json, withKey: "operator", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
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

