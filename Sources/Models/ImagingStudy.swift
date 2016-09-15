//
//  ImagingStudy.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ImagingStudy) on 2016-09-15.
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
open class ImagingStudy: DomainResource {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["accession"] {
				presentKeys.insert("accession")
				if let val = exist as? FHIRJSON {
					self.accession = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "accession", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["availability"] {
				presentKeys.insert("availability")
				if let val = exist as? String {
					self.availability = val
				}
				else {
					errors.append(FHIRJSONError(key: "availability", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["baseLocation"] {
				presentKeys.insert("baseLocation")
				if let val = exist as? [FHIRJSON] {
					self.baseLocation = ImagingStudyBaseLocation.instantiate(fromArray: val, owner: self) as? [ImagingStudyBaseLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "baseLocation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["basedOn"] {
				presentKeys.insert("basedOn")
				if let val = exist as? [FHIRJSON] {
					self.basedOn = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basedOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["interpreter"] {
				presentKeys.insert("interpreter")
				if let val = exist as? FHIRJSON {
					self.interpreter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "interpreter", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["modalityList"] {
				presentKeys.insert("modalityList")
				if let val = exist as? [FHIRJSON] {
					self.modalityList = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "modalityList", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["numberOfInstances"] {
				presentKeys.insert("numberOfInstances")
				if let val = exist as? UInt {
					self.numberOfInstances = val
				}
				else {
					errors.append(FHIRJSONError(key: "numberOfInstances", wants: UInt.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "numberOfInstances"))
			}
			if let exist = js["numberOfSeries"] {
				presentKeys.insert("numberOfSeries")
				if let val = exist as? UInt {
					self.numberOfSeries = val
				}
				else {
					errors.append(FHIRJSONError(key: "numberOfSeries", wants: UInt.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "numberOfSeries"))
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
			if let exist = js["procedure"] {
				presentKeys.insert("procedure")
				if let val = exist as? [FHIRJSON] {
					self.procedure = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "procedure", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["referrer"] {
				presentKeys.insert("referrer")
				if let val = exist as? FHIRJSON {
					self.referrer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referrer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["series"] {
				presentKeys.insert("series")
				if let val = exist as? [FHIRJSON] {
					self.series = ImagingStudySeries.instantiate(fromArray: val, owner: self) as? [ImagingStudySeries]
				}
				else {
					errors.append(FHIRJSONError(key: "series", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["started"] {
				presentKeys.insert("started")
				if let val = exist as? String {
					self.started = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "started", wants: String.self, has: type(of: exist)))
				}
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
		
		if let accession = self.accession {
			json["accession"] = accession.asJSON()
		}
		if let availability = self.availability {
			json["availability"] = availability.asJSON()
		}
		if let baseLocation = self.baseLocation {
			json["baseLocation"] = baseLocation.map() { $0.asJSON() }
		}
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.map() { $0.asJSON() }
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let interpreter = self.interpreter {
			json["interpreter"] = interpreter.asJSON()
		}
		if let modalityList = self.modalityList {
			json["modalityList"] = modalityList.map() { $0.asJSON() }
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
			json["procedure"] = procedure.map() { $0.asJSON() }
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let referrer = self.referrer {
			json["referrer"] = referrer.asJSON()
		}
		if let series = self.series {
			json["series"] = series.map() { $0.asJSON() }
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
open class ImagingStudyBaseLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudyBaseLocation" }
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
 *  Each study has one or more series of instances.
 *
 *  Each study has one or more series of images or other content.
 */
open class ImagingStudySeries: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["availability"] {
				presentKeys.insert("availability")
				if let val = exist as? String {
					self.availability = val
				}
				else {
					errors.append(FHIRJSONError(key: "availability", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["baseLocation"] {
				presentKeys.insert("baseLocation")
				if let val = exist as? [FHIRJSON] {
					self.baseLocation = ImagingStudySeriesBaseLocation.instantiate(fromArray: val, owner: self) as? [ImagingStudySeriesBaseLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "baseLocation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? FHIRJSON {
					self.bodySite = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["instance"] {
				presentKeys.insert("instance")
				if let val = exist as? [FHIRJSON] {
					self.instance = ImagingStudySeriesInstance.instantiate(fromArray: val, owner: self) as? [ImagingStudySeriesInstance]
				}
				else {
					errors.append(FHIRJSONError(key: "instance", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["laterality"] {
				presentKeys.insert("laterality")
				if let val = exist as? FHIRJSON {
					self.laterality = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "laterality", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["modality"] {
				presentKeys.insert("modality")
				if let val = exist as? FHIRJSON {
					self.modality = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "modality", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "modality"))
			}
			if let exist = js["number"] {
				presentKeys.insert("number")
				if let val = exist as? UInt {
					self.number = val
				}
				else {
					errors.append(FHIRJSONError(key: "number", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["numberOfInstances"] {
				presentKeys.insert("numberOfInstances")
				if let val = exist as? UInt {
					self.numberOfInstances = val
				}
				else {
					errors.append(FHIRJSONError(key: "numberOfInstances", wants: UInt.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "numberOfInstances"))
			}
			if let exist = js["started"] {
				presentKeys.insert("started")
				if let val = exist as? String {
					self.started = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "started", wants: String.self, has: type(of: exist)))
				}
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
		
		if let availability = self.availability {
			json["availability"] = availability.asJSON()
		}
		if let baseLocation = self.baseLocation {
			json["baseLocation"] = baseLocation.map() { $0.asJSON() }
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let instance = self.instance {
			json["instance"] = instance.map() { $0.asJSON() }
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
open class ImagingStudySeriesBaseLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudySeriesBaseLocation" }
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
 *  A single SOP instance from the series.
 *
 *  A single SOP Instance within the series, e.g. an image, or presentation state.
 */
open class ImagingStudySeriesInstance: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["number"] {
				presentKeys.insert("number")
				if let val = exist as? UInt {
					self.number = val
				}
				else {
					errors.append(FHIRJSONError(key: "number", wants: UInt.self, has: type(of: exist)))
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
			if let exist = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: type(of: exist)))
				}
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

