//
//  ImagingStudy.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ImagingStudy) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A set of images produced in single study (one or more series of references images).

Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which
includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common
context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of
different modalities.
*/
open class ImagingStudy: DomainResource {
	override open class var resourceType: String {
		get { return "ImagingStudy" }
	}
	
	/// Request fulfilled.
	public var basedOn: [Reference]?
	
	/// Institution-generated description.
	public var description_fhir: FHIRString?
	
	/// Encounter with which this imaging study is associated.
	public var encounter: Reference?
	
	/// Study access endpoint.
	public var endpoint: [Reference]?
	
	/// Identifiers for the whole study.
	public var identifier: [Identifier]?
	
	/// Who interpreted images.
	public var interpreter: [Reference]?
	
	/// Where ImagingStudy occurred.
	public var location: Reference?
	
	/// All series modality if actual acquisition modalities.
	public var modality: [Coding]?
	
	/// User-defined comments.
	public var note: [Annotation]?
	
	/// Number of Study Related Instances.
	public var numberOfInstances: FHIRInteger?
	
	/// Number of Study Related Series.
	public var numberOfSeries: FHIRInteger?
	
	/// The performed procedure code.
	public var procedureCode: [CodeableConcept]?
	
	/// The performed Procedure reference.
	public var procedureReference: Reference?
	
	/// Why the study was requested.
	public var reasonCode: [CodeableConcept]?
	
	/// Why was study performed.
	public var reasonReference: [Reference]?
	
	/// Referring physician.
	public var referrer: Reference?
	
	/// Each study has one or more series of instances.
	public var series: [ImagingStudySeries]?
	
	/// When the study was started.
	public var started: DateTime?
	
	/// The current state of the ImagingStudy.
	public var status: ImagingStudyStatus?
	
