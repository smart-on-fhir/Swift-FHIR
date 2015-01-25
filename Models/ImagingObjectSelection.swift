//
//  ImagingObjectSelection.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (imagingobjectselection.profile.json) on 2015-01-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Key Object Selection.
 *
 *  A set of DICOM SOP Instances of a patient, selected for some application purpose, e.g., quality assurance, teaching,
 *  conference, consulting, etc.  Objects selected can be from different studies, but must be of the same patient.
 */
public class ImagingObjectSelection: FHIRResource
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? JSONDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["authoringTime"] as? String {
				self.authoringTime = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["study"] as? [JSONDictionary] {
				self.study = ImagingObjectSelectionStudy.from(val, owner: self) as? [ImagingObjectSelectionStudy]
			}
			if let val = js["title"] as? JSONDictionary {
				self.title = CodeableConcept(json: val, owner: self)
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	/// AE Title where may be retrieved
	public var retrieveAETitle: String?
	
	/// Retrieve URL
	public var retrieveUrl: NSURL?
	
	/// Series identity of the selected instances
	public var series: [ImagingObjectSelectionStudySeries]?
	
	/// Study instance uid
	public var uid: String?
	
	public convenience init(series: [ImagingObjectSelectionStudySeries]?, uid: String?) {
		self.init(json: nil)
		if nil != series {
			self.series = series
		}
		if nil != uid {
			self.uid = uid
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["retrieveAETitle"] as? String {
				self.retrieveAETitle = val
			}
			if let val = js["retrieveUrl"] as? String {
				self.retrieveUrl = NSURL(string: val)
			}
			if let val = js["series"] as? [JSONDictionary] {
				self.series = ImagingObjectSelectionStudySeries.from(val, owner: self) as? [ImagingObjectSelectionStudySeries]
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let retrieveAETitle = self.retrieveAETitle {
			json["retrieveAETitle"] = retrieveAETitle.asJSON()
		}
		if let retrieveUrl = self.retrieveUrl {
			json["retrieveUrl"] = retrieveUrl.asJSON()
		}
		if let series = self.series {
			json["series"] = ImagingObjectSelectionStudySeries.asJSONArray(series)
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
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
	
	/// AE Title where may be retrieved
	public var retrieveAETitle: String?
	
	/// Retrieve URL
	public var retrieveUrl: NSURL?
	
	/// Series instance uid
	public var uid: String?
	
	public convenience init(instance: [ImagingObjectSelectionStudySeriesInstance]?, uid: String?) {
		self.init(json: nil)
		if nil != instance {
			self.instance = instance
		}
		if nil != uid {
			self.uid = uid
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["instance"] as? [JSONDictionary] {
				self.instance = ImagingObjectSelectionStudySeriesInstance.from(val, owner: self) as? [ImagingObjectSelectionStudySeriesInstance]
			}
			if let val = js["retrieveAETitle"] as? String {
				self.retrieveAETitle = val
			}
			if let val = js["retrieveUrl"] as? String {
				self.retrieveUrl = NSURL(string: val)
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let instance = self.instance {
			json["instance"] = ImagingObjectSelectionStudySeriesInstance.asJSONArray(instance)
		}
		if let retrieveAETitle = self.retrieveAETitle {
			json["retrieveAETitle"] = retrieveAETitle.asJSON()
		}
		if let retrieveUrl = self.retrieveUrl {
			json["retrieveUrl"] = retrieveUrl.asJSON()
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
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
	
	/// AE Title where may be retrieved
	public var retrieveAETitle: String?
	
	/// Retrieve URL
	public var retrieveUrl: NSURL?
	
	/// SOP class uid of instance
	public var sopClass: String?
	
	/// Uid of the selected instance
	public var uid: String?
	
	public convenience init(sopClass: String?, uid: String?) {
		self.init(json: nil)
		if nil != sopClass {
			self.sopClass = sopClass
		}
		if nil != uid {
			self.uid = uid
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["retrieveAETitle"] as? String {
				self.retrieveAETitle = val
			}
			if let val = js["retrieveUrl"] as? String {
				self.retrieveUrl = NSURL(string: val)
			}
			if let val = js["sopClass"] as? String {
				self.sopClass = val
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let retrieveAETitle = self.retrieveAETitle {
			json["retrieveAETitle"] = retrieveAETitle.asJSON()
		}
		if let retrieveUrl = self.retrieveUrl {
			json["retrieveUrl"] = retrieveUrl.asJSON()
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

