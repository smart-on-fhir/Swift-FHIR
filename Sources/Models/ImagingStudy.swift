//
//  ImagingStudy.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ImagingStudy) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A set of images produced in single study (one or more series of references images).
 *
 *  Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which
 *  includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a
 *  common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple
 *  series of different modalities.
 */
public class ImagingStudy: DomainResource {
	override public class var resourceName: String {
		get { return "ImagingStudy" }
	}
	
	/// Related workflow identifier ("Accession Number").
	public var accession: Identifier?
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE.
	public var availability: String?
	
	/// Study access service endpoint.
	public var baseLocation: [ImagingStudyBaseLocation]?
	
	/// Request fulfilled.
	public var basedOn: [Reference]?
	
	/// Originating context.
	public var context: Reference?
	
	/// Institution-generated description.
	public var description_fhir: String?
	
	/// Other identifiers for the study.
	public var identifier: [Identifier]?
	
	/// Who interpreted images.
	public var interpreter: Reference?
	
	/// All series modality if actual acquisition modalities.
	public var modalityList: [Coding]?
	
	/// Number of Study Related Instances.
	public var numberOfInstances: UInt?
	
	/// Number of Study Related Series.
	public var numberOfSeries: UInt?
	
	/// Who the images are of.
	public var patient: Reference?
	
	/// Type of procedure performed.
	public var procedure: [Reference]?
	
	/// Reason for study.
	public var reason: CodeableConcept?
	
	/// Referring physician.
	public var referrer: Reference?
	
	/// Each study has one or more series of instances.
	public var series: [ImagingStudySeries]?
	
	/// When the study was started.
	public var started: DateTime?
	