	/// Who or what is the subject of the study.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: ImagingStudyStatus, subject: Reference) {
		self.init()
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		interpreter = createInstances(of: Reference.self, for: "interpreter", in: json, context: &instCtx, owner: self) ?? interpreter
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		modality = createInstances(of: Coding.self, for: "modality", in: json, context: &instCtx, owner: self) ?? modality
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		numberOfInstances = createInstance(type: FHIRInteger.self, for: "numberOfInstances", in: json, context: &instCtx, owner: self) ?? numberOfInstances
		numberOfSeries = createInstance(type: FHIRInteger.self, for: "numberOfSeries", in: json, context: &instCtx, owner: self) ?? numberOfSeries
		procedureCode = createInstances(of: CodeableConcept.self, for: "procedureCode", in: json, context: &instCtx, owner: self) ?? procedureCode
		procedureReference = createInstance(type: Reference.self, for: "procedureReference", in: json, context: &instCtx, owner: self) ?? procedureReference
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		referrer = createInstance(type: Reference.self, for: "referrer", in: json, context: &instCtx, owner: self) ?? referrer
		series = createInstances(of: ImagingStudySeries.self, for: "series", in: json, context: &instCtx, owner: self) ?? series
		started = createInstance(type: DateTime.self, for: "started", in: json, context: &instCtx, owner: self) ?? started
		status = createEnum(type: ImagingStudyStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "interpreter", using: self.interpreter, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		arrayDecorate(json: &json, withKey: "modality", using: self.modality, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.numberOfInstances?.decorate(json: &json, withKey: "numberOfInstances", errors: &errors)
		self.numberOfSeries?.decorate(json: &json, withKey: "numberOfSeries", errors: &errors)
		arrayDecorate(json: &json, withKey: "procedureCode", using: self.procedureCode, errors: &errors)
		self.procedureReference?.decorate(json: &json, withKey: "procedureReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.referrer?.decorate(json: &json, withKey: "referrer", errors: &errors)
		arrayDecorate(json: &json, withKey: "series", using: self.series, errors: &errors)
		self.started?.decorate(json: &json, withKey: "started", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
	}
}


/**
Each study has one or more series of instances.

Each study has one or more series of images or other content.
*/
open class ImagingStudySeries: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudySeries" }
	}
	
	/// Body part examined.
	public var bodySite: Coding?
	
	/// A short human readable summary of the series.
	public var description_fhir: FHIRString?
	
	/// Series access endpoint.
	public var endpoint: [Reference]?
	
	/// A single SOP instance from the series.
	public var instance: [ImagingStudySeriesInstance]?
	
	/// Body part laterality.
	public var laterality: Coding?
	
	/// The modality of the instances in the series.
	public var modality: Coding?
	
	/// Numeric identifier of this series.
	public var number: FHIRInteger?
	
	/// Number of Series Related Instances.
	public var numberOfInstances: FHIRInteger?
	
	/// Who performed the series.
	public var performer: [ImagingStudySeriesPerformer]?
	
	/// Specimen imaged.
	public var specimen: [Reference]?
	
	/// When the series started.
	public var started: DateTime?
	
	/// DICOM Series Instance UID for the series.
	public var uid: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(modality: Coding, uid: FHIRString) {
		self.init()
		self.modality = modality
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		bodySite = createInstance(type: Coding.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		instance = createInstances(of: ImagingStudySeriesInstance.self, for: "instance", in: json, context: &instCtx, owner: self) ?? instance
		laterality = createInstance(type: Coding.self, for: "laterality", in: json, context: &instCtx, owner: self) ?? laterality
		modality = createInstance(type: Coding.self, for: "modality", in: json, context: &instCtx, owner: self) ?? modality
		if nil == modality && !instCtx.containsKey("modality") {
			instCtx.addError(FHIRValidationError(missing: "modality"))
		}
		number = createInstance(type: FHIRInteger.self, for: "number", in: json, context: &instCtx, owner: self) ?? number
		numberOfInstances = createInstance(type: FHIRInteger.self, for: "numberOfInstances", in: json, context: &instCtx, owner: self) ?? numberOfInstances
		performer = createInstances(of: ImagingStudySeriesPerformer.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		specimen = createInstances(of: Reference.self, for: "specimen", in: json, context: &instCtx, owner: self) ?? specimen
		started = createInstance(type: DateTime.self, for: "started", in: json, context: &instCtx, owner: self) ?? started
		uid = createInstance(type: FHIRString.self, for: "uid", in: json, context: &instCtx, owner: self) ?? uid
		if nil == uid && !instCtx.containsKey("uid") {
			instCtx.addError(FHIRValidationError(missing: "uid"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "instance", using: self.instance, errors: &errors)
		self.laterality?.decorate(json: &json, withKey: "laterality", errors: &errors)
		self.modality?.decorate(json: &json, withKey: "modality", errors: &errors)
		if nil == self.modality {
			errors.append(FHIRValidationError(missing: "modality"))
		}
		self.number?.decorate(json: &json, withKey: "number", errors: &errors)
		self.numberOfInstances?.decorate(json: &json, withKey: "numberOfInstances", errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		arrayDecorate(json: &json, withKey: "specimen", using: self.specimen, errors: &errors)
		self.started?.decorate(json: &json, withKey: "started", errors: &errors)
		self.uid?.decorate(json: &json, withKey: "uid", errors: &errors)
		if nil == self.uid {
			errors.append(FHIRValidationError(missing: "uid"))
		}
	}
}


/**
A single SOP instance from the series.

A single SOP instance within the series, e.g. an image, or presentation state.
*/
open class ImagingStudySeriesInstance: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudySeriesInstance" }
	}
	
	/// The number of this instance in the series.
	public var number: FHIRInteger?
	
	/// DICOM class type.
	public var sopClass: Coding?
	
	/// Description of instance.
	public var title: FHIRString?
	
	/// DICOM SOP Instance UID.
	public var uid: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sopClass: Coding, uid: FHIRString) {
		self.init()
		self.sopClass = sopClass
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		number = createInstance(type: FHIRInteger.self, for: "number", in: json, context: &instCtx, owner: self) ?? number
		sopClass = createInstance(type: Coding.self, for: "sopClass", in: json, context: &instCtx, owner: self) ?? sopClass
		if nil == sopClass && !instCtx.containsKey("sopClass") {
			instCtx.addError(FHIRValidationError(missing: "sopClass"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		uid = createInstance(type: FHIRString.self, for: "uid", in: json, context: &instCtx, owner: self) ?? uid
		if nil == uid && !instCtx.containsKey("uid") {
			instCtx.addError(FHIRValidationError(missing: "uid"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.number?.decorate(json: &json, withKey: "number", errors: &errors)
		self.sopClass?.decorate(json: &json, withKey: "sopClass", errors: &errors)
		if nil == self.sopClass {
			errors.append(FHIRValidationError(missing: "sopClass"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.uid?.decorate(json: &json, withKey: "uid", errors: &errors)
		if nil == self.uid {
			errors.append(FHIRValidationError(missing: "uid"))
		}
	}
}


/**
Who performed the series.

Indicates who or what performed the series and how they were involved.
*/
open class ImagingStudySeriesPerformer: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudySeriesPerformer" }
	}
	
	/// Who performed the series.
	public var actor: Reference?
	
	/// Type of performance.
	public var function: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actor = createInstance(type: Reference.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		if nil == actor && !instCtx.containsKey("actor") {
			instCtx.addError(FHIRValidationError(missing: "actor"))
		}
		function = createInstance(type: CodeableConcept.self, for: "function", in: json, context: &instCtx, owner: self) ?? function
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.function?.decorate(json: &json, withKey: "function", errors: &errors)
	}
}

