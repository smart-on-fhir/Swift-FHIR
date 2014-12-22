//
//  ImagingObjectSelection.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (imagingobjectselection.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
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
	public var authoringTime: NSDate?
	
	/// Description text
	public var description: String?
	
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
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? NSDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["authoringTime"] as? String {
				self.authoringTime = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["study"] as? [NSDictionary] {
				self.study = ImagingObjectSelectionStudy.from(val, owner: self) as? [ImagingObjectSelectionStudy]
			}
			if let val = js["title"] as? NSDictionary {
				self.title = CodeableConcept(json: val, owner: self)
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
		}
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
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["retrieveAETitle"] as? String {
				self.retrieveAETitle = val
			}
			if let val = js["retrieveUrl"] as? String {
				self.retrieveUrl = NSURL(json: val)
			}
			if let val = js["series"] as? [NSDictionary] {
				self.series = ImagingObjectSelectionStudySeries.from(val, owner: self) as? [ImagingObjectSelectionStudySeries]
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
		}
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
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["instance"] as? [NSDictionary] {
				self.instance = ImagingObjectSelectionStudySeriesInstance.from(val, owner: self) as? [ImagingObjectSelectionStudySeriesInstance]
			}
			if let val = js["retrieveAETitle"] as? String {
				self.retrieveAETitle = val
			}
			if let val = js["retrieveUrl"] as? String {
				self.retrieveUrl = NSURL(json: val)
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
		}
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
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["retrieveAETitle"] as? String {
				self.retrieveAETitle = val
			}
			if let val = js["retrieveUrl"] as? String {
				self.retrieveUrl = NSURL(json: val)
			}
			if let val = js["sopClass"] as? String {
				self.sopClass = val
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
		}
	}
}

