//
//  ImagingObjectSelection.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ImagingObjectSelection) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Key Object Selection.
 *
 *  A set of DICOM SOP Instances of a patient, selected for some application purpose, e.g., quality assurance, teaching,
 *  conference, consulting, etc.  Objects selected can be from different studies, but must be of the same patient.
 */
public class ImagingObjectSelection: DomainResource
{
	override public class var resourceName: String {
		get { return "ImagingObjectSelection" }
	}
	
	/// Author (human or machine)
	public var author: Reference?
	
	/// Authoring time of the selection
	public var authoringTime: DateTime?
	
	/// Description text
	public var description_fhir: String?
	
	/// Patient of the selected objects
	public var patient: Reference?
	
	/// Study identity of the selected instances
	public var study: [ImagingObjectSelectionStudy]?
	
	/// Reason for selection
	public var title: CodeableConcept?
	
	/// Instance UID
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(patient: Reference?, study: [ImagingObjectSelectionStudy]?, title: CodeableConcept?, uid: String?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != study {
			self.study = study
		}
		if nil != title {
			self.title = title
		}
		if nil != uid {
			self.uid = uid
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.addObject("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"author\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["authoringTime"] {
				presentKeys.addObject("authoringTime")
				if let val = exist as? String {
					self.authoringTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"authoringTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"patient\" but it is missing"))
			}
			if let exist: AnyObject = js["study"] {
				presentKeys.addObject("study")
				if let val = exist as? [FHIRJSON] {
					self.study = ImagingObjectSelectionStudy.from(val, owner: self) as? [ImagingObjectSelectionStudy]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"study\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"study\" but it is missing"))
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.addObject("title")
				if let val = exist as? FHIRJSON {
					self.title = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"title\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"title\" but it is missing"))
			}
			if let exist: AnyObject = js["uid"] {
				presentKeys.addObject("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"uid\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"uid\" but it is missing"))
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
public class ImagingObjectSelectionStudy: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImagingObjectSelectionStudy" }
	}
	
	/// Series identity of the selected instances
	public var series: [ImagingObjectSelectionStudySeries]?
	
	/// Study instance uid
	public var uid: String?
	
	/// Retrieve URL
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(series: [ImagingObjectSelectionStudySeries]?, uid: String?) {
		self.init(json: nil)
		if nil != series {
			self.series = series
		}
		if nil != uid {
			self.uid = uid
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["series"] {
				presentKeys.addObject("series")
				if let val = exist as? [FHIRJSON] {
					self.series = ImagingObjectSelectionStudySeries.from(val, owner: self) as? [ImagingObjectSelectionStudySeries]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"series\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"series\" but it is missing"))
			}
			if let exist: AnyObject = js["uid"] {
				presentKeys.addObject("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"uid\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"uid\" but it is missing"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
 *  Series indetity and locating information of the DICOM SOP instances in the selection.
 */
public class ImagingObjectSelectionStudySeries: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImagingObjectSelectionStudySeries" }
	}
	
	/// The selected instance
	public var instance: [ImagingObjectSelectionStudySeriesInstance]?
	
	/// Series instance uid
	public var uid: String?
	
	/// Retrieve URL
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(instance: [ImagingObjectSelectionStudySeriesInstance]?) {
		self.init(json: nil)
		if nil != instance {
			self.instance = instance
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["instance"] {
				presentKeys.addObject("instance")
				if let val = exist as? [FHIRJSON] {
					self.instance = ImagingObjectSelectionStudySeriesInstance.from(val, owner: self) as? [ImagingObjectSelectionStudySeriesInstance]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"instance\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"instance\" but it is missing"))
			}
			if let exist: AnyObject = js["uid"] {
				presentKeys.addObject("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"uid\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
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
public class ImagingObjectSelectionStudySeriesInstance: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImagingObjectSelectionStudySeriesInstance" }
	}
	
	/// The frame set
	public var frames: [ImagingObjectSelectionStudySeriesInstanceFrames]?
	
	/// SOP class uid of instance
	public var sopClass: String?
	
	/// Uid of the selected instance
	public var uid: String?
	
	/// Retrieve URL
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(sopClass: String?, uid: String?, url: NSURL?) {
		self.init(json: nil)
		if nil != sopClass {
			self.sopClass = sopClass
		}
		if nil != uid {
			self.uid = uid
		}
		if nil != url {
			self.url = url
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["frames"] {
				presentKeys.addObject("frames")
				if let val = exist as? [FHIRJSON] {
					self.frames = ImagingObjectSelectionStudySeriesInstanceFrames.from(val, owner: self) as? [ImagingObjectSelectionStudySeriesInstanceFrames]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"frames\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sopClass"] {
				presentKeys.addObject("sopClass")
				if let val = exist as? String {
					self.sopClass = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sopClass\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sopClass\" but it is missing"))
			}
			if let exist: AnyObject = js["uid"] {
				presentKeys.addObject("uid")
				if let val = exist as? String {
					self.uid = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"uid\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"uid\" but it is missing"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"url\" but it is missing"))
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
public class ImagingObjectSelectionStudySeriesInstanceFrames: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImagingObjectSelectionStudySeriesInstanceFrames" }
	}
	
	/// Frame numbers
	public var frameNumbers: [UInt]?
	
	/// Retrieve URL
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(frameNumbers: [UInt]?, url: NSURL?) {
		self.init(json: nil)
		if nil != frameNumbers {
			self.frameNumbers = frameNumbers
		}
		if nil != url {
			self.url = url
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["frameNumbers"] {
				presentKeys.addObject("frameNumbers")
				if let val = exist as? [UInt] {
					self.frameNumbers = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"frameNumbers\" to be an array of `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"frameNumbers\" but it is missing"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"url\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let frameNumbers = self.frameNumbers {
			var arr = [AnyObject]()
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

