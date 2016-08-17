//
//  ImagingExcerpt.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/ImagingExcerpt) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Key Object Selection.
 *
 *  A manifest of a set of DICOM Service-Object Pair Instances (SOP Instances).  The referenced SOP Instances (images or
 *  other content) are for a single patient, and may be from one or more studies. The referenced SOP Instances have been
 *  selected for a purpose, such as quality assurance, conference, or consult. Reflecting that range of purposes,
 *  typical ImagingExcerpt resources may include all SOP Instances in a study (perhaps for sharing through a Health
 *  Information Exchange); key images from multiple studies (for reference by a referring or treating physician); a
 *  multi-frame ultrasound instance ("cine" video clip) and a set of measurements taken from that instance (for
 *  inclusion in a teaching file); and so on.
 */
open class ImagingExcerpt: DomainResource {
	override open class var resourceType: String {
		get { return "ImagingExcerpt" }
	}
	
	/// Author (human or machine).
	public var author: Reference?
	
	/// Time when the imaging object selection was created.
	public var authoringTime: DateTime?
	
	/// Description text.
	public var description_fhir: String?
	
	/// Patient of the selected objects.
	public var patient: Reference?
	
	/// Study identity of the selected instances.
	public var study: [ImagingExcerptStudy]?
	
	/// Reason for selection.
	public var title: CodeableConcept?
	
