//
//  ImagingManifest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ImagingManifest) on 2016-09-15.
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
open class ImagingManifest: DomainResource {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
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
					self.study = ImagingManifestStudy.instantiate(fromArray: val, owner: self) as? [ImagingManifestStudy]
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["baseLocation"] {
				presentKeys.insert("baseLocation")
				if let val = exist as? [FHIRJSON] {
					self.baseLocation = ImagingManifestStudyBaseLocation.instantiate(fromArray: val, owner: self) as? [ImagingManifestStudyBaseLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "baseLocation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
					self.series = ImagingManifestStudySeries.instantiate(fromArray: val, owner: self) as? [ImagingManifestStudySeries]
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let baseLocation = self.baseLocation {
			json["baseLocation"] = baseLocation.map() { $0.asJSON() }
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
		
		return json
	}
}


/**
 *  Study access service endpoint.
 *
 *  Methods of accessing  (e.g., retrieving, viewing) the study.
 */
open class ImagingManifestStudyBaseLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingManifestStudyBaseLocation" }
	}
	
	/// WADO-RS | WADO-URI | IID.
	public var type: Coding?
	
	/// Study access URL.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding, url: URL) {
		self.init(json: nil)
		self.type = type
		self.url = url
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
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
open class ImagingManifestStudySeries: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["baseLocation"] {
				presentKeys.insert("baseLocation")
				if let val = exist as? [FHIRJSON] {
					self.baseLocation = ImagingManifestStudySeriesBaseLocation.instantiate(fromArray: val, owner: self) as? [ImagingManifestStudySeriesBaseLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "baseLocation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["instance"] {
				presentKeys.insert("instance")
				if let val = exist as? [FHIRJSON] {
					self.instance = ImagingManifestStudySeriesInstance.instantiate(fromArray: val, owner: self) as? [ImagingManifestStudySeriesInstance]
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
		
		if let baseLocation = self.baseLocation {
			json["baseLocation"] = baseLocation.map() { $0.asJSON() }
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
 *  Series access endpoint.
 *
 *  Methods of accessing (e.g. retrieving) the series.
 */
open class ImagingManifestStudySeriesBaseLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingManifestStudySeriesBaseLocation" }
	}
	
	/// WADO-RS | WADO-URI | IID.
	public var type: Coding?
	
	/// Series access URL.
	public var url: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding, url: URL) {
		self.init(json: nil)
		self.type = type
		self.url = url
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
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
open class ImagingManifestStudySeriesInstance: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
		
		if let sopClass = self.sopClass {
			json["sopClass"] = sopClass.asJSON()
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		
		return json
	}
}

