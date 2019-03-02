//
//  Media.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Media) on 2019-03-01.
//  2019, SMART Health IT.
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
	
	/// Observed body part.
	public var bodySite: CodeableConcept?
	
	/// Actual Media - reference or data.
	public var content: Attachment?
	
	/// When Media was collected.
	public var createdDateTime: DateTime?
	
	/// When Media was collected.
	public var createdPeriod: Period?
	
	/// Observing Device.
	public var device: Reference?
	
	/// Name of the device/manufacturer.
	public var deviceName: FHIRString?
	
	/// Length in seconds (audio / video).
	public var duration: FHIRDecimal?
	
	/// Encounter associated with media.
	public var encounter: Reference?
	
	/// Number of frames if > 1 (photo).
	public var frames: FHIRInteger?
	
	/// Height of the image in pixels (photo/video).
	public var height: FHIRInteger?
	
	/// Identifier(s) for the image.
	public var identifier: [Identifier]?
	
	/// Date/Time this version was made available.
	public var issued: Instant?
	
	/// The type of acquisition equipment/process.
	public var modality: CodeableConcept?
	
	/// Comments made about the media.
	public var note: [Annotation]?
	
	/// The person who generated the image.
	public var operator_fhir: Reference?
	
	/// Part of referenced event.
	public var partOf: [Reference]?
	
	/// Why was event performed?.
	public var reasonCode: [CodeableConcept]?
	
	/// The current state of the {{title}}.
	public var status: EventStatus?
	
	/// Who/What this Media is a record of.
	public var subject: Reference?
	
	/// Classification of media as image, video, or audio.
	public var type: CodeableConcept?
	
	/// Imaging view, e.g. Lateral or Antero-posterior.
	public var view: CodeableConcept?
	
	/// Width of the image in pixels (photo/video).
	public var width: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Attachment, status: EventStatus) {
		self.init()
		self.content = content
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		bodySite = createInstance(type: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		content = createInstance(type: Attachment.self, for: "content", in: json, context: &instCtx, owner: self) ?? content
		if nil == content && !instCtx.containsKey("content") {
			instCtx.addError(FHIRValidationError(missing: "content"))
		}
		createdDateTime = createInstance(type: DateTime.self, for: "createdDateTime", in: json, context: &instCtx, owner: self) ?? createdDateTime
		createdPeriod = createInstance(type: Period.self, for: "createdPeriod", in: json, context: &instCtx, owner: self) ?? createdPeriod
		device = createInstance(type: Reference.self, for: "device", in: json, context: &instCtx, owner: self) ?? device
		deviceName = createInstance(type: FHIRString.self, for: "deviceName", in: json, context: &instCtx, owner: self) ?? deviceName
		duration = createInstance(type: FHIRDecimal.self, for: "duration", in: json, context: &instCtx, owner: self) ?? duration
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		frames = createInstance(type: FHIRInteger.self, for: "frames", in: json, context: &instCtx, owner: self) ?? frames
		height = createInstance(type: FHIRInteger.self, for: "height", in: json, context: &instCtx, owner: self) ?? height
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		issued = createInstance(type: Instant.self, for: "issued", in: json, context: &instCtx, owner: self) ?? issued
		modality = createInstance(type: CodeableConcept.self, for: "modality", in: json, context: &instCtx, owner: self) ?? modality
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		operator_fhir = createInstance(type: Reference.self, for: "operator", in: json, context: &instCtx, owner: self) ?? operator_fhir
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		status = createEnum(type: EventStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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
		self.createdDateTime?.decorate(json: &json, withKey: "createdDateTime", errors: &errors)
		self.createdPeriod?.decorate(json: &json, withKey: "createdPeriod", errors: &errors)
		self.device?.decorate(json: &json, withKey: "device", errors: &errors)
		self.deviceName?.decorate(json: &json, withKey: "deviceName", errors: &errors)
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		self.frames?.decorate(json: &json, withKey: "frames", errors: &errors)
		self.height?.decorate(json: &json, withKey: "height", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		self.modality?.decorate(json: &json, withKey: "modality", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.operator_fhir?.decorate(json: &json, withKey: "operator", errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.view?.decorate(json: &json, withKey: "view", errors: &errors)
		self.width?.decorate(json: &json, withKey: "width", errors: &errors)
	}
}