	/// Instance UID.
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, study: [ImagingExcerptStudy], title: CodeableConcept, uid: String) {
		self.init(json: nil)
		self.patient = patient
		self.study = study
		self.title = title
		self.uid = uid
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["authoringTime"] {
				presentKeys.insert("authoringTime")
				if let val = exist as? String {
					self.authoringTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "authoringTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist = js["study"] {
				presentKeys.insert("study")
				if let val = exist as? [FHIRJSON] {
					self.study = ImagingExcerptStudy.instantiate(fromArray: val, owner: self) as? [ImagingExcerptStudy]
				}
				else {
					errors.append(FHIRJSONError(key: "study", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "study"))
			}
			if let exist = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? FHIRJSON {
					self.title = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "title"))
			}
			if let exist = js["uid"] {
				presentKeys.insert("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(FHIRJSONError(key: "uid", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "uid"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let authoringTime = self.authoringTime {
			json["authoringTime"] = authoringTime.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let study = self.study {
			json["study"] = study.map() { $0.asJSON() }
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		
		return json
	}
}


/**
 *  Study identity of the selected instances.
 *
 *  Study identity and locating information of the DICOM SOP instances in the selection.
 */
open class ImagingExcerptStudy: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingExcerptStudy" }
	}
	
	/// Dicom web access.
	public var dicom: [ImagingExcerptStudyDicom]?
	
	/// Reference to ImagingStudy.
	public var imagingStudy: Reference?
	
	/// Series identity of the selected instances.
	public var series: [ImagingExcerptStudySeries]?
	
	/// Study instance UID.
	public var uid: String?
	
	/// Viewable format.
	public var viewable: [ImagingExcerptStudyViewable]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(series: [ImagingExcerptStudySeries], uid: String) {
		self.init(json: nil)
		self.series = series
		self.uid = uid
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["dicom"] {
				presentKeys.insert("dicom")
				if let val = exist as? [FHIRJSON] {
					self.dicom = ImagingExcerptStudyDicom.instantiate(fromArray: val, owner: self) as? [ImagingExcerptStudyDicom]
				}
				else {
					errors.append(FHIRJSONError(key: "dicom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["imagingStudy"] {
				presentKeys.insert("imagingStudy")
				if let val = exist as? FHIRJSON {
					self.imagingStudy = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "imagingStudy", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["series"] {
				presentKeys.insert("series")
				if let val = exist as? [FHIRJSON] {
					self.series = ImagingExcerptStudySeries.instantiate(fromArray: val, owner: self) as? [ImagingExcerptStudySeries]
				}
				else {
					errors.append(FHIRJSONError(key: "series", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "series"))
			}
			if let exist = js["uid"] {
				presentKeys.insert("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(FHIRJSONError(key: "uid", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "uid"))
			}
			if let exist = js["viewable"] {
				presentKeys.insert("viewable")
				if let val = exist as? [FHIRJSON] {
					self.viewable = ImagingExcerptStudyViewable.instantiate(fromArray: val, owner: self) as? [ImagingExcerptStudyViewable]
				}
				else {
					errors.append(FHIRJSONError(key: "viewable", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dicom = self.dicom {
			json["dicom"] = dicom.map() { $0.asJSON() }
		}
		if let imagingStudy = self.imagingStudy {
			json["imagingStudy"] = imagingStudy.asJSON()
		}
		if let series = self.series {
			json["series"] = series.map() { $0.asJSON() }
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		if let viewable = self.viewable {
			json["viewable"] = viewable.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Dicom web access.
 *
 *  Methods of accessing using DICOM web technologies.
 */
open class ImagingExcerptStudyDicom: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingExcerptStudyDicom" }
	}
	
	/// WADO-RS | WADO-URI | IID | WADO-WS.
	public var type: String?
	
	/// Retrieve study URL.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String, url: URL) {
		self.init(json: nil)
		self.type = type
		self.url = url
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
 *  Series identity of the selected instances.
 *
 *  Series identity and locating information of the DICOM SOP instances in the selection.
 */
open class ImagingExcerptStudySeries: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingExcerptStudySeries" }
	}
	
	/// Dicom web access.
	public var dicom: [ImagingExcerptStudySeriesDicom]?
	
	/// The selected instance.
	public var instance: [ImagingExcerptStudySeriesInstance]?
	
	/// Series instance UID.
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(instance: [ImagingExcerptStudySeriesInstance], uid: String) {
		self.init(json: nil)
		self.instance = instance
		self.uid = uid
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["dicom"] {
				presentKeys.insert("dicom")
				if let val = exist as? [FHIRJSON] {
					self.dicom = ImagingExcerptStudySeriesDicom.instantiate(fromArray: val, owner: self) as? [ImagingExcerptStudySeriesDicom]
				}
				else {
					errors.append(FHIRJSONError(key: "dicom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["instance"] {
				presentKeys.insert("instance")
				if let val = exist as? [FHIRJSON] {
					self.instance = ImagingExcerptStudySeriesInstance.instantiate(fromArray: val, owner: self) as? [ImagingExcerptStudySeriesInstance]
				}
				else {
					errors.append(FHIRJSONError(key: "instance", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "instance"))
			}
			if let exist = js["uid"] {
				presentKeys.insert("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(FHIRJSONError(key: "uid", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "uid"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dicom = self.dicom {
			json["dicom"] = dicom.map() { $0.asJSON() }
		}
		if let instance = self.instance {
			json["instance"] = instance.map() { $0.asJSON() }
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		
		return json
	}
}


/**
 *  Dicom web access.
 *
 *  Methods of accessing using DICOM web technologies.
 */
open class ImagingExcerptStudySeriesDicom: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingExcerptStudySeriesDicom" }
	}
	
	/// WADO-RS | WADO-URI | IID | WADO-WS.
	public var type: String?
	
	/// Retrieve study URL.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String, url: URL) {
		self.init(json: nil)
		self.type = type
		self.url = url
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
 *  The selected instance.
 *
 *  Identity and locating information of the selected DICOM SOP instances.
 */
open class ImagingExcerptStudySeriesInstance: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingExcerptStudySeriesInstance" }
	}
	
	/// Dicom web access.
	public var dicom: [ImagingExcerptStudySeriesInstanceDicom]?
	
	/// Frame reference number.
	public var frameNumbers: [UInt]?
	
	/// SOP class UID of instance.
	public var sopClass: String?
	
	/// Selected instance UID.
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sopClass: String, uid: String) {
		self.init(json: nil)
		self.sopClass = sopClass
		self.uid = uid
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["dicom"] {
				presentKeys.insert("dicom")
				if let val = exist as? [FHIRJSON] {
					self.dicom = ImagingExcerptStudySeriesInstanceDicom.instantiate(fromArray: val, owner: self) as? [ImagingExcerptStudySeriesInstanceDicom]
				}
				else {
					errors.append(FHIRJSONError(key: "dicom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["frameNumbers"] {
				presentKeys.insert("frameNumbers")
				if let val = exist as? [UInt] {
					self.frameNumbers = val
				}
				else {
					errors.append(FHIRJSONError(key: "frameNumbers", wants: Array<UInt>.self, has: type(of: exist)))
				}
			}
			if let exist = js["sopClass"] {
				presentKeys.insert("sopClass")
				if let val = exist as? String {
					self.sopClass = val
				}
				else {
					errors.append(FHIRJSONError(key: "sopClass", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sopClass"))
			}
			if let exist = js["uid"] {
				presentKeys.insert("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(FHIRJSONError(key: "uid", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "uid"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dicom = self.dicom {
			json["dicom"] = dicom.map() { $0.asJSON() }
		}
		if let frameNumbers = self.frameNumbers {
			var arr = [Any]()
			for val in frameNumbers {
				arr.append(val.asJSON())
			}
			json["frameNumbers"] = arr
		}
		if let sopClass = self.sopClass {
			json["sopClass"] = sopClass.asJSON()
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		
		return json
	}
}


/**
 *  Dicom web access.
 *
 *  Methods of accessing using DICOM web technologies.
 */
open class ImagingExcerptStudySeriesInstanceDicom: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingExcerptStudySeriesInstanceDicom" }
	}
	
	/// WADO-RS | WADO-URI | IID | WADO-WS.
	public var type: String?
	
	/// Retrieve study URL.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String, url: URL) {
		self.init(json: nil)
		self.type = type
		self.url = url
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
 *  Viewable format.
 *
 *  A set of viewable reference images of various  types.
 */
open class ImagingExcerptStudyViewable: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingExcerptStudyViewable" }
	}
	
	/// Mime type of the content, with charset etc..
	public var contentType: String?
	
	/// Length in seconds (audio / video).
	public var duration: UInt?
	
	/// Number of frames if > 1 (photo).
	public var frames: UInt?
	
	/// Height of the image in pixels (photo/video).
	public var height: UInt?
	
	/// Number of bytes of content (if url provided).
	public var size: UInt?
	
	/// Label to display in place of the data.
	public var title: String?
	
	/// Uri where the data can be found.
	public var url: URL?
	
	/// Width of the image in pixels (photo/video).
	public var width: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(contentType: String, url: URL) {
		self.init(json: nil)
		self.contentType = contentType
		self.url = url
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["contentType"] {
				presentKeys.insert("contentType")
				if let val = exist as? String {
					self.contentType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentType", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "contentType"))
			}
			if let exist = js["duration"] {
				presentKeys.insert("duration")
				if let val = exist as? UInt {
					self.duration = val
				}
				else {
					errors.append(FHIRJSONError(key: "duration", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["frames"] {
				presentKeys.insert("frames")
				if let val = exist as? UInt {
					self.frames = val
				}
				else {
					errors.append(FHIRJSONError(key: "frames", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["height"] {
				presentKeys.insert("height")
				if let val = exist as? UInt {
					self.height = val
				}
				else {
					errors.append(FHIRJSONError(key: "height", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["size"] {
				presentKeys.insert("size")
				if let val = exist as? UInt {
					self.size = val
				}
				else {
					errors.append(FHIRJSONError(key: "size", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
			if let exist = js["width"] {
				presentKeys.insert("width")
				if let val = exist as? UInt {
					self.width = val
				}
				else {
					errors.append(FHIRJSONError(key: "width", wants: UInt.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contentType = self.contentType {
			json["contentType"] = contentType.asJSON()
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
		if let size = self.size {
			json["size"] = size.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let width = self.width {
			json["width"] = width.asJSON()
		}
		
		return json
	}
}

