//
//  ImagingStudy.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (imagingstudy.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A set of images produced in single study (one or more series of references images).
 *
 *  Scope and Usage This resource summarizes a series of images or other instances generated as part of an imaging
 *  study, and provides references to where the images are available using WADO-RS. This resource is used to make
 *  information concerning images etc. that are available in other clinical contexts such as diagnostic reports, Care
 *  Plans, etc. Also, see the use case description below.
 *  
 *  This resources has been specifically designed with use in DICOM contexts in mind. The content is closely based on
 *  the definitions of the equivalent DICOM constructs, and informed by usage patterns already established through DICOM
 *  implementation practices, including XDS-I. It is not, however, necessary to use DICOM infrastructure in order to use
 *  this resource.
 */
public class ImagingStudy: FHIRResource
{
	override public class var resourceName: String {
		get { return "ImagingStudy" }
	}
	
	/// Accession Number (0008,0050)
	public var accessionNo: Identifier?
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE (0008,0056)
	public var availability: String?
	
	/// Diagnoses etc with request (0040,1002)
	public var clinicalInformation: String?
	
	/// When the study was performed
	public var dateTime: NSDate?
	
	/// Institution-generated description (0008,1030)
	public var description: String?
	
	/// Other identifiers for the study (0020,0010)
	public var identifier: [Identifier]?
	
	/// Who interpreted images (0008,1060)
	public var interpreter: FHIRReference<Practitioner>?
	
	/// All series.modality if actual acquisition modalities
	public var modality: [String]?
	
	/// Number of Study Related Instances (0020,1208)
	public var numberOfInstances: Int?
	
	/// Number of Study Related Series (0020,1206)
	public var numberOfSeries: Int?
	
	/// Order(s) that caused this study to be performed
	public var order: [FHIRReference<DiagnosticOrder>]?
	
	/// Type of procedure performed (0008,1032)
	public var procedure: [Coding]?
	
	/// Referring physician (0008,0090)
	public var referrer: FHIRReference<Practitioner>?
	
	/// Each study has one or more series of instances
	public var series: [ImagingStudySeries]?
	
	/// Who the images are of
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Formal identifier for the study (0020,000D)
	public var uid: String?
	
	/// Retrieve URI (0008,1190)
	public var url: NSURL?
	
	public convenience init(numberOfInstances: Int?, numberOfSeries: Int?, subject: FHIRReference<Patient>?, uid: String?) {
		self.init(json: nil)
		if nil != numberOfInstances {
			self.numberOfInstances = numberOfInstances
		}
		if nil != numberOfSeries {
			self.numberOfSeries = numberOfSeries
		}
		if nil != subject {
			self.subject = subject
		}
		if nil != uid {
			self.uid = uid
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["accessionNo"] as? NSDictionary {
				self.accessionNo = Identifier(json: val)
			}
			if let val = js["availability"] as? String {
				self.availability = val
			}
			if let val = js["clinicalInformation"] as? String {
				self.clinicalInformation = val
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["interpreter"] as? NSDictionary {
				self.interpreter = FHIRReference(json: val, owner: self)
			}
			if let val = js["modality"] as? [String] {
				self.modality = val
			}
			if let val = js["numberOfInstances"] as? Int {
				self.numberOfInstances = val
			}
			if let val = js["numberOfSeries"] as? Int {
				self.numberOfSeries = val
			}
			if let val = js["order"] as? [NSDictionary] {
				self.order = FHIRReference.from(val, owner: self)
			}
			if let val = js["procedure"] as? [NSDictionary] {
				self.procedure = Coding.from(val) as? [Coding]
			}
			if let val = js["referrer"] as? NSDictionary {
				self.referrer = FHIRReference(json: val, owner: self)
			}
			if let val = js["series"] as? [NSDictionary] {
				self.series = ImagingStudySeries.from(val) as? [ImagingStudySeries]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
		}
	}
}


/**
 *  Each study has one or more series of instances.
 *
 *  Each study has one or more series of image instances.
 */
public class ImagingStudySeries: FHIRElement
{	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE (0008,0056)
	public var availability: String?
	
	/// Body part examined (Map from 0018,0015)
	public var bodySite: Coding?
	
	/// When the series started
	public var dateTime: NSDate?
	
	/// A description of the series (0008,103E)
	public var description: String?
	
	/// A single instance taken from a patient (image or other)
	public var instance: [ImagingStudySeriesInstance]?
	
	/// The modality of the instances in the series (0008,0060)
	public var modality: String?
	
	/// Number of this series in overall sequence (0020,0011)
	public var number: Int?
	
	/// Number of Series Related Instances (0020,1209)
	public var numberOfInstances: Int?
	
	/// Formal identifier for this series (0020,000E)
	public var uid: String?
	
	/// Retrieve URI (0008,1115 > 0008,1190)
	public var url: NSURL?
	
	public convenience init(instance: [ImagingStudySeriesInstance]?, modality: String?, numberOfInstances: Int?, uid: String?) {
		self.init(json: nil)
		if nil != instance {
			self.instance = instance
		}
		if nil != modality {
			self.modality = modality
		}
		if nil != numberOfInstances {
			self.numberOfInstances = numberOfInstances
		}
		if nil != uid {
			self.uid = uid
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["availability"] as? String {
				self.availability = val
			}
			if let val = js["bodySite"] as? NSDictionary {
				self.bodySite = Coding(json: val)
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["instance"] as? [NSDictionary] {
				self.instance = ImagingStudySeriesInstance.from(val) as? [ImagingStudySeriesInstance]
			}
			if let val = js["modality"] as? String {
				self.modality = val
			}
			if let val = js["number"] as? Int {
				self.number = val
			}
			if let val = js["numberOfInstances"] as? Int {
				self.numberOfInstances = val
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
		}
	}
}


/**
 *  A single instance taken from a patient (image or other).
 *
 *  A single image taken from a patient.
 */
public class ImagingStudySeriesInstance: FHIRElement
{	
	/// A FHIR resource with content for this instance
	public var attachment: FHIRReference<FHIRResource>?
	
	/// The number of this instance in the series (0020,0013)
	public var number: Int?
	
	/// DICOM class type (0008,0016)
	public var sopclass: String?
	
	/// Description (0070,0080 | 0040,A043 > 0008,0104 | 0042,0010 | 0008,0008)
	public var title: String?
	
	/// Type of instance (image etc) (0004,1430)
	public var type: String?
	
	/// Formal identifier for this instance (0008,0018)
	public var uid: String?
	
	/// WADO-RS service where instance is available  (0008,1199 > 0008,1190)
	public var url: NSURL?
	
	public convenience init(sopclass: String?, uid: String?) {
		self.init(json: nil)
		if nil != sopclass {
			self.sopclass = sopclass
		}
		if nil != uid {
			self.uid = uid
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["attachment"] as? NSDictionary {
				self.attachment = FHIRReference(json: val, owner: self)
			}
			if let val = js["number"] as? Int {
				self.number = val
			}
			if let val = js["sopclass"] as? String {
				self.sopclass = val
			}
			if let val = js["title"] as? String {
				self.title = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
		}
	}
}

