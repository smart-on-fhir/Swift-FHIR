//
//  ImagingObjectSelection.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ImagingObjectSelection) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Key Object Selection.
 *
 *  A manifest of a set of DICOM Service-Object Pair Instances (SOP Instances).  The referenced SOP Instances (images or
 *  other content) are for a single patient, and may be from one or more studies. The referenced SOP Instances have been
 *  selected for a purpose, such as quality assurance, conference, or consult. Reflecting that range of purposes,
 *  typical ImagingObjectSelection resources may include all SOP Instances in a study (perhaps for sharing through a
 *  Health Information Exchange); key images from multiple studies (for reference by a referring or treating physician);
 *  a multi-frame ultrasound instance ("cine" video clip) and a set of measurements taken from that instance (for
 *  inclusion in a teaching file); and so on.
 */
public class ImagingObjectSelection: DomainResource {
	override public class var resourceType: String {
		get { return "ImagingObjectSelection" }
	}
	
	/// Author (human or machine).
	public var author: Reference?
	
	/// Authoring time of the selection.
	public var authoringTime: DateTime?
	
	/// Description text.
	public var description_fhir: String?
	
	/// Patient of the selected objects.
	public var patient: Reference?
	
	/// Study identity of the selected instances.
	public var study: [ImagingObjectSelectionStudy]?
	
	/// Reason for selection.
	public var title: CodeableConcept?
	
	/// Instance UID.
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, study: [ImagingObjectSelectionStudy], title: CodeableConcept, uid: String) {
		self.init(json: nil)
		self.patient = patient
		self.study = study
		self.title = title
		self.uid = uid
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
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
					self.study = ImagingObjectSelectionStudy.instantiate(fromArray: val, owner: self) as? [ImagingObjectSelectionStudy]
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
	
	override public func asJSON() -> FHIRJSON {
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
			json["study"] = ImagingObjectSelectionStudy.asJSONArray(study)
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
public class ImagingObjectSelectionStudy: BackboneElement {
	override public class var resourceType: String {
		get { return "ImagingObjectSelectionStudy" }
	}
	
	/// Reference to ImagingStudy.
	public var imagingStudy: Reference?
	
	/// Series identity of the selected instances.
	public var series: [ImagingObjectSelectionStudySeries]?
	
	/// Study instance UID.
	public var uid: String?
	
	/// Retrieve study URL.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(series: [ImagingObjectSelectionStudySeries], uid: String) {
		self.init(json: nil)
		self.series = series
		self.uid = uid
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
					self.series = ImagingObjectSelectionStudySeries.instantiate(fromArray: val, owner: self) as? [ImagingObjectSelectionStudySeries]
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
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let imagingStudy = self.imagingStudy {
			json["imagingStudy"] = imagingStudy.asJSON()
		}
		if let series = self.series {
			json["series"] = ImagingObjectSelectionStudySeries.asJSONArray(series)
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
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
public class ImagingObjectSelectionStudySeries: BackboneElement {
	override public class var resourceType: String {
		get { return "ImagingObjectSelectionStudySeries" }
	}
	
	/// The selected instance.
	public var instance: [ImagingObjectSelectionStudySeriesInstance]?
	
	/// Series instance UID.
	public var uid: String?
	
	/// Retrieve series URL.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(instance: [ImagingObjectSelectionStudySeriesInstance]) {
		self.init(json: nil)
		self.instance = instance
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["instance"] {
				presentKeys.insert("instance")
				if let val = exist as? [FHIRJSON] {
					self.instance = ImagingObjectSelectionStudySeriesInstance.instantiate(fromArray: val, owner: self) as? [ImagingObjectSelectionStudySeriesInstance]
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
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let instance = self.instance {
			json["instance"] = ImagingObjectSelectionStudySeriesInstance.asJSONArray(instance)
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
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
public class ImagingObjectSelectionStudySeriesInstance: BackboneElement {
	override public class var resourceType: String {
		get { return "ImagingObjectSelectionStudySeriesInstance" }
	}
	
	/// The frame set.
	public var frames: [ImagingObjectSelectionStudySeriesInstanceFrames]?
	
	/// SOP class UID of instance.
	public var sopClass: String?
	
	/// Selected instance UID.
	public var uid: String?
	
	/// Retrieve instance URL.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sopClass: String, uid: String, url: URL) {
		self.init(json: nil)
		self.sopClass = sopClass
		self.uid = uid
		self.url = url
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["frames"] {
				presentKeys.insert("frames")
				if let val = exist as? [FHIRJSON] {
					self.frames = ImagingObjectSelectionStudySeriesInstanceFrames.instantiate(fromArray: val, owner: self) as? [ImagingObjectSelectionStudySeriesInstanceFrames]
				}
				else {
					errors.append(FHIRJSONError(key: "frames", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let frames = self.frames {
			json["frames"] = ImagingObjectSelectionStudySeriesInstanceFrames.asJSONArray(frames)
		}
		if let sopClass = self.sopClass {
			json["sopClass"] = sopClass.asJSON()
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
 *  The frame set.
 *
 *  Identity and location information of the frames in the selected instance.
 */
public class ImagingObjectSelectionStudySeriesInstanceFrames: BackboneElement {
	override public class var resourceType: String {
		get { return "ImagingObjectSelectionStudySeriesInstanceFrames" }
	}
	
	/// Frame numbers.
	public var frameNumbers: [UInt]?
	
	/// Retrieve frame URL.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(frameNumbers: [UInt], url: URL) {
		self.init(json: nil)
		self.frameNumbers = frameNumbers
		self.url = url
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["frameNumbers"] {
				presentKeys.insert("frameNumbers")
				if let val = exist as? [UInt] {
					self.frameNumbers = val
				}
				else {
					errors.append(FHIRJSONError(key: "frameNumbers", wants: Array<UInt>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "frameNumbers"))
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
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let frameNumbers = self.frameNumbers {
			var arr = [Any]()
			for val in frameNumbers {
				arr.append(val.asJSON())
			}
			json["frameNumbers"] = arr
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}

