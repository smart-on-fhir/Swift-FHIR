//
//  ImagingManifest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ImagingManifest) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Key Object Selection.
 *
 *  A manifest of a set of DICOM Service-Object Pair Instances (SOP Instances).  The referenced SOP Instances (images or
 *  other content) are for a single patient, and may be from one or more studies. The referenced SOP Instances may have
 *  been selected for a purpose, such as  conference, or consult.  Reflecting a range of sharing purposes, typical
 *  ImagingManifest resources may include all SOP Instances in a study (perhaps for sharing through a Health Information
 *  Exchange); key images from multiple studies (for reference by a referring or treating physician); both a multi-frame
 *  ultrasound instance ("cine" video clip) and a set of measurements taken from that instance (for inclusion in a
 *  teaching file); and so on.
 */
public class ImagingManifest: DomainResource {
	override public class var resourceName: String {
		get { return "ImagingManifest" }
	}
	
	/// Author (human or machine).
	public var author: Reference?
	
	/// Time when the selection of instances was made.
	public var authoringTime: DateTime?
	
	/// Description text.
	public var description_fhir: String?
	
	/// Patient of the selected objects.
	public var patient: Reference?
	
	/// Study identity of the selected instances.
	public var study: [ImagingManifestStudy]?
	
	/// Reason for selection.
	public var title: CodeableConcept?
	
	/// SOP Instance UID.
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, study: [ImagingManifestStudy], title: CodeableConcept) {
		self.init(json: nil)
		self.patient = patient
		self.study = study
		self.title = title
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["authoringTime"] {
				presentKeys.insert("authoringTime")
				if let val = exist as? String {
					self.authoringTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "authoringTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist: AnyObject = js["study"] {
				presentKeys.insert("study")
				if let val = exist as? [FHIRJSON] {
					self.study = ImagingManifestStudy.from(val, owner: self) as? [ImagingManifestStudy]
				}
				else {
					errors.append(FHIRJSONError(key: "study", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "study"))
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? FHIRJSON {
					self.title = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "title"))
			}
			if let exist: AnyObject = js["uid"] {
				presentKeys.insert("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(FHIRJSONError(key: "uid", wants: String.self, has: exist.dynamicType))
				}
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
			json["study"] = ImagingManifestStudy.asJSONArray(study)
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
public class ImagingManifestStudy: BackboneElement {
	override public class var resourceName: String {
		get { return "ImagingManifestStudy" }
	}
	
	/// Study access service endpoint.
	public var baseLocation: [ImagingManifestStudyBaseLocation]?
	
	/// Reference to ImagingStudy.
	public var imagingStudy: Reference?
	
	/// Series identity of the selected instances.
	public var series: [ImagingManifestStudySeries]?
	
	/// Study instance UID.
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(series: [ImagingManifestStudySeries], uid: String) {
		self.init(json: nil)
		self.series = series
		self.uid = uid
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["baseLocation"] {
				presentKeys.insert("baseLocation")
				if let val = exist as? [FHIRJSON] {
					self.baseLocation = ImagingManifestStudyBaseLocation.from(val, owner: self) as? [ImagingManifestStudyBaseLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "baseLocation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["imagingStudy"] {
				presentKeys.insert("imagingStudy")
				if let val = exist as? FHIRJSON {
					self.imagingStudy = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "imagingStudy", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["series"] {
				presentKeys.insert("series")
				if let val = exist as? [FHIRJSON] {
					self.series = ImagingManifestStudySeries.from(val, owner: self) as? [ImagingManifestStudySeries]
				}
				else {
					errors.append(FHIRJSONError(key: "series", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "series"))
			}
			if let exist: AnyObject = js["uid"] {
				presentKeys.insert("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(FHIRJSONError(key: "uid", wants: String.self, has: exist.dynamicType))
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
		
		if let baseLocation = self.baseLocation {
			json["baseLocation"] = ImagingManifestStudyBaseLocation.asJSONArray(baseLocation)
		}
		if let imagingStudy = self.imagingStudy {
			json["imagingStudy"] = imagingStudy.asJSON()
		}
		if let series = self.series {
			json["series"] = ImagingManifestStudySeries.asJSONArray(series)
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		
		return json
	}
}


/**
 *  Study access service endpoint.
 *
 *  Methods of accessing  (e.g., retrieving, viewing) the study.
 */
public class ImagingManifestStudyBaseLocation: BackboneElement {
	override public class var resourceName: String {
		get { return "ImagingManifestStudyBaseLocation" }
	}
	
	/// WADO-RS | WADO-URI | IID.
	public var type: Coding?
	
	/// Study access URL.
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding, url: NSURL) {
		self.init(json: nil)
		self.type = type
		self.url = url
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
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
public class ImagingManifestStudySeries: BackboneElement {
	override public class var resourceName: String {
		get { return "ImagingManifestStudySeries" }
	}
	
	/// Series access endpoint.
	public var baseLocation: [ImagingManifestStudySeriesBaseLocation]?
	
	/// The selected instance.
	public var instance: [ImagingManifestStudySeriesInstance]?
	
	/// Series instance UID.
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(instance: [ImagingManifestStudySeriesInstance], uid: String) {
		self.init(json: nil)
		self.instance = instance
		self.uid = uid
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["baseLocation"] {
				presentKeys.insert("baseLocation")
				if let val = exist as? [FHIRJSON] {
					self.baseLocation = ImagingManifestStudySeriesBaseLocation.from(val, owner: self) as? [ImagingManifestStudySeriesBaseLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "baseLocation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["instance"] {
				presentKeys.insert("instance")
				if let val = exist as? [FHIRJSON] {
					self.instance = ImagingManifestStudySeriesInstance.from(val, owner: self) as? [ImagingManifestStudySeriesInstance]
				}
				else {
					errors.append(FHIRJSONError(key: "instance", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "instance"))
			}
			if let exist: AnyObject = js["uid"] {
				presentKeys.insert("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(FHIRJSONError(key: "uid", wants: String.self, has: exist.dynamicType))
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
		
		if let baseLocation = self.baseLocation {
			json["baseLocation"] = ImagingManifestStudySeriesBaseLocation.asJSONArray(baseLocation)
		}
		if let instance = self.instance {
			json["instance"] = ImagingManifestStudySeriesInstance.asJSONArray(instance)
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		
		return json
	}
}


/**
 *  Series access endpoint.
 *
 *  Methods of accessing (e.g. retrieving) the series.
 */
public class ImagingManifestStudySeriesBaseLocation: BackboneElement {
	override public class var resourceName: String {
		get { return "ImagingManifestStudySeriesBaseLocation" }
	}
	
	/// WADO-RS | WADO-URI | IID.
	public var type: Coding?
	
	/// Series access URL.
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding, url: NSURL) {
		self.init(json: nil)
		self.type = type
		self.url = url
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
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
public class ImagingManifestStudySeriesInstance: BackboneElement {
	override public class var resourceName: String {
		get { return "ImagingManifestStudySeriesInstance" }
	}
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["sopClass"] {
				presentKeys.insert("sopClass")
				if let val = exist as? String {
					self.sopClass = val
				}
				else {
					errors.append(FHIRJSONError(key: "sopClass", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sopClass"))
			}
			if let exist: AnyObject = js["uid"] {
				presentKeys.insert("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(FHIRJSONError(key: "uid", wants: String.self, has: exist.dynamicType))
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
		
		if let sopClass = self.sopClass {
			json["sopClass"] = sopClass.asJSON()
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		
		return json
	}
}

