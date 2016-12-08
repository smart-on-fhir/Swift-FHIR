//
//  ImagingManifest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ImagingManifest) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
Key Object Selection.

A manifest of a set of DICOM Service-Object Pair Instances (SOP Instances).  The referenced SOP Instances (images or
other content) are for a single patient, and may be from one or more studies. The referenced SOP Instances may have been
selected for a purpose, such as  conference, or consult.  Reflecting a range of sharing purposes, typical
ImagingManifest resources may include all SOP Instances in a study (perhaps for sharing through a Health Information
Exchange); key images from multiple studies (for reference by a referring or treating physician); both a multi-frame
ultrasound instance ("cine" video clip) and a set of measurements taken from that instance (for inclusion in a teaching
file); and so on.
*/
open class ImagingManifest: DomainResource {
	override open class var resourceType: String {
		get { return "ImagingManifest" }
	}
	
	/// Author (human or machine).
	public var author: Reference?
	
	/// Time when the selection of instances was made.
	public var authoringTime: DateTime?
	
	/// Description text.
	public var description_fhir: FHIRString?
	
	/// Patient of the selected objects.
	public var patient: Reference?
	
	/// Study identity of the selected instances.
	public var study: [ImagingManifestStudy]?
	
	/// Reason for selection.
	public var title: CodeableConcept?
	
	/// SOP Instance UID.
	public var uid: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, study: [ImagingManifestStudy], title: CodeableConcept) {
		self.init()
		self.patient = patient
		self.study = study
		self.title = title
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		author = try createInstance(type: Reference.self, for: "author", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? author
		authoringTime = try createInstance(type: DateTime.self, for: "authoringTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authoringTime
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		study = try createInstances(of: ImagingManifestStudy.self, for: "study", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? study
		if (nil == study || study!.isEmpty) && !presentKeys.contains("study") {
			errors.append(FHIRValidationError(missing: "study"))
		}
		title = try createInstance(type: CodeableConcept.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		if nil == title && !presentKeys.contains("title") {
			errors.append(FHIRValidationError(missing: "title"))
		}
		uid = try createInstance(type: FHIRURL.self, for: "uid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uid
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		self.authoringTime?.decorate(json: &json, withKey: "authoringTime", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "study", using: self.study, errors: &errors)
		if nil == study || self.study!.isEmpty {
			errors.append(FHIRValidationError(missing: "study"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		if nil == self.title {
			errors.append(FHIRValidationError(missing: "title"))
		}
		self.uid?.decorate(json: &json, withKey: "uid", errors: &errors)
	}
}


/**
Study identity of the selected instances.

Study identity and locating information of the DICOM SOP instances in the selection.
*/
open class ImagingManifestStudy: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingManifestStudy" }
	}
	
	/// Study access service endpoint.
	public var baseLocation: [ImagingManifestStudyBaseLocation]?
	
	/// Reference to ImagingStudy.
	public var imagingStudy: Reference?
	
	/// Series identity of the selected instances.
	public var series: [ImagingManifestStudySeries]?
	
	/// Study instance UID.
	public var uid: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(series: [ImagingManifestStudySeries], uid: FHIRURL) {
		self.init()
		self.series = series
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		baseLocation = try createInstances(of: ImagingManifestStudyBaseLocation.self, for: "baseLocation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? baseLocation
		imagingStudy = try createInstance(type: Reference.self, for: "imagingStudy", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? imagingStudy
		series = try createInstances(of: ImagingManifestStudySeries.self, for: "series", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? series
		if (nil == series || series!.isEmpty) && !presentKeys.contains("series") {
			errors.append(FHIRValidationError(missing: "series"))
		}
		uid = try createInstance(type: FHIRURL.self, for: "uid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uid
		if nil == uid && !presentKeys.contains("uid") {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "baseLocation", using: self.baseLocation, errors: &errors)
		self.imagingStudy?.decorate(json: &json, withKey: "imagingStudy", errors: &errors)
		arrayDecorate(json: &json, withKey: "series", using: self.series, errors: &errors)
		if nil == series || self.series!.isEmpty {
			errors.append(FHIRValidationError(missing: "series"))
		}
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
open class ImagingManifestStudyBaseLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingManifestStudyBaseLocation" }
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
Series identity of the selected instances.

Series identity and locating information of the DICOM SOP instances in the selection.
*/
open class ImagingManifestStudySeries: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingManifestStudySeries" }
	}
	
	/// Series access endpoint.
	public var baseLocation: [ImagingManifestStudySeriesBaseLocation]?
	
	/// The selected instance.
	public var instance: [ImagingManifestStudySeriesInstance]?
	
	/// Series instance UID.
	public var uid: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(instance: [ImagingManifestStudySeriesInstance], uid: FHIRURL) {
		self.init()
		self.instance = instance
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		baseLocation = try createInstances(of: ImagingManifestStudySeriesBaseLocation.self, for: "baseLocation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? baseLocation
		instance = try createInstances(of: ImagingManifestStudySeriesInstance.self, for: "instance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? instance
		if (nil == instance || instance!.isEmpty) && !presentKeys.contains("instance") {
			errors.append(FHIRValidationError(missing: "instance"))
		}
		uid = try createInstance(type: FHIRURL.self, for: "uid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uid
		if nil == uid && !presentKeys.contains("uid") {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "baseLocation", using: self.baseLocation, errors: &errors)
		arrayDecorate(json: &json, withKey: "instance", using: self.instance, errors: &errors)
		if nil == instance || self.instance!.isEmpty {
			errors.append(FHIRValidationError(missing: "instance"))
		}
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
open class ImagingManifestStudySeriesBaseLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingManifestStudySeriesBaseLocation" }
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
The selected instance.

Identity and locating information of the selected DICOM SOP instances.
*/
open class ImagingManifestStudySeriesInstance: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingManifestStudySeriesInstance" }
	}
	
	/// SOP class UID of instance.
	public var sopClass: FHIRURL?
	
	/// Selected instance UID.
	public var uid: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sopClass: FHIRURL, uid: FHIRURL) {
		self.init()
		self.sopClass = sopClass
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		sopClass = try createInstance(type: FHIRURL.self, for: "sopClass", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sopClass
		if nil == sopClass && !presentKeys.contains("sopClass") {
			errors.append(FHIRValidationError(missing: "sopClass"))
		}
		uid = try createInstance(type: FHIRURL.self, for: "uid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uid
		if nil == uid && !presentKeys.contains("uid") {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.sopClass?.decorate(json: &json, withKey: "sopClass", errors: &errors)
		if nil == self.sopClass {
			errors.append(FHIRValidationError(missing: "sopClass"))
		}
		self.uid?.decorate(json: &json, withKey: "uid", errors: &errors)
		if nil == self.uid {
			errors.append(FHIRValidationError(missing: "uid"))
		}
	}
}

