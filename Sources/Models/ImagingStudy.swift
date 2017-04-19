//
//  ImagingStudy.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ImagingStudy) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// Related workflow identifier ("Accession Number").
	public var accession: Identifier?
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE.
	public var availability: FHIRString?
	
	/// Request fulfilled.
	public var basedOn: [Reference]?
	
	/// Originating context.
	public var context: Reference?
	
	/// Institution-generated description.
	public var description_fhir: FHIRString?
	
	/// Study access endpoint.
	public var endpoint: [Reference]?
	
	/// Other identifiers for the study.
	public var identifier: [Identifier]?
	
	/// Who interpreted images.
	public var interpreter: [Reference]?
	
	/// All series modality if actual acquisition modalities.
	public var modalityList: [Coding]?
	
	/// Number of Study Related Instances.
	public var numberOfInstances: FHIRInteger?
	
	/// Number of Study Related Series.
	public var numberOfSeries: FHIRInteger?
	
	/// Who the images are of.
	public var patient: Reference?
	
	/// The performed procedure code.
	public var procedureCode: [CodeableConcept]?
	
	/// The performed Procedure reference.
	public var procedureReference: [Reference]?
	
	/// Why the study was requested.
	public var reason: CodeableConcept?
	
	/// Referring physician.
	public var referrer: Reference?
	
	/// Each study has one or more series of instances.
	public var series: [ImagingStudySeries]?
	
	/// When the study was started.
	public var started: DateTime?
	
	/// Formal DICOM identifier for the study.
	public var uid: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, uid: FHIRURL) {
		self.init()
		self.patient = patient
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		accession = createInstance(type: Identifier.self, for: "accession", in: json, context: &instCtx, owner: self) ?? accession
		availability = createInstance(type: FHIRString.self, for: "availability", in: json, context: &instCtx, owner: self) ?? availability
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		interpreter = createInstances(of: Reference.self, for: "interpreter", in: json, context: &instCtx, owner: self) ?? interpreter
		modalityList = createInstances(of: Coding.self, for: "modalityList", in: json, context: &instCtx, owner: self) ?? modalityList
		numberOfInstances = createInstance(type: FHIRInteger.self, for: "numberOfInstances", in: json, context: &instCtx, owner: self) ?? numberOfInstances
		numberOfSeries = createInstance(type: FHIRInteger.self, for: "numberOfSeries", in: json, context: &instCtx, owner: self) ?? numberOfSeries
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		procedureCode = createInstances(of: CodeableConcept.self, for: "procedureCode", in: json, context: &instCtx, owner: self) ?? procedureCode
		procedureReference = createInstances(of: Reference.self, for: "procedureReference", in: json, context: &instCtx, owner: self) ?? procedureReference
		reason = createInstance(type: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		referrer = createInstance(type: Reference.self, for: "referrer", in: json, context: &instCtx, owner: self) ?? referrer
		series = createInstances(of: ImagingStudySeries.self, for: "series", in: json, context: &instCtx, owner: self) ?? series
		started = createInstance(type: DateTime.self, for: "started", in: json, context: &instCtx, owner: self) ?? started
		uid = createInstance(type: FHIRURL.self, for: "uid", in: json, context: &instCtx, owner: self) ?? uid
		if nil == uid && !instCtx.containsKey("uid") {
			instCtx.addError(FHIRValidationError(missing: "uid"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.accession?.decorate(json: &json, withKey: "accession", errors: &errors)
		self.availability?.decorate(json: &json, withKey: "availability", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "interpreter", using: self.interpreter, errors: &errors)
		arrayDecorate(json: &json, withKey: "modalityList", using: self.modalityList, errors: &errors)
		self.numberOfInstances?.decorate(json: &json, withKey: "numberOfInstances", errors: &errors)
		self.numberOfSeries?.decorate(json: &json, withKey: "numberOfSeries", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "procedureCode", using: self.procedureCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "procedureReference", using: self.procedureReference, errors: &errors)
		self.reason?.decorate(json: &json, withKey: "reason", errors: &errors)
		self.referrer?.decorate(json: &json, withKey: "referrer", errors: &errors)
		arrayDecorate(json: &json, withKey: "series", using: self.series, errors: &errors)
		self.started?.decorate(json: &json, withKey: "started", errors: &errors)
		self.uid?.decorate(json: &json, withKey: "uid", errors: &errors)
		if nil == self.uid {
			errors.append(FHIRValidationError(missing: "uid"))
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
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE.
	public var availability: FHIRString?
	
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
	public var performer: [Reference]?
	
	/// When the series started.
	public var started: DateTime?
	
	/// Formal DICOM identifier for this series.
	public var uid: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(modality: Coding, uid: FHIRURL) {
		self.init()
		self.modality = modality
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		availability = createInstance(type: FHIRString.self, for: "availability", in: json, context: &instCtx, owner: self) ?? availability
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
		performer = createInstances(of: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		started = createInstance(type: DateTime.self, for: "started", in: json, context: &instCtx, owner: self) ?? started
		uid = createInstance(type: FHIRURL.self, for: "uid", in: json, context: &instCtx, owner: self) ?? uid
		if nil == uid && !instCtx.containsKey("uid") {
			instCtx.addError(FHIRValidationError(missing: "uid"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.availability?.decorate(json: &json, withKey: "availability", errors: &errors)
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
	public var sopClass: FHIRURL?
	
	/// Description of instance.
	public var title: FHIRString?
	
	/// Formal DICOM identifier for this instance.
	public var uid: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sopClass: FHIRURL, uid: FHIRURL) {
		self.init()
		self.sopClass = sopClass
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		number = createInstance(type: FHIRInteger.self, for: "number", in: json, context: &instCtx, owner: self) ?? number
		sopClass = createInstance(type: FHIRURL.self, for: "sopClass", in: json, context: &instCtx, owner: self) ?? sopClass
		if nil == sopClass && !instCtx.containsKey("sopClass") {
			instCtx.addError(FHIRValidationError(missing: "sopClass"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		uid = createInstance(type: FHIRURL.self, for: "uid", in: json, context: &instCtx, owner: self) ?? uid
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

