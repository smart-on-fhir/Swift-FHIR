//
//  ImagingStudy.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/ImagingStudy) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A set of images produced in single study (one or more series of references images).
 *
 *  Representation of the content produced in a DICOM imaging study. A study comprises a set of Series, each of which
 *  includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a
 *  common context.  A Series is of only one modality (e.g., X-ray, CT, MR, ultrasound), but a Study may have multiple
 *  Series of different modalities.
 */
public class ImagingStudy: DomainResource
{
	override public class var resourceName: String {
		get { return "ImagingStudy" }
	}
	
	/// Accession Number (0008,0050)
	public var accession: Identifier?
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE (0008,0056)
	public var availability: String?
	
	/// Diagnoses etc with request (0040,1002)
	public var clinicalInformation: String?
	
	/// Institution-generated description (0008,1030)
	public var description_fhir: String?
	
	/// Other identifiers for the study (0020,0010)
	public var identifier: [Identifier]?
	
	/// Who interpreted images (0008,1060)
	public var interpreter: Reference?
	
	/// All series.modality if actual acquisition modalities
	public var modalityList: [String]?
	
	/// Number of Study Related Instances (0020,1208)
	public var numberOfInstances: Int?
	
	/// Number of Study Related Series (0020,1206)
	public var numberOfSeries: Int?
	
	/// Order(s) that caused this study to be performed
	public var order: [Reference]?
	
	/// Who the images are of
	public var patient: Reference?
	
	/// Type of procedure performed (0008,1032)
	public var procedure: [Coding]?
	
	/// Referring physician (0008,0090)
	public var referrer: Reference?
	
	/// Each study has one or more series of instances
	public var series: [ImagingStudySeries]?
	
	/// When the study was started (0008,0020)+(0008,0030)
	public var started: DateTime?
	
	/// Formal identifier for the study (0020,000D)
	public var uid: String?
	
	/// Retrieve URI (0008,1190)
	public var url: NSURL?
	
	public convenience init(numberOfInstances: Int?, numberOfSeries: Int?, patient: Reference?, uid: String?) {
		self.init(json: nil)
		if nil != numberOfInstances {
			self.numberOfInstances = numberOfInstances
		}
		if nil != numberOfSeries {
			self.numberOfSeries = numberOfSeries
		}
		if nil != patient {
			self.patient = patient
		}
		if nil != uid {
			self.uid = uid
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["accession"] as? JSONDictionary {
				self.accession = Identifier(json: val, owner: self)
			}
			if let val = js["availability"] as? String {
				self.availability = val
			}
			if let val = js["clinicalInformation"] as? String {
				self.clinicalInformation = val
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["interpreter"] as? JSONDictionary {
				self.interpreter = Reference(json: val, owner: self)
			}
			if let val = js["modalityList"] as? [String] {
				self.modalityList = val
			}
			if let val = js["numberOfInstances"] as? Int {
				self.numberOfInstances = val
			}
			if let val = js["numberOfSeries"] as? Int {
				self.numberOfSeries = val
			}
			if let val = js["order"] as? [JSONDictionary] {
				self.order = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["procedure"] as? [JSONDictionary] {
				self.procedure = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["referrer"] as? JSONDictionary {
				self.referrer = Reference(json: val, owner: self)
			}
			if let val = js["series"] as? [JSONDictionary] {
				self.series = ImagingStudySeries.from(val, owner: self) as? [ImagingStudySeries]
			}
			if let val = js["started"] as? String {
				self.started = DateTime(string: val)
			}
			if let val = js["uid"] as? String {
				self.uid = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let accession = self.accession {
			json["accession"] = accession.asJSON()
		}
		if let availability = self.availability {
			json["availability"] = availability.asJSON()
		}
		if let clinicalInformation = self.clinicalInformation {
			json["clinicalInformation"] = clinicalInformation.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let interpreter = self.interpreter {
			json["interpreter"] = interpreter.asJSON()
		}
		if let modalityList = self.modalityList {
			var arr = [AnyObject]()
			for val in modalityList {
				arr.append(val.asJSON())
			}
			json["modalityList"] = arr
		}
		if let numberOfInstances = self.numberOfInstances {
			json["numberOfInstances"] = numberOfInstances.asJSON()
		}
		if let numberOfSeries = self.numberOfSeries {
			json["numberOfSeries"] = numberOfSeries.asJSON()
		}
		if let order = self.order {
			json["order"] = Reference.asJSONArray(order)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let procedure = self.procedure {
			json["procedure"] = Coding.asJSONArray(procedure)
		}
		if let referrer = self.referrer {
			json["referrer"] = referrer.asJSON()
		}
		if let series = self.series {
			json["series"] = ImagingStudySeries.asJSONArray(series)
		}
		if let started = self.started {
			json["started"] = started.asJSON()
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
 *  Each study has one or more series of instances.
 *
 *  Each study has one or more series of image instances.
 */
public class ImagingStudySeries: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImagingStudySeries" }
	}
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE (0008,0056)
	public var availability: String?
	
	/// Body part examined (Map from 0018,0015)
	public var bodySite: Coding?
	
	/// When the series started
	public var dateTime: DateTime?
	
	/// A description of the series (0008,103E)
	public var description_fhir: String?
	
	/// A single instance taken from a patient (image or other)
	public var instance: [ImagingStudySeriesInstance]?
	
	/// The modality of the instances in the series (0008,0060)
	public var modality: String?
	
	/// Numeric identifier of this series (0020,0011)
	public var number: Int?
	
	/// Number of Series Related Instances (0020,1209)
	public var numberOfInstances: Int?
	
	/// Formal identifier for this series (0020,000E)
	public var uid: String?
	
	/// Retrieve URI (0008,1115 > 0008,1190)
	public var url: NSURL?
	
	public convenience init(modality: String?, numberOfInstances: Int?, uid: String?) {
		self.init(json: nil)
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["availability"] as? String {
				self.availability = val
			}
			if let val = js["bodySite"] as? JSONDictionary {
				self.bodySite = Coding(json: val, owner: self)
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["instance"] as? [JSONDictionary] {
				self.instance = ImagingStudySeriesInstance.from(val, owner: self) as? [ImagingStudySeriesInstance]
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
				self.url = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let availability = self.availability {
			json["availability"] = availability.asJSON()
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON()
		}
		if let dateTime = self.dateTime {
			json["dateTime"] = dateTime.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let instance = self.instance {
			json["instance"] = ImagingStudySeriesInstance.asJSONArray(instance)
		}
		if let modality = self.modality {
			json["modality"] = modality.asJSON()
		}
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let numberOfInstances = self.numberOfInstances {
			json["numberOfInstances"] = numberOfInstances.asJSON()
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
 *  A single instance taken from a patient (image or other).
 *
 *  A single image taken from a patient.
 */
public class ImagingStudySeriesInstance: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImagingStudySeriesInstance" }
	}
	
	/// Content for this instance
	public var attachment: Reference?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["attachment"] as? JSONDictionary {
				self.attachment = Reference(json: val, owner: self)
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
				self.url = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let attachment = self.attachment {
			json["attachment"] = attachment.asJSON()
		}
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let sopclass = self.sopclass {
			json["sopclass"] = sopclass.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
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