	/// Formal DICOM identifier for the study.
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(numberOfInstances: UInt, numberOfSeries: UInt, patient: Reference, uid: String) {
		self.init(json: nil)
		self.numberOfInstances = numberOfInstances
		self.numberOfSeries = numberOfSeries
		self.patient = patient
		self.uid = uid
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["accession"] {
				presentKeys.insert("accession")
				if let val = exist as? FHIRJSON {
					self.accession = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "accession", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["availability"] {
				presentKeys.insert("availability")
				if let val = exist as? String {
					self.availability = val
				}
				else {
					errors.append(FHIRJSONError(key: "availability", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["baseLocation"] {
				presentKeys.insert("baseLocation")
				if let val = exist as? [FHIRJSON] {
					self.baseLocation = ImagingStudyBaseLocation.from(val, owner: self) as? [ImagingStudyBaseLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "baseLocation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["basedOn"] {
				presentKeys.insert("basedOn")
				if let val = exist as? [FHIRJSON] {
					self.basedOn = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basedOn", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["interpreter"] {
				presentKeys.insert("interpreter")
				if let val = exist as? FHIRJSON {
					self.interpreter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "interpreter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["modalityList"] {
				presentKeys.insert("modalityList")
				if let val = exist as? [FHIRJSON] {
					self.modalityList = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "modalityList", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["numberOfInstances"] {
				presentKeys.insert("numberOfInstances")
				if let val = exist as? UInt {
					self.numberOfInstances = val
				}
				else {
					errors.append(FHIRJSONError(key: "numberOfInstances", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "numberOfInstances"))
			}
			if let exist: AnyObject = js["numberOfSeries"] {
				presentKeys.insert("numberOfSeries")
				if let val = exist as? UInt {
					self.numberOfSeries = val
				}
				else {
					errors.append(FHIRJSONError(key: "numberOfSeries", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "numberOfSeries"))
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
			if let exist: AnyObject = js["procedure"] {
				presentKeys.insert("procedure")
				if let val = exist as? [FHIRJSON] {
					self.procedure = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "procedure", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["referrer"] {
				presentKeys.insert("referrer")
				if let val = exist as? FHIRJSON {
					self.referrer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referrer", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["series"] {
				presentKeys.insert("series")
				if let val = exist as? [FHIRJSON] {
					self.series = ImagingStudySeries.from(val, owner: self) as? [ImagingStudySeries]
				}
				else {
					errors.append(FHIRJSONError(key: "series", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["started"] {
				presentKeys.insert("started")
				if let val = exist as? String {
					self.started = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "started", wants: String.self, has: exist.dynamicType))
				}
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
		
		if let accession = self.accession {
			json["accession"] = accession.asJSON()
		}
		if let availability = self.availability {
			json["availability"] = availability.asJSON()
		}
		if let baseLocation = self.baseLocation {
			json["baseLocation"] = ImagingStudyBaseLocation.asJSONArray(baseLocation)
		}
		if let basedOn = self.basedOn {
			json["basedOn"] = Reference.asJSONArray(basedOn)
		}
		if let context = self.context {
			json["context"] = context.asJSON()
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
			json["modalityList"] = Coding.asJSONArray(modalityList)
		}
		if let numberOfInstances = self.numberOfInstances {
			json["numberOfInstances"] = numberOfInstances.asJSON()
		}
		if let numberOfSeries = self.numberOfSeries {
			json["numberOfSeries"] = numberOfSeries.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let procedure = self.procedure {
			json["procedure"] = Reference.asJSONArray(procedure)
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
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
		
		return json
	}
}


/**
 *  Study access service endpoint.
 *
 *  Methods of accessing  (e.g., retrieving, viewing) the study.
 */
public class ImagingStudyBaseLocation: BackboneElement {
	override public class var resourceName: String {
		get { return "ImagingStudyBaseLocation" }
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
 *  Each study has one or more series of instances.
 *
 *  Each study has one or more series of images or other content.
 */
public class ImagingStudySeries: BackboneElement {
	override public class var resourceName: String {
		get { return "ImagingStudySeries" }
	}
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE.
	public var availability: String?
	
	/// Series access endpoint.
	public var baseLocation: [ImagingStudySeriesBaseLocation]?
	
	/// Body part examined.
	public var bodySite: Coding?
	
	/// A short human readable summary of the series.
	public var description_fhir: String?
	
	/// A single SOP instance from the series.
	public var instance: [ImagingStudySeriesInstance]?
	
	/// Body part laterality.
	public var laterality: Coding?
	
	/// The modality of the instances in the series.
	public var modality: Coding?
	
	/// Numeric identifier of this series.
	public var number: UInt?
	
	/// Number of Series Related Instances.
	public var numberOfInstances: UInt?
	
	/// When the series started.
	public var started: DateTime?
	
	/// Formal DICOM identifier for this series.
	public var uid: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(modality: Coding, numberOfInstances: UInt, uid: String) {
		self.init(json: nil)
		self.modality = modality
		self.numberOfInstances = numberOfInstances
		self.uid = uid
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["availability"] {
				presentKeys.insert("availability")
				if let val = exist as? String {
					self.availability = val
				}
				else {
					errors.append(FHIRJSONError(key: "availability", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["baseLocation"] {
				presentKeys.insert("baseLocation")
				if let val = exist as? [FHIRJSON] {
					self.baseLocation = ImagingStudySeriesBaseLocation.from(val, owner: self) as? [ImagingStudySeriesBaseLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "baseLocation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? FHIRJSON {
					self.bodySite = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["instance"] {
				presentKeys.insert("instance")
				if let val = exist as? [FHIRJSON] {
					self.instance = ImagingStudySeriesInstance.from(val, owner: self) as? [ImagingStudySeriesInstance]
				}
				else {
					errors.append(FHIRJSONError(key: "instance", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["laterality"] {
				presentKeys.insert("laterality")
				if let val = exist as? FHIRJSON {
					self.laterality = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "laterality", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["modality"] {
				presentKeys.insert("modality")
				if let val = exist as? FHIRJSON {
					self.modality = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "modality", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "modality"))
			}
			if let exist: AnyObject = js["number"] {
				presentKeys.insert("number")
				if let val = exist as? UInt {
					self.number = val
				}
				else {
					errors.append(FHIRJSONError(key: "number", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["numberOfInstances"] {
				presentKeys.insert("numberOfInstances")
				if let val = exist as? UInt {
					self.numberOfInstances = val
				}
				else {
					errors.append(FHIRJSONError(key: "numberOfInstances", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "numberOfInstances"))
			}
			if let exist: AnyObject = js["started"] {
				presentKeys.insert("started")
				if let val = exist as? String {
					self.started = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "started", wants: String.self, has: exist.dynamicType))
				}
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
		
		if let availability = self.availability {
			json["availability"] = availability.asJSON()
		}
		if let baseLocation = self.baseLocation {
			json["baseLocation"] = ImagingStudySeriesBaseLocation.asJSONArray(baseLocation)
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON()
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
		if let started = self.started {
			json["started"] = started.asJSON()
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
public class ImagingStudySeriesBaseLocation: BackboneElement {
	override public class var resourceName: String {
		get { return "ImagingStudySeriesBaseLocation" }
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
 *  A single SOP instance from the series.
 *
 *  A single SOP Instance within the series, e.g. an image, or presentation state.
 */
public class ImagingStudySeriesInstance: BackboneElement {
	override public class var resourceName: String {
		get { return "ImagingStudySeriesInstance" }
	}
	
	/// The number of this instance in the series.
	public var number: UInt?
	
	/// DICOM class type.
	public var sopClass: String?
	
	/// Description of instance.
	public var title: String?
	
	/// Formal DICOM identifier for this instance.
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
			if let exist: AnyObject = js["number"] {
				presentKeys.insert("number")
				if let val = exist as? UInt {
					self.number = val
				}
				else {
					errors.append(FHIRJSONError(key: "number", wants: UInt.self, has: exist.dynamicType))
				}
			}
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
			if let exist: AnyObject = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: exist.dynamicType))
				}
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
		
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let sopClass = self.sopClass {
			json["sopClass"] = sopClass.asJSON()
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

