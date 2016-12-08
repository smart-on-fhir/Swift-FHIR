//
//  ImagingStudy.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ImagingStudy) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// Study access service endpoint.
	public var baseLocation: [ImagingStudyBaseLocation]?
	
	/// Request fulfilled.
	public var basedOn: [Reference]?
	
	/// Originating context.
	public var context: Reference?
	
	/// Institution-generated description.
	public var description_fhir: FHIRString?
	
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
	
	/// Type of procedure performed.
	public var procedure: [Reference]?
	
	/// Reason for study.
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
	public convenience init(numberOfInstances: FHIRInteger, numberOfSeries: FHIRInteger, patient: Reference, uid: FHIRURL) {
		self.init()
		self.numberOfInstances = numberOfInstances
		self.numberOfSeries = numberOfSeries
		self.patient = patient
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		accession = try createInstance(type: Identifier.self, for: "accession", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? accession
		availability = try createInstance(type: FHIRString.self, for: "availability", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? availability
		baseLocation = try createInstances(of: ImagingStudyBaseLocation.self, for: "baseLocation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? baseLocation
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		interpreter = try createInstances(of: Reference.self, for: "interpreter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? interpreter
		modalityList = try createInstances(of: Coding.self, for: "modalityList", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modalityList
		numberOfInstances = try createInstance(type: FHIRInteger.self, for: "numberOfInstances", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? numberOfInstances
		if nil == numberOfInstances && !presentKeys.contains("numberOfInstances") {
			errors.append(FHIRValidationError(missing: "numberOfInstances"))
		}
		numberOfSeries = try createInstance(type: FHIRInteger.self, for: "numberOfSeries", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? numberOfSeries
		if nil == numberOfSeries && !presentKeys.contains("numberOfSeries") {
			errors.append(FHIRValidationError(missing: "numberOfSeries"))
		}
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		procedure = try createInstances(of: Reference.self, for: "procedure", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? procedure
		reason = try createInstance(type: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		referrer = try createInstance(type: Reference.self, for: "referrer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referrer
		series = try createInstances(of: ImagingStudySeries.self, for: "series", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? series
		started = try createInstance(type: DateTime.self, for: "started", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? started
		uid = try createInstance(type: FHIRURL.self, for: "uid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uid
		if nil == uid && !presentKeys.contains("uid") {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.accession?.decorate(json: &json, withKey: "accession", errors: &errors)
		self.availability?.decorate(json: &json, withKey: "availability", errors: &errors)
		arrayDecorate(json: &json, withKey: "baseLocation", using: self.baseLocation, errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "interpreter", using: self.interpreter, errors: &errors)
		arrayDecorate(json: &json, withKey: "modalityList", using: self.modalityList, errors: &errors)
		self.numberOfInstances?.decorate(json: &json, withKey: "numberOfInstances", errors: &errors)
		if nil == self.numberOfInstances {
			errors.append(FHIRValidationError(missing: "numberOfInstances"))
		}
		self.numberOfSeries?.decorate(json: &json, withKey: "numberOfSeries", errors: &errors)
		if nil == self.numberOfSeries {
			errors.append(FHIRValidationError(missing: "numberOfSeries"))
		}
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "procedure", using: self.procedure, errors: &errors)
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
Study access service endpoint.

Methods of accessing  (e.g., retrieving, viewing) the study.
*/
open class ImagingStudyBaseLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudyBaseLocation" }
	}
	
	/// WADO-RS | WADO-URI | IID.
	public var type: Coding?
	
	/// Study access URL.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding, url: FHIRURL) {
		self.init()
		self.type = type
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		type = try createInstance(type: Coding.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		if nil == url && !presentKeys.contains("url") {
			errors.append(FHIRValidationError(missing: "url"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
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
	
	/// Series access endpoint.
	public var baseLocation: [ImagingStudySeriesBaseLocation]?
	
	/// Body part examined.
	public var bodySite: Coding?
	
	/// A short human readable summary of the series.
	public var description_fhir: FHIRString?
	
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
	
	/// When the series started.
	public var started: DateTime?
	
	/// Formal DICOM identifier for this series.
	public var uid: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(modality: Coding, numberOfInstances: FHIRInteger, uid: FHIRURL) {
		self.init()
		self.modality = modality
		self.numberOfInstances = numberOfInstances
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		availability = try createInstance(type: FHIRString.self, for: "availability", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? availability
		baseLocation = try createInstances(of: ImagingStudySeriesBaseLocation.self, for: "baseLocation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? baseLocation
		bodySite = try createInstance(type: Coding.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		instance = try createInstances(of: ImagingStudySeriesInstance.self, for: "instance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? instance
		laterality = try createInstance(type: Coding.self, for: "laterality", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? laterality
		modality = try createInstance(type: Coding.self, for: "modality", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modality
		if nil == modality && !presentKeys.contains("modality") {
			errors.append(FHIRValidationError(missing: "modality"))
		}
		number = try createInstance(type: FHIRInteger.self, for: "number", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? number
		numberOfInstances = try createInstance(type: FHIRInteger.self, for: "numberOfInstances", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? numberOfInstances
		if nil == numberOfInstances && !presentKeys.contains("numberOfInstances") {
			errors.append(FHIRValidationError(missing: "numberOfInstances"))
		}
		started = try createInstance(type: DateTime.self, for: "started", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? started
		uid = try createInstance(type: FHIRURL.self, for: "uid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uid
		if nil == uid && !presentKeys.contains("uid") {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.availability?.decorate(json: &json, withKey: "availability", errors: &errors)
		arrayDecorate(json: &json, withKey: "baseLocation", using: self.baseLocation, errors: &errors)
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "instance", using: self.instance, errors: &errors)
		self.laterality?.decorate(json: &json, withKey: "laterality", errors: &errors)
		self.modality?.decorate(json: &json, withKey: "modality", errors: &errors)
		if nil == self.modality {
			errors.append(FHIRValidationError(missing: "modality"))
		}
		self.number?.decorate(json: &json, withKey: "number", errors: &errors)
		self.numberOfInstances?.decorate(json: &json, withKey: "numberOfInstances", errors: &errors)
		if nil == self.numberOfInstances {
			errors.append(FHIRValidationError(missing: "numberOfInstances"))
		}
		self.started?.decorate(json: &json, withKey: "started", errors: &errors)
		self.uid?.decorate(json: &json, withKey: "uid", errors: &errors)
		if nil == self.uid {
			errors.append(FHIRValidationError(missing: "uid"))
		}
	}
}


/**
Series access endpoint.

Methods of accessing (e.g. retrieving) the series.
*/
open class ImagingStudySeriesBaseLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudySeriesBaseLocation" }
	}
	
	/// WADO-RS | WADO-URI | IID.
	public var type: Coding?
	
	/// Series access URL.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding, url: FHIRURL) {
		self.init()
		self.type = type
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		type = try createInstance(type: Coding.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		if nil == url && !presentKeys.contains("url") {
			errors.append(FHIRValidationError(missing: "url"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
	}
}


/**
A single SOP instance from the series.

A single SOP Instance within the series, e.g. an image, or presentation state.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		number = try createInstance(type: FHIRInteger.self, for: "number", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? number
		sopClass = try createInstance(type: FHIRURL.self, for: "sopClass", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sopClass
		if nil == sopClass && !presentKeys.contains("sopClass") {
			errors.append(FHIRValidationError(missing: "sopClass"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		uid = try createInstance(type: FHIRURL.self, for: "uid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uid
		if nil == uid && !presentKeys.contains("uid") {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		
		return errors.isEmpty ? nil : errors
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

