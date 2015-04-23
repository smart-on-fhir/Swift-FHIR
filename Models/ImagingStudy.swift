//
//  ImagingStudy.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ImagingStudy) on 2015-04-23.
//  2015, SMART Health IT.
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
	public var numberOfInstances: UInt?
	
	/// Number of Study Related Series (0020,1206)
	public var numberOfSeries: UInt?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(numberOfInstances: UInt?, numberOfSeries: UInt?, patient: Reference?, uid: String?) {
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["accession"] {
				presentKeys.addObject("accession")
				if let val = exist as? FHIRJSON {
					self.accession = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"accession\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["availability"] {
				presentKeys.addObject("availability")
				if let val = exist as? String {
					self.availability = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"availability\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["clinicalInformation"] {
				presentKeys.addObject("clinicalInformation")
				if let val = exist as? String {
					self.clinicalInformation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"clinicalInformation\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["interpreter"] {
				presentKeys.addObject("interpreter")
				if let val = exist as? FHIRJSON {
					self.interpreter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"interpreter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["modalityList"] {
				presentKeys.addObject("modalityList")
				if let val = exist as? [String] {
					self.modalityList = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"modalityList\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["numberOfInstances"] {
				presentKeys.addObject("numberOfInstances")
				if let val = exist as? UInt {
					self.numberOfInstances = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"numberOfInstances\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"numberOfInstances\" but it is missing"))
			}
			if let exist: AnyObject = js["numberOfSeries"] {
				presentKeys.addObject("numberOfSeries")
				if let val = exist as? UInt {
					self.numberOfSeries = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"numberOfSeries\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"numberOfSeries\" but it is missing"))
			}
			if let exist: AnyObject = js["order"] {
				presentKeys.addObject("order")
				if let val = exist as? [FHIRJSON] {
					self.order = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"order\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["procedure"] {
				presentKeys.addObject("procedure")
				if let val = exist as? [FHIRJSON] {
					self.procedure = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"procedure\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["referrer"] {
				presentKeys.addObject("referrer")
				if let val = exist as? FHIRJSON {
					self.referrer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"referrer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["series"] {
				presentKeys.addObject("series")
				if let val = exist as? [FHIRJSON] {
					self.series = ImagingStudySeries.from(val, owner: self) as? [ImagingStudySeries]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"series\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["started"] {
				presentKeys.addObject("started")
				if let val = exist as? String {
					self.started = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"started\" to be `String`, but is \(exist.dynamicType)"))
				}
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
	
	/// Body part laterality
	public var laterality: Coding?
	
	/// The modality of the instances in the series (0008,0060)
	public var modality: String?
	
	/// Numeric identifier of this series (0020,0011)
	public var number: UInt?
	
	/// Number of Series Related Instances (0020,1209)
	public var numberOfInstances: UInt?
	
	/// Formal identifier for this series (0020,000E)
	public var uid: String?
	
	/// Retrieve URI (0008,1115 > 0008,1190)
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(modality: String?, numberOfInstances: UInt?, uid: String?) {
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["availability"] {
				presentKeys.addObject("availability")
				if let val = exist as? String {
					self.availability = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"availability\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bodySite"] {
				presentKeys.addObject("bodySite")
				if let val = exist as? FHIRJSON {
					self.bodySite = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySite\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["dateTime"] {
				presentKeys.addObject("dateTime")
				if let val = exist as? String {
					self.dateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dateTime\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["instance"] {
				presentKeys.addObject("instance")
				if let val = exist as? [FHIRJSON] {
					self.instance = ImagingStudySeriesInstance.from(val, owner: self) as? [ImagingStudySeriesInstance]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"instance\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["laterality"] {
				presentKeys.addObject("laterality")
				if let val = exist as? FHIRJSON {
					self.laterality = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"laterality\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["modality"] {
				presentKeys.addObject("modality")
				if let val = exist as? String {
					self.modality = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"modality\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"modality\" but it is missing"))
			}
			if let exist: AnyObject = js["number"] {
				presentKeys.addObject("number")
				if let val = exist as? UInt {
					self.number = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"number\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["numberOfInstances"] {
				presentKeys.addObject("numberOfInstances")
				if let val = exist as? UInt {
					self.numberOfInstances = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"numberOfInstances\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"numberOfInstances\" but it is missing"))
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
		if let laterality = self.laterality {
			json["laterality"] = laterality.asJSON()
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
 *  A single SOP Instance within the series, e.g., an image, or presentation state.
 */
public class ImagingStudySeriesInstance: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImagingStudySeriesInstance" }
	}
	
	/// Content of the instance
	public var content: [Attachment]?
	
	/// The number of this instance in the series (0020,0013)
	public var number: UInt?
	
	/// DICOM class type (0008,0016)
	public var sopclass: String?
	
	/// Description (0070,0080 | 0040,A043 > 0008,0104 | 0042,0010 | 0008,0008)
	public var title: String?
	
	/// Type of instance (image etc) (0004,1430)
	public var type: String?
	
	/// Formal identifier for this instance (0008,0018)
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(sopclass: String?, uid: String?) {
		self.init(json: nil)
		if nil != sopclass {
			self.sopclass = sopclass
		}
		if nil != uid {
			self.uid = uid
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["content"] {
				presentKeys.addObject("content")
				if let val = exist as? [FHIRJSON] {
					self.content = Attachment.from(val, owner: self) as? [Attachment]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"content\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["number"] {
				presentKeys.addObject("number")
				if let val = exist as? UInt {
					self.number = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"number\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sopclass"] {
				presentKeys.addObject("sopclass")
				if let val = exist as? String {
					self.sopclass = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sopclass\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sopclass\" but it is missing"))
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.addObject("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"title\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
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
		
		if let content = self.content {
			json["content"] = Attachment.asJSONArray(content)
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
		
		return json
	}
}

