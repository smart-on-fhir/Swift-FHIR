//
//  ImagingStudy.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ImagingStudy) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A set of images produced in single study (one or more series of references images).

Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which
includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common
context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of
different modalities.
*/
open class ImagingStudy: DomainResource {
	override open class var resourceType: String {
		get { return "ImagingStudy" }
	}
	
	/// Related workflow identifier ("Accession Number").
	public var accession: Identifier?
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE.
	public var availability: FHIRString?
	
	/// Study access service endpoint.
	public var baseLocation: [ImagingStudyBaseLocation]?
	
	/// Request fulfilled.
	public var basedOn: [Reference]?
	
	/// Originating context.
	public var context: Reference?
	
	/// Institution-generated description.
	public var description_fhir: FHIRString?
	
	/// Other identifiers for the study.
	public var identifier: [Identifier]?
	
	/// Who interpreted images.
	public var interpreter: [Reference]?
	
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
	public var uid: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(numberOfInstances: UInt, numberOfSeries: UInt, patient: Reference, uid: FHIRString) {
		self.init()
		self.numberOfInstances = numberOfInstances
		self.numberOfSeries = numberOfSeries
		self.patient = patient
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["accession"] {
			presentKeys.insert("accession")
			if let val = exist as? FHIRJSON {
				do {
					self.accession = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "accession"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "accession", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["availability"] {
			presentKeys.insert("availability")
			if let val = exist as? String {
				self.availability = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "availability", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["baseLocation"] {
			presentKeys.insert("baseLocation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.baseLocation = try ImagingStudyBaseLocation.instantiate(fromArray: val, owner: self) as? [ImagingStudyBaseLocation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "baseLocation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "baseLocation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["basedOn"] {
			presentKeys.insert("basedOn")
			if let val = exist as? [FHIRJSON] {
				do {
					self.basedOn = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "basedOn"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "basedOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? FHIRJSON {
				do {
					self.context = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "context"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["interpreter"] {
			presentKeys.insert("interpreter")
			if let val = exist as? [FHIRJSON] {
				do {
					self.interpreter = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "interpreter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "interpreter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["modalityList"] {
			presentKeys.insert("modalityList")
			if let val = exist as? [FHIRJSON] {
				do {
					self.modalityList = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modalityList"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modalityList", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["numberOfInstances"] {
			presentKeys.insert("numberOfInstances")
			if let val = exist as? UInt {
				self.numberOfInstances = val
			}
			else {
				errors.append(FHIRValidationError(key: "numberOfInstances", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "numberOfInstances"))
		}
		if let exist = json["numberOfSeries"] {
			presentKeys.insert("numberOfSeries")
			if let val = exist as? UInt {
				self.numberOfSeries = val
			}
			else {
				errors.append(FHIRValidationError(key: "numberOfSeries", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "numberOfSeries"))
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let exist = json["procedure"] {
			presentKeys.insert("procedure")
			if let val = exist as? [FHIRJSON] {
				do {
					self.procedure = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "procedure"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "procedure", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? FHIRJSON {
				do {
					self.reason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["referrer"] {
			presentKeys.insert("referrer")
			if let val = exist as? FHIRJSON {
				do {
					self.referrer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "referrer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "referrer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["series"] {
			presentKeys.insert("series")
			if let val = exist as? [FHIRJSON] {
				do {
					self.series = try ImagingStudySeries.instantiate(fromArray: val, owner: self) as? [ImagingStudySeries]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "series"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "series", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["started"] {
			presentKeys.insert("started")
			if let val = exist as? String {
				self.started = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "started", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["uid"] {
			presentKeys.insert("uid")
			if let val = exist as? String {
				self.uid = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "uid", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let accession = self.accession {
			json["accession"] = accession.asJSON(errors: &errors)
		}
		if let availability = self.availability {
			json["availability"] = availability.asJSON()
		}
		if let baseLocation = self.baseLocation {
			json["baseLocation"] = baseLocation.map() { $0.asJSON(errors: &errors) }
		}
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.map() { $0.asJSON(errors: &errors) }
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let interpreter = self.interpreter {
			json["interpreter"] = interpreter.map() { $0.asJSON(errors: &errors) }
		}
		if let modalityList = self.modalityList {
			json["modalityList"] = modalityList.map() { $0.asJSON(errors: &errors) }
		}
		if let numberOfInstances = self.numberOfInstances {
			json["numberOfInstances"] = numberOfInstances.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "numberOfInstances"))
		}
		if let numberOfSeries = self.numberOfSeries {
			json["numberOfSeries"] = numberOfSeries.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "numberOfSeries"))
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let procedure = self.procedure {
			json["procedure"] = procedure.map() { $0.asJSON(errors: &errors) }
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON(errors: &errors)
		}
		if let referrer = self.referrer {
			json["referrer"] = referrer.asJSON(errors: &errors)
		}
		if let series = self.series {
			json["series"] = series.map() { $0.asJSON(errors: &errors) }
		}
		if let started = self.started {
			json["started"] = started.asJSON()
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		
		return json
	}
}


/**
Study access service endpoint.

Methods of accessing  (e.g., retrieving, viewing) the study.
*/
open class ImagingStudyBaseLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudyBaseLocation" }
	}
	
	/// WADO-RS | WADO-URI | IID.
	public var type: Coding?
	
	/// Study access URL.
	public var url: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding, url: URL) {
		self.init()
		self.type = type
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		
		return json
	}
}


/**
Each study has one or more series of instances.

Each study has one or more series of images or other content.
*/
open class ImagingStudySeries: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudySeries" }
	}
	
	/// ONLINE | OFFLINE | NEARLINE | UNAVAILABLE.
	public var availability: FHIRString?
	
	/// Series access endpoint.
	public var baseLocation: [ImagingStudySeriesBaseLocation]?
	
	/// Body part examined.
	public var bodySite: Coding?
	
	/// A short human readable summary of the series.
	public var description_fhir: FHIRString?
	
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
	public var uid: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(modality: Coding, numberOfInstances: UInt, uid: FHIRString) {
		self.init()
		self.modality = modality
		self.numberOfInstances = numberOfInstances
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["availability"] {
			presentKeys.insert("availability")
			if let val = exist as? String {
				self.availability = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "availability", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["baseLocation"] {
			presentKeys.insert("baseLocation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.baseLocation = try ImagingStudySeriesBaseLocation.instantiate(fromArray: val, owner: self) as? [ImagingStudySeriesBaseLocation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "baseLocation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "baseLocation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["bodySite"] {
			presentKeys.insert("bodySite")
			if let val = exist as? FHIRJSON {
				do {
					self.bodySite = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "bodySite"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "bodySite", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["instance"] {
			presentKeys.insert("instance")
			if let val = exist as? [FHIRJSON] {
				do {
					self.instance = try ImagingStudySeriesInstance.instantiate(fromArray: val, owner: self) as? [ImagingStudySeriesInstance]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "instance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "instance", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["laterality"] {
			presentKeys.insert("laterality")
			if let val = exist as? FHIRJSON {
				do {
					self.laterality = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "laterality"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "laterality", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["modality"] {
			presentKeys.insert("modality")
			if let val = exist as? FHIRJSON {
				do {
					self.modality = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modality"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modality", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "modality"))
		}
		if let exist = json["number"] {
			presentKeys.insert("number")
			if let val = exist as? UInt {
				self.number = val
			}
			else {
				errors.append(FHIRValidationError(key: "number", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["numberOfInstances"] {
			presentKeys.insert("numberOfInstances")
			if let val = exist as? UInt {
				self.numberOfInstances = val
			}
			else {
				errors.append(FHIRValidationError(key: "numberOfInstances", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "numberOfInstances"))
		}
		if let exist = json["started"] {
			presentKeys.insert("started")
			if let val = exist as? String {
				self.started = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "started", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["uid"] {
			presentKeys.insert("uid")
			if let val = exist as? String {
				self.uid = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "uid", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let availability = self.availability {
			json["availability"] = availability.asJSON()
		}
		if let baseLocation = self.baseLocation {
			json["baseLocation"] = baseLocation.map() { $0.asJSON(errors: &errors) }
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let instance = self.instance {
			json["instance"] = instance.map() { $0.asJSON(errors: &errors) }
		}
		if let laterality = self.laterality {
			json["laterality"] = laterality.asJSON(errors: &errors)
		}
		if let modality = self.modality {
			json["modality"] = modality.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "modality"))
		}
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let numberOfInstances = self.numberOfInstances {
			json["numberOfInstances"] = numberOfInstances.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "numberOfInstances"))
		}
		if let started = self.started {
			json["started"] = started.asJSON()
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		
		return json
	}
}


/**
Series access endpoint.

Methods of accessing (e.g. retrieving) the series.
*/
open class ImagingStudySeriesBaseLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudySeriesBaseLocation" }
	}
	
	/// WADO-RS | WADO-URI | IID.
	public var type: Coding?
	
	/// Series access URL.
	public var url: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding, url: URL) {
		self.init()
		self.type = type
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		
		return json
	}
}


/**
A single SOP instance from the series.

A single SOP Instance within the series, e.g. an image, or presentation state.
*/
open class ImagingStudySeriesInstance: BackboneElement {
	override open class var resourceType: String {
		get { return "ImagingStudySeriesInstance" }
	}
	
	/// The number of this instance in the series.
	public var number: UInt?
	
	/// DICOM class type.
	public var sopClass: FHIRString?
	
	/// Description of instance.
	public var title: FHIRString?
	
	/// Formal DICOM identifier for this instance.
	public var uid: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sopClass: FHIRString, uid: FHIRString) {
		self.init()
		self.sopClass = sopClass
		self.uid = uid
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["number"] {
			presentKeys.insert("number")
			if let val = exist as? UInt {
				self.number = val
			}
			else {
				errors.append(FHIRValidationError(key: "number", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["sopClass"] {
			presentKeys.insert("sopClass")
			if let val = exist as? String {
				self.sopClass = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "sopClass", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sopClass"))
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["uid"] {
			presentKeys.insert("uid")
			if let val = exist as? String {
				self.uid = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "uid", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let sopClass = self.sopClass {
			json["sopClass"] = sopClass.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "sopClass"))
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let uid = self.uid {
			json["uid"] = uid.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "uid"))
		}
		
		return json
	}
}

