//
//  ImagingManifest.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ImagingManifest) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Key Object Selection.

A text description of the DICOM SOP instances selected in the ImagingManifest; or the reason for, or significance of,
the selection.
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
	
	/// SOP Instance UID.
	public var identifier: Identifier?
	
	/// Patient of the selected objects.
	public var patient: Reference?
	
	/// Study identity of the selected instances.
	public var study: [ImagingManifestStudy]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, study: [ImagingManifestStudy]) {
		self.init()
		self.patient = patient
		self.study = study
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		author = createInstance(type: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		authoringTime = createInstance(type: DateTime.self, for: "authoringTime", in: json, context: &instCtx, owner: self) ?? authoringTime
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		study = createInstances(of: ImagingManifestStudy.self, for: "study", in: json, context: &instCtx, owner: self) ?? study
		if (nil == study || study!.isEmpty) && !instCtx.containsKey("study") {
			instCtx.addError(FHIRValidationError(missing: "study"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		self.authoringTime?.decorate(json: &json, withKey: "authoringTime", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "study", using: self.study, errors: &errors)
		if nil == study || self.study!.isEmpty {
			errors.append(FHIRValidationError(missing: "study"))
		}
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
	public var endpoint: [Reference]?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		imagingStudy = createInstance(type: Reference.self, for: "imagingStudy", in: json, context: &instCtx, owner: self) ?? imagingStudy
		series = createInstances(of: ImagingManifestStudySeries.self, for: "series", in: json, context: &instCtx, owner: self) ?? series
		if (nil == series || series!.isEmpty) && !instCtx.containsKey("series") {
			instCtx.addError(FHIRValidationError(missing: "series"))
		}
		uid = createInstance(type: FHIRURL.self, for: "uid", in: json, context: &instCtx, owner: self) ?? uid
		if nil == uid && !instCtx.containsKey("uid") {
			instCtx.addError(FHIRValidationError(missing: "uid"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
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
Series identity of the selected instances.

Series identity and locating information of the DICOM SOP instances in the selection.
*/
open class ImagingManifestStudySeries: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingManifestStudySeries" }
	}
	
	/// Series access endpoint.
	public var endpoint: [Reference]?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		instance = createInstances(of: ImagingManifestStudySeriesInstance.self, for: "instance", in: json, context: &instCtx, owner: self) ?? instance
		if (nil == instance || instance!.isEmpty) && !instCtx.containsKey("instance") {
			instCtx.addError(FHIRValidationError(missing: "instance"))
		}
		uid = createInstance(type: FHIRURL.self, for: "uid", in: json, context: &instCtx, owner: self) ?? uid
		if nil == uid && !instCtx.containsKey("uid") {
			instCtx.addError(FHIRValidationError(missing: "uid"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		sopClass = createInstance(type: FHIRURL.self, for: "sopClass", in: json, context: &instCtx, owner: self) ?? sopClass
		if nil == sopClass && !instCtx.containsKey("sopClass") {
			instCtx.addError(FHIRValidationError(missing: "sopClass"))
		}
		uid = createInstance(type: FHIRURL.self, for: "uid", in: json, context: &instCtx, owner: self) ?? uid
		if nil == uid && !instCtx.containsKey("uid") {
			instCtx.addError(FHIRValidationError(missing: "uid"))
		}
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

